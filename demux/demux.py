import os
import json
import re


import mediatools.bdinfo as bdinfo
import mediatools.eac3to as eac3to
import sites.pickers.siteDataPicker as siteDataPicker
import sites.pickers.siteSortPicker as siteSortPicker
import mediadata.movieData as movieData
import subtitles.subreader as subreader
import transcription.voiceRecord as voiceRec
import tools.general as util
import demux.helper as demuxHelper


def demux(args):
    # Normalize
    args.audiolang = list(map(lambda x: x.lower(),  args.audiolang))

    args.sublang = list(map(lambda x: x.lower(),  args.sublang))

    options = ["Movie", "TV"]
    if util.Menu(options, "What Type of Media are you Demuxing?") == "Movie":
        demuxMovie(args)
    else:
        demuxTV(args)


def demuxTV(args):
    options = demuxHelper.getBDMVs(args.inpath)
    demuxData = siteDataPicker.pickSite(args.site)
    muxSorter = siteSortPicker.pickSite(args.site)
    choices = ["Yes", "No"]

    print("Add Sources For First Episode Demux\n")
    sources = getSources(options, args.inpath)

    print("What TV Show?")
    movie = movieData.matchMovie(sources)
    season = int(util.getIntInput("Enter Season Number"))
    i = 1
    if util.Menu(choices, "Restore Folder Old MuxFolder Data") == "Yes":
        folders = util.findMatches(args.inpath, "Mux*")
        # only get root directories

        folders = list(filter(lambda x: os.path.realpath(
            os.path.dirname(x)) == os.path.realpath(args.inpath), folders))
        if len(folders) == 0:
            print("No Folders Found To Restore")
            quit()
        folder = util.Menu(folders, "Which Folder Do you want to Restore")
        os.chdir(folder)
        i = len(os.listdir("."))
    else:
        os.chdir(demuxHelper.createParentDemuxFolder(sources, args.outpath))

    print("Creating Demux Folder at\n")

    while True:
        os.mkdir(str(i))
        os.chdir(str(i))
        print(os.path.abspath("."))
        extractBdinfo(sources, demuxData)
        extractTracks(demuxData)
        sortTracks(muxSorter, demuxData, movie, args)
        machineReader(muxSorter, args, movie)
        finalizeOutput(muxSorter, demuxData, movie, season, i)
        os.chdir("..")

        if util.Menu(choices, "Add Another Episode") == "No":
            break
        # prepare for next loop
        i = i+1
        demuxData = siteDataPicker.pickSite(args.site)
        muxSorter = siteSortPicker.pickSite(args.site)

        if util.Menu(choices, "Change Sources") == "Yes":
            sources = getSources(options, args.inpath)
        print(f"Program Ran {i-1} time so far\n")
        print("Creating Demux Folder at\n")


def demuxMovie(args):
    options = demuxHelper.getBDMVs(args.inpath)
    demuxData = siteDataPicker.pickSite(args.site)
    muxSorter = siteSortPicker.pickSite(args.site)
    print("Add Sources For Movie Demux\n")
    sources = getSources(options, args.inpath)
    print("What Movie?\n\n")
    movie = movieData.matchMovie(sources)
    print("Creating Demux Folder at\n")
    os.chdir(demuxHelper.createParentDemuxFolder(sources, args.outpath))
    print(os.path.abspath("."))
    extractBdinfo(sources, demuxData)
    extractTracks(demuxData)
    sortTracks(muxSorter, demuxData, movie, args)
    machineReader(muxSorter, args, movie)
    finalizeOutput(muxSorter, demuxData, movie)


def getSources(options, inpath):
    sources = demuxHelper.addSource(options)
    for i in range(0, len(sources)):
        if re.search(".iso", sources[i]):
            sources[i] = demuxHelper.Extract(sources[i], inpath)
    return sources


def extractBdinfo(sources, demuxData):

    # Generate Bdinfo/TrackInfo for Each Source

    bdObjs = []
    outputs = []
    for source in sources:
        print(f"\n{source}\n")
        print("Pick a playlist to extract from\n")

        output = demuxHelper.createChildDemuxFolder(os.getcwd(), source)
        os.chdir(output)
        bdObj = bdinfo.Bdinfo()
        bdObj.setup(output, source)
        bdObjs.append(bdObj)
        outputs.append(output)
        os.chdir("..")

    for i, bdObj in enumerate(bdObjs):
        print(f"Extracting BDINFO from {sources[i]}")
        demuxData.addTracks(
            bdObj.process(), bdObj.playlistNum, sources[i], outputs[i])


