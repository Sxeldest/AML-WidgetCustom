; =========================================================
; Game Engine Function: _ZN13CMovingThings8ShutdownEv
; Address            : 0x5A64C0 - 0x5A65A0
; =========================================================

5A64C0:  PUSH            {R4-R7,LR}
5A64C2:  ADD             R7, SP, #0xC
5A64C4:  PUSH.W          {R8-R11}
5A64C8:  SUB             SP, SP, #0x14
5A64CA:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A64DC)
5A64CC:  MOV.W           R12, #0
5A64D0:  MOV.W           R1, #0x150
5A64D4:  MOV.W           R9, #0
5A64D8:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A64DA:  LDR             R0, [R0]; CEscalators::aArray ...
5A64DC:  ADD.W           R4, R0, #0xA8
5A64E0:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A64E6)
5A64E2:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A64E4:  LDR             R0, [R0]; CEscalators::aArray ...
5A64E6:  STR             R0, [SP,#0x30+var_28]
5A64E8:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A64EE)
5A64EA:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A64EC:  LDR             R0, [R0]; CEscalators::aArray ...
5A64EE:  STR             R0, [SP,#0x30+var_2C]
5A64F0:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A64F6)
5A64F2:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A64F4:  LDR             R0, [R0]; CEscalators::aArray ...
5A64F6:  STR             R0, [SP,#0x30+var_30]
5A64F8:  LDR             R0, =(deletingEscalator_ptr - 0x5A64FE)
5A64FA:  ADD             R0, PC; deletingEscalator_ptr
5A64FC:  LDR             R0, [R0]; deletingEscalator
5A64FE:  STR             R0, [SP,#0x30+var_20]
5A6500:  LDR             R0, =(deletingEscalator_ptr - 0x5A6506)
5A6502:  ADD             R0, PC; deletingEscalator_ptr
5A6504:  LDR.W           R8, [R0]; deletingEscalator
5A6508:  LDR             R0, [SP,#0x30+var_28]
5A650A:  MLA.W           R2, R9, R1, R0
5A650E:  LDRB.W          R0, [R2,#0x79]!
5A6512:  CBZ             R0, loc_5A6580
5A6514:  LDR             R0, [SP,#0x30+var_30]
5A6516:  MLA.W           R10, R9, R1, R0
5A651A:  STR             R2, [SP,#0x30+var_24]
5A651C:  LDR.W           R1, [R10,#0x7C]!; CEntity *
5A6520:  MOV             R11, R10
5A6522:  MOV             R6, R10
5A6524:  LDR.W           R2, [R11,#4]!
5A6528:  LDR.W           R3, [R6,#8]!
5A652C:  ADDS            R0, R2, R1
5A652E:  ADD             R0, R3
5A6530:  CMP             R0, #1
5A6532:  BLT             loc_5A6576
5A6534:  MOVS            R5, #0
5A6536:  LDR.W           R0, [R4,R5,LSL#2]; this
5A653A:  CBZ             R0, loc_5A656C
5A653C:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5A6540:  LDR             R0, [SP,#0x30+var_20]
5A6542:  MOVS            R1, #1
5A6544:  STRB            R1, [R0]
5A6546:  LDR.W           R0, [R4,R5,LSL#2]
5A654A:  CMP             R0, #0
5A654C:  ITTT NE
5A654E:  LDRNE           R1, [R0]
5A6550:  LDRNE           R1, [R1,#4]
5A6552:  BLXNE           R1
5A6554:  MOVS            R0, #0
5A6556:  MOV.W           R12, #0
5A655A:  STR.W           R0, [R4,R5,LSL#2]
5A655E:  LDR             R3, [R6]
5A6560:  LDR.W           R2, [R11]
5A6564:  LDR.W           R1, [R10]
5A6568:  STRB.W          R0, [R8]
5A656C:  ADDS            R0, R2, R3
5A656E:  ADDS            R5, #1
5A6570:  ADD             R0, R1
5A6572:  CMP             R5, R0
5A6574:  BLT             loc_5A6536
5A6576:  LDR             R0, [SP,#0x30+var_24]
5A6578:  MOV.W           R1, #0x150
5A657C:  STRB.W          R12, [R0]
5A6580:  LDR             R0, [SP,#0x30+var_2C]
5A6582:  ADD.W           R4, R4, #0x150
5A6586:  MLA.W           R0, R9, R1, R0
5A658A:  ADD.W           R9, R9, #1
5A658E:  CMP.W           R9, #0x20 ; ' '
5A6592:  STRB.W          R12, [R0,#0x78]
5A6596:  BNE             loc_5A6508
5A6598:  ADD             SP, SP, #0x14
5A659A:  POP.W           {R8-R11}
5A659E:  POP             {R4-R7,PC}
