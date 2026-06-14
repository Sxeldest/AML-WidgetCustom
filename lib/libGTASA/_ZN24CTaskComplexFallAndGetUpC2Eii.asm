; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUpC2Eii
; Address            : 0x52BA80 - 0x52BAAA
; =========================================================

52BA80:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int, int)'
52BA82:  ADD             R7, SP, #8
52BA84:  MOV             R5, R2
52BA86:  MOV             R4, R1
52BA88:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52BA8C:  LDR             R1, =(_ZTV24CTaskComplexFallAndGetUp_ptr - 0x52BA96)
52BA8E:  CMP             R4, #3
52BA90:  STR             R5, [R0,#0x14]
52BA92:  ADD             R1, PC; _ZTV24CTaskComplexFallAndGetUp_ptr
52BA94:  LDR             R1, [R1]; `vtable for'CTaskComplexFallAndGetUp ...
52BA96:  ADD.W           R1, R1, #8
52BA9A:  STR             R1, [R0]
52BA9C:  ITT LS
52BA9E:  ADDLS.W         R1, R4, #0x18
52BAA2:  STRLS           R1, [R0,#0xC]
52BAA4:  MOVS            R1, #0
52BAA6:  STR             R1, [R0,#0x10]
52BAA8:  POP             {R4,R5,R7,PC}
