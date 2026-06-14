; =========================================================
; Game Engine Function: _ZN5CData4LoadEjjPjh
; Address            : 0x54D58A - 0x54D5C0
; =========================================================

54D58A:  PUSH            {R4-R7,LR}
54D58C:  ADD             R7, SP, #0xC
54D58E:  PUSH.W          {R8}
54D592:  MOV             R6, R1
54D594:  MOV             R5, R0
54D596:  LSRS            R0, R6, #1
54D598:  MOV             R4, R3
54D59A:  STR             R0, [R5,#4]
54D59C:  BIC.W           R0, R6, #1; unsigned int
54D5A0:  MOV             R8, R2
54D5A2:  BLX             _Znaj; operator new[](uint)
54D5A6:  MOV             R1, R0; unsigned int
54D5A8:  MOV             R0, R8; this
54D5AA:  MOV             R2, R6; char *
54D5AC:  STR             R1, [R5]
54D5AE:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D5B2:  LDR             R0, [R4]
54D5B4:  ADD             R0, R6
54D5B6:  STR             R0, [R4]
54D5B8:  MOVS            R0, #1
54D5BA:  POP.W           {R8}
54D5BE:  POP             {R4-R7,PC}
