; =========================================================
; Game Engine Function: _ZNK27CTaskComplexDrivePointRoute5CloneEv
; Address            : 0x4FF418 - 0x4FF49C
; =========================================================

4FF418:  PUSH            {R4-R7,LR}
4FF41A:  ADD             R7, SP, #0xC
4FF41C:  PUSH.W          {R8,R9,R11}
4FF420:  VPUSH           {D8-D9}
4FF424:  MOV             R5, R0
4FF426:  MOVS            R0, #word_2C; this
4FF428:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FF42C:  MOV             R4, R0
4FF42E:  ADD.W           R0, R5, #0x14
4FF432:  LDRD.W          R6, R9, [R5,#0xC]
4FF436:  VLD1.32         {D8-D9}, [R0]
4FF43A:  MOV             R0, R4; this
4FF43C:  LDR.W           R8, [R5,#0x24]
4FF440:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FF444:  LDR             R0, =(_ZTV27CTaskComplexDrivePointRoute_ptr - 0x4FF44C)
4FF446:  STR             R6, [R4,#0xC]
4FF448:  ADD             R0, PC; _ZTV27CTaskComplexDrivePointRoute_ptr
4FF44A:  LDR             R0, [R0]; `vtable for'CTaskComplexDrivePointRoute ...
4FF44C:  ADDS            R0, #8
4FF44E:  STR             R0, [R4]
4FF450:  MOVS            R0, #dword_64; this
4FF452:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
4FF456:  LDR.W           R1, [R9]
4FF45A:  STR             R1, [R0]
4FF45C:  CMP             R1, #1
4FF45E:  BLT             loc_4FF480
4FF460:  ADD.W           R1, R9, #4
4FF464:  ADDS            R2, R0, #4
4FF466:  MOVS            R3, #0
4FF468:  VLDR            D16, [R1]
4FF46C:  ADDS            R3, #1
4FF46E:  LDR             R6, [R1,#8]
4FF470:  ADDS            R1, #0xC
4FF472:  STR             R6, [R2,#8]
4FF474:  VSTR            D16, [R2]
4FF478:  ADDS            R2, #0xC
4FF47A:  LDR             R6, [R0]
4FF47C:  CMP             R3, R6
4FF47E:  BLT             loc_4FF468
4FF480:  STR             R0, [R4,#0x10]
4FF482:  MOVS            R0, #0
4FF484:  STRD.W          R8, R0, [R4,#0x24]
4FF488:  ADD.W           R0, R4, #0x14
4FF48C:  VST1.32         {D8-D9}, [R0]
4FF490:  MOV             R0, R4
4FF492:  VPOP            {D8-D9}
4FF496:  POP.W           {R8,R9,R11}
4FF49A:  POP             {R4-R7,PC}
