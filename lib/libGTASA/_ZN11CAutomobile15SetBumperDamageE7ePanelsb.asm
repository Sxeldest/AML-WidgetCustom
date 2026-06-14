; =========================================================
; Game Engine Function: _ZN11CAutomobile15SetBumperDamageE7ePanelsb
; Address            : 0x55255C - 0x552672
; =========================================================

55255C:  PUSH            {R4-R7,LR}
55255E:  ADD             R7, SP, #0xC
552560:  PUSH.W          {R8}
552564:  MOV             R5, R0
552566:  ADDW            R0, R5, #0x5B4; this
55256A:  MOV             R8, R2
55256C:  MOV             R4, R1
55256E:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
552572:  MOV             R6, R0
552574:  MOV             R0, R4
552576:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
55257A:  MOV             R4, R0
55257C:  ADD.W           R0, R5, R4,LSL#2
552580:  LDR.W           R1, [R0,#0x65C]
552584:  CBZ             R1, loc_5525FA
552586:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x552590)
552588:  LDRSH.W         R3, [R5,#0x26]
55258C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55258E:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
552590:  LDR.W           R2, [R2,R3,LSL#2]
552594:  MOVS            R3, #1
552596:  LSLS            R3, R4
552598:  LDR             R2, [R2,#0x74]
55259A:  LDR.W           R2, [R2,#0x328]
55259E:  TST             R2, R3
5525A0:  BEQ             loc_5525FA
5525A2:  UXTB            R2, R6
5525A4:  CMP             R2, #1
5525A6:  BEQ             loc_5525CA
5525A8:  CMP             R2, #3
5525AA:  BEQ             loc_5525D0
5525AC:  CMP             R2, #2
5525AE:  BNE             loc_5525FA
5525B0:  LDR.W           R0, [R5,#0x388]
5525B4:  LDRB.W          R0, [R0,#0xCF]
5525B8:  LSLS            R0, R0, #0x1B
5525BA:  BMI             loc_5525FA
5525BC:  LDRSH.W         R0, [R5,#0x6C0]
5525C0:  ADDS            R1, R0, #1
5525C2:  BNE             loc_5525F6
5525C4:  ADD.W           R5, R5, #0x6C0
5525C8:  B               loc_552624
5525CA:  MOV             R0, R5
5525CC:  MOVS            R2, #2
5525CE:  B               loc_5525EA
5525D0:  CMP.W           R8, #0
5525D4:  BNE             loc_5525E6
5525D6:  ADDW            R6, R0, #0x65C
5525DA:  MOV             R0, R5; this
5525DC:  MOV             R1, R4; int
5525DE:  MOVS            R2, #0; unsigned int
5525E0:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
5525E4:  LDR             R1, [R6]
5525E6:  MOV             R0, R5
5525E8:  MOVS            R2, #0
5525EA:  POP.W           {R8}
5525EE:  POP.W           {R4-R7,LR}
5525F2:  B.W             sub_18B824
5525F6:  CMP             R4, R0
5525F8:  BNE             loc_552600
5525FA:  POP.W           {R8}
5525FE:  POP             {R4-R7,PC}
552600:  LDRH.W          R1, [R5,#0x6E0]
552604:  MOVW            R0, #0xFFFF
552608:  CMP             R1, R0
55260A:  BNE             loc_552612
55260C:  ADD.W           R5, R5, #0x6E0
552610:  B               loc_552624
552612:  SXTH            R1, R1
552614:  CMP             R4, R1
552616:  BEQ             loc_5525FA
552618:  LDRH.W          R1, [R5,#0x700]
55261C:  CMP             R1, R0
55261E:  BNE             loc_55265E
552620:  ADD.W           R5, R5, #0x700
552624:  BLX             rand
552628:  VMOV            S0, R0
55262C:  VLDR            S2, =-4.6566e-10
552630:  SXTH            R1, R4; __int16
552632:  MOV             R0, R5; this
552634:  VCVT.F32.S32    S0, S0
552638:  MOVS            R2, #0; __int16
55263A:  VMUL.F32        S0, S0, S2
55263E:  VLDR            S2, =0.3
552642:  VMUL.F32        S0, S0, S2
552646:  VLDR            S2, =-0.2
55264A:  VADD.F32        S0, S0, S2
55264E:  VMOV            R3, S0; float
552652:  POP.W           {R8}
552656:  POP.W           {R4-R7,LR}
55265A:  B.W             sub_1935A0
55265E:  SXTH            R1, R1
552660:  CMP             R4, R1
552662:  BEQ             loc_5525FA
552664:  LDRH.W          R1, [R5,#0x720]
552668:  CMP             R1, R0
55266A:  BNE             loc_5525FA
55266C:  ADD.W           R5, R5, #0x720
552670:  B               loc_552624
