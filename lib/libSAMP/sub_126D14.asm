; =========================================================
; Game Engine Function: sub_126D14
; Address            : 0x126D14 - 0x126D40
; =========================================================

126D14:  PUSH            {R4,R6,R7,LR}
126D16:  ADD             R7, SP, #8
126D18:  LDR             R0, [R0,#4]
126D1A:  CBZ             R0, loc_126D1E
126D1C:  POP             {R4,R6,R7,PC}
126D1E:  MOVS            R0, #8; thrown_size
126D20:  BLX             j___cxa_allocate_exception
126D24:  LDR             R1, =(aDescentBuilder - 0x126D2C); "descent_builder: object not created yet" ...
126D26:  MOV             R4, R0
126D28:  ADD             R1, PC; "descent_builder: object not created yet"
126D2A:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
126D2E:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x126D36)
126D30:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x126D38)
126D32:  ADD             R0, PC; _ZTISt13runtime_error_ptr
126D34:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
126D36:  LDR             R1, [R0]; lptinfo
126D38:  MOV             R0, R4; void *
126D3A:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
126D3C:  BLX             j___cxa_throw
