#!/usr/bin/env python3
from pathlib import Path

import transcription.transcriper as transcriberClass
import tools.logger as logger


def main(tracks,maxLines=None,langs=None,model=None,model_name=None):
    maxLines=maxLines or 51
 

    for track in tracks:
        logger.logger.info("\n\nAttempting Transcription of: ", track["filename"])
        if langs and (track["lang"].lower() not in langs):
            continue
        langcode={
        "en":"en-us",
        "zh":"cn",
        "el":"el-gr",
        "vi":"vn",
        "fil":"tl-ph",
        "kk":"kz"
        }.get(track["langcode"], track["langcode"])
        transcriber=None

    

        try:
            transcriber = transcriberClass.Transcriber(model,model_name,langcode)
        except:
            continue
        
        task_list = [Path(track.getTrackLocation())]
    
        
        

        result=transcriber.process_task_list(task_list,maxLines)
        track["machine_parse"] = result



