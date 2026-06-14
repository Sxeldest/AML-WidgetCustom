; =========================================================
; Game Engine Function: sub_1EB664
; Address            : 0x1EB664 - 0x1EB6CA
; =========================================================

1EB664:  PUSH            {R4-R7,LR}
1EB666:  ADD             R7, SP, #0xC
1EB668:  PUSH.W          {R8}
1EB66C:  SUB             SP, SP, #8
1EB66E:  MOV             R8, R0
1EB670:  LDR             R0, [R7,#arg_4]
1EB672:  STR             R0, [SP,#0x18+var_18]
1EB674:  MOV             R0, R8
1EB676:  MOV             R5, R3
1EB678:  MOV             R6, R2
1EB67A:  MOV             R4, R1
1EB67C:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessImmEEPmEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<ulong,ulong> &,ulong *>(ulong *,ulong *,ulong *,ulong *,std::__less<ulong,ulong> &)
1EB680:  LDR             R2, [R7,#arg_0]
1EB682:  LDR             R1, [R5]
1EB684:  LDR             R3, [R2]
1EB686:  CMP             R3, R1
1EB688:  BCS             loc_1EB6C2
1EB68A:  STR             R3, [R5]
1EB68C:  STR             R1, [R2]
1EB68E:  LDR             R1, [R6]
1EB690:  LDR             R2, [R5]
1EB692:  CMP             R2, R1
1EB694:  BCS             loc_1EB6BC
1EB696:  STR             R2, [R6]
1EB698:  STR             R1, [R5]
1EB69A:  LDR             R1, [R4]
1EB69C:  LDR             R2, [R6]
1EB69E:  CMP             R2, R1
1EB6A0:  BCS             loc_1EB6C0
1EB6A2:  STR             R2, [R4]
1EB6A4:  STR             R1, [R6]
1EB6A6:  LDR.W           R1, [R8]
1EB6AA:  LDR             R2, [R4]
1EB6AC:  CMP             R2, R1
1EB6AE:  ITEEE CS
1EB6B0:  ADDCS           R0, #3
1EB6B2:  STRCC.W         R2, [R8]
1EB6B6:  STRCC           R1, [R4]
1EB6B8:  ADDCC           R0, #4
1EB6BA:  B               loc_1EB6C2
1EB6BC:  ADDS            R0, #1
1EB6BE:  B               loc_1EB6C2
1EB6C0:  ADDS            R0, #2
1EB6C2:  ADD             SP, SP, #8
1EB6C4:  POP.W           {R8}
1EB6C8:  POP             {R4-R7,PC}
