; =========================================================
; Game Engine Function: sub_214EAC
; Address            : 0x214EAC - 0x214EDC
; =========================================================

214EAC:  PUSH            {R5-R7,LR}
214EAE:  ADD             R7, SP, #8
214EB0:  STR             R1, [SP,#8+var_8]
214EB2:  LDR             R1, =(__stack_chk_guard_ptr - 0x214EB8)
214EB4:  ADD             R1, PC; __stack_chk_guard_ptr
214EB6:  LDR             R1, [R1]; __stack_chk_guard
214EB8:  LDR             R1, [R1]
214EBA:  STR             R1, [SP,#8+var_4]
214EBC:  MOV             R1, SP
214EBE:  BL              sub_214EE4
214EC2:  LDR             R0, [SP,#8+var_8]; this
214EC4:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
214EC8:  LDR             R0, [SP,#8+var_4]
214ECA:  LDR             R1, =(__stack_chk_guard_ptr - 0x214ED0)
214ECC:  ADD             R1, PC; __stack_chk_guard_ptr
214ECE:  LDR             R1, [R1]; __stack_chk_guard
214ED0:  LDR             R1, [R1]
214ED2:  CMP             R1, R0
214ED4:  IT EQ
214ED6:  POPEQ           {R2,R3,R7,PC}
214ED8:  BLX             __stack_chk_fail
