; =========================================================
; Game Engine Function: _ZSt17__throw_bad_allocv
; Address            : 0x20FD0C - 0x20FD2A
; =========================================================

20FD0C:  PUSH            {R7,LR}
20FD0E:  MOV             R7, SP
20FD10:  MOVS            R0, #4; thrown_size
20FD12:  BLX             j___cxa_allocate_exception
20FD16:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
20FD1A:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0x20FD22)
20FD1C:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_0 - 0x20FD24)
20FD1E:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
20FD20:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_0
20FD22:  LDR             R1, [R1]; lptinfo
20FD24:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
20FD26:  BLX             j___cxa_throw
