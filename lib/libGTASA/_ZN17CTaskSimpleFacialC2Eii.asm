; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacialC2Eii
; Address            : 0x540C88 - 0x540CAC
; =========================================================

540C88:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleFacial::CTaskSimpleFacial(int, int)'
540C8A:  ADD             R7, SP, #8
540C8C:  MOV             R4, R2
540C8E:  MOV             R5, R1
540C90:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540C94:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x540C9E)
540C96:  MOVS            R2, #0
540C98:  STRH            R2, [R0,#0x10]
540C9A:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
540C9C:  STR             R4, [R0,#0x18]
540C9E:  STR             R5, [R0,#0x14]
540CA0:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
540CA2:  STRD.W          R2, R2, [R0,#8]
540CA6:  ADDS            R1, #8
540CA8:  STR             R1, [R0]
540CAA:  POP             {R4,R5,R7,PC}
