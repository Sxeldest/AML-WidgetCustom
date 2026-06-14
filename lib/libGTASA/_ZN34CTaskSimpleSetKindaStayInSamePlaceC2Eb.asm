; =========================================================
; Game Engine Function: _ZN34CTaskSimpleSetKindaStayInSamePlaceC2Eb
; Address            : 0x4EA9F4 - 0x4EAA0C
; =========================================================

4EA9F4:  PUSH            {R4,R6,R7,LR}
4EA9F6:  ADD             R7, SP, #8
4EA9F8:  MOV             R4, R1
4EA9FA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EA9FE:  LDR             R1, =(_ZTV34CTaskSimpleSetKindaStayInSamePlace_ptr - 0x4EAA06)
4EAA00:  STRB            R4, [R0,#8]
4EAA02:  ADD             R1, PC; _ZTV34CTaskSimpleSetKindaStayInSamePlace_ptr
4EAA04:  LDR             R1, [R1]; `vtable for'CTaskSimpleSetKindaStayInSamePlace ...
4EAA06:  ADDS            R1, #8
4EAA08:  STR             R1, [R0]
4EAA0A:  POP             {R4,R6,R7,PC}
