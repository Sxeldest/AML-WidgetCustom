; =========================================================
; Game Engine Function: _ZNSt15underflow_errorD2Ev
; Address            : 0x108734 - 0x108756
; =========================================================

108734:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::underflow_error::~underflow_error()'
108736:  ADD             R7, SP, #8
108738:  MOV             R4, R0
10873A:  LDR             R0, =(_ZTVSt13runtime_error_ptr - 0x108740)
10873C:  ADD             R0, PC; _ZTVSt13runtime_error_ptr
10873E:  LDR             R0, [R0]; `vtable for'std::runtime_error ...
108740:  ADD.W           R1, R0, #8
108744:  MOV             R0, R4
108746:  STM             R0!, {R1}
108748:  BL              sub_1086F0
10874C:  MOV             R0, R4; this
10874E:  POP.W           {R4,R6,R7,LR}
108752:  B.W             _ZNSt6__ndk112bad_weak_ptrD2Ev_0; std::bad_weak_ptr::~bad_weak_ptr()
