; =========================================================
; Game Engine Function: _ZNK24CTaskComplexInAirAndLand5CloneEv
; Address            : 0x532C6C - 0x532CA0
; =========================================================

532C6C:  PUSH            {R4,R5,R7,LR}
532C6E:  ADD             R7, SP, #8
532C70:  MOV             R4, R0
532C72:  MOVS            R0, #word_10; this
532C74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532C78:  LDRB            R5, [R4,#0xC]
532C7A:  LDRB            R4, [R4,#0xD]
532C7C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532C80:  LDR             R1, =(_ZTV24CTaskComplexInAirAndLand_ptr - 0x532C8E)
532C82:  CMP             R5, #0
532C84:  IT NE
532C86:  MOVNE           R5, #1
532C88:  CMP             R4, #0
532C8A:  ADD             R1, PC; _ZTV24CTaskComplexInAirAndLand_ptr
532C8C:  STRB            R5, [R0,#0xC]
532C8E:  IT NE
532C90:  MOVNE           R4, #1
532C92:  MOVS            R2, #0
532C94:  LDR             R1, [R1]; `vtable for'CTaskComplexInAirAndLand ...
532C96:  STRB            R4, [R0,#0xD]
532C98:  STRB            R2, [R0,#0xE]
532C9A:  ADDS            R1, #8
532C9C:  STR             R1, [R0]
532C9E:  POP             {R4,R5,R7,PC}
