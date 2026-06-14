; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed18GetNearestAccidentERK7CVector
; Address            : 0x510FC0 - 0x510FDC
; =========================================================

510FC0:  PUSH            {R4,R5,R7,LR}
510FC2:  ADD             R7, SP, #8
510FC4:  MOV             R5, R0
510FC6:  MOVS            R0, #0
510FC8:  MOV             R4, R1
510FCA:  STR             R0, [R5,#0x18]
510FCC:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
510FD0:  MOV             R1, R4; CVector *
510FD2:  MOVS            R2, #1; bool
510FD4:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
510FD8:  STR             R0, [R5,#0x18]
510FDA:  POP             {R4,R5,R7,PC}
