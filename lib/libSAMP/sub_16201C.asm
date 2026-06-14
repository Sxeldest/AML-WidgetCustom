; =========================================================
; Game Engine Function: sub_16201C
; Address            : 0x16201C - 0x162054
; =========================================================

16201C:  LDR             R0, =(unk_381A68 - 0x162022)
16201E:  ADD             R0, PC; unk_381A68
162020:  B.W             loc_162028
162024:  DCD unk_381A68 - 0x162022
162028:  PUSH            {R4,R6,R7,LR}
16202A:  ADD             R7, SP, #0x10+var_8
16202C:  LDR             R0, [R0,#(dword_381A6C - 0x381A68)]
16202E:  CBZ             R0, loc_162032
162030:  POP             {R4,R6,R7,PC}
162032:  MOVS            R0, #8; thrown_size
162034:  BLX             j___cxa_allocate_exception
162038:  LDR             R1, =(aDescentBuilder - 0x162040); "descent_builder: object not created yet" ...
16203A:  MOV             R4, R0
16203C:  ADD             R1, PC; "descent_builder: object not created yet"
16203E:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
162042:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x16204A)
162044:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x16204C)
162046:  ADD             R0, PC; _ZTISt13runtime_error_ptr
162048:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
16204A:  LDR             R1, [R0]; lptinfo
16204C:  MOV             R0, R4; void *
16204E:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
162050:  BLX             j___cxa_throw
