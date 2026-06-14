; =========================================================
; Game Engine Function: _ZNSt13exception_ptrC2ERKS_
; Address            : 0xE3032 - 0xE3044
; =========================================================

E3032:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::exception_ptr::exception_ptr(std::exception_ptr const&)'
E3034:  ADD             R7, SP, #8
E3036:  MOV             R4, R0
E3038:  LDR             R0, [R1]
E303A:  STR             R0, [R4]
E303C:  BLX             j___cxa_increment_exception_refcount
E3040:  MOV             R0, R4
E3042:  POP             {R4,R6,R7,PC}
