; =========================================================
; Game Engine Function: _ZN19FurnitureSubGroup_c12GetFurnitureEsh
; Address            : 0x444558 - 0x44462E
; =========================================================

444558:  PUSH            {R4-R7,LR}
44455A:  ADD             R7, SP, #0xC
44455C:  PUSH.W          {R11}
444560:  MOV             R4, R2
444562:  CMP             R1, #0
444564:  BLT             loc_44457A
444566:  LDR             R0, [R0,#0xC]
444568:  CBZ             R0, loc_4445E6
44456A:  UXTH            R1, R1
44456C:  LDRH            R2, [R0,#0xA]
44456E:  CMP             R2, R1
444570:  BEQ             loc_4445E8
444572:  LDR             R0, [R0,#4]
444574:  CMP             R0, #0
444576:  BNE             loc_44456C
444578:  B               loc_4445E6
44457A:  ADD.W           R5, R0, #0xC
44457E:  CMP             R4, #0xFF
444580:  BEQ             loc_4445EE
444582:  LDR             R0, [R5]
444584:  MOVS            R6, #0
444586:  CBNZ            R0, loc_44458E
444588:  B               loc_44459E
44458A:  LDR             R0, [R0,#4]
44458C:  CBZ             R0, loc_44459E
44458E:  LDRB            R1, [R0,#0xE]
444590:  CMP             R1, R4
444592:  BHI             loc_44458A
444594:  LDRB            R1, [R0,#0xF]
444596:  CMP             R1, R4
444598:  IT CS
44459A:  ADDCS           R6, #1
44459C:  B               loc_44458A
44459E:  BLX             rand
4445A2:  UXTH            R0, R0
4445A4:  VLDR            S2, =0.000015259
4445A8:  VMOV            S0, R0
4445AC:  VMOV            S4, R6
4445B0:  VCVT.F32.S32    S0, S0
4445B4:  VCVT.F32.S32    S4, S4
4445B8:  VMUL.F32        S0, S0, S2
4445BC:  VMUL.F32        S0, S0, S4
4445C0:  VCVT.S32.F32    S0, S0
4445C4:  LDR             R0, [R5]
4445C6:  CBZ             R0, loc_4445E6
4445C8:  VMOV            R1, S0
4445CC:  MOVS            R2, #0
4445CE:  LDRB            R3, [R0,#0xE]
4445D0:  CMP             R3, R4
4445D2:  BHI             loc_4445E0
4445D4:  LDRB            R3, [R0,#0xF]
4445D6:  CMP             R3, R4
4445D8:  BCC             loc_4445E0
4445DA:  CMP             R2, R1
4445DC:  BEQ             loc_4445E8
4445DE:  ADDS            R2, #1
4445E0:  LDR             R0, [R0,#4]
4445E2:  CMP             R0, #0
4445E4:  BNE             loc_4445CE
4445E6:  MOVS            R0, #0
4445E8:  POP.W           {R11}
4445EC:  POP             {R4-R7,PC}
4445EE:  MOV             R0, R5; this
4445F0:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
4445F4:  MOV             R4, R0
4445F6:  BLX             rand
4445FA:  UXTH            R0, R0
4445FC:  VLDR            S2, =0.000015259
444600:  VMOV            S0, R0
444604:  MOV             R0, R5; this
444606:  VMOV            S4, R4
44460A:  MOVS            R1, #1; unsigned __int8
44460C:  VCVT.F32.S32    S0, S0
444610:  VCVT.F32.S32    S4, S4
444614:  VMUL.F32        S0, S0, S2
444618:  VMUL.F32        S0, S0, S4
44461C:  VCVT.S32.F32    S0, S0
444620:  VMOV            R2, S0; int
444624:  BLX             j__ZN6List_c13GetItemOffsetEhi; List_c::GetItemOffset(uchar,int)
444628:  POP.W           {R11}
44462C:  POP             {R4-R7,PC}
