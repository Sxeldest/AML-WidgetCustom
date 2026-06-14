; =========================================================
; Game Engine Function: _ZNSt15underflow_errorD2Ev
; Address            : 0x21FB8C - 0x21FBAE
; =========================================================

21FB8C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::runtime_error::~runtime_error()'
21FB8E:  ADD             R7, SP, #8
21FB90:  MOV             R4, R0
21FB92:  LDR             R0, =(_ZTVSt13runtime_error_ptr - 0x21FB98)
21FB94:  ADD             R0, PC; _ZTVSt13runtime_error_ptr
21FB96:  LDR             R0, [R0]; `vtable for'std::runtime_error ...
21FB98:  ADD.W           R1, R0, #8
21FB9C:  MOV             R0, R4
21FB9E:  STM             R0!, {R1}
21FBA0:  BL              sub_21FB48
21FBA4:  MOV             R0, R4; this
21FBA6:  POP.W           {R4,R6,R7,LR}
21FBAA:  B.W             _ZNSt6__ndk112bad_weak_ptrD2Ev_0; std::bad_weak_ptr::~bad_weak_ptr()
