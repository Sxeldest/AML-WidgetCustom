; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed31GetNearestAccidentExceptThisOneERK7CVectorP9CAccident
; Address            : 0x51118C - 0x5111B4
; =========================================================

51118C:  PUSH            {R4-R7,LR}
51118E:  ADD             R7, SP, #0xC
511190:  PUSH.W          {R11}
511194:  MOV             R6, R0
511196:  MOVS            R0, #0
511198:  MOV             R4, R2
51119A:  MOV             R5, R1
51119C:  STR             R0, [R6,#0x18]
51119E:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
5111A2:  MOV             R1, R5; CVector *
5111A4:  MOV             R2, R4; CAccident *
5111A6:  MOVS            R3, #1; bool
5111A8:  BLX             j__ZN16CAccidentManager35GetNearestFreeAccidentExceptThisOneERK7CVectorP9CAccidentb; CAccidentManager::GetNearestFreeAccidentExceptThisOne(CVector const&,CAccident *,bool)
5111AC:  STR             R0, [R6,#0x18]
5111AE:  POP.W           {R11}
5111B2:  POP             {R4-R7,PC}
