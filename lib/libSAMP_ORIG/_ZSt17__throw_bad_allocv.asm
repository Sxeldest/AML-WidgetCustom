; =========================================================
; Game Engine Function: _ZSt17__throw_bad_allocv
; Address            : 0xF80D0 - 0xF80EE
; =========================================================

F80D0:  PUSH            {R7,LR}
F80D2:  MOV             R7, SP
F80D4:  MOVS            R0, #4; thrown_size
F80D6:  BLX             j___cxa_allocate_exception
F80DA:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
F80DE:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0xF80E6)
F80E0:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_1 - 0xF80E8)
F80E2:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
F80E4:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_1
F80E6:  LDR             R1, [R1]; lptinfo
F80E8:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
F80EA:  BLX             j___cxa_throw
