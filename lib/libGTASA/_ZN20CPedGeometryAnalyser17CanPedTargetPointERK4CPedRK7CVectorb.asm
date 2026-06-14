; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser17CanPedTargetPointERK4CPedRK7CVectorb
; Address            : 0x4B1090 - 0x4B1160
; =========================================================

4B1090:  LDR.W           R12, [R0,#0x14]
4B1094:  VLDR            S8, [R1]
4B1098:  ADD.W           R3, R12, #0x30 ; '0'
4B109C:  CMP.W           R12, #0
4B10A0:  VLDR            S10, [R1,#4]
4B10A4:  VLDR            S6, [R1,#8]
4B10A8:  IT EQ
4B10AA:  ADDEQ           R3, R0, #4
4B10AC:  VLDR            S0, [R3]
4B10B0:  CMP             R2, #1
4B10B2:  VLDR            S4, [R3,#4]
4B10B6:  VLDR            S2, [R3,#8]
4B10BA:  VSUB.F32        S8, S8, S0
4B10BE:  VSUB.F32        S10, S10, S4
4B10C2:  VSUB.F32        S6, S6, S2
4B10C6:  BNE             loc_4B10F6
4B10C8:  VLDR            S12, [R12,#0x10]
4B10CC:  VLDR            S14, [R12,#0x14]
4B10D0:  VMUL.F32        S12, S8, S12
4B10D4:  VLDR            S1, [R12,#0x18]
4B10D8:  VMUL.F32        S14, S10, S14
4B10DC:  VMUL.F32        S1, S6, S1
4B10E0:  VADD.F32        S12, S12, S14
4B10E4:  VADD.F32        S12, S12, S1
4B10E8:  VCMPE.F32       S12, #0.0
4B10EC:  VMRS            APSR_nzcv, FPSCR
4B10F0:  ITT LT
4B10F2:  MOVLT           R0, #0
4B10F4:  BXLT            LR
4B10F6:  VMUL.F32        S10, S10, S10
4B10FA:  MOVS            R0, #0
4B10FC:  VMUL.F32        S8, S8, S8
4B1100:  VMUL.F32        S6, S6, S6
4B1104:  VADD.F32        S8, S8, S10
4B1108:  VADD.F32        S6, S8, S6
4B110C:  VLDR            S8, =1600.0
4B1110:  VCMPE.F32       S6, S8
4B1114:  VMRS            APSR_nzcv, FPSCR
4B1118:  IT GT
4B111A:  BXGT            LR
4B111C:  PUSH            {R7,LR}
4B111E:  MOV             R7, SP
4B1120:  SUB             SP, SP, #0x20 ; ' '
4B1122:  VMOV.F32        S6, #0.75
4B1126:  VLDR            S8, =0.0
4B112A:  MOVS            R2, #1
4B112C:  MOVS            R3, #0; bool
4B112E:  VADD.F32        S4, S4, S8
4B1132:  VADD.F32        S0, S0, S8
4B1136:  VADD.F32        S2, S2, S6
4B113A:  VSTR            S4, [SP,#0x28+var_10]
4B113E:  VSTR            S0, [SP,#0x28+var_14]
4B1142:  VSTR            S2, [SP,#0x28+var_C]
4B1146:  STRD.W          R0, R2, [SP,#0x28+var_28]; bool
4B114A:  STRD.W          R0, R2, [SP,#0x28+var_20]; bool
4B114E:  MOVS            R2, #(stderr+1); CVector *
4B1150:  STR             R0, [SP,#0x28+var_18]; bool
4B1152:  ADD             R0, SP, #0x28+var_14; this
4B1154:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4B1158:  ADD             SP, SP, #0x20 ; ' '
4B115A:  POP.W           {R7,LR}
4B115E:  BX              LR
