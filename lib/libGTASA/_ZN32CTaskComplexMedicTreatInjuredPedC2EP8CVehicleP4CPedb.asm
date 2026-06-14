; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPedC2EP8CVehicleP4CPedb
; Address            : 0x510808 - 0x510860
; =========================================================

510808:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexMedicTreatInjuredPed::CTaskComplexMedicTreatInjuredPed(CVehicle *, CPed *, bool)'
51080A:  ADD             R7, SP, #0xC
51080C:  PUSH.W          {R8}
510810:  MOV             R6, R3
510812:  MOV             R5, R2
510814:  MOV             R8, R1
510816:  MOV             R4, R0
510818:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51081C:  LDR             R0, =(_ZTV32CTaskComplexMedicTreatInjuredPed_ptr - 0x510828)
51081E:  MOVS            R1, #0
510820:  STRB            R6, [R4,#0x14]
510822:  MOV             R6, R4
510824:  ADD             R0, PC; _ZTV32CTaskComplexMedicTreatInjuredPed_ptr
510826:  STR             R1, [R4,#0x18]
510828:  STRB.W          R1, [R4,#0x28]
51082C:  MOV             R1, R4
51082E:  LDR             R0, [R0]; `vtable for'CTaskComplexMedicTreatInjuredPed ...
510830:  CMP.W           R8, #0
510834:  ADD.W           R0, R0, #8
510838:  STR             R0, [R4]
51083A:  STR.W           R5, [R6,#0x10]!
51083E:  STR.W           R8, [R1,#0xC]!; CEntity **
510842:  BEQ             loc_51084C
510844:  MOV             R0, R8; this
510846:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51084A:  LDR             R5, [R6]
51084C:  CMP             R5, #0
51084E:  ITTT NE
510850:  MOVNE           R0, R5; this
510852:  MOVNE           R1, R6; CEntity **
510854:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
510858:  MOV             R0, R4
51085A:  POP.W           {R8}
51085E:  POP             {R4-R7,PC}
