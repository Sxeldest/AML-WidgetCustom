; =========================================================
; Game Engine Function: _ZN8CFileMgr9CloseFileEj
; Address            : 0x3F102A - 0x3F103A
; =========================================================

3F102A:  PUSH            {R7,LR}
3F102C:  MOV             R7, SP
3F102E:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
3F1032:  CMP             R0, #0
3F1034:  IT NE
3F1036:  MOVNE           R0, #1
3F1038:  POP             {R7,PC}
