import subprocess
import re
import os
import tempfile

import tools.general as utils
import config


class Bdinfo():
    def __init__(self):
        self._playlist = None
        self._index = None
        self._bdinfoPath = None
        self._mediaDir = None
        self._dict = {}
    '''
    Public Functions
    '''

    def setup(self, parent, subfolder):
        show = utils.getShowName(subfolder)
        self.setBdinfoPath(parent, show)
        self.set_mediaDir(subfolder)
        self._generate_playlists()
        self._playListSelect()
        self._chapterFile=False

    def process(self):
        bdinfo = self._bdinfo()
        self._writeBdinfo(bdinfo)
        return self.parse_bdinfo(bdinfo)

    def parse_bdinfo(self, data):
        lines = data.splitlines()
        lines = lines[lines.index("QUICK SUMMARY:"):len(lines)-1]
        for i in range(len(lines)):
            if re.search("Video: ", lines[i]) != None:
                lines = lines[i:len(lines)]
                break
        return lines

    def checkchapterFile():
        re.search("cha")

    '''
    Getter Functions
    '''

    """
    playlistNum of Playlist picked by User
    """
    @property
    def playlistNum(self):
        return self._playlistNum

    """
    Working Directory with Current BDMV Files
    """
    @property
    def mediaDir(self):
        return self._mediaDir
    """
    Path to the Full bdinfo Path
    """

    @property
    def bdinfoPath(self):
        return self._bdinfoPath

    """
    playlist file name
    """
    @property
    def playlistFile(self):
        return self._playlistFile
    '''
    Setter Functions
    '''

    def set_mediaDir(self, ele):
        self._mediaDir = re.sub("/BDMV/STREAM", "", ele)

    def setBdinfoPath(self, output, show):
        self._bdinfoPath = os.path.join(
            output, "output_logs", f"BDINFO.{show}.txt")

    '''
    Private Functions
    '''

    def _getIndex(self):
        self._playlistNum = utils.getIntInput("Enter playlist number: ")

    def _getplaylistFile(self):
        self._playlistFile = re.findall(
            "[0-9]+\.MPLS", self._playlist)[int(self._playlistNum)-1]

    @utils.requiredClassAttribute("_mediaDir")
    def _generate_playlists(self):

        bdinfoBin = config.bdinfoLinuxPath
        if not os.path.isfile(bdinfoBin):
            bdinfoBin = config.bdinfoProjectPath

        wineBin = config.wineLinuxPath
        if not os.path.isfile(wineBin):
            wineBin = config.wineProjectPath

        self._playlist = subprocess.run([wineBin, bdinfoBin, "-l", self._mediaDir, "."],
                                        stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode('utf8', 'strict')

    def _playListSelect(self):
        print(self._playlist)
        self._getIndex()
        self._getplaylistFile()

    def _bdinfo(self):
        bdinfoBin = config.bdinfoLinuxPath
        if not os.path.isfile(bdinfoBin):
            bdinfoBin = config.bdinfoProjectPath

        wineBin = config.wineLinuxPath
        if not os.path.isfile(wineBin):
            wineBin = config.wineProjectPath

        selection = self._playlist.splitlines()[2+int(self._playlistNum)]
        match = re.search("[0-9]+.MPLS", selection)
        if match != None:
            selection = selection[match.start():match.end()]
            temp = tempfile.TemporaryDirectory()
            t = subprocess.run(
                [wineBin, bdinfoBin, "-m", selection, self._mediaDir, temp.name])
            file = open(os.path.join(temp.name, os.listdir(temp.name)[0]), "r")
            return file.read()

    def _writeBdinfo(self, data):
        utils.mkdirSafe(os.path.dirname(self._bdinfoPath))

        file = open(self._bdinfoPath, "w")
        file.write(data)
