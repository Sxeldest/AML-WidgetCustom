; =========================================================
; Game Engine Function: sub_1EA5AA
; Address            : 0x1EA5AA - 0x1EA610
; =========================================================

1EA5AA:  PUSH            {R4-R7,LR}
1EA5AC:  ADD             R7, SP, #0xC
1EA5AE:  PUSH.W          {R8}
1EA5B2:  SUB             SP, SP, #8
1EA5B4:  MOV             R8, R0
1EA5B6:  LDR             R0, [R7,#arg_4]
1EA5B8:  STR             R0, [SP,#0x18+var_18]
1EA5BA:  MOV             R0, R8
1EA5BC:  MOV             R5, R3
1EA5BE:  MOV             R6, R2
1EA5C0:  MOV             R4, R1
1EA5C2:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIttEEPtEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<ushort,ushort> &,ushort *>(ushort *,ushort *,ushort *,ushort *,std::__less<ushort,ushort> &)
1EA5C6:  LDR             R2, [R7,#arg_0]
1EA5C8:  LDRH            R1, [R5]
1EA5CA:  LDRH            R3, [R2]
1EA5CC:  CMP             R3, R1
1EA5CE:  BCS             loc_1EA608
1EA5D0:  STRH            R3, [R5]
1EA5D2:  STRH            R1, [R2]
1EA5D4:  LDRH            R1, [R6]
1EA5D6:  LDRH            R2, [R5]
1EA5D8:  CMP             R2, R1
1EA5DA:  BCS             loc_1EA602
1EA5DC:  STRH            R2, [R6]
1EA5DE:  STRH            R1, [R5]
1EA5E0:  LDRH            R1, [R4]
1EA5E2:  LDRH            R2, [R6]
1EA5E4:  CMP             R2, R1
1EA5E6:  BCS             loc_1EA606
1EA5E8:  STRH            R2, [R4]
1EA5EA:  STRH            R1, [R6]
1EA5EC:  LDRH.W          R1, [R8]
1EA5F0:  LDRH            R2, [R4]
1EA5F2:  CMP             R2, R1
1EA5F4:  ITEEE CS
1EA5F6:  ADDCS           R0, #3
1EA5F8:  STRHCC.W        R2, [R8]
1EA5FC:  STRHCC          R1, [R4]
1EA5FE:  ADDCC           R0, #4
1EA600:  B               loc_1EA608
1EA602:  ADDS            R0, #1
1EA604:  B               loc_1EA608
1EA606:  ADDS            R0, #2
1EA608:  ADD             SP, SP, #8
1EA60A:  POP.W           {R8}
1EA60E:  POP             {R4-R7,PC}
