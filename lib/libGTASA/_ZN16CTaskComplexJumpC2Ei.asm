; =========================================================
; Game Engine Function: _ZN16CTaskComplexJumpC2Ei
; Address            : 0x52DF84 - 0x52DFA0
; =========================================================

52DF84:  PUSH            {R4,R6,R7,LR}
52DF86:  ADD             R7, SP, #8
52DF88:  MOV             R4, R1
52DF8A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52DF8E:  LDR             R1, =(_ZTV16CTaskComplexJump_ptr - 0x52DF98)
52DF90:  MOVS            R2, #0
52DF92:  STR             R4, [R0,#0xC]
52DF94:  ADD             R1, PC; _ZTV16CTaskComplexJump_ptr
52DF96:  STRB            R2, [R0,#0x10]
52DF98:  LDR             R1, [R1]; `vtable for'CTaskComplexJump ...
52DF9A:  ADDS            R1, #8
52DF9C:  STR             R1, [R0]
52DF9E:  POP             {R4,R6,R7,PC}
