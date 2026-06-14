; =========================================================
; Game Engine Function: _ZN8CVehicle19CanVehicleBeDamagedEP7CEntity11eWeaponTypePh
; Address            : 0x583BAC - 0x583C56
; =========================================================

583BAC:  PUSH            {R4-R7,LR}
583BAE:  ADD             R7, SP, #0xC
583BB0:  PUSH.W          {R8,R9,R11}
583BB4:  MOV             R4, R0
583BB6:  MOV             R5, R3
583BB8:  LDRB.W          R0, [R4,#0x42E]
583BBC:  MOV             R8, R2
583BBE:  MOV             R9, R1
583BC0:  LSLS            R0, R0, #0x1A
583BC2:  BMI             loc_583BC8
583BC4:  MOVS            R6, #0
583BC6:  B               loc_583C4E
583BC8:  LDRB.W          R0, [R4,#0x3A]
583BCC:  CMP             R0, #8
583BCE:  BCC             loc_583BF4
583BD0:  LDRB.W          R0, [R4,#0x46]
583BD4:  LSLS            R0, R0, #0x19
583BD6:  BPL             loc_583BF4
583BD8:  MOV.W           R0, #0xFFFFFFFF; int
583BDC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
583BE0:  CMP             R0, R9
583BE2:  BEQ             loc_583BF4
583BE4:  MOV.W           R0, #0xFFFFFFFF; int
583BE8:  MOVS            R1, #0; bool
583BEA:  MOVS            R6, #0
583BEC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
583BF0:  CMP             R0, R9
583BF2:  BNE             loc_583C4E
583BF4:  MOV.W           R0, #0xFFFFFFFF; int
583BF8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
583BFC:  CBZ             R0, loc_583C1A
583BFE:  MOV.W           R0, #0xFFFFFFFF; int
583C02:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
583C06:  CMP             R0, R9
583C08:  BNE             loc_583C1A
583C0A:  MOV.W           R0, #0xFFFFFFFF; int
583C0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
583C12:  LDR.W           R0, [R0,#0x100]
583C16:  CMP             R0, R4
583C18:  BEQ             loc_583BC4
583C1A:  MOVS            R6, #0
583C1C:  MOV             R0, R4
583C1E:  MOV             R1, R8
583C20:  MOV             R2, R5
583C22:  STRB            R6, [R5]
583C24:  BLX             j__ZN9CPhysical20CanPhysicalBeDamagedE11eWeaponTypePh; CPhysical::CanPhysicalBeDamaged(eWeaponType,uchar *)
583C28:  CBZ             R0, loc_583C4E
583C2A:  LDRB            R0, [R5]
583C2C:  CBZ             R0, loc_583C4C
583C2E:  LDRB.W          R0, [R4,#0x3A]
583C32:  CMP             R0, #7
583C34:  BHI             loc_583C4C
583C36:  ADDW            R0, R4, #0x4CC
583C3A:  VLDR            S0, =250.0
583C3E:  VLDR            S2, [R0]
583C42:  VCMPE.F32       S2, S0
583C46:  VMRS            APSR_nzcv, FPSCR
583C4A:  BLT             loc_583BC4
583C4C:  MOVS            R6, #1
583C4E:  MOV             R0, R6
583C50:  POP.W           {R8,R9,R11}
583C54:  POP             {R4-R7,PC}
