; =========================================================
; Game Engine Function: _ZN30CTaskSimpleWaitUntilPedIsInCar10ProcessPedEP4CPed
; Address            : 0x5067E4 - 0x50684C
; =========================================================

5067E4:  PUSH            {R4,R5,R7,LR}
5067E6:  ADD             R7, SP, #8
5067E8:  MOV             R4, R0
5067EA:  MOV             R0, R1
5067EC:  MOVS            R1, #1
5067EE:  MOVS            R5, #1
5067F0:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
5067F4:  LDR             R0, [R4,#8]
5067F6:  CBZ             R0, loc_506832
5067F8:  LDR.W           R0, [R0,#0x440]
5067FC:  MOV.W           R1, #0x320; int
506800:  ADDS            R0, #4; this
506802:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
506806:  CBZ             R0, loc_50681A
506808:  MOVS            R0, #1
50680A:  STRB            R0, [R4,#0xC]
50680C:  LDR             R0, [R4,#8]
50680E:  LDRB.W          R0, [R0,#0x485]
506812:  AND.W           R5, R0, #1
506816:  MOV             R0, R5
506818:  POP             {R4,R5,R7,PC}
50681A:  LDRB            R0, [R4,#0xC]
50681C:  CBNZ            R0, loc_506830
50681E:  LDR             R0, [R4,#8]
506820:  MOVW            R1, #0x327; int
506824:  LDR.W           R0, [R0,#0x440]
506828:  ADDS            R0, #4; this
50682A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
50682E:  CBZ             R0, loc_506836
506830:  MOVS            R5, #1
506832:  MOV             R0, R5
506834:  POP             {R4,R5,R7,PC}
506836:  LDR             R0, [R4,#8]; this
506838:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50683C:  CMP             R0, #0
50683E:  BNE             loc_50680C
506840:  LDR             R0, [R4,#8]
506842:  LDRB.W          R0, [R0,#0x490]
506846:  LSLS            R0, R0, #0x1C
506848:  BPL             loc_50680C
50684A:  B               loc_506830
