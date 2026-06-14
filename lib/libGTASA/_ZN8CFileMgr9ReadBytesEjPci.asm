; =========================================================
; Game Engine Function: _ZN8CFileMgr9ReadBytesEjPci
; Address            : 0x3F0E94 - 0x3F0EA8
; =========================================================

3F0E94:  PUSH            {R4,R6,R7,LR}
3F0E96:  ADD             R7, SP, #8
3F0E98:  MOV             R4, R2
3F0E9A:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
3F0E9E:  CMP             R0, #0
3F0EA0:  IT NE
3F0EA2:  MOVNE           R4, #0
3F0EA4:  MOV             R0, R4
3F0EA6:  POP             {R4,R6,R7,PC}
