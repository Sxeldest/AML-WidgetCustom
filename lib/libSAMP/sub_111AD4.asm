; =========================================================
; Game Engine Function: sub_111AD4
; Address            : 0x111AD4 - 0x111B0C
; =========================================================

111AD4:  LDR             R0, =(unk_263434 - 0x111ADA)
111AD6:  ADD             R0, PC; unk_263434
111AD8:  B.W             loc_111AE0
111ADC:  DCD unk_263434 - 0x111ADA
111AE0:  PUSH            {R4,R6,R7,LR}
111AE2:  ADD             R7, SP, #0x10+var_8
111AE4:  LDR             R0, [R0,#(dword_263438 - 0x263434)]
111AE6:  CBZ             R0, loc_111AEA
111AE8:  POP             {R4,R6,R7,PC}
111AEA:  MOVS            R0, #8; thrown_size
111AEC:  BLX             j___cxa_allocate_exception
111AF0:  LDR             R1, =(aDescentBuilder - 0x111AF8); "descent_builder: object not created yet" ...
111AF2:  MOV             R4, R0
111AF4:  ADD             R1, PC; "descent_builder: object not created yet"
111AF6:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
111AFA:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x111B02)
111AFC:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x111B04)
111AFE:  ADD             R0, PC; _ZTISt13runtime_error_ptr
111B00:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
111B02:  LDR             R1, [R0]; lptinfo
111B04:  MOV             R0, R4; void *
111B06:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
111B08:  BLX             j___cxa_throw
