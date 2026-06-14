; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager4InitEv
; Address            : 0x361510 - 0x361588
; =========================================================

361510:  PUSH            {R4,R5,R7,LR}
361512:  ADD             R7, SP, #8
361514:  MOVS            R0, #0x14; unsigned int
361516:  BLX             _Znwj; operator new(uint)
36151A:  MOV             R4, R0
36151C:  MOV.W           R0, #0x4400; unsigned int
361520:  BLX             _Znaj; operator new[](uint)
361524:  STR             R0, [R4]
361526:  MOV.W           R0, #0x100; unsigned int
36152A:  MOV.W           R5, #0x100
36152E:  BLX             _Znaj; operator new[](uint)
361532:  MOVS            R1, #1
361534:  MOVS            R2, #0x80
361536:  STRB            R1, [R4,#0x10]
361538:  MOV.W           R1, #0xFFFFFFFF
36153C:  STRD.W          R0, R5, [R4,#4]
361540:  STR             R1, [R4,#0xC]
361542:  LDRB            R1, [R0,#1]
361544:  STRB            R2, [R0]
361546:  ORR.W           R1, R1, #0x80
36154A:  STRB            R1, [R0,#1]
36154C:  LDR             R0, [R4,#4]
36154E:  LDRB            R1, [R0,#1]
361550:  AND.W           R1, R1, #0x80
361554:  STRB            R1, [R0,#1]
361556:  MOVS            R0, #2
361558:  LDR             R1, [R4,#4]
36155A:  LDRB            R2, [R1,R0]
36155C:  ORR.W           R2, R2, #0x80
361560:  STRB            R2, [R1,R0]
361562:  LDR             R1, [R4,#4]
361564:  LDRB            R2, [R1,R0]
361566:  AND.W           R2, R2, #0x80
36156A:  STRB            R2, [R1,R0]
36156C:  ADDS            R0, #1
36156E:  CMP.W           R0, #0x100
361572:  BNE             loc_361558
361574:  LDR             R0, =(_ZN17CStuntJumpManager9m_bActiveE_ptr - 0x36157E)
361576:  MOVS            R2, #1
361578:  LDR             R1, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x361580)
36157A:  ADD             R0, PC; _ZN17CStuntJumpManager9m_bActiveE_ptr
36157C:  ADD             R1, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
36157E:  LDR             R0, [R0]; CStuntJumpManager::m_bActive ...
361580:  LDR             R1, [R1]; CStuntJumpManager::mp_poolStuntJumps ...
361582:  STRB            R2, [R0]; CStuntJumpManager::m_bActive
361584:  STR             R4, [R1]; CStuntJumpManager::mp_poolStuntJumps
361586:  POP             {R4,R5,R7,PC}
