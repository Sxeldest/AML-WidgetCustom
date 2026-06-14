; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator18GetModelInfoIdFileEv
; Address            : 0x386464 - 0x3864C2
; =========================================================

386464:  PUSH            {R4-R7,LR}
386466:  ADD             R7, SP, #0xC
386468:  PUSH.W          {R8}
38646C:  MOV             R8, R0
38646E:  ADD.W           R0, R8, #6; this
386472:  ADR             R1, dword_3864C4; char *
386474:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
386478:  MOV             R5, R0
38647A:  CMP             R5, #0
38647C:  MOV             R6, R5
38647E:  MOVW            R0, #0xA08C; unsigned int
386482:  IT NE
386484:  MOVNE           R6, #1
386486:  STRB.W          R6, [R8,#0x1B]
38648A:  BLX             _Znaj; operator new[](uint)
38648E:  MOV             R4, R0
386490:  MOVW            R1, #0xA08C
386494:  STR.W           R4, [R8]
386498:  BLX             j___aeabi_memclr8_1
38649C:  CBZ             R5, loc_3864B4
38649E:  MOV             R0, R5; this
3864A0:  MOV             R1, R4; ptr
3864A2:  MOVW            R2, #0xA08C; n
3864A6:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
3864AA:  MOV             R0, R5; this
3864AC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
3864B0:  LDRB.W          R6, [R8,#0x1B]
3864B4:  CMP             R6, #0
3864B6:  IT NE
3864B8:  MOVNE           R6, #1
3864BA:  MOV             R0, R6
3864BC:  POP.W           {R8}
3864C0:  POP             {R4-R7,PC}
