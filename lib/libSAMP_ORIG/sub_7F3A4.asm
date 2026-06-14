; =========================================================
; Game Engine Function: sub_7F3A4
; Address            : 0x7F3A4 - 0x7F40E
; =========================================================

7F3A4:  PUSH            {R4-R7,LR}
7F3A6:  ADD             R7, SP, #0xC
7F3A8:  PUSH.W          {R11}
7F3AC:  SUB             SP, SP, #0x10
7F3AE:  MOV             R4, R0
7F3B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x7F3B8)
7F3B2:  MOV             R5, R1
7F3B4:  ADD             R0, PC; __stack_chk_guard_ptr
7F3B6:  LDR             R0, [R0]; __stack_chk_guard
7F3B8:  LDR             R0, [R0]
7F3BA:  STR             R0, [SP,#0x20+var_14]
7F3BC:  MOVS            R0, #4; unsigned int
7F3BE:  BLX             j__Znwj; operator new(uint)
7F3C2:  MOV             R6, R0
7F3C4:  BLX             j__ZNSt6__ndk115__thread_structC2Ev; std::__thread_struct::__thread_struct(void)
7F3C8:  STR             R6, [SP,#0x20+var_18]
7F3CA:  MOVS            R0, #8; unsigned int
7F3CC:  BLX             j__Znwj; operator new(uint)
7F3D0:  LDR             R2, =(sub_7FDA0+1 - 0x7F3DE)
7F3D2:  MOV             R3, R0; arg
7F3D4:  STRD.W          R6, R5, [R0]
7F3D8:  MOVS            R0, #0
7F3DA:  ADD             R2, PC; sub_7FDA0 ; start_routine
7F3DC:  STRD.W          R3, R0, [SP,#0x20+var_1C]
7F3E0:  MOV             R0, R4; newthread
7F3E2:  MOVS            R1, #0; attr
7F3E4:  BLX             pthread_create
7F3E8:  CBNZ            R0, loc_7F406
7F3EA:  LDR             R0, [SP,#0x20+var_14]
7F3EC:  LDR             R1, =(__stack_chk_guard_ptr - 0x7F3F2)
7F3EE:  ADD             R1, PC; __stack_chk_guard_ptr
7F3F0:  LDR             R1, [R1]; __stack_chk_guard
7F3F2:  LDR             R1, [R1]
7F3F4:  CMP             R1, R0
7F3F6:  ITTTT EQ
7F3F8:  MOVEQ           R0, R4
7F3FA:  ADDEQ           SP, SP, #0x10
7F3FC:  POPEQ.W         {R11}
7F400:  POPEQ           {R4-R7,PC}
7F402:  BLX             __stack_chk_fail
7F406:  LDR             R1, =(aThreadConstruc - 0x7F40C); "thread constructor failed" ...
7F408:  ADD             R1, PC; "thread constructor failed"
7F40A:  BLX             j__ZNSt6__ndk120__throw_system_errorEiPKc; std::__throw_system_error(int,char const*)
