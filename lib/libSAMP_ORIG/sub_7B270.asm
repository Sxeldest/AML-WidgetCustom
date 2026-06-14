; =========================================================
; Game Engine Function: sub_7B270
; Address            : 0x7B270 - 0x7B296
; =========================================================

7B270:  PUSH            {R4,R5,R7,LR}
7B272:  ADD             R7, SP, #8
7B274:  MOV             R5, R0
7B276:  MOVS            R0, #8; thrown_size
7B278:  BLX             j___cxa_allocate_exception
7B27C:  MOV             R4, R0
7B27E:  MOV             R1, R5
7B280:  BL              sub_7B2A8
7B284:  LDR             R0, =(_ZTISt12length_error_ptr - 0x7B28C)
7B286:  LDR             R2, =(_ZNSt16invalid_argumentD2Ev_ptr - 0x7B28E)
7B288:  ADD             R0, PC; _ZTISt12length_error_ptr
7B28A:  ADD             R2, PC; _ZNSt16invalid_argumentD2Ev_ptr
7B28C:  LDR             R1, [R0]; lptinfo
7B28E:  MOV             R0, R4; void *
7B290:  LDR             R2, [R2]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
7B292:  BLX             j___cxa_throw
