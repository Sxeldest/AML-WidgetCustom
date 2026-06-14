; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPedD0Ev
; Address            : 0x5108B4 - 0x510904
; =========================================================

5108B4:  PUSH            {R4,R6,R7,LR}
5108B6:  ADD             R7, SP, #8
5108B8:  MOV             R4, R0
5108BA:  LDR             R0, =(_ZTV32CTaskComplexMedicTreatInjuredPed_ptr - 0x5108C0)
5108BC:  ADD             R0, PC; _ZTV32CTaskComplexMedicTreatInjuredPed_ptr
5108BE:  LDR             R1, [R0]; `vtable for'CTaskComplexMedicTreatInjuredPed ...
5108C0:  LDR             R0, [R4,#0x18]
5108C2:  ADDS            R1, #8
5108C4:  STR             R1, [R4]
5108C6:  CMP             R0, #0
5108C8:  ITT NE
5108CA:  LDRNE           R1, [R0]
5108CC:  CMPNE           R1, #0
5108CE:  BEQ             loc_5108DA
5108D0:  LDRB            R1, [R0,#5]
5108D2:  CMP             R1, #0
5108D4:  ITT EQ
5108D6:  MOVEQ           R1, #0
5108D8:  STRBEQ          R1, [R0,#4]
5108DA:  MOV             R1, R4
5108DC:  LDR.W           R0, [R1,#0xC]!; CEntity **
5108E0:  CMP             R0, #0
5108E2:  IT NE
5108E4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5108E8:  MOV             R1, R4
5108EA:  LDR.W           R0, [R1,#0x10]!; CEntity **
5108EE:  CMP             R0, #0
5108F0:  IT NE
5108F2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5108F6:  MOV             R0, R4; this
5108F8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5108FC:  POP.W           {R4,R6,R7,LR}
510900:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
