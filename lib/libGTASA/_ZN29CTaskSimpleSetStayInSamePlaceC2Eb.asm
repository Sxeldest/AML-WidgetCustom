; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetStayInSamePlaceC2Eb
; Address            : 0x4EA990 - 0x4EA9A8
; =========================================================

4EA990:  PUSH            {R4,R6,R7,LR}
4EA992:  ADD             R7, SP, #8
4EA994:  MOV             R4, R1
4EA996:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EA99A:  LDR             R1, =(_ZTV29CTaskSimpleSetStayInSamePlace_ptr - 0x4EA9A2)
4EA99C:  STRB            R4, [R0,#8]
4EA99E:  ADD             R1, PC; _ZTV29CTaskSimpleSetStayInSamePlace_ptr
4EA9A0:  LDR             R1, [R1]; `vtable for'CTaskSimpleSetStayInSamePlace ...
4EA9A2:  ADDS            R1, #8
4EA9A4:  STR             R1, [R0]
4EA9A6:  POP             {R4,R6,R7,PC}
