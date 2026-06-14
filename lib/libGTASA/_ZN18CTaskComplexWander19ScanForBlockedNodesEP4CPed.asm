; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander19ScanForBlockedNodesEP4CPed
; Address            : 0x5215D0 - 0x52166E
; =========================================================

5215D0:  PUSH            {R4-R7,LR}
5215D2:  ADD             R7, SP, #0xC
5215D4:  PUSH.W          {R8}
5215D8:  SUB             SP, SP, #0x18
5215DA:  MOV             R4, R0
5215DC:  MOV             R5, R1
5215DE:  LDR             R0, [R4,#8]
5215E0:  LDR             R1, [R0]
5215E2:  LDR             R1, [R1,#0x14]
5215E4:  BLX             R1
5215E6:  CMP.W           R0, #0x384
5215EA:  BNE             loc_521666
5215EC:  MOV             R2, R4
5215EE:  MOVW            R1, #0xFFFF
5215F2:  LDRH.W          R0, [R2,#0x1C]!
5215F6:  CMP             R0, R1
5215F8:  BEQ             loc_521666
5215FA:  MOV             R0, R4
5215FC:  MOV             R1, R5
5215FE:  BLX             j__ZNK18CTaskComplexWander18ScanForBlockedNodeEP4CPedRK12CNodeAddress; CTaskComplexWander::ScanForBlockedNode(CPed *,CNodeAddress const&)
521602:  CMP             R0, #1
521604:  BNE             loc_521666
521606:  LDR             R0, [R4,#8]
521608:  MOVS            R2, #0
52160A:  MOVS            R3, #0
52160C:  LDR             R1, [R0]
52160E:  LDR             R6, [R1,#0x1C]
521610:  MOV             R1, R5
521612:  BLX             R6
521614:  LDR             R0, [R4,#0x18]
521616:  ADD             R3, SP, #0x28+var_14
521618:  STR             R0, [SP,#0x28+var_14]
52161A:  ADD.W           R8, SP, #0x28+var_18
52161E:  LDR             R0, [R4,#0x1C]
521620:  MOV             R1, R5
521622:  STR             R0, [SP,#0x28+var_18]
521624:  LDRB            R2, [R4,#0x10]
521626:  STRB.W          R2, [R7,#var_19]
52162A:  LDR             R0, [R4]
52162C:  LDR             R6, [R0,#0x40]
52162E:  SUB.W           R0, R7, #-var_19
521632:  STRD.W          R8, R0, [SP,#0x28+var_28]
521636:  MOV             R0, R4
521638:  BLX             R6
52163A:  MOV             R0, R4
52163C:  MOV             R1, R5
52163E:  MOV             R2, R8
521640:  BLX             j__ZNK18CTaskComplexWander18ScanForBlockedNodeEP4CPedRK12CNodeAddress; CTaskComplexWander::ScanForBlockedNode(CPed *,CNodeAddress const&)
521644:  CBNZ            R0, loc_52165A
521646:  LDRH.W          R0, [SP,#0x28+var_18]
52164A:  LDRH            R1, [R4,#0x18]
52164C:  CMP             R0, R1
52164E:  BNE             loc_521666
521650:  LDRH.W          R0, [SP,#0x28+var_18+2]
521654:  LDRH            R1, [R4,#0x1A]
521656:  CMP             R0, R1
521658:  BNE             loc_521666
52165A:  LDRB.W          R0, [R4,#0x24]
52165E:  ORR.W           R0, R0, #8
521662:  STRB.W          R0, [R4,#0x24]
521666:  ADD             SP, SP, #0x18
521668:  POP.W           {R8}
52166C:  POP             {R4-R7,PC}
