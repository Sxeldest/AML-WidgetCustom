; =========================================================
; Game Engine Function: sub_DC514
; Address            : 0xDC514 - 0xDC53A
; =========================================================

DC514:  PUSH            {R4,R5,R7,LR}
DC516:  ADD             R7, SP, #8
DC518:  MOV             R5, R0
DC51A:  MOVS            R0, #8; thrown_size
DC51C:  BLX             j___cxa_allocate_exception
DC520:  MOV             R4, R0
DC522:  MOV             R1, R5
DC524:  BL              sub_DC54C
DC528:  LDR             R0, =(_ZTISt14overflow_error_ptr - 0xDC52E)
DC52A:  ADD             R0, PC; _ZTISt14overflow_error_ptr
DC52C:  LDR             R1, [R0]; lptinfo
DC52E:  LDR             R0, =(_ZNSt15underflow_errorD2Ev_ptr - 0xDC534)
DC530:  ADD             R0, PC; _ZNSt15underflow_errorD2Ev_ptr
DC532:  LDR             R2, [R0]; std::underflow_error::~underflow_error() ; void (*)(void *)
DC534:  MOV             R0, R4; void *
DC536:  BLX             j___cxa_throw
