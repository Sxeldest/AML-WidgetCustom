; =========================================================
; Game Engine Function: _ZNSt13exception_ptrD2Ev
; Address            : 0x1ED73A - 0x1ED74A
; =========================================================

1ED73A:  PUSH            {R4,R6,R7,LR}
1ED73C:  ADD             R7, SP, #8
1ED73E:  MOV             R4, R0
1ED740:  LDR             R0, [R0]
1ED742:  BLX             j___cxa_decrement_exception_refcount
1ED746:  MOV             R0, R4
1ED748:  POP             {R4,R6,R7,PC}
