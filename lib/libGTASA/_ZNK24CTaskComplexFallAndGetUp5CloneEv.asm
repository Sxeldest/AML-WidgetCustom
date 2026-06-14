; =========================================================
; Game Engine Function: _ZNK24CTaskComplexFallAndGetUp5CloneEv
; Address            : 0x532A50 - 0x532A80
; =========================================================

532A50:  PUSH            {R4-R7,LR}
532A52:  ADD             R7, SP, #0xC
532A54:  PUSH.W          {R11}
532A58:  MOV             R4, R0
532A5A:  MOVS            R0, #off_18; this
532A5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532A60:  LDRD.W          R5, R6, [R4,#0xC]
532A64:  LDR             R4, [R4,#0x14]
532A66:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532A6A:  LDR             R1, =(_ZTV24CTaskComplexFallAndGetUp_ptr - 0x532A74)
532A6C:  STRD.W          R5, R6, [R0,#0xC]
532A70:  ADD             R1, PC; _ZTV24CTaskComplexFallAndGetUp_ptr
532A72:  STR             R4, [R0,#0x14]
532A74:  LDR             R1, [R1]; `vtable for'CTaskComplexFallAndGetUp ...
532A76:  ADDS            R1, #8
532A78:  STR             R1, [R0]
532A7A:  POP.W           {R11}
532A7E:  POP             {R4-R7,PC}
