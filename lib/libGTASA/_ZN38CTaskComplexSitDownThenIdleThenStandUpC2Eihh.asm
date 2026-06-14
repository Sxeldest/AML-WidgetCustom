; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUpC2Eihh
; Address            : 0x4EC78C - 0x4EC7B8
; =========================================================

4EC78C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexSitDownThenIdleThenStandUp::CTaskComplexSitDownThenIdleThenStandUp(int, unsigned char, unsigned char)'
4EC78E:  ADD             R7, SP, #0xC
4EC790:  PUSH.W          {R11}
4EC794:  MOV             R4, R3
4EC796:  MOV             R5, R2
4EC798:  MOV             R6, R1
4EC79A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EC79E:  LDR             R1, =(_ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr - 0x4EC7A8)
4EC7A0:  MOVS            R2, #0
4EC7A2:  STR             R6, [R0,#0xC]
4EC7A4:  ADD             R1, PC; _ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr
4EC7A6:  STRB            R5, [R0,#0x10]
4EC7A8:  STRB            R4, [R0,#0x11]
4EC7AA:  LDR             R1, [R1]; `vtable for'CTaskComplexSitDownThenIdleThenStandUp ...
4EC7AC:  STRB            R2, [R0,#0x12]
4EC7AE:  ADDS            R1, #8
4EC7B0:  STR             R1, [R0]
4EC7B2:  POP.W           {R11}
4EC7B6:  POP             {R4-R7,PC}
