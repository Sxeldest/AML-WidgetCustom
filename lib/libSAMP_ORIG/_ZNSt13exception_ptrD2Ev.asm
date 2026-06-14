; =========================================================
; Game Engine Function: _ZNSt13exception_ptrD2Ev
; Address            : 0xE3022 - 0xE3032
; =========================================================

E3022:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::exception_ptr::~exception_ptr()'
E3024:  ADD             R7, SP, #8
E3026:  MOV             R4, R0
E3028:  LDR             R0, [R0]
E302A:  BLX             j___cxa_decrement_exception_refcount
E302E:  MOV             R0, R4
E3030:  POP             {R4,R6,R7,PC}
