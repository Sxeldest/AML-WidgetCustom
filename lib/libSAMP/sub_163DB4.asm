; =========================================================
; Game Engine Function: sub_163DB4
; Address            : 0x163DB4 - 0x163DEA
; =========================================================

163DB4:  PUSH            {R7,LR}
163DB6:  MOV             R7, SP
163DB8:  LDR             R0, =(off_23494C - 0x163DC6)
163DBA:  MOV             R1, #0x3EEE19
163DC2:  ADD             R0, PC; off_23494C
163DC4:  LDR             R0, [R0]; dword_23DF24
163DC6:  LDR             R0, [R0]
163DC8:  ADD             R0, R1
163DCA:  BLX             R0
163DCC:  CBZ             R0, loc_163DD0
163DCE:  POP             {R7,PC}
163DD0:  MOVS            R0, #4; thrown_size
163DD2:  BLX             j___cxa_allocate_exception
163DD6:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
163DDA:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0x163DE2)
163DDC:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_0 - 0x163DE4)
163DDE:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
163DE0:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_0
163DE2:  LDR             R1, [R1]; lptinfo
163DE4:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
163DE6:  BLX             j___cxa_throw
