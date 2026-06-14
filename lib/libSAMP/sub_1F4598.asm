; =========================================================
; Game Engine Function: sub_1F4598
; Address            : 0x1F4598 - 0x1F45C0
; =========================================================

1F4598:  PUSH            {R5-R7,LR}
1F459A:  ADD             R7, SP, #8
1F459C:  LDR             R3, =(__stack_chk_guard_ptr - 0x1F45A2)
1F459E:  ADD             R3, PC; __stack_chk_guard_ptr
1F45A0:  LDR             R3, [R3]; __stack_chk_guard
1F45A2:  LDR             R3, [R3]
1F45A4:  STR             R3, [SP,#8+var_4]
1F45A6:  MOV             R3, SP
1F45A8:  BLX             j__ZNSt6__ndk113__lower_boundIRNS_6__lessIjjEEPKjjEET0_S6_S6_RKT1_T_; std::__lower_bound<std::__less<uint,uint> &,uint const*,uint>(uint const*,uint const*,uint const&,std::__less<uint,uint> &)
1F45AC:  LDR             R1, [SP,#8+var_4]
1F45AE:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F45B4)
1F45B0:  ADD             R2, PC; __stack_chk_guard_ptr
1F45B2:  LDR             R2, [R2]; __stack_chk_guard
1F45B4:  LDR             R2, [R2]
1F45B6:  CMP             R2, R1
1F45B8:  IT EQ
1F45BA:  POPEQ           {R2,R3,R7,PC}
1F45BC:  BLX             __stack_chk_fail
