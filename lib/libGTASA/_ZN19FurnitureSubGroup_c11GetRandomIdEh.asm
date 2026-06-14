; =========================================================
; Game Engine Function: _ZN19FurnitureSubGroup_c11GetRandomIdEh
; Address            : 0x444634 - 0x4446F8
; =========================================================

444634:  PUSH            {R4-R7,LR}
444636:  ADD             R7, SP, #0xC
444638:  PUSH.W          {R11}
44463C:  ADD.W           R5, R0, #0xC
444640:  MOV             R4, R1
444642:  CMP             R4, #0xFF
444644:  BEQ             loc_4446B4
444646:  LDR             R0, [R5]
444648:  MOVS            R6, #0
44464A:  CBNZ            R0, loc_444652
44464C:  B               loc_444662
44464E:  LDR             R0, [R0,#4]
444650:  CBZ             R0, loc_444662
444652:  LDRB            R1, [R0,#0xE]
444654:  CMP             R1, R4
444656:  BHI             loc_44464E
444658:  LDRB            R1, [R0,#0xF]
44465A:  CMP             R1, R4
44465C:  IT CS
44465E:  ADDCS           R6, #1
444660:  B               loc_44464E
444662:  BLX             rand
444666:  UXTH            R0, R0
444668:  VLDR            S2, =0.000015259
44466C:  VMOV            S0, R0
444670:  VMOV            S4, R6
444674:  VCVT.F32.S32    S0, S0
444678:  VCVT.F32.S32    S4, S4
44467C:  VMUL.F32        S0, S0, S2
444680:  VMUL.F32        S0, S0, S4
444684:  VCVT.S32.F32    S0, S0
444688:  LDR             R0, [R5]
44468A:  CBZ             R0, loc_4446AA
44468C:  VMOV            R1, S0
444690:  MOVS            R2, #0
444692:  LDRB            R3, [R0,#0xE]
444694:  CMP             R3, R4
444696:  BHI             loc_4446A4
444698:  LDRB            R3, [R0,#0xF]
44469A:  CMP             R3, R4
44469C:  BCC             loc_4446A4
44469E:  CMP             R2, R1
4446A0:  BEQ             loc_4446EE
4446A2:  ADDS            R2, #1
4446A4:  LDR             R0, [R0,#4]
4446A6:  CMP             R0, #0
4446A8:  BNE             loc_444692
4446AA:  MOV.W           R0, #0xFFFFFFFF
4446AE:  POP.W           {R11}
4446B2:  POP             {R4-R7,PC}
4446B4:  MOV             R0, R5; this
4446B6:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
4446BA:  MOV             R4, R0
4446BC:  BLX             rand
4446C0:  UXTH            R0, R0
4446C2:  VLDR            S2, =0.000015259
4446C6:  VMOV            S0, R0
4446CA:  MOV             R0, R5; this
4446CC:  VMOV            S4, R4
4446D0:  MOVS            R1, #1; unsigned __int8
4446D2:  VCVT.F32.S32    S0, S0
4446D6:  VCVT.F32.S32    S4, S4
4446DA:  VMUL.F32        S0, S0, S2
4446DE:  VMUL.F32        S0, S0, S4
4446E2:  VCVT.S32.F32    S0, S0
4446E6:  VMOV            R2, S0; int
4446EA:  BLX             j__ZN6List_c13GetItemOffsetEhi; List_c::GetItemOffset(uchar,int)
4446EE:  LDRSH.W         R0, [R0,#0xA]
4446F2:  POP.W           {R11}
4446F6:  POP             {R4-R7,PC}
