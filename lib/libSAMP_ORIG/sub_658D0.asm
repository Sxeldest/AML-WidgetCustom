; =========================================================
; Game Engine Function: sub_658D0
; Address            : 0x658D0 - 0x6593C
; =========================================================

658D0:  PUSH            {R4-R7,LR}
658D2:  ADD             R7, SP, #0xC
658D4:  PUSH.W          {R11}
658D8:  SUB             SP, SP, #0x10
658DA:  MOV             R4, R0
658DC:  LDR             R0, =(__stack_chk_guard_ptr - 0x658E4)
658DE:  MOV             R5, R1
658E0:  ADD             R0, PC; __stack_chk_guard_ptr
658E2:  LDR             R0, [R0]; __stack_chk_guard
658E4:  LDR             R0, [R0]
658E6:  STR             R0, [SP,#0x20+var_14]
658E8:  MOVS            R0, #4; unsigned int
658EA:  BLX             j__Znwj; operator new(uint)
658EE:  MOV             R6, R0
658F0:  BLX             j__ZNSt6__ndk115__thread_structC2Ev; std::__thread_struct::__thread_struct(void)
658F4:  STR             R6, [SP,#0x20+var_18]
658F6:  MOVS            R0, #8; unsigned int
658F8:  BLX             j__Znwj; operator new(uint)
658FC:  LDR             R2, =(sub_678FC+1 - 0x65906)
658FE:  MOV             R3, R0; arg
65900:  LDR             R0, [R5]
65902:  ADD             R2, PC; sub_678FC ; start_routine
65904:  STRD.W          R6, R0, [R3]
65908:  MOVS            R0, #0
6590A:  STRD.W          R3, R0, [SP,#0x20+var_1C]
6590E:  MOV             R0, R4; newthread
65910:  MOVS            R1, #0; attr
65912:  BLX             pthread_create
65916:  CBNZ            R0, loc_65934
65918:  LDR             R0, [SP,#0x20+var_14]
6591A:  LDR             R1, =(__stack_chk_guard_ptr - 0x65920)
6591C:  ADD             R1, PC; __stack_chk_guard_ptr
6591E:  LDR             R1, [R1]; __stack_chk_guard
65920:  LDR             R1, [R1]
65922:  CMP             R1, R0
65924:  ITTTT EQ
65926:  MOVEQ           R0, R4
65928:  ADDEQ           SP, SP, #0x10
6592A:  POPEQ.W         {R11}
6592E:  POPEQ           {R4-R7,PC}
65930:  BLX             __stack_chk_fail
65934:  LDR             R1, =(aThreadConstruc - 0x6593A); "thread constructor failed" ...
65936:  ADD             R1, PC; "thread constructor failed"
65938:  BLX             j__ZNSt6__ndk120__throw_system_errorEiPKc; std::__throw_system_error(int,char const*)
