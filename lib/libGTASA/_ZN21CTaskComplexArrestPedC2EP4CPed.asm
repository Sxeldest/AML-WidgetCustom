; =========================================================
; Game Engine Function: _ZN21CTaskComplexArrestPedC2EP4CPed
; Address            : 0x53CBE0 - 0x53CC10
; =========================================================

53CBE0:  PUSH            {R4,R5,R7,LR}
53CBE2:  ADD             R7, SP, #8
53CBE4:  MOV             R5, R1
53CBE6:  MOV             R4, R0
53CBE8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53CBEC:  LDR             R0, =(_ZTV21CTaskComplexArrestPed_ptr - 0x53CBF8)
53CBEE:  MOVS            R1, #0
53CBF0:  STR             R1, [R4,#0x20]
53CBF2:  MOV             R1, R4
53CBF4:  ADD             R0, PC; _ZTV21CTaskComplexArrestPed_ptr
53CBF6:  CMP             R5, #0
53CBF8:  LDR             R0, [R0]; `vtable for'CTaskComplexArrestPed ...
53CBFA:  ADD.W           R0, R0, #8
53CBFE:  STR             R0, [R4]
53CC00:  STR.W           R5, [R1,#0x10]!; CEntity **
53CC04:  ITT NE
53CC06:  MOVNE           R0, R5; this
53CC08:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53CC0C:  MOV             R0, R4
53CC0E:  POP             {R4,R5,R7,PC}
