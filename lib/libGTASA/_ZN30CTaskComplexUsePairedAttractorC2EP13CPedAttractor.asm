; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractorC2EP13CPedAttractor
; Address            : 0x4EEEA4 - 0x4EEEC8
; =========================================================

4EEEA4:  PUSH            {R4,R6,R7,LR}
4EEEA6:  ADD             R7, SP, #8
4EEEA8:  MOV             R4, R1
4EEEAA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EEEAE:  LDR             R1, =(_ZTV30CTaskComplexUsePairedAttractor_ptr - 0x4EEEB8)
4EEEB0:  MOVS            R2, #0
4EEEB2:  STR             R4, [R0,#0xC]
4EEEB4:  ADD             R1, PC; _ZTV30CTaskComplexUsePairedAttractor_ptr
4EEEB6:  STR             R2, [R0,#0x10]
4EEEB8:  STRB            R2, [R0,#0x14]
4EEEBA:  LDR             R1, [R1]; `vtable for'CTaskComplexUsePairedAttractor ...
4EEEBC:  STRD.W          R2, R2, [R0,#0x18]
4EEEC0:  STR             R2, [R0,#0x20]
4EEEC2:  ADDS            R1, #8
4EEEC4:  STR             R1, [R0]
4EEEC6:  POP             {R4,R6,R7,PC}
