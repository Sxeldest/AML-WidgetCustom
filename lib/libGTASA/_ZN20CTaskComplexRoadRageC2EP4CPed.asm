; =========================================================
; Game Engine Function: _ZN20CTaskComplexRoadRageC2EP4CPed
; Address            : 0x4E7944 - 0x4E7970
; =========================================================

4E7944:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexRoadRage::CTaskComplexRoadRage(CPed *)'
4E7946:  ADD             R7, SP, #8
4E7948:  MOV             R5, R1
4E794A:  MOV             R4, R0
4E794C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E7950:  LDR             R0, =(_ZTV20CTaskComplexRoadRage_ptr - 0x4E795A)
4E7952:  MOV             R1, R4
4E7954:  CMP             R5, #0
4E7956:  ADD             R0, PC; _ZTV20CTaskComplexRoadRage_ptr
4E7958:  LDR             R0, [R0]; `vtable for'CTaskComplexRoadRage ...
4E795A:  ADD.W           R0, R0, #8
4E795E:  STR.W           R0, [R1],#0xC; CEntity **
4E7962:  STR             R5, [R1]
4E7964:  ITT NE
4E7966:  MOVNE           R0, R5; this
4E7968:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E796C:  MOV             R0, R4
4E796E:  POP             {R4,R5,R7,PC}
