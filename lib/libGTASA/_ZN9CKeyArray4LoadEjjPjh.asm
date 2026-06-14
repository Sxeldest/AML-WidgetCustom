; =========================================================
; Game Engine Function: _ZN9CKeyArray4LoadEjjPjh
; Address            : 0x54D458 - 0x54D48E
; =========================================================

54D458:  PUSH            {R4-R7,LR}
54D45A:  ADD             R7, SP, #0xC
54D45C:  PUSH.W          {R8}
54D460:  MOV             R6, R1
54D462:  MOV             R5, R0
54D464:  LSRS            R0, R6, #3
54D466:  MOV             R4, R3
54D468:  STR             R0, [R5,#4]
54D46A:  BIC.W           R0, R6, #7; unsigned int
54D46E:  MOV             R8, R2
54D470:  BLX             _Znaj; operator new[](uint)
54D474:  MOV             R1, R0; unsigned int
54D476:  MOV             R0, R8; this
54D478:  MOV             R2, R6; char *
54D47A:  STR             R1, [R5]
54D47C:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D480:  LDR             R0, [R4]
54D482:  ADD             R0, R6
54D484:  STR             R0, [R4]
54D486:  MOVS            R0, #1
54D488:  POP.W           {R8}
54D48C:  POP             {R4-R7,PC}
