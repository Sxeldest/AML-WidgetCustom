; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp17CreateNextSubTaskEP4CPed
; Address            : 0x52BB68 - 0x52BB98
; =========================================================

52BB68:  PUSH            {R4,R6,R7,LR}
52BB6A:  ADD             R7, SP, #8
52BB6C:  LDR             R0, [R0,#8]
52BB6E:  LDR             R1, [R0]
52BB70:  LDR             R1, [R1,#0x14]
52BB72:  BLX             R1
52BB74:  MOVS            R4, #0
52BB76:  CMP             R0, #0xCF
52BB78:  BNE             loc_52BB94
52BB7A:  MOVS            R0, #word_10; this
52BB7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BB80:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BB84:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52BB8C)
52BB86:  STRH            R4, [R0,#8]
52BB88:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52BB8A:  STR             R4, [R0,#0xC]
52BB8C:  MOV             R4, R0
52BB8E:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52BB90:  ADDS            R1, #8
52BB92:  STR             R1, [R0]
52BB94:  MOV             R0, R4
52BB96:  POP             {R4,R6,R7,PC}