def extractTracks(demuxData):

    # Extract Using eac3to
    print("Running Eac3to on all sources")
    for key in demuxData.sources:
        trackoutdict = demuxData.filterBySource(key)
        eac3to_list = []
        for track in trackoutdict["tracks"]:
            eac3to_list.append(track["eac3to"])
            if track.get("eac3to_extras"):
                eac3to_list.extend(track["eac3to_extras"])
        print(f"Extracting Files From {key}")
        eac3to.process(trackoutdict["sourceDir"], trackoutdict["outputDir"],
                       eac3to_list, trackoutdict["playlistNum"])


def sortTracks(muxSorter, demuxData, movie, args):
    # Sort/enable Tracks Based on Site
    muxSorter.tracksDataObj = demuxData
    muxSorter.sortTracks(movie["languages"],
                         args.audiolang, args.sublang, args.sortpref)
    muxSorter.addForcedSubs(movie["languages"], args.audiolang)


def machineReader(muxSorter, args, movie):
    # Add OCR for Subtitles
    if args.ocr == "disabled":
        return
    elif args.ocr == "enabled":
        subreader.subreader(muxSorter.enabledSub, keep=args.keepocr)
    elif args.ocr == "default":
        subreader.subreader(muxSorter.unSortedSub,
                            langs=movie["languages"], keep=args.keepocr)
    elif args.ocr == "sublang":
        subreader.subreader(muxSorter.unSortedSub,
                            langs=args.sublang, keep=args.keepocr)
    elif args.ocr == "english":
        subreader.subreader(muxSorter.unSortedSub, langs=[
                            "English"], keep=args.keepocr)
    else:
        subreader.subreader(muxSorter.unSortedSub, keep=args.keepocr)

   # Voice Recorder

    if args.voicerec == "disabled":
        return
    elif args.voicerec == "enabled":
        voiceRec.main(muxSorter.enabledAudio)
    elif args.voicerec == "default":
        voiceRec.main(muxSorter.unSortedAudio, movie["languages"])
    elif args.voicerec == "audiolang":
        voiceRec.main(muxSorter.unSortedAudio, args.audiolang)
    elif args.voicerec == "english":
        voiceRec.main(muxSorter.unSortedAudio, ["English"])
    else:
        voiceRec.main(muxSorter.unSortedAudio)


def finalizeOutput(muxSorter, demuxData, movie, season=None, episode=None):
    # Export
    # Movie Info Section

    outdict = {}
    outdict["Movie"] = {}
    outdict["Movie"]["year"] = movie["year"]
    outdict["Movie"]["imdb"] = movie["imdbID"]
    outdict["Movie"]["tmdb"] = movieData.convertIMDBtoTMDB(movie["imdbID"])
    outdict["Movie"]["langs"] = movie["languages"]
    if episode:
        outdict["Season"] = season
        outdict["Episode"] = episode

    # Sources Section
    outdict["Sources"] = {}
    for key in demuxData.sources:
        trackObj = demuxData.filterBySource(key)
        outdict["Sources"][key] = {}
        outdict["Sources"][key]["outputDir"] = trackObj["outputDir"]
        outdict["Sources"][key]["sourceDir"] = trackObj["sourceDir"]
        outdict["Sources"][key]["playlistNum"] = trackObj["playlistNum"]
    # Chapters
    outdict["ChapterData"] = demuxHelper.CreateChapterList(
        *[demuxData.filterBySource(key)["outputDir"] for key in demuxData.sources])

    # Enabled Track Section
    outdict["Enabled_Tracks"] = {}
    outdict["Enabled_Tracks"]["Video"] = list(
        map(lambda x: x["key"], muxSorter.enabledVideo))
    outdict["Enabled_Tracks"]["Audio"] = list(
        map(lambda x: x["key"], muxSorter.enabledAudio))
    outdict["Enabled_Tracks"]["Sub"] = list(
        map(lambda x: x["key"], muxSorter.enabledSub))

    # Track List Section
    outdict["Tracks_Details"] = {}
    outdict["Tracks_Details"]["Audio"] = {}
    outdict["Tracks_Details"]["Sub"] = {}
    outdict["Tracks_Details"]["Video"] = {}

    for track in muxSorter.unSortedAudio:
        key = track["key"]
        track.pop("key")
        outdict["Tracks_Details"]["Audio"][key] = track
    for track in muxSorter.unSortedSub:
        key = track["key"]
        track.pop("key")
        outdict["Tracks_Details"]["Sub"][key] = track

    for track in muxSorter.unSortedVideo:
        key = track["key"]
        track.pop("key")
        outdict["Tracks_Details"]["Video"][key] = track
    outputPath = os.path.abspath(os.path.join(".", "output.json"))
    print(f"Writing to {outputPath}")
    print("If this is a TV show double check episode in json")
    with open(outputPath, "w") as p:
        p.write(json.dumps(outdict, indent=4, ensure_ascii=False))
