; =========================================================
; Game Engine Function: _ZN11CPopulation25PedCreationDistMultiplierEv
; Address            : 0x4CDB04 - 0x4CDB8C
; =========================================================

4CDB04:  PUSH            {R7,LR}
4CDB06:  MOV             R7, SP
4CDB08:  VPUSH           {D8-D10}
4CDB0C:  MOV.W           R0, #0xFFFFFFFF; int
4CDB10:  MOVS            R1, #0; bool
4CDB12:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CDB16:  CBZ             R0, loc_4CDB7E
4CDB18:  MOV.W           R0, #0xFFFFFFFF; int
4CDB1C:  MOVS            R1, #0; bool
4CDB1E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CDB22:  VLDR            S16, [R0,#0x48]
4CDB26:  MOV.W           R0, #0xFFFFFFFF; int
4CDB2A:  MOVS            R1, #0; bool
4CDB2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CDB30:  VLDR            S18, [R0,#0x48]
4CDB34:  MOV.W           R0, #0xFFFFFFFF; int
4CDB38:  MOVS            R1, #0; bool
4CDB3A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CDB3E:  VLDR            S20, [R0,#0x4C]
4CDB42:  MOV.W           R0, #0xFFFFFFFF; int
4CDB46:  MOVS            R1, #0; bool
4CDB48:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CDB4C:  VLDR            S0, [R0,#0x4C]
4CDB50:  VMUL.F32        S2, S16, S18
4CDB54:  VMOV.F32        S4, #1.0
4CDB58:  VMUL.F32        S0, S20, S0
4CDB5C:  VADD.F32        S0, S2, S0
4CDB60:  VLDR            S2, =-0.1
4CDB64:  VSQRT.F32       S0, S0
4CDB68:  VADD.F32        S0, S0, S2
4CDB6C:  VMOV.F32        S2, #1.5
4CDB70:  VADD.F32        S0, S0, S4
4CDB74:  VMAX.F32        D16, D0, D2
4CDB78:  VMIN.F32        D0, D16, D1
4CDB7C:  B               loc_4CDB82
4CDB7E:  VMOV.F32        S0, #1.0
4CDB82:  VMOV            R0, S0
4CDB86:  VPOP            {D8-D10}
4CDB8A:  POP             {R7,PC}
