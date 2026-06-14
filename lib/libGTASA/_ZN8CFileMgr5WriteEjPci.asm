; =========================================================
; Game Engine Function: _ZN8CFileMgr5WriteEjPci
; Address            : 0x3F0EA8 - 0x3F0EBC
; =========================================================

3F0EA8:  PUSH            {R4,R6,R7,LR}
3F0EAA:  ADD             R7, SP, #8
3F0EAC:  MOV             R4, R2
3F0EAE:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
3F0EB2:  CMP             R0, #0
3F0EB4:  IT NE
3F0EB6:  MOVNE           R4, #0
3F0EB8:  MOV             R0, R4
3F0EBA:  POP             {R4,R6,R7,PC}
