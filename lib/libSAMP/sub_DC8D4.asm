; =========================================================
; Game Engine Function: sub_DC8D4
; Address            : 0xDC8D4 - 0xDC8FA
; =========================================================

DC8D4:  PUSH            {R4,R5,R7,LR}
DC8D6:  ADD             R7, SP, #8
DC8D8:  MOV             R5, R0
DC8DA:  MOVS            R0, #8; thrown_size
DC8DC:  BLX             j___cxa_allocate_exception
DC8E0:  MOV             R4, R0
DC8E2:  MOV             R1, R5
DC8E4:  BL              sub_DC90C
DC8E8:  LDR             R0, =(_ZTISt12length_error_ptr - 0xDC8F0)
DC8EA:  LDR             R2, =(_ZNSt16invalid_argumentD2Ev_ptr - 0xDC8F2)
DC8EC:  ADD             R0, PC; _ZTISt12length_error_ptr
DC8EE:  ADD             R2, PC; _ZNSt16invalid_argumentD2Ev_ptr
DC8F0:  LDR             R1, [R0]; lptinfo
DC8F2:  MOV             R0, R4; void *
DC8F4:  LDR             R2, [R2]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
DC8F6:  BLX             j___cxa_throw
