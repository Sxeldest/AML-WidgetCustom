; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOut14SetPedPositionEP4CPed
; Address            : 0x505BD8 - 0x505C12
; =========================================================

505BD8:  PUSH            {R7,LR}
505BDA:  MOV             R7, SP
505BDC:  LDR             R2, [R0,#0x10]; CVehicle *
505BDE:  CBZ             R2, loc_505BF2
505BE0:  LDRB.W          R12, [R0,#8]
505BE4:  LDR             R3, [R0,#0xC]; CAnimBlendAssociation *
505BE6:  CMP.W           R12, #0
505BEA:  BEQ             loc_505BF6
505BEC:  LDR             R0, [R0,#0x18]; this
505BEE:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
505BF2:  MOVS            R0, #1
505BF4:  POP             {R7,PC}
505BF6:  CMP             R3, #0
505BF8:  ITTT NE
505BFA:  VLDRNE          S0, [R3,#0x18]
505BFE:  VCMPNE.F32      S0, #0.0
505C02:  VMRSNE          APSR_nzcv, FPSCR
505C06:  BNE             loc_505BEC
505C08:  MOV             R0, R1; this
505C0A:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
505C0E:  MOVS            R0, #1
505C10:  POP             {R7,PC}
