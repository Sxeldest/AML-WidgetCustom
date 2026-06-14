; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOut14SetPedPositionEP4CPed
; Address            : 0x50351C - 0x50354A
; =========================================================

50351C:  PUSH            {R7,LR}
50351E:  MOV             R7, SP
503520:  LDR             R3, [R0,#0xC]; CAnimBlendAssociation *
503522:  CMP             R3, #0
503524:  ITTT NE
503526:  VLDRNE          S0, [R3,#0x18]
50352A:  VCMPNE.F32      S0, #0.0
50352E:  VMRSNE          APSR_nzcv, FPSCR
503532:  BNE             loc_50353E
503534:  MOV             R0, R1; this
503536:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
50353A:  MOVS            R0, #1
50353C:  POP             {R7,PC}
50353E:  LDR             R2, [R0,#0x14]; CVehicle *
503540:  LDR             R0, [R0,#0x1C]; this
503542:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
503546:  MOVS            R0, #1
503548:  POP             {R7,PC}
