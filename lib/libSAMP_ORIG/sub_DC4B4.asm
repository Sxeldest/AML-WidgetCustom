; =========================================================
; Game Engine Function: sub_DC4B4
; Address            : 0xDC4B4 - 0xDC4DC
; =========================================================

DC4B4:  PUSH            {R5-R7,LR}
DC4B6:  ADD             R7, SP, #8
DC4B8:  LDR             R3, =(__stack_chk_guard_ptr - 0xDC4BE)
DC4BA:  ADD             R3, PC; __stack_chk_guard_ptr
DC4BC:  LDR             R3, [R3]; __stack_chk_guard
DC4BE:  LDR             R3, [R3]
DC4C0:  STR             R3, [SP,#8+var_4]
DC4C2:  MOV             R3, SP
DC4C4:  BLX             j__ZNSt6__ndk113__lower_boundIRNS_6__lessIjjEEPKjjEET0_S6_S6_RKT1_T_; std::__lower_bound<std::__less<uint,uint> &,uint const*,uint>(uint const*,uint const*,uint const&,std::__less<uint,uint> &)
DC4C8:  LDR             R1, [SP,#8+var_4]
DC4CA:  LDR             R2, =(__stack_chk_guard_ptr - 0xDC4D0)
DC4CC:  ADD             R2, PC; __stack_chk_guard_ptr
DC4CE:  LDR             R2, [R2]; __stack_chk_guard
DC4D0:  LDR             R2, [R2]
DC4D2:  CMP             R2, R1
DC4D4:  IT EQ
DC4D6:  POPEQ           {R2,R3,R7,PC}
DC4D8:  BLX             __stack_chk_fail
