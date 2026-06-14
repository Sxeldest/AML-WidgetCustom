; =========================================================
; Game Engine Function: _ZN9CIplStore8ShutdownEv
; Address            : 0x280428 - 0x2805B6
; =========================================================

280428:  PUSH            {R4-R7,LR}
28042A:  ADD             R7, SP, #0xC
28042C:  PUSH.W          {R8-R11}
280430:  SUB             SP, SP, #4
280432:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x280442)
280434:  MOV             R1, #0x7B526; int
28043C:  MOVS            R5, #0
28043E:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
280440:  MOVW            R8, #0x62A8
280444:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
280446:  ADDS            R4, R0, R1
280448:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28044E)
28044A:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28044C:  LDR             R6, [R0]; CIplStore::ms_pPool ...
28044E:  LDR             R0, [R6]; CIplStore::ms_pPool
280450:  LDR             R0, [R0,#4]
280452:  ADD             R0, R5
280454:  LDRSB.W         R0, [R0,#1]
280458:  CMP             R0, #0
28045A:  BLT             loc_28046C
28045C:  LDRB            R0, [R4]
28045E:  TST.W           R0, #6
280462:  ITT EQ
280464:  ADDEQ.W         R0, R5, R8; this
280468:  BLXEQ           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
28046C:  ADDS            R5, #1
28046E:  BL              sub_4C6D32
280472:  BNE             loc_28044E
280474:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28047E)
280476:  MOVS            R6, #0
280478:  MOVS            R5, #0
28047A:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28047C:  LDR             R0, [R0]; CIplStore::ms_pPool ...
28047E:  LDR             R4, [R0]; CIplStore::ms_pPool
280480:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280486)
280482:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280484:  LDR.W           R8, [R0]; CIplStore::ms_pPool ...
280488:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x28048E)
28048A:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
28048C:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
28048E:  STR             R0, [SP,#0x20+var_20]
280490:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280496)
280492:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280494:  LDR.W           R10, [R0]; CIplStore::ms_pPool ...
280498:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28049E)
28049A:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28049C:  LDR.W           R9, [R0]; CIplStore::ms_pPool ...
2804A0:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x2804A6)
2804A2:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
2804A4:  LDR.W           R11, [R0]; CIplStore::ms_pQuadTree ...
2804A8:  LDR             R0, [R4,#4]
2804AA:  LDRSB           R0, [R0,R5]
2804AC:  CMP             R0, #0
2804AE:  BLT             loc_280514
2804B0:  LDR             R0, [R4]
2804B2:  ADDS            R0, R0, R6
2804B4:  BEQ             loc_280514
2804B6:  LDRB.W          R0, [R0,#0x2D]
2804BA:  CBZ             R0, loc_2804D6
2804BC:  MOV             R0, R5; this
2804BE:  BLX             j__ZN9CIplStore9RemoveIplEi; CIplStore::RemoveIpl(int)
2804C2:  LDR.W           R4, [R9]; CIplStore::ms_pPool
2804C6:  LDR             R0, [R4,#4]
2804C8:  LDRSB           R1, [R0,R5]
2804CA:  LDR.W           R0, [R11]; CIplStore::ms_pQuadTree
2804CE:  CMP             R1, #0
2804D0:  BGE             loc_2804DA
2804D2:  MOVS            R1, #0
2804D4:  B               loc_2804DE
2804D6:  LDR             R0, [SP,#0x20+var_20]
2804D8:  LDR             R0, [R0]; this
2804DA:  LDR             R1, [R4]
2804DC:  ADD             R1, R6; void *
2804DE:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
2804E2:  LDR.W           R0, [R10]; CIplStore::ms_pPool
2804E6:  LDR             R1, [R0,#4]
2804E8:  LDRSB           R2, [R1,R5]
2804EA:  CMP.W           R2, #0xFFFFFFFF
2804EE:  LDR             R2, [R0]
2804F0:  ITE GT
2804F2:  ADDGT           R3, R2, R6
2804F4:  MOVLE           R3, #0
2804F6:  SUBS            R2, R3, R2
2804F8:  MOV             R3, #0xC4EC4EC5
280500:  ASRS            R2, R2, #2
280502:  MULS            R2, R3
280504:  LDRB            R3, [R1,R2]
280506:  ORR.W           R3, R3, #0x80
28050A:  STRB            R3, [R1,R2]
28050C:  LDR             R1, [R0,#0xC]
28050E:  CMP             R2, R1
280510:  IT LT
280512:  STRLT           R2, [R0,#0xC]
280514:  LDR.W           R4, [R8]; CIplStore::ms_pPool
280518:  ADDS            R5, #1
28051A:  ADDS            R6, #0x34 ; '4'
28051C:  CMP.W           R5, #0x100
280520:  BNE             loc_2804A8
280522:  CBZ             R4, loc_280556
280524:  LDR             R0, [R4,#8]
280526:  CMP             R0, #1
280528:  BLT             loc_280550
28052A:  LDRB            R0, [R4,#0x10]
28052C:  CBZ             R0, loc_280548
28052E:  LDR             R0, [R4]; void *
280530:  CMP             R0, #0
280532:  IT NE
280534:  BLXNE           _ZdaPv; operator delete[](void *)
280538:  MOV             R5, R4
28053A:  LDR.W           R0, [R5,#4]!; void *
28053E:  CMP             R0, #0
280540:  IT NE
280542:  BLXNE           _ZdaPv; operator delete[](void *)
280546:  B               loc_28054A
280548:  ADDS            R5, R4, #4
28054A:  MOVS            R0, #0
28054C:  STR             R0, [R4]
28054E:  STR             R0, [R5]
280550:  MOV             R0, R4; void *
280552:  BLX             _ZdlPv; operator delete(void *)
280556:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280562)
280558:  MOV.W           R8, #0
28055C:  LDR             R1, =(dword_6DFDA0 - 0x280564)
28055E:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280560:  ADD             R1, PC; dword_6DFDA0
280562:  LDR             R0, [R0]; CIplStore::ms_pPool ...
280564:  LDR             R1, [R1]
280566:  CMP             R1, #1
280568:  STR.W           R8, [R0]; CIplStore::ms_pPool
28056C:  BLT             loc_28058A
28056E:  LDR             R6, =(unk_6DFDA8 - 0x280578)
280570:  MOVS            R5, #0
280572:  LDR             R4, =(dword_6DFDA0 - 0x28057A)
280574:  ADD             R6, PC; unk_6DFDA8
280576:  ADD             R4, PC; dword_6DFDA0
280578:  LDR.W           R0, [R6,R5,LSL#2]; void *
28057C:  CBZ             R0, loc_280584
28057E:  BLX             _ZdaPv; operator delete[](void *)
280582:  LDR             R1, [R4]
280584:  ADDS            R5, #1
280586:  CMP             R5, R1
280588:  BLT             loc_280578
28058A:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x280592)
28058C:  LDR             R1, =(dword_6DFDA0 - 0x280594)
28058E:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
280590:  ADD             R1, PC; dword_6DFDA0
280592:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
280594:  STR.W           R8, [R1]
280598:  LDR             R0, [R0]; this
28059A:  CBZ             R0, loc_2805A4
28059C:  BLX             j__ZN13CQuadTreeNodeD2Ev_0; CQuadTreeNode::~CQuadTreeNode()
2805A0:  BLX             j__ZN13CQuadTreeNodedlEPv; CQuadTreeNode::operator delete(void *)
2805A4:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x2805AC)
2805A6:  MOVS            R1, #0
2805A8:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
2805AA:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
2805AC:  STR             R1, [R0]; CIplStore::ms_pQuadTree
2805AE:  ADD             SP, SP, #4
2805B0:  POP.W           {R8-R11}
2805B4:  POP             {R4-R7,PC}
