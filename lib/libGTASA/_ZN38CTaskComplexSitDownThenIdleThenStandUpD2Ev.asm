; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUpD2Ev
; Address            : 0x4EC7BC - 0x4EC7EE
; =========================================================

4EC7BC:  PUSH            {R4,R6,R7,LR}
4EC7BE:  ADD             R7, SP, #8
4EC7C0:  MOV             R4, R0
4EC7C2:  LDR             R0, =(_ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr - 0x4EC7CA)
4EC7C4:  LDRB            R1, [R4,#0x12]; char *
4EC7C6:  ADD             R0, PC; _ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr
4EC7C8:  CMP             R1, #0
4EC7CA:  LDR             R0, [R0]; `vtable for'CTaskComplexSitDownThenIdleThenStandUp ...
4EC7CC:  ADD.W           R0, R0, #8
4EC7D0:  STR             R0, [R4]
4EC7D2:  BEQ             loc_4EC7E4
4EC7D4:  LDR             R0, =(aAttractors - 0x4EC7DA); "attractors"
4EC7D6:  ADD             R0, PC; "attractors"
4EC7D8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4EC7DC:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4EC7E0:  MOVS            R0, #0
4EC7E2:  STRB            R0, [R4,#0x12]
4EC7E4:  MOV             R0, R4; this
4EC7E6:  POP.W           {R4,R6,R7,LR}
4EC7EA:  B.W             sub_18EDE8
