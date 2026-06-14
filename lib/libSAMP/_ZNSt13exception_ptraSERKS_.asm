; =========================================================
; Game Engine Function: _ZNSt13exception_ptraSERKS_
; Address            : 0x1ED75C - 0x1ED77E
; =========================================================

1ED75C:  PUSH            {R4,R5,R7,LR}
1ED75E:  ADD             R7, SP, #8
1ED760:  MOV             R4, R0
1ED762:  MOV             R5, R1
1ED764:  LDR             R0, [R1]
1ED766:  LDR             R1, [R4]
1ED768:  CMP             R1, R0
1ED76A:  BEQ             loc_1ED77A
1ED76C:  BLX             j___cxa_increment_exception_refcount
1ED770:  LDR             R0, [R4]
1ED772:  BLX             j___cxa_decrement_exception_refcount
1ED776:  LDR             R0, [R5]
1ED778:  STR             R0, [R4]
1ED77A:  MOV             R0, R4
1ED77C:  POP             {R4,R5,R7,PC}
