; =========================================================
; Game Engine Function: _ZN8COctTree10InsertTreeEhhh
; Address            : 0x45C4A0 - 0x45C6E0
; =========================================================

45C4A0:  PUSH            {R4-R7,LR}
45C4A2:  ADD             R7, SP, #0xC
45C4A4:  PUSH.W          {R8-R11}
45C4A8:  SUB             SP, SP, #4
45C4AA:  MOV             R4, R0
45C4AC:  LDR             R0, =(_ZN8COctTree8ms_levelE_ptr - 0x45C4B6)
45C4AE:  MOV.W           R8, #0xFFFFFFFF
45C4B2:  ADD             R0, PC; _ZN8COctTree8ms_levelE_ptr
45C4B4:  LDR             R6, [R0]; COctTree::ms_level ...
45C4B6:  LDR.W           LR, [R6]; COctTree::ms_level
45C4BA:  ADD.W           R9, LR, #1
45C4BE:  STR.W           R9, [R6]; COctTree::ms_level
45C4C2:  LDR.W           R12, [R4,#4]
45C4C6:  CMP.W           R9, #8
45C4CA:  LDRD.W          R6, R0, [R4,#0x1C]
45C4CE:  ADD             R0, R2
45C4D0:  LDR             R5, [R4,#0x24]
45C4D2:  ADD             R6, R1
45C4D4:  STRD.W          R6, R0, [R4,#0x1C]
45C4D8:  ADD.W           R0, R12, #1
45C4DC:  ADD             R5, R3
45C4DE:  STR             R5, [R4,#0x24]
45C4E0:  STR             R0, [R4,#4]
45C4E2:  LSL.W           R0, R3, LR
45C4E6:  UBFX.W          R6, R0, #7, #1
45C4EA:  BEQ             loc_45C4F2
45C4EC:  LDRB            R0, [R4,#8]
45C4EE:  CMP             R0, #0
45C4F0:  BEQ             loc_45C57C
45C4F2:  LDR             R0, =(_ZN8COctTree8ms_levelE_ptr - 0x45C502)
45C4F4:  MOVS            R6, #0
45C4F6:  LDR.W           R9, =(dword_9ABF40 - 0x45C50C)
45C4FA:  ADD.W           R5, R4, #0xA
45C4FE:  ADD             R0, PC; _ZN8COctTree8ms_levelE_ptr
45C500:  LDR.W           R10, =(dword_9ABF40 - 0x45C510)
45C504:  LDR.W           R11, =(dword_9ABF40 - 0x45C512)
45C508:  ADD             R9, PC; dword_9ABF40
45C50A:  LDR             R0, [R0]; COctTree::ms_level ...
45C50C:  ADD             R10, PC; dword_9ABF40
45C50E:  ADD             R11, PC; dword_9ABF40
45C510:  STR             R6, [R0]; COctTree::ms_level
45C512:  MOVS            R0, #1
45C514:  STRB            R0, [R4,#8]
45C516:  LDRSH.W         R0, [R5,R6,LSL#1]
45C51A:  CMP             R0, R8
45C51C:  BLE             loc_45C566
45C51E:  LDR.W           R1, [R9,#(dword_9ABF44 - 0x9ABF40)]
45C522:  LDRSB           R1, [R1,R0]
45C524:  CMP             R1, #0
45C526:  BLT             loc_45C562
45C528:  LDR.W           R1, [R10]
45C52C:  ADD.W           R0, R0, R0,LSL#2
45C530:  ADD.W           R0, R1, R0,LSL#3; this
45C534:  CBZ             R0, loc_45C562
45C536:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45C53A:  LDRD.W          R1, R2, [R11]
45C53E:  SUBS            R0, R0, R1
45C540:  MOV             R1, #0xCCCCCCCD
45C548:  ASRS            R0, R0, #3
45C54A:  MULS            R0, R1
45C54C:  LDRB            R1, [R2,R0]
45C54E:  ORR.W           R1, R1, #0x80
45C552:  STRB            R1, [R2,R0]
45C554:  LDR.W           R1, [R11,#(dword_9ABF4C - 0x9ABF40)]
45C558:  CMP             R0, R1
45C55A:  BGE             loc_45C562
45C55C:  LDR             R1, =(dword_9ABF40 - 0x45C562)
45C55E:  ADD             R1, PC; dword_9ABF40
45C560:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45C562:  STRH.W          R8, [R5,R6,LSL#1]
45C566:  ADDS            R6, #1
45C568:  CMP             R6, #8
45C56A:  BNE             loc_45C516
45C56C:  LDR             R0, [R4,#4]
45C56E:  CMP             R0, #1
45C570:  IT NE
45C572:  MOVNE           R0, #0
45C574:  ADD             SP, SP, #4
45C576:  POP.W           {R8-R11}
45C57A:  POP             {R4-R7,PC}
45C57C:  LSL.W           R0, R2, LR
45C580:  MOVS            R5, #2
45C582:  AND.W           R12, R5, R0,LSR#6
45C586:  LSL.W           R5, R1, LR
45C58A:  MOVS            R0, #4
45C58C:  AND.W           R0, R0, R5,LSR#5
45C590:  ORR.W           R0, R0, R12
45C594:  ORRS            R0, R6
45C596:  ADD.W           R9, R4, R0,LSL#1
45C59A:  LDRSH.W         R0, [R9,#0xA]!
45C59E:  CMP.W           R0, #0xFFFFFFFF
45C5A2:  BLE             loc_45C5C0
45C5A4:  LDR             R6, =(dword_9ABF40 - 0x45C5AA)
45C5A6:  ADD             R6, PC; dword_9ABF40
45C5A8:  LDR             R6, [R6,#(dword_9ABF44 - 0x9ABF40)]
45C5AA:  LDRSB           R6, [R6,R0]
45C5AC:  CMP             R6, #0
45C5AE:  BLT             loc_45C67C
45C5B0:  LDR             R6, =(dword_9ABF40 - 0x45C5BA)
45C5B2:  ADD.W           R0, R0, R0,LSL#2
45C5B6:  ADD             R6, PC; dword_9ABF40
45C5B8:  LDR             R6, [R6]
45C5BA:  ADD.W           R4, R6, R0,LSL#3
45C5BE:  B               loc_45C67E
45C5C0:  LDR             R0, =(dword_9ABF40 - 0x45C5D0)
45C5C2:  MOVS            R6, #0
45C5C4:  LDR.W           LR, =(dword_9ABF40 - 0x45C5D6)
45C5C8:  LDR.W           R12, =(dword_9ABF40 - 0x45C5DC)
45C5CC:  ADD             R0, PC; dword_9ABF40
45C5CE:  LDR.W           R10, =(dword_9ABF40 - 0x45C5DE)
45C5D2:  ADD             LR, PC; dword_9ABF40
45C5D4:  LDRD.W          R11, R4, [R0,#(dword_9ABF48 - 0x9ABF40)]
45C5D8:  ADD             R12, PC; dword_9ABF40
45C5DA:  ADD             R10, PC; dword_9ABF40
45C5DC:  ADDS            R4, #1
45C5DE:  STR.W           R4, [LR,#(dword_9ABF4C - 0x9ABF40)]
45C5E2:  CMP             R4, R11
45C5E4:  BNE             loc_45C5F2
45C5E6:  MOVS            R4, #0
45C5E8:  LSLS            R0, R6, #0x1F
45C5EA:  STR.W           R4, [R12,#(dword_9ABF4C - 0x9ABF40)]
45C5EE:  BNE             loc_45C632
45C5F0:  MOVS            R6, #1
45C5F2:  LDR.W           R5, [R10,#(dword_9ABF44 - 0x9ABF40)]
45C5F6:  LDRSB           R0, [R5,R4]
45C5F8:  CMP.W           R0, #0xFFFFFFFF
45C5FC:  BGT             loc_45C5DC
45C5FE:  LDR.W           R12, =(dword_9ABF40 - 0x45C60C)
45C602:  AND.W           R0, R0, #0x7F
45C606:  STRB            R0, [R5,R4]
45C608:  ADD             R12, PC; dword_9ABF40
45C60A:  LDR.W           R0, [R12,#(dword_9ABF44 - 0x9ABF40)]
45C60E:  LDR.W           R5, [R12,#(dword_9ABF4C - 0x9ABF40)]
45C612:  LDRB            R4, [R0,R5]
45C614:  AND.W           R6, R4, #0x80
45C618:  ADDS            R4, #1
45C61A:  AND.W           R4, R4, #0x7F
45C61E:  ORRS            R6, R4
45C620:  STRB            R6, [R0,R5]
45C622:  LDR.W           R6, [R12,#(dword_9ABF4C - 0x9ABF40)]
45C626:  LDR.W           R0, [R12]
45C62A:  ADD.W           R6, R6, R6,LSL#2
45C62E:  ADD.W           R4, R0, R6,LSL#3
45C632:  LDR             R0, =(_ZTV8COctTree_ptr - 0x45C640)
45C634:  MOVS            R6, #0
45C636:  CMP             R4, #0
45C638:  MOV.W           R5, #0xFFFFFFFF
45C63C:  ADD             R0, PC; _ZTV8COctTree_ptr
45C63E:  STR             R6, [R4,#4]
45C640:  STRD.W          R6, R6, [R4,#0x1C]
45C644:  LDR             R0, [R0]; `vtable for'COctTree ...
45C646:  STR             R6, [R4,#0x24]
45C648:  STR.W           R5, [R4,#0xA]
45C64C:  ADD.W           R0, R0, #8
45C650:  STR.W           R5, [R4,#0x16]
45C654:  STR.W           R5, [R4,#0x12]
45C658:  STR.W           R5, [R4,#0xE]
45C65C:  STRB            R6, [R4,#8]
45C65E:  STR             R0, [R4]
45C660:  BEQ             loc_45C6D2
45C662:  LDR             R0, =(dword_9ABF40 - 0x45C670)
45C664:  MOV             R6, #0xCCCCCCCD
45C66C:  ADD             R0, PC; dword_9ABF40
45C66E:  LDR             R0, [R0]
45C670:  SUBS            R0, R4, R0
45C672:  LSRS            R0, R0, #3
45C674:  MULS            R0, R6
45C676:  STRH.W          R0, [R9]
45C67A:  B               loc_45C67E
45C67C:  MOVS            R4, #0
45C67E:  LDR             R0, [R4]
45C680:  LDR             R6, [R0]
45C682:  MOV             R0, R4
45C684:  BLX             R6
45C686:  LDR             R1, =(_ZN8COctTree10ms_bFailedE_ptr - 0x45C68C)
45C688:  ADD             R1, PC; _ZN8COctTree10ms_bFailedE_ptr
45C68A:  LDR             R1, [R1]; COctTree::ms_bFailed ...
45C68C:  LDRB            R1, [R1]; COctTree::ms_bFailed
45C68E:  CMP             R1, #0
45C690:  BEQ.W           loc_45C574
45C694:  LDR             R1, [R4,#4]
45C696:  CMP             R1, #1
45C698:  BGT.W           loc_45C574
45C69C:  MOV             R0, R4; this
45C69E:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45C6A2:  LDR             R1, =(dword_9ABF40 - 0x45C6B0)
45C6A4:  MOV             R3, #0xCCCCCCCD
45C6AC:  ADD             R1, PC; dword_9ABF40
45C6AE:  LDRD.W          R0, R2, [R1]
45C6B2:  SUBS            R0, R4, R0
45C6B4:  ASRS            R0, R0, #3
45C6B6:  MULS            R0, R3
45C6B8:  LDRB            R3, [R2,R0]
45C6BA:  ORR.W           R3, R3, #0x80
45C6BE:  STRB            R3, [R2,R0]
45C6C0:  LDR             R1, [R1,#(dword_9ABF4C - 0x9ABF40)]
45C6C2:  CMP             R0, R1
45C6C4:  BGE             loc_45C6CC
45C6C6:  LDR             R1, =(dword_9ABF40 - 0x45C6CC)
45C6C8:  ADD             R1, PC; dword_9ABF40
45C6CA:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45C6CC:  STRH.W          R8, [R9]
45C6D0:  B               loc_45C6DC
45C6D2:  LDR             R0, =(_ZN8COctTree10ms_bFailedE_ptr - 0x45C6DA)
45C6D4:  MOVS            R1, #1
45C6D6:  ADD             R0, PC; _ZN8COctTree10ms_bFailedE_ptr
45C6D8:  LDR             R0, [R0]; COctTree::ms_bFailed ...
45C6DA:  STRB            R1, [R0]; COctTree::ms_bFailed
45C6DC:  MOVS            R0, #0
45C6DE:  B               loc_45C574
