import pprint
import os
import json
import re


import mediatools.bdinfo as bdinfo
import mediatools.eac3to as eac3to
import tools.muxHelpers as demuxHelper
import sites.pickers.sitedataPicker as siteDataPicker
import sites.pickers.siteSortPicker as siteSortPicker
import mediadata.movieData as movieData


def Demux(args):
    # Create Necessary Params/Objects
    options = demuxHelper.getFiles(args.inpath)
    demuxData = siteDataPicker.pickSite(args.site)
    muxSorter = siteSortPicker.pickSite(args.site)
    sources = getSources(options, args.inpath)
    os.chdir(demuxHelper.createParentDemuxFolder(sources, args.outpath))
    print("Getting Basic Movie Data\n\n")
    movie = movieData.matchMovie(sources)
    extractBdinfo(sources, demuxData)
    extractTracks(demuxData)
    finalizeOutput(muxSorter, demuxData, movie, args)


def getSources(options, inpath):
    sources = demuxHelper.addSources(options)
    for i in range(0, len(sources)):
        if re.search(".iso", sources[i]):
            sources[i] = demuxHelper.Extract(sources[i], inpath)
    print("Creating Demux Folder\n")
    return sources


def extractBdinfo(sources, demuxData):

    # Generate Bdinfo/TrackInfo for Each Source
    for source in sources:
        output = demuxHelper.createChildDemuxFolder(os.getcwd(), source)

        os.chdir(output)

        bdObj = bdinfo.Bdinfo()
        quickSum = bdObj.process(output, source)

        demuxData.addTracks(quickSum, bdObj.playlistNum, source, output)
        os.chdir("..")


def extractTracks(demuxData):
    # Extract Using eac3to
    print("Extract Tracks using Eac3to")
    for key in demuxData.sources:
        trackoutdict = demuxData.filterBySource(key)
        eac3to_list = []
        for track in trackoutdict["tracks"]:
            eac3to_list.append(track["eac3to"])
            if track.get("eac3to_extras"):
                eac3to_list.extend(track["eac3to_extras"])

        eac3to.process(trackoutdict["sourceDir"], trackoutdict["outputDir"],
                       eac3to_list, trackoutdict["playlistNum"])
   


def finalizeOutput(muxSorter, demuxData, movie, args):
    # Sort/enable Tracks Based on Site
    muxSorter.tracksDataObj = demuxData
    muxSorter.sortTracks(movie["languages"],
                         args.sublang, args.audiolang, args.sortpref)

    # Export
    # Movie Info Section
    outdict = {}
    outdict["Movie"] = {}
    outdict["Movie"]["year"] = movie["year"]
    outdict["Movie"]["imdb"] = movie["imdbID"]
    outdict["Movie"]["langs"] = movie["languages"]

    # Sources Section
    outdict["Sources"] = {}
    for key in demuxData.sources:
        trackObj = demuxData.filterBySource(key)
        outdict["Sources"][key] = {}
        outdict["Sources"][key]["outputDir"] = trackObj["outputDir"]
        outdict["Sources"][key]["sourceDir"] = trackObj["sourceDir"]
        outdict["Sources"][key]["playlistNum"] = trackObj["playlistNum"]

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
    outputPath = os.path.abspath(os.path.join(".", "output.txt"))
    print(f"Writing to {outputPath}")
    with open(outputPath, "w") as p:
        p.write(json.dumps(outdict, indent=4))
