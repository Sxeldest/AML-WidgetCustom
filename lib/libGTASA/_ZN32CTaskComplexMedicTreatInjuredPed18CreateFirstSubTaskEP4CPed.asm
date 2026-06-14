; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed18CreateFirstSubTaskEP4CPed
; Address            : 0x511170 - 0x51118C
; =========================================================

511170:  LDR             R1, [R0,#0xC]
511172:  CMP             R1, #0
511174:  ITT EQ
511176:  MOVEQ.W         R1, #0x390; int
51117A:  BEQ             _ZN32CTaskComplexMedicTreatInjuredPed13CreateSubTaskEi; CTaskComplexMedicTreatInjuredPed::CreateSubTask(int)
51117C:  LDRB            R2, [R0,#0x14]
51117E:  MOVW            R1, #0x2C7
511182:  CMP             R2, #0
511184:  IT EQ
511186:  MOVWEQ          R1, #0x2C5; int
51118A:  B               _ZN32CTaskComplexMedicTreatInjuredPed13CreateSubTaskEi; CTaskComplexMedicTreatInjuredPed::CreateSubTask(int)
