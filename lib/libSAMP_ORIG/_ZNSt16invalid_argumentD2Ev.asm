; =========================================================
; Game Engine Function: _ZNSt16invalid_argumentD2Ev
; Address            : 0x1086C8 - 0x1086EA
; =========================================================

1086C8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::logic_error::~logic_error()'
1086CA:  ADD             R7, SP, #8
1086CC:  MOV             R4, R0
1086CE:  LDR             R0, =(_ZTVSt11logic_error_ptr - 0x1086D4)
1086D0:  ADD             R0, PC; _ZTVSt11logic_error_ptr
1086D2:  LDR             R0, [R0]; `vtable for'std::logic_error ...
1086D4:  ADD.W           R1, R0, #8
1086D8:  MOV             R0, R4
1086DA:  STM             R0!, {R1}
1086DC:  BL              sub_1086F0
1086E0:  MOV             R0, R4; this
1086E2:  POP.W           {R4,R6,R7,LR}
1086E6:  B.W             _ZNSt6__ndk112bad_weak_ptrD2Ev_0; std::bad_weak_ptr::~bad_weak_ptr()
