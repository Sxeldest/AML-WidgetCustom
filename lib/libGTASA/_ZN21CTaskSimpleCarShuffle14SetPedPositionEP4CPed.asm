; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffle14SetPedPositionEP4CPed
; Address            : 0x5020E8 - 0x502124
; =========================================================

5020E8:  PUSH            {R7,LR}
5020EA:  MOV             R7, SP
5020EC:  LDRB.W          R2, [R1,#0x485]
5020F0:  LSLS            R2, R2, #0x1F
5020F2:  BNE             loc_5020F8
5020F4:  LDR             R3, [R0,#0xC]
5020F6:  B               loc_50210E
5020F8:  LDR             R3, [R0,#0xC]; CAnimBlendAssociation *
5020FA:  CBZ             R3, loc_50211A
5020FC:  VLDR            S0, =0.9
502100:  VLDR            S2, [R3,#0x18]
502104:  VCMPE.F32       S2, S0
502108:  VMRS            APSR_nzcv, FPSCR
50210C:  BLE             loc_50211A
50210E:  LDR             R2, [R0,#0x10]; CVehicle *
502110:  LDR             R0, [R0,#0x18]; this
502112:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
502116:  MOVS            R0, #1
502118:  POP             {R7,PC}
50211A:  MOV             R0, R1; this
50211C:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
502120:  MOVS            R0, #1
502122:  POP             {R7,PC}
