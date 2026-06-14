; =========================================================
; Game Engine Function: _ZNK20CTaskSimpleShakeFist5CloneEv
; Address            : 0x54391C - 0x54393C
; =========================================================

54391C:  PUSH            {R7,LR}
54391E:  MOV             R7, SP
543920:  MOVS            R0, #word_10; this
543922:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
543926:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54392A:  LDR             R1, =(_ZTV20CTaskSimpleShakeFist_ptr - 0x543934)
54392C:  MOVS            R2, #0
54392E:  STRB            R2, [R0,#8]
543930:  ADD             R1, PC; _ZTV20CTaskSimpleShakeFist_ptr
543932:  STR             R2, [R0,#0xC]
543934:  LDR             R1, [R1]; `vtable for'CTaskSimpleShakeFist ...
543936:  ADDS            R1, #8
543938:  STR             R1, [R0]
54393A:  POP             {R7,PC}
