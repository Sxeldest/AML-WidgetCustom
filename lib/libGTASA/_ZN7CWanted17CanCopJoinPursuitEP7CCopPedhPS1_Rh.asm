; =========================================================
; Game Engine Function: _ZN7CWanted17CanCopJoinPursuitEP7CCopPedhPS1_Rh
; Address            : 0x422524 - 0x422610
; =========================================================

422524:  PUSH            {R4-R7,LR}
422526:  ADD             R7, SP, #0xC
422528:  PUSH.W          {R8-R11}
42252C:  SUB             SP, SP, #0x1C
42252E:  MOV             R6, R1
422530:  MOV             R4, R3
422532:  MOV             R5, R2
422534:  MOV             R8, R0
422536:  CMP             R6, #0
422538:  BEQ             loc_422606
42253A:  LDRB            R0, [R4]
42253C:  CMP             R0, R6
42253E:  BCC             loc_422602
422540:  ADD.W           R0, R5, #0x24 ; '$'
422544:  STR             R0, [SP,#0x38+var_38]
422546:  ADD.W           R0, R5, #0x20 ; ' '
42254A:  STR             R0, [SP,#0x38+var_34]
42254C:  ADD.W           R0, R5, #0x1C
422550:  STR             R0, [SP,#0x38+var_30]
422552:  ADD.W           R0, R5, #0x18
422556:  STR             R0, [SP,#0x38+var_2C]
422558:  ADD.W           R0, R5, #0x14
42255C:  ADD.W           R10, R5, #8
422560:  ADD.W           R11, R5, #4
422564:  STR             R0, [SP,#0x38+var_28]
422566:  ADD.W           R0, R5, #0x10
42256A:  MOV.W           R9, #0
42256E:  STR             R0, [SP,#0x38+var_24]
422570:  ADD.W           R0, R5, #0xC
422574:  STR             R0, [SP,#0x38+var_20]
422576:  MOV             R0, R8; this
422578:  MOV             R1, R5; CCopPed *
42257A:  BLX             j__ZN7CWanted27ComputePursuitCopToDisplaceEP7CCopPedPS1_; CWanted::ComputePursuitCopToDisplace(CCopPed *,CCopPed **)
42257E:  CMP             R0, #0
422580:  BEQ             loc_422606
422582:  LDR             R1, [R5]
422584:  CMP             R1, R0
422586:  MOV             R1, R5
422588:  BEQ             loc_4225F2
42258A:  LDR.W           R1, [R11]
42258E:  CMP             R1, R0
422590:  MOV             R1, R11
422592:  BEQ             loc_4225F2
422594:  LDR.W           R1, [R10]
422598:  CMP             R1, R0
42259A:  MOV             R1, R10
42259C:  BEQ             loc_4225F2
42259E:  LDR             R1, [SP,#0x38+var_20]
4225A0:  MOV             R2, R1
4225A2:  LDR             R1, [R2]
4225A4:  CMP             R1, R0
4225A6:  MOV             R1, R2
4225A8:  BEQ             loc_4225F2
4225AA:  LDR             R1, [SP,#0x38+var_24]
4225AC:  MOV             R2, R1
4225AE:  LDR             R1, [R2]
4225B0:  CMP             R1, R0
4225B2:  MOV             R1, R2
4225B4:  BEQ             loc_4225F2
4225B6:  LDR             R1, [SP,#0x38+var_28]
4225B8:  MOV             R2, R1
4225BA:  LDR             R1, [R2]
4225BC:  CMP             R1, R0
4225BE:  MOV             R1, R2
4225C0:  BEQ             loc_4225F2
4225C2:  LDR             R1, [SP,#0x38+var_2C]
4225C4:  MOV             R2, R1
4225C6:  LDR             R1, [R2]
4225C8:  CMP             R1, R0
4225CA:  MOV             R1, R2
4225CC:  BEQ             loc_4225F2
4225CE:  LDR             R1, [SP,#0x38+var_30]
4225D0:  MOV             R2, R1
4225D2:  LDR             R1, [R2]
4225D4:  CMP             R1, R0
4225D6:  MOV             R1, R2
4225D8:  BEQ             loc_4225F2
4225DA:  LDR             R1, [SP,#0x38+var_34]
4225DC:  MOV             R2, R1
4225DE:  LDR             R1, [R2]
4225E0:  CMP             R1, R0
4225E2:  MOV             R1, R2
4225E4:  BEQ             loc_4225F2
4225E6:  LDR             R1, [SP,#0x38+var_38]
4225E8:  MOV             R2, R1
4225EA:  LDR             R1, [R2]
4225EC:  CMP             R1, R0
4225EE:  MOV             R1, R2
4225F0:  BNE             loc_4225FC
4225F2:  STR.W           R9, [R1]
4225F6:  LDRB            R0, [R4]
4225F8:  SUBS            R0, #1
4225FA:  STRB            R0, [R4]
4225FC:  LDRB            R0, [R4]
4225FE:  CMP             R0, R6
422600:  BCS             loc_422576
422602:  MOVS            R0, #1
422604:  B               loc_422608
422606:  MOVS            R0, #0
422608:  ADD             SP, SP, #0x1C
42260A:  POP.W           {R8-R11}
42260E:  POP             {R4-R7,PC}
