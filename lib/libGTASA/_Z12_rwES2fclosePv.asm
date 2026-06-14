; =========================================================
; Game Engine Function: _Z12_rwES2fclosePv
; Address            : 0x1E26C4 - 0x1E26D4
; =========================================================

1E26C4:  PUSH            {R7,LR}
1E26C6:  MOV             R7, SP
1E26C8:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
1E26CC:  CMP             R0, #0
1E26CE:  IT NE
1E26D0:  MOVNE           R0, #1
1E26D2:  POP             {R7,PC}
