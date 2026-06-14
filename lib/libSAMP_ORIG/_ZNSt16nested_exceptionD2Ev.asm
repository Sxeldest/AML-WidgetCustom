; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionD2Ev
; Address            : 0xE3098 - 0xE30B4
; =========================================================

E3098:  PUSH            {R4,R6,R7,LR}
E309A:  ADD             R7, SP, #8
E309C:  MOV             R4, R0
E309E:  LDR             R0, =(_ZTVSt16nested_exception_ptr - 0xE30A4)
E30A0:  ADD             R0, PC; _ZTVSt16nested_exception_ptr
E30A2:  LDR             R0, [R0]; `vtable for'std::nested_exception ...
E30A4:  ADD.W           R1, R0, #8
E30A8:  MOV             R0, R4
E30AA:  STM             R0!, {R1}; this
E30AC:  BLX             j__ZNSt13exception_ptrD2Ev; std::exception_ptr::~exception_ptr()
E30B0:  MOV             R0, R4
E30B2:  POP             {R4,R6,R7,PC}
