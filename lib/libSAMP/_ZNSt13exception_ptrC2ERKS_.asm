; =========================================================
; Game Engine Function: _ZNSt13exception_ptrC2ERKS_
; Address            : 0x1ED74A - 0x1ED75C
; =========================================================

1ED74A:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::exception_ptr::exception_ptr(std::exception_ptr const&)'
1ED74C:  ADD             R7, SP, #8
1ED74E:  MOV             R4, R0
1ED750:  LDR             R0, [R1]
1ED752:  STR             R0, [R4]
1ED754:  BLX             j___cxa_increment_exception_refcount
1ED758:  MOV             R0, R4
1ED75A:  POP             {R4,R6,R7,PC}
