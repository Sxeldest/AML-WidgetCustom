; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUpD0Ev
; Address            : 0x4EC7F8 - 0x4EC82E
; =========================================================

4EC7F8:  PUSH            {R4,R6,R7,LR}
4EC7FA:  ADD             R7, SP, #8
4EC7FC:  MOV             R4, R0
4EC7FE:  LDR             R0, =(_ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr - 0x4EC806)
4EC800:  LDRB            R1, [R4,#0x12]; char *
4EC802:  ADD             R0, PC; _ZTV38CTaskComplexSitDownThenIdleThenStandUp_ptr
4EC804:  CMP             R1, #0
4EC806:  LDR             R0, [R0]; `vtable for'CTaskComplexSitDownThenIdleThenStandUp ...
4EC808:  ADD.W           R0, R0, #8
4EC80C:  STR             R0, [R4]
4EC80E:  BEQ             loc_4EC820
4EC810:  LDR             R0, =(aAttractors - 0x4EC816); "attractors"
4EC812:  ADD             R0, PC; "attractors"
4EC814:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4EC818:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4EC81C:  MOVS            R0, #0
4EC81E:  STRB            R0, [R4,#0x12]
4EC820:  MOV             R0, R4; this
4EC822:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4EC826:  POP.W           {R4,R6,R7,LR}
4EC82A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
