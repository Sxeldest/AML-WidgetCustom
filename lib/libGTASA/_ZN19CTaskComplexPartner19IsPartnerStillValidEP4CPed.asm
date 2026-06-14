; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner19IsPartnerStillValidEP4CPed
; Address            : 0x53479C - 0x5347C2
; =========================================================

53479C:  PUSH            {R4,R6,R7,LR}
53479E:  ADD             R7, SP, #8
5347A0:  LDR             R2, [R0,#0x38]
5347A2:  MOV             R4, R1
5347A4:  CBZ             R2, loc_5347BA
5347A6:  LDR             R1, [R0,#0x34]; int
5347A8:  LDR.W           R0, [R2,#0x440]
5347AC:  ADDS            R0, #4; this
5347AE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5347B2:  CBZ             R0, loc_5347BA
5347B4:  LDR             R0, [R0,#0x38]
5347B6:  CMP             R0, R4
5347B8:  BEQ             loc_5347BE
5347BA:  MOVS            R0, #0
5347BC:  POP             {R4,R6,R7,PC}
5347BE:  MOVS            R0, #1
5347C0:  POP             {R4,R6,R7,PC}
