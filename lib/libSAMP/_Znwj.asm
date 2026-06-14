; =========================================================
; Game Engine Function: _Znwj
; Address            : 0x20FD34 - 0x20FD6E
; =========================================================

20FD34:  PUSH            {R4,R6,R7,LR}
20FD36:  ADD             R7, SP, #8
20FD38:  MOV             R4, R0
20FD3A:  CMP             R0, #0
20FD3C:  IT EQ
20FD3E:  MOVEQ           R4, #1
20FD40:  MOV             R0, R4; size
20FD42:  BLX             malloc
20FD46:  CBNZ            R0, locret_20FD52
20FD48:  BLX             j__ZSt15get_new_handlerv; std::get_new_handler(void)
20FD4C:  CBZ             R0, loc_20FD54
20FD4E:  BLX             R0
20FD50:  B               loc_20FD40
20FD52:  POP             {R4,R6,R7,PC}
20FD54:  MOVS            R0, #4; thrown_size
20FD56:  BLX             j___cxa_allocate_exception
20FD5A:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
20FD5E:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0x20FD66)
20FD60:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_0 - 0x20FD68)
20FD62:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
20FD64:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_0
20FD66:  LDR             R1, [R1]; lptinfo
20FD68:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
20FD6A:  BLX             j___cxa_throw
