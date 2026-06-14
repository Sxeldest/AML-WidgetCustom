; =========================================================
; Game Engine Function: sub_86AA8
; Address            : 0x86AA8 - 0x86AF2
; =========================================================

86AA8:  PUSH            {R4,R6,R7,LR}
86AAA:  ADD             R7, SP, #8
86AAC:  SUB             SP, SP, #0x10
86AAE:  LDR             R0, =(__stack_chk_guard_ptr - 0x86AB4)
86AB0:  ADD             R0, PC; __stack_chk_guard_ptr
86AB2:  LDR             R0, [R0]; __stack_chk_guard
86AB4:  LDR             R0, [R0]
86AB6:  STR             R0, [SP,#0x18+var_C]
86AB8:  MOV             R0, SP; this
86ABA:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
86ABE:  LDRD.W          R0, R1, [SP,#0x18+var_18]
86AC2:  MOV.W           R2, #0x3E8
86AC6:  MOVS            R3, #0
86AC8:  BLX             sub_1092F4
86ACC:  LDR             R4, =(unk_1ABEA8 - 0x86AD2)
86ACE:  ADD             R4, PC; unk_1ABEA8
86AD0:  LDREXD.W        R3, R2, [R4]
86AD4:  STREXD.W        R2, R0, R1, [R4]
86AD8:  CMP             R2, #0
86ADA:  BNE             loc_86AD0
86ADC:  LDR             R0, [SP,#0x18+var_C]
86ADE:  LDR             R1, =(__stack_chk_guard_ptr - 0x86AE4)
86AE0:  ADD             R1, PC; __stack_chk_guard_ptr
86AE2:  LDR             R1, [R1]; __stack_chk_guard
86AE4:  LDR             R1, [R1]
86AE6:  CMP             R1, R0
86AE8:  ITT EQ
86AEA:  ADDEQ           SP, SP, #0x10
86AEC:  POPEQ           {R4,R6,R7,PC}
86AEE:  BLX             __stack_chk_fail
