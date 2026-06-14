; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionD2Ev
; Address            : 0x1ED7B0 - 0x1ED7CC
; =========================================================

1ED7B0:  PUSH            {R4,R6,R7,LR}
1ED7B2:  ADD             R7, SP, #8
1ED7B4:  MOV             R4, R0
1ED7B6:  LDR             R0, =(_ZTVSt16nested_exception_ptr - 0x1ED7BC)
1ED7B8:  ADD             R0, PC; _ZTVSt16nested_exception_ptr
1ED7BA:  LDR             R0, [R0]; `vtable for'std::nested_exception ...
1ED7BC:  ADD.W           R1, R0, #8
1ED7C0:  MOV             R0, R4
1ED7C2:  STM             R0!, {R1}; this
1ED7C4:  BLX             j__ZNSt13exception_ptrD2Ev_0; std::exception_ptr::~exception_ptr()
1ED7C8:  MOV             R0, R4
1ED7CA:  POP             {R4,R6,R7,PC}
