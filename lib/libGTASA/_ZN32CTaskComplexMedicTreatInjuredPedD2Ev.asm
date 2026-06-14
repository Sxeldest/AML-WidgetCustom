; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPedD2Ev
; Address            : 0x510864 - 0x5108B0
; =========================================================

510864:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexMedicTreatInjuredPed::~CTaskComplexMedicTreatInjuredPed()'
510866:  ADD             R7, SP, #8
510868:  MOV             R4, R0
51086A:  LDR             R0, =(_ZTV32CTaskComplexMedicTreatInjuredPed_ptr - 0x510870)
51086C:  ADD             R0, PC; _ZTV32CTaskComplexMedicTreatInjuredPed_ptr
51086E:  LDR             R1, [R0]; `vtable for'CTaskComplexMedicTreatInjuredPed ...
510870:  LDR             R0, [R4,#0x18]
510872:  ADDS            R1, #8
510874:  STR             R1, [R4]
510876:  CMP             R0, #0
510878:  ITT NE
51087A:  LDRNE           R1, [R0]
51087C:  CMPNE           R1, #0
51087E:  BEQ             loc_51088A
510880:  LDRB            R1, [R0,#5]
510882:  CMP             R1, #0
510884:  ITT EQ
510886:  MOVEQ           R1, #0
510888:  STRBEQ          R1, [R0,#4]
51088A:  MOV             R1, R4
51088C:  LDR.W           R0, [R1,#0xC]!; CEntity **
510890:  CMP             R0, #0
510892:  IT NE
510894:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
510898:  MOV             R1, R4
51089A:  LDR.W           R0, [R1,#0x10]!; CEntity **
51089E:  CMP             R0, #0
5108A0:  IT NE
5108A2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5108A6:  MOV             R0, R4; this
5108A8:  POP.W           {R4,R6,R7,LR}
5108AC:  B.W             sub_18EDE8
