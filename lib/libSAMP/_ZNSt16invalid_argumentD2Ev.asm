; =========================================================
; Game Engine Function: _ZNSt16invalid_argumentD2Ev
; Address            : 0x21FB20 - 0x21FB42
; =========================================================

21FB20:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::logic_error::~logic_error()'
21FB22:  ADD             R7, SP, #8
21FB24:  MOV             R4, R0
21FB26:  LDR             R0, =(_ZTVSt11logic_error_ptr - 0x21FB2C)
21FB28:  ADD             R0, PC; _ZTVSt11logic_error_ptr
21FB2A:  LDR             R0, [R0]; `vtable for'std::logic_error ...
21FB2C:  ADD.W           R1, R0, #8
21FB30:  MOV             R0, R4
21FB32:  STM             R0!, {R1}
21FB34:  BL              sub_21FB48
21FB38:  MOV             R0, R4; this
21FB3A:  POP.W           {R4,R6,R7,LR}
21FB3E:  B.W             _ZNSt6__ndk112bad_weak_ptrD2Ev_0; std::bad_weak_ptr::~bad_weak_ptr()
