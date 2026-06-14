; =========================================================
; Game Engine Function: _ZN17CRegisteredCorona6UpdateEv
; Address            : 0x5A202C - 0x5A2216
; =========================================================

5A202C:  PUSH            {R4,R6,R7,LR}
5A202E:  ADD             R7, SP, #8
5A2030:  SUB             SP, SP, #0x28
5A2032:  MOV             R4, R0
5A2034:  LDRB.W          R0, [R4,#0x31]
5A2038:  CMP             R0, #0
5A203A:  ITT EQ
5A203C:  MOVEQ           R0, #0
5A203E:  STRBEQ.W        R0, [R4,#0x2F]
5A2042:  LDRB.W          R0, [R4,#0x36]
5A2046:  LSLS            R0, R0, #0x1B
5A2048:  BPL             loc_5A2052
5A204A:  LDR             R0, [R4,#0x38]
5A204C:  CMP             R0, #0
5A204E:  BEQ.W           loc_5A216E
5A2052:  LDRB.W          R0, [R4,#0x34]
5A2056:  TST.W           R0, #1
5A205A:  BEQ             loc_5A20AA
5A205C:  LDR             R0, =(_ZN8CCoronas18SunBlockedByCloudsE_ptr - 0x5A2062)
5A205E:  ADD             R0, PC; _ZN8CCoronas18SunBlockedByCloudsE_ptr
5A2060:  LDR             R0, [R0]; CCoronas::SunBlockedByClouds ...
5A2062:  LDRB            R0, [R0]; CCoronas::SunBlockedByClouds
5A2064:  CBZ             R0, loc_5A206C
5A2066:  LDR             R0, [R4,#0xC]
5A2068:  CMP             R0, #2
5A206A:  BEQ             loc_5A20E0
5A206C:  LDR             R0, =(TheCamera_ptr - 0x5A2074)
5A206E:  MOVS            R3, #0; bool
5A2070:  ADD             R0, PC; TheCamera_ptr
5A2072:  LDR             R0, [R0]; TheCamera
5A2074:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5A2076:  ADD.W           R2, R1, #0x30 ; '0'
5A207A:  CMP             R1, #0
5A207C:  IT EQ
5A207E:  ADDEQ           R2, R0, #4
5A2080:  ADD             R1, SP, #0x30+var_18; CVector *
5A2082:  VLDR            D16, [R2]
5A2086:  LDR             R0, [R2,#(dword_951FB4 - 0x951FAC)]
5A2088:  MOVS            R2, #(stderr+1); CVector *
5A208A:  STR             R0, [SP,#0x30+var_10]
5A208C:  MOVS            R0, #0
5A208E:  VSTR            D16, [SP,#0x30+var_18]
5A2092:  STRD.W          R0, R0, [SP,#0x30+var_30]; bool
5A2096:  STRD.W          R0, R0, [SP,#0x30+var_28]; bool
5A209A:  STR             R0, [SP,#0x30+var_20]; bool
5A209C:  MOV             R0, R4; this
5A209E:  BLX.W           j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
5A20A2:  CMP             R0, #1
5A20A4:  BNE             loc_5A20E0
5A20A6:  LDRB.W          R0, [R4,#0x34]
5A20AA:  LSLS            R0, R0, #0x1E
5A20AC:  BMI             loc_5A20DA
5A20AE:  LDRB.W          R0, [R4,#0x36]
5A20B2:  LSLS            R0, R0, #0x1E
5A20B4:  BPL             loc_5A2130
5A20B6:  LDR             R0, =(TheCamera_ptr - 0x5A20C0)
5A20B8:  VLDR            S0, [R4,#8]
5A20BC:  ADD             R0, PC; TheCamera_ptr
5A20BE:  LDR             R0, [R0]; TheCamera
5A20C0:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5A20C2:  ADD.W           R2, R1, #0x30 ; '0'
5A20C6:  CMP             R1, #0
5A20C8:  IT EQ
5A20CA:  ADDEQ           R2, R0, #4
5A20CC:  VLDR            S2, [R2,#8]
5A20D0:  VCMPE.F32       S2, S0
5A20D4:  VMRS            APSR_nzcv, FPSCR
5A20D8:  BLE             loc_5A2130
5A20DA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A20E0)
5A20DC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A20DE:  B               loc_5A20E4
5A20E0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A20E6)
5A20E2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A20E4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5A20E6:  LDRB.W          R1, [R4,#0x30]
5A20EA:  VLDR            S0, [R4,#0x28]
5A20EE:  VLDR            S2, [R0]
5A20F2:  VMOV            S4, R1
5A20F6:  VMUL.F32        S0, S2, S0
5A20FA:  VLDR            S2, =0.0
5A20FE:  VCVT.F32.U32    S4, S4
5A2102:  VSUB.F32        S0, S4, S0
5A2106:  VMAX.F32        D0, D0, D1
5A210A:  VCVT.U32.F32    S0, S0
5A210E:  VMOV            R0, S0
5A2112:  STRB.W          R0, [R4,#0x30]
5A2116:  CMP             R0, #0
5A2118:  ITT EQ
5A211A:  LDRBEQ.W        R0, [R4,#0x35]
5A211E:  CMPEQ           R0, #0
5A2120:  BEQ             loc_5A2182
5A2122:  MOVS            R0, #0
5A2124:  STRB.W          R0, [R4,#0x31]
5A2128:  STRB.W          R0, [R4,#0x35]
5A212C:  ADD             SP, SP, #0x28 ; '('
5A212E:  POP             {R4,R6,R7,PC}
5A2130:  LDRB.W          R0, [R4,#0x2F]
5A2134:  LDRB.W          R1, [R4,#0x30]
5A2138:  CMP             R0, R1
5A213A:  BLS             loc_5A2194
5A213C:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A214A)
5A213E:  VMOV            S4, R1
5A2142:  VLDR            S0, [R4,#0x28]
5A2146:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A2148:  LDR             R1, =(_ZN8CCoronas28bChangeBrightnessImmediatelyE_ptr - 0x5A2150)
5A214A:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5A214C:  ADD             R1, PC; _ZN8CCoronas28bChangeBrightnessImmediatelyE_ptr
5A214E:  LDR             R1, [R1]; CCoronas::bChangeBrightnessImmediately ...
5A2150:  VLDR            S2, [R2]
5A2154:  VCVT.F32.U32    S4, S4
5A2158:  VMUL.F32        S0, S2, S0
5A215C:  VMOV            S2, R0
5A2160:  VCVT.F32.U32    S2, S2
5A2164:  VADD.F32        S0, S0, S4
5A2168:  VMIN.F32        D0, D0, D1
5A216C:  B               loc_5A21C6
5A216E:  LDR             R0, =(_ZN8CCoronas10NumCoronasE_ptr - 0x5A2178)
5A2170:  MOVS            R1, #0
5A2172:  STR             R1, [R4,#0xC]
5A2174:  ADD             R0, PC; _ZN8CCoronas10NumCoronasE_ptr
5A2176:  LDR             R0, [R0]; CCoronas::NumCoronas ...
5A2178:  LDR             R1, [R0]; CCoronas::NumCoronas
5A217A:  SUBS            R1, #1
5A217C:  STR             R1, [R0]; CCoronas::NumCoronas
5A217E:  ADD             SP, SP, #0x28 ; '('
5A2180:  POP             {R4,R6,R7,PC}
5A2182:  LDR             R0, =(_ZN8CCoronas10NumCoronasE_ptr - 0x5A218C)
5A2184:  MOVS            R1, #0
5A2186:  STR             R1, [R4,#0xC]
5A2188:  ADD             R0, PC; _ZN8CCoronas10NumCoronasE_ptr
5A218A:  LDR             R0, [R0]; CCoronas::NumCoronas ...
5A218C:  LDR             R1, [R0]; CCoronas::NumCoronas
5A218E:  SUBS            R1, #1
5A2190:  STR             R1, [R0]; CCoronas::NumCoronas
5A2192:  B               loc_5A2122
5A2194:  BCS             loc_5A21E0
5A2196:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A21A4)
5A2198:  VMOV            S4, R1
5A219C:  VLDR            S0, [R4,#0x28]
5A21A0:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A21A2:  LDR             R1, =(_ZN8CCoronas28bChangeBrightnessImmediatelyE_ptr - 0x5A21AA)
5A21A4:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5A21A6:  ADD             R1, PC; _ZN8CCoronas28bChangeBrightnessImmediatelyE_ptr
5A21A8:  LDR             R1, [R1]; CCoronas::bChangeBrightnessImmediately ...
5A21AA:  VLDR            S2, [R2]
5A21AE:  VCVT.F32.U32    S4, S4
5A21B2:  VMUL.F32        S0, S2, S0
5A21B6:  VMOV            S2, R0
5A21BA:  VCVT.F32.U32    S2, S2
5A21BE:  VSUB.F32        S0, S4, S0
5A21C2:  VMAX.F32        D0, D0, D1
5A21C6:  VCVT.U32.F32    S0, S0
5A21CA:  VMOV            R2, S0
5A21CE:  STRB.W          R2, [R4,#0x30]
5A21D2:  LDR             R1, [R1]; CCoronas::bChangeBrightnessImmediately
5A21D4:  CMP             R1, #0
5A21D6:  IT EQ
5A21D8:  MOVEQ           R0, R2
5A21DA:  STRB.W          R0, [R4,#0x30]
5A21DE:  B               loc_5A21E2
5A21E0:  MOV             R0, R1
5A21E2:  LDR             R1, [R4,#0xC]
5A21E4:  CMP             R1, #2
5A21E6:  BNE             loc_5A2116
5A21E8:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A21F0)
5A21EA:  LDR             R2, =(_ZN8CCoronas10ScreenMultE_ptr - 0x5A21F6)
5A21EC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A21EE:  VLDR            S0, =-0.06
5A21F2:  ADD             R2, PC; _ZN8CCoronas10ScreenMultE_ptr
5A21F4:  VLDR            S4, =0.6
5A21F8:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5A21FA:  VLDR            S2, [R1]
5A21FE:  LDR             R1, [R2]; CCoronas::ScreenMult ...
5A2200:  VMUL.F32        S0, S2, S0
5A2204:  VLDR            S2, [R1]
5A2208:  VADD.F32        S0, S2, S0
5A220C:  VMAX.F32        D0, D0, D2
5A2210:  VSTR            S0, [R1]
5A2214:  B               loc_5A2116
