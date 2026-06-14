; =========================================================
; Game Engine Function: _ZN7CGarage31IsStaticPlayerCarEntirelyInsideEv
; Address            : 0x311CC0 - 0x311DD2
; =========================================================

311CC0:  PUSH            {R4,R6,R7,LR}
311CC2:  ADD             R7, SP, #8
311CC4:  MOV             R4, R0
311CC6:  MOV.W           R0, #0xFFFFFFFF; int
311CCA:  MOVS            R1, #0; bool
311CCC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311CD0:  CMP             R0, #0
311CD2:  BEQ             loc_311DC4
311CD4:  MOV.W           R0, #0xFFFFFFFF; int
311CD8:  MOVS            R1, #0; bool
311CDA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311CDE:  LDR.W           R0, [R0,#0x5A0]
311CE2:  CBZ             R0, loc_311CF6
311CE4:  MOV.W           R0, #0xFFFFFFFF; int
311CE8:  MOVS            R1, #0; bool
311CEA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311CEE:  LDR.W           R0, [R0,#0x5A0]
311CF2:  CMP             R0, #9
311CF4:  BNE             loc_311DC4
311CF6:  MOV.W           R0, #0xFFFFFFFF; int
311CFA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
311CFE:  LDR.W           R0, [R0,#0x440]
311D02:  MOV.W           R1, #0x2C0; int
311D06:  ADDS            R0, #4; this
311D08:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
311D0C:  CMP             R0, #0
311D0E:  BNE             loc_311DC4
311D10:  MOV.W           R0, #0xFFFFFFFF; int
311D14:  MOVS            R1, #0; bool
311D16:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311D1A:  MOV             R1, R0; CEntity *
311D1C:  VLDR            S2, [R4,#0x28]
311D20:  LDR             R2, [R1,#0x14]
311D22:  ADD.W           R0, R2, #0x30 ; '0'
311D26:  CMP             R2, #0
311D28:  IT EQ
311D2A:  ADDEQ           R0, R1, #4
311D2C:  VLDR            S0, [R0]
311D30:  VCMPE.F32       S0, S2
311D34:  VMRS            APSR_nzcv, FPSCR
311D38:  BLT             loc_311DC4
311D3A:  VLDR            S2, [R4,#0x2C]
311D3E:  VCMPE.F32       S0, S2
311D42:  VMRS            APSR_nzcv, FPSCR
311D46:  BGT             loc_311DC4
311D48:  VLDR            S0, [R0,#4]
311D4C:  VLDR            S2, [R4,#0x30]
311D50:  VCMPE.F32       S0, S2
311D54:  VMRS            APSR_nzcv, FPSCR
311D58:  BLT             loc_311DC4
311D5A:  VLDR            S2, [R4,#0x34]
311D5E:  VCMPE.F32       S0, S2
311D62:  VMRS            APSR_nzcv, FPSCR
311D66:  BGT             loc_311DC4
311D68:  VLDR            S0, [R1,#0x48]
311D6C:  VLDR            S2, =0.01
311D70:  VABS.F32        S0, S0
311D74:  VCMPE.F32       S0, S2
311D78:  VMRS            APSR_nzcv, FPSCR
311D7C:  BGT             loc_311DC4
311D7E:  VLDR            S4, [R1,#0x4C]
311D82:  VABS.F32        S4, S4
311D86:  VCMPE.F32       S4, S2
311D8A:  VMRS            APSR_nzcv, FPSCR
311D8E:  BGT             loc_311DC4
311D90:  VLDR            S6, [R1,#0x50]
311D94:  VABS.F32        S6, S6
311D98:  VCMPE.F32       S6, S2
311D9C:  VMRS            APSR_nzcv, FPSCR
311DA0:  BGT             loc_311DC4
311DA2:  VMUL.F32        S2, S4, S4
311DA6:  VMUL.F32        S0, S0, S0
311DAA:  VMUL.F32        S4, S6, S6
311DAE:  VADD.F32        S0, S0, S2
311DB2:  VLDR            S2, =0.0001
311DB6:  VADD.F32        S0, S0, S4
311DBA:  VCMPE.F32       S0, S2
311DBE:  VMRS            APSR_nzcv, FPSCR
311DC2:  BLE             loc_311DC8
311DC4:  MOVS            R0, #0
311DC6:  POP             {R4,R6,R7,PC}
311DC8:  MOV             R0, R4; this
311DCA:  MOVS            R2, #0; float
311DCC:  POP.W           {R4,R6,R7,LR}
311DD0:  B               _ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
