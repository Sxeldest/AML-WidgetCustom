; =========================================================
; Game Engine Function: _ZnwjSt11align_val_t
; Address            : 0xF818C - 0xF81FE
; =========================================================

F818C:  PUSH            {R4-R7,LR}
F818E:  ADD             R7, SP, #0xC
F8190:  PUSH.W          {R11}
F8194:  SUB             SP, SP, #8
F8196:  MOV             R5, R0
F8198:  LDR             R0, =(__stack_chk_guard_ptr - 0xF81A2)
F819A:  MOV             R4, R1
F819C:  CMP             R1, #4
F819E:  ADD             R0, PC; __stack_chk_guard_ptr
F81A0:  MOV             R6, SP
F81A2:  LDR             R0, [R0]; __stack_chk_guard
F81A4:  LDR             R0, [R0]
F81A6:  STR             R0, [SP,#0x18+var_14]
F81A8:  IT LS
F81AA:  MOVLS           R4, #4
F81AC:  CMP             R5, #0
F81AE:  IT EQ
F81B0:  MOVEQ           R5, #1
F81B2:  MOV             R0, R6; memptr
F81B4:  MOV             R1, R4; alignment
F81B6:  MOV             R2, R5; size
F81B8:  BLX             posix_memalign
F81BC:  CBZ             R0, loc_F81C8
F81BE:  BLX             j__ZSt15get_new_handlerv; std::get_new_handler(void)
F81C2:  CBZ             R0, loc_F81E4
F81C4:  BLX             R0
F81C6:  B               loc_F81B2
F81C8:  LDR             R0, [SP,#0x18+var_18]
F81CA:  LDR             R1, [SP,#0x18+var_14]
F81CC:  LDR             R2, =(__stack_chk_guard_ptr - 0xF81D2)
F81CE:  ADD             R2, PC; __stack_chk_guard_ptr
F81D0:  LDR             R2, [R2]; __stack_chk_guard
F81D2:  LDR             R2, [R2]
F81D4:  CMP             R2, R1
F81D6:  ITTT EQ
F81D8:  ADDEQ           SP, SP, #8
F81DA:  POPEQ.W         {R11}
F81DE:  POPEQ           {R4-R7,PC}
F81E0:  BLX             __stack_chk_fail
F81E4:  MOVS            R0, #4; thrown_size
F81E6:  BLX             j___cxa_allocate_exception
F81EA:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
F81EE:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0xF81F6)
F81F0:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_1 - 0xF81F8)
F81F2:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
F81F4:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_1
F81F6:  LDR             R1, [R1]; lptinfo
F81F8:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
F81FA:  BLX             j___cxa_throw
