; =========================================================
; Game Engine Function: _ZnwjSt11align_val_t
; Address            : 0x20FDC8 - 0x20FE3A
; =========================================================

20FDC8:  PUSH            {R4-R7,LR}
20FDCA:  ADD             R7, SP, #0xC
20FDCC:  PUSH.W          {R11}
20FDD0:  SUB             SP, SP, #8
20FDD2:  MOV             R5, R0
20FDD4:  LDR             R0, =(__stack_chk_guard_ptr - 0x20FDDE)
20FDD6:  MOV             R4, R1
20FDD8:  CMP             R1, #4
20FDDA:  ADD             R0, PC; __stack_chk_guard_ptr
20FDDC:  MOV             R6, SP
20FDDE:  LDR             R0, [R0]; __stack_chk_guard
20FDE0:  LDR             R0, [R0]
20FDE2:  STR             R0, [SP,#0x18+var_14]
20FDE4:  IT LS
20FDE6:  MOVLS           R4, #4
20FDE8:  CMP             R5, #0
20FDEA:  IT EQ
20FDEC:  MOVEQ           R5, #1
20FDEE:  MOV             R0, R6; memptr
20FDF0:  MOV             R1, R4; alignment
20FDF2:  MOV             R2, R5; size
20FDF4:  BLX             posix_memalign
20FDF8:  CBZ             R0, loc_20FE04
20FDFA:  BLX             j__ZSt15get_new_handlerv; std::get_new_handler(void)
20FDFE:  CBZ             R0, loc_20FE20
20FE00:  BLX             R0
20FE02:  B               loc_20FDEE
20FE04:  LDR             R0, [SP,#0x18+var_18]
20FE06:  LDR             R1, [SP,#0x18+var_14]
20FE08:  LDR             R2, =(__stack_chk_guard_ptr - 0x20FE0E)
20FE0A:  ADD             R2, PC; __stack_chk_guard_ptr
20FE0C:  LDR             R2, [R2]; __stack_chk_guard
20FE0E:  LDR             R2, [R2]
20FE10:  CMP             R2, R1
20FE12:  ITTT EQ
20FE14:  ADDEQ           SP, SP, #8
20FE16:  POPEQ.W         {R11}
20FE1A:  POPEQ           {R4-R7,PC}
20FE1C:  BLX             __stack_chk_fail
20FE20:  MOVS            R0, #4; thrown_size
20FE22:  BLX             j___cxa_allocate_exception
20FE26:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
20FE2A:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0x20FE32)
20FE2C:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_0 - 0x20FE34)
20FE2E:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
20FE30:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_0
20FE32:  LDR             R1, [R1]; lptinfo
20FE34:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
20FE36:  BLX             j___cxa_throw
