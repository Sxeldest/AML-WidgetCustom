; =========================================================
; Game Engine Function: _Z13RsRwTerminatev
; Address            : 0x4D4414 - 0x4D4428
; =========================================================

4D4414:  PUSH            {R7,LR}
4D4416:  MOV             R7, SP
4D4418:  BLX             j__Z12RwEngineStopv; RwEngineStop(void)
4D441C:  BLX             j__Z13RwEngineClosev; RwEngineClose(void)
4D4420:  POP.W           {R7,LR}
4D4424:  B.W             sub_194280
