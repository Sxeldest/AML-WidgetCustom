; =========================================================
; Game Engine Function: _ZN10CTimeCycle19CalcColoursForPointE7CVectorP10CColourSet
; Address            : 0x41EF50 - 0x420312
; =========================================================

41EF50:  PUSH            {R4-R7,LR}
41EF52:  ADD             R7, SP, #0xC
41EF54:  PUSH.W          {R8-R11}
41EF58:  SUB             SP, SP, #4
41EF5A:  VPUSH           {D8-D15}
41EF5E:  SUB.W           SP, SP, #0x810
41EF62:  MOV             R11, R3
41EF64:  MOV             R4, R0
41EF66:  MOV.W           R10, #0
41EF6A:  MOV.W           R8, #1
41EF6E:  SUB.W           R0, R7, #-var_6C
41EF72:  SUB.W           R3, R7, #-var_7C
41EF76:  STMEA.W         SP, {R0,R8,R10}
41EF7A:  MOV             R0, R4
41EF7C:  MOV             R5, R2
41EF7E:  MOV             R9, R1
41EF80:  STR.W           R10, [SP,#0x870+var_864]
41EF84:  BLX             j__ZN10CTimeCycle16FindTimeCycleBoxE7CVectorPP13CTimeCycleBoxPfbbS2_; CTimeCycle::FindTimeCycleBox(CVector,CTimeCycleBox **,float *,bool,bool,CTimeCycleBox *)
41EF88:  SUB.W           R6, R7, #-var_84
41EF8C:  SUB.W           R0, R7, #-var_74
41EF90:  STRD.W          R0, R10, [SP,#0x870+var_870]
41EF94:  MOV             R0, R4
41EF96:  MOV             R1, R9
41EF98:  MOV             R2, R5
41EF9A:  MOV             R3, R6
41EF9C:  STRD.W          R8, R10, [SP,#0x870+var_868]
41EFA0:  BLX             j__ZN10CTimeCycle16FindTimeCycleBoxE7CVectorPP13CTimeCycleBoxPfbbS2_; CTimeCycle::FindTimeCycleBox(CVector,CTimeCycleBox **,float *,bool,bool,CTimeCycleBox *)
41EFA4:  LDR.W           R0, [R7,#var_84]
41EFA8:  STR             R4, [SP,#0x870+var_848]
41EFAA:  CMP             R0, #0
41EFAC:  BEQ             loc_41F00C
41EFAE:  SUB.W           R1, R7, #-var_74
41EFB2:  ADDS            R3, R6, #4
41EFB4:  ADDS            R1, #4
41EFB6:  STRD.W          R1, R10, [SP,#0x870+var_870]
41EFBA:  STRD.W          R8, R0, [SP,#0x870+var_868]
41EFBE:  MOV             R0, R4
41EFC0:  MOV             R1, R9
41EFC2:  MOV             R2, R5
41EFC4:  BLX             j__ZN10CTimeCycle16FindTimeCycleBoxE7CVectorPP13CTimeCycleBoxPfbbS2_; CTimeCycle::FindTimeCycleBox(CVector,CTimeCycleBox **,float *,bool,bool,CTimeCycleBox *)
41EFC8:  LDR.W           R0, [R7,#var_80]
41EFCC:  MOVS            R6, #0
41EFCE:  CBZ             R0, loc_41F016
41EFD0:  LDR.W           R6, [R7,#var_84]
41EFD4:  VLDR            S0, [R0]
41EFD8:  VLDR            S2, [R0,#0xC]
41EFDC:  VLDR            S4, [R6]
41EFE0:  VLDR            S6, [R6,#0xC]
41EFE4:  VSUB.F32        S0, S2, S0
41EFE8:  VSUB.F32        S2, S6, S4
41EFEC:  VCMPE.F32       S2, S0
41EFF0:  VMRS            APSR_nzcv, FPSCR
41EFF4:  BGE             loc_41F014
41EFF6:  STR.W           R0, [R7,#var_84]
41EFFA:  LDR.W           R0, [R7,#var_74]
41EFFE:  LDR.W           R1, [R7,#var_70]
41F002:  STR.W           R6, [R7,#var_80]
41F006:  STRD.W          R1, R0, [R7,#var_74]
41F00A:  B               loc_41F016
41F00C:  MOVS            R6, #0
41F00E:  STR.W           R10, [R7,#var_80]
41F012:  B               loc_41F016
41F014:  MOV             R6, R0
41F016:  MOV.W           R10, #(loc_41FF30 - 0x41FF30)
41F01A:  SUB.W           R0, R7, #-var_68
41F01E:  STRD.W          R0, R10, [SP,#0x870+var_870]; float
41F022:  SUB.W           R3, R7, #-var_78
41F026:  STRD.W          R10, R10, [SP,#0x870+var_868]
41F02A:  MOV             R1, R9
41F02C:  LDR             R0, [SP,#0x870+var_848]
41F02E:  MOV             R2, R5
41F030:  BLX             j__ZN10CTimeCycle16FindTimeCycleBoxE7CVectorPP13CTimeCycleBoxPfbbS2_; CTimeCycle::FindTimeCycleBox(CVector,CTimeCycleBox **,float *,bool,bool,CTimeCycleBox *)
41F034:  LDR.W           R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x41F040)
41F038:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x41F046)
41F03C:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
41F03E:  VLDR            S23, =60.0
41F042:  ADD             R1, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
41F044:  VLDR            S4, =3600.0
41F048:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
41F04A:  LDRB            R0, [R0]; CClock::ms_nGameClockMinutes
41F04C:  VMOV            S0, R0
41F050:  LDR             R0, [R1]; CClock::ms_nGameClockSeconds ...
41F052:  VCVT.F32.U32    S0, S0
41F056:  LDRB            R0, [R0]; CClock::ms_nGameClockSeconds
41F058:  VMOV            S2, R0
41F05C:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x41F068)
41F060:  VCVT.F32.U32    S2, S2
41F064:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
41F066:  VDIV.F32        S0, S0, S23
41F06A:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
41F06C:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
41F06E:  VDIV.F32        S2, S2, S4
41F072:  VMOV            S4, R0
41F076:  ADR.W           R0, loc_41FF30
41F07A:  VCVT.F32.U32    S4, S4
41F07E:  VADD.F32        S0, S0, S4
41F082:  VLDR            S4, =23.999
41F086:  VADD.F32        S0, S0, S2
41F08A:  VMIN.F32        D0, D0, D2
41F08E:  ADD.W           R1, R0, R10
41F092:  ADD.W           R10, R10, #1
41F096:  LDRB            R1, [R1,#1]
41F098:  VMOV            S2, R1
41F09C:  VCVT.F32.U32    S2, S2
41F0A0:  VCMPE.F32       S0, S2
41F0A4:  VMRS            APSR_nzcv, FPSCR
41F0A8:  BGE             loc_41F08E
41F0AA:  ADD             R0, R10
41F0AC:  STR.W           R9, [SP,#0x870+var_858]
41F0B0:  VMOV.F32        S26, #1.0
41F0B4:  SUB.W           R4, R10, #1
41F0B8:  LDRB.W          R0, [R0,#-1]
41F0BC:  VMOV            S2, R0
41F0C0:  SUBS            R0, R1, R0
41F0C2:  MOV.W           R1, R10,ASR#31
41F0C6:  VCVT.F32.U32    S2, S2
41F0CA:  ADD.W           R1, R10, R1,LSR#29
41F0CE:  VMOV            S4, R0
41F0D2:  LDR.W           R0, =(_ZN8CWeather18InterpolationValueE_ptr - 0x41F0E2)
41F0D6:  BIC.W           R1, R1, #7
41F0DA:  VCVT.F32.S32    S4, S4
41F0DE:  ADD             R0, PC; _ZN8CWeather18InterpolationValueE_ptr
41F0E0:  LDR.W           R2, [R7,#var_78]
41F0E4:  SUB.W           R1, R10, R1
41F0E8:  LDR             R0, [R0]; CWeather::InterpolationValue ...
41F0EA:  CMP             R2, #0
41F0EC:  STR             R1, [SP,#0x870+var_844]
41F0EE:  VSUB.F32        S0, S0, S2
41F0F2:  VLDR            S19, [R0]
41F0F6:  STRD.W          R2, R6, [SP,#0x870+var_854]
41F0FA:  VDIV.F32        S20, S0, S4
41F0FE:  BEQ             loc_41F11E
41F100:  LDR             R0, [R2,#0x1C]
41F102:  MOV.W           R9, #0x16
41F106:  CMP             R0, #8
41F108:  MOV.W           R1, R0,ASR#31
41F10C:  IT LT
41F10E:  MOVLT.W         R9, #0x15
41F112:  ADD.W           R1, R0, R1,LSR#29
41F116:  BIC.W           R1, R1, #7
41F11A:  SUBS            R0, R0, R1
41F11C:  B               loc_41F122
41F11E:  MOV.W           R9, #0
41F122:  ADR.W           R1, dword_41FF40
41F126:  ADD.W           R2, SP, #0x870+var_160
41F12A:  VLD1.64         {D14-D15}, [R1@128]
41F12E:  ADD.W           R1, R2, #0xBC
41F132:  VSUB.F32        S22, S26, S20
41F136:  VST1.32         {D14-D15}, [R1]
41F13A:  ADD.W           R1, R2, #0xAC
41F13E:  STR             R0, [SP,#0x870+var_85C]
41F140:  LDR.W           R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x41F150)
41F144:  VST1.32         {D14-D15}, [R1]
41F148:  ADD.W           R1, R2, #0xCC
41F14C:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
41F14E:  VST1.32         {D14-D15}, [R1]
41F152:  ADDW            R1, SP, #0x870+var_23C
41F156:  ADD.W           R2, R1, #0xBC
41F15A:  LDR             R5, [R0]; CWeather::OldWeatherType ...
41F15C:  ADD.W           R0, R1, #0xAC
41F160:  VST1.32         {D14-D15}, [R2]
41F164:  VST1.32         {D14-D15}, [R0]
41F168:  ADD.W           R0, R1, #0xCC
41F16C:  MOV             R1, R4; int
41F16E:  LDRSH.W         R2, [R5]; int
41F172:  VST1.32         {D14-D15}, [R0]
41F176:  ADD.W           R0, SP, #0x870+var_318; this
41F17A:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F17E:  LDR             R6, [SP,#0x870+var_844]
41F180:  ADDW            R0, SP, #0x870+var_3F4; this
41F184:  LDRSH.W         R2, [R5]; int
41F188:  MOV             R1, R6; int
41F18A:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F18E:  LDR.W           R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x41F19A)
41F192:  MOV             R1, R4; int
41F194:  STR             R4, [SP,#0x870+var_84C]
41F196:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
41F198:  LDR             R5, [R0]; CWeather::NewWeatherType ...
41F19A:  ADD             R0, SP, #0x870+var_4D0; this
41F19C:  LDRSH.W         R2, [R5]; int
41F1A0:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F1A4:  LDRSH.W         R2, [R5]; int
41F1A8:  ADD             R0, SP, #0x870+var_5AC; this
41F1AA:  MOV             R1, R6; int
41F1AC:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F1B0:  LDR.W           R0, =(TheCamera_ptr - 0x41F1C4)
41F1B4:  VMOV.F32        S0, #-20.0
41F1B8:  VLDR            S16, =0.0
41F1BC:  VSUB.F32        S21, S26, S19
41F1C0:  ADD             R0, PC; TheCamera_ptr
41F1C2:  LDR             R0, [R0]; TheCamera
41F1C4:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
41F1C6:  ADD.W           R2, R1, #0x30 ; '0'
41F1CA:  CMP             R1, #0
41F1CC:  IT EQ
41F1CE:  ADDEQ           R2, R0, #4
41F1D0:  VLDR            S2, [R2,#8]
41F1D4:  VADD.F32        S0, S2, S0
41F1D8:  VLDR            S2, =200.0
41F1DC:  VDIV.F32        S0, S0, S2
41F1E0:  VMAX.F32        D16, D0, D8
41F1E4:  VMIN.F32        D12, D16, D13
41F1E8:  VCMPE.F32       S24, #0.0
41F1EC:  VMRS            APSR_nzcv, FPSCR
41F1F0:  BLE.W           loc_41F358
41F1F4:  VMOV.F32        S0, #1.0
41F1F8:  LDR.W           R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x41F200)
41F1FC:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
41F1FE:  LDR             R0, [R0]; CWeather::OldWeatherType ...
41F200:  VSUB.F32        S18, S0, S24
41F204:  LDRSH.W         R0, [R0]; CWeather::OldWeatherType
41F208:  CMP             R0, #3
41F20A:  BEQ             loc_41F25A
41F20C:  CMP             R0, #2
41F20E:  BNE             loc_41F2A6
41F210:  ADD             R6, SP, #0x870+var_688
41F212:  LDR             R1, [SP,#0x870+var_84C]; int
41F214:  MOVS            R2, #0; int
41F216:  MOV.W           R8, #0
41F21A:  MOV             R0, R6; this
41F21C:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F220:  VMOV            R5, S18
41F224:  ADD.W           R0, SP, #0x870+var_318; this
41F228:  MOV             R2, R6; CColourSet *
41F22A:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F22E:  MOV             R1, R0; CColourSet *
41F230:  VSTR            S24, [SP,#0x870+var_870]
41F234:  MOV             R3, R5; float
41F236:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F23A:  ADD             R6, SP, #0x870+var_764
41F23C:  LDR             R1, [SP,#0x870+var_844]; int
41F23E:  MOVS            R2, #0; int
41F240:  MOV             R0, R6; this
41F242:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F246:  ADDW            R0, SP, #0x870+var_3F4
41F24A:  STR.W           R8, [SP,#0x870+var_86C]
41F24E:  VSTR            S24, [SP,#0x870+var_870]
41F252:  MOV             R2, R6
41F254:  MOV             R1, R0
41F256:  MOV             R3, R5
41F258:  B               loc_41F2A2
41F25A:  ADD             R5, SP, #0x870+var_688
41F25C:  LDR             R1, [SP,#0x870+var_84C]; int
41F25E:  MOVS            R2, #1; int
41F260:  MOV             R0, R5; this
41F262:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F266:  VMOV            R6, S18
41F26A:  ADD.W           R0, SP, #0x870+var_318; this
41F26E:  MOV.W           R8, #0
41F272:  MOV             R2, R5; CColourSet *
41F274:  MOV             R1, R0; CColourSet *
41F276:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F27A:  VSTR            S24, [SP,#0x870+var_870]
41F27E:  MOV             R3, R6; float
41F280:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F284:  ADD             R5, SP, #0x870+var_764
41F286:  LDR             R1, [SP,#0x870+var_844]; int
41F288:  MOVS            R2, #1; int
41F28A:  MOV             R0, R5; this
41F28C:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F290:  ADDW            R0, SP, #0x870+var_3F4; this
41F294:  MOV             R2, R5; CColourSet *
41F296:  MOV             R3, R6; float
41F298:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F29C:  MOV             R1, R0; CColourSet *
41F29E:  VSTR            S24, [SP,#0x870+var_870]
41F2A2:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F2A6:  LDR.W           R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x41F2AE)
41F2AA:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
41F2AC:  LDR             R0, [R0]; CWeather::NewWeatherType ...
41F2AE:  LDRSH.W         R0, [R0]; CWeather::NewWeatherType
41F2B2:  CMP             R0, #3
41F2B4:  BEQ             loc_41F310
41F2B6:  CMP             R0, #2
41F2B8:  BNE             loc_41F358
41F2BA:  ADD             R5, SP, #0x870+var_688
41F2BC:  LDR             R1, [SP,#0x870+var_84C]; int
41F2BE:  MOVS            R2, #0; int
41F2C0:  MOV.W           R8, #0
41F2C4:  MOV             R0, R5; this
41F2C6:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F2CA:  VMOV            R6, S18
41F2CE:  ADD             R0, SP, #0x870+var_4D0; this
41F2D0:  MOV             R2, R5; CColourSet *
41F2D2:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F2D6:  MOV             R1, R0; CColourSet *
41F2D8:  VSTR            S24, [SP,#0x870+var_870]
41F2DC:  MOV             R3, R6; float
41F2DE:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F2E2:  ADD             R5, SP, #0x870+var_764
41F2E4:  LDR             R1, [SP,#0x870+var_844]
41F2E6:  MOVS            R2, #0
41F2E8:  B               loc_41F33E
41F2EA:  ALIGN 4
41F2EC:  DCFS 60.0
41F2F0:  DCFS 3600.0
41F2F4:  DCFS 23.999
41F2F8:  DCFS 0.0
41F2FC:  DCFS 200.0
41F300:  DCFS 10.156
41F304:  DCFS 0.0043633
41F308:  DCFS 0.7
41F30C:  DCFS 0.2
41F310:  ADD             R5, SP, #0x870+var_688
41F312:  LDR             R1, [SP,#0x870+var_84C]; int
41F314:  MOVS            R2, #1; int
41F316:  MOV             R0, R5; this
41F318:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F31C:  VMOV            R6, S18
41F320:  ADD             R0, SP, #0x870+var_4D0; this
41F322:  MOV.W           R8, #0
41F326:  MOV             R2, R5; CColourSet *
41F328:  MOV             R1, R0; CColourSet *
41F32A:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F32E:  VSTR            S24, [SP,#0x870+var_870]
41F332:  MOV             R3, R6; float
41F334:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F338:  ADD             R5, SP, #0x870+var_764
41F33A:  LDR             R1, [SP,#0x870+var_844]; int
41F33C:  MOVS            R2, #1; int
41F33E:  MOV             R0, R5; this
41F340:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41F344:  ADD             R0, SP, #0x870+var_5AC; this
41F346:  MOV             R2, R5; CColourSet *
41F348:  MOV             R3, R6; float
41F34A:  STR.W           R8, [SP,#0x870+var_86C]; bool
41F34E:  MOV             R1, R0; CColourSet *
41F350:  VSTR            S24, [SP,#0x870+var_870]
41F354:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F358:  VMOV            R4, S22
41F35C:  ADD.W           R5, SP, #0x870+var_160
41F360:  ADD.W           R1, SP, #0x870+var_318; CColourSet *
41F364:  ADDW            R2, SP, #0x870+var_3F4; CColourSet *
41F368:  MOVS            R6, #0
41F36A:  MOV             R0, R5; this
41F36C:  STR             R6, [SP,#0x870+var_86C]; bool
41F36E:  VSTR            S20, [SP,#0x870+var_870]
41F372:  MOV             R3, R4; float
41F374:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F378:  ADDW            R8, SP, #0x870+var_23C
41F37C:  ADD             R1, SP, #0x870+var_4D0; CColourSet *
41F37E:  ADD             R2, SP, #0x870+var_5AC; CColourSet *
41F380:  MOV             R3, R4; float
41F382:  MOV             R0, R8; this
41F384:  STR             R6, [SP,#0x870+var_86C]; bool
41F386:  VSTR            S20, [SP,#0x870+var_870]
41F38A:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F38E:  VMOV            R3, S21; float
41F392:  MOV             R0, R11; this
41F394:  MOV             R1, R5; CColourSet *
41F396:  MOV             R2, R8; CColourSet *
41F398:  STR             R6, [SP,#0x870+var_86C]; bool
41F39A:  VSTR            S19, [SP,#0x870+var_870]
41F39E:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41F3A2:  LDR.W           R0, =(_ZN8CCoronas10LightsMultE_ptr - 0x41F3B2)
41F3A6:  VMOV.F32        S2, #3.0
41F3AA:  VMOV.F32        S4, #0.25
41F3AE:  ADD             R0, PC; _ZN8CCoronas10LightsMultE_ptr
41F3B0:  LDR             R0, [R0]; CCoronas::LightsMult ...
41F3B2:  VLDR            S0, [R0]
41F3B6:  LDRH.W          R0, [R11,#0x2A]
41F3BA:  VDIV.F32        S0, S26, S0
41F3BE:  VADD.F32        S0, S0, S2
41F3C2:  VMOV            S2, R0
41F3C6:  VCVT.F32.U32    S2, S2
41F3CA:  LDRH.W          R1, [R11,#0x2E]
41F3CE:  LDRH.W          R0, [R11,#0x2C]
41F3D2:  VMOV            S6, R1
41F3D6:  VMUL.F32        S0, S0, S4
41F3DA:  VMOV            S4, R0
41F3DE:  VCVT.F32.U32    S4, S4
41F3E2:  LDRH.W          R0, [R11,#0x28]
41F3E6:  VCVT.F32.U32    S6, S6
41F3EA:  LDRH.W          R1, [R11,#0x24]
41F3EE:  VMOV            S8, R0
41F3F2:  VMOV            S10, R1
41F3F6:  LDR.W           R1, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x41F40A)
41F3FA:  VCVT.F32.U32    S8, S8
41F3FE:  LDRH.W          R0, [R11,#0x26]
41F402:  VCVT.F32.U32    S10, S10
41F406:  ADD             R1, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
41F408:  VMUL.F32        S2, S0, S2
41F40C:  VMUL.F32        S4, S0, S4
41F410:  LDR             R1, [R1]; CTimeCycle::m_FogReduction ...
41F412:  VMUL.F32        S6, S0, S6
41F416:  VMOV            S12, R0
41F41A:  MOVS            R0, #0xFF
41F41C:  VMUL.F32        S8, S0, S8
41F420:  VMUL.F32        S10, S0, S10
41F424:  VCVT.F32.U32    S12, S12
41F428:  VCVT.U32.F32    S2, S2
41F42C:  VCVT.U32.F32    S4, S4
41F430:  VCVT.U32.F32    S6, S6
41F434:  VCVT.U32.F32    S8, S8
41F438:  VCVT.U32.F32    S10, S10
41F43C:  VMUL.F32        S0, S0, S12
41F440:  VMOV            R2, S10
41F444:  VCVT.U32.F32    S0, S0
41F448:  CMP             R2, #0xFF
41F44A:  IT CS
41F44C:  MOVCS           R2, R0
41F44E:  STRH.W          R2, [R11,#0x24]
41F452:  VMOV            R2, S0
41F456:  CMP             R2, #0xFF
41F458:  IT CS
41F45A:  MOVCS           R2, R0
41F45C:  STRH.W          R2, [R11,#0x26]
41F460:  VMOV            R2, S8
41F464:  CMP             R2, #0xFF
41F466:  IT CS
41F468:  MOVCS           R2, R0
41F46A:  STRH.W          R2, [R11,#0x28]
41F46E:  VMOV            R2, S2
41F472:  CMP             R2, #0xFF
41F474:  IT CS
41F476:  MOVCS           R2, R0
41F478:  STRH.W          R2, [R11,#0x2A]
41F47C:  VMOV            R2, S4
41F480:  CMP             R2, #0xFF
41F482:  IT CS
41F484:  MOVCS           R2, R0
41F486:  STRH.W          R2, [R11,#0x2C]
41F48A:  VMOV            R2, S6
41F48E:  CMP             R2, #0xFF
41F490:  IT CC
41F492:  MOVCC           R0, R2
41F494:  STRH.W          R0, [R11,#0x2E]
41F498:  LDR             R0, [R1]; CTimeCycle::m_FogReduction
41F49A:  CBZ             R0, loc_41F4B8
41F49C:  VMOV            S0, R0
41F4A0:  VLDR            S2, =10.156
41F4A4:  VCVT.F32.S32    S0, S0
41F4A8:  VLDR            S4, [R11,#0x50]
41F4AC:  VMUL.F32        S0, S0, S2
41F4B0:  VMAX.F32        D0, D2, D0
41F4B4:  VSTR            S0, [R11,#0x50]
41F4B8:  LDR.W           R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x41F4C4)
41F4BC:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x41F4C6)
41F4C0:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
41F4C2:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
41F4C4:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
41F4C6:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
41F4C8:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
41F4CA:  VMOV            S0, R0
41F4CE:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x41F4DA)
41F4D2:  VCVT.F32.U32    S0, S0
41F4D6:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
41F4D8:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
41F4DA:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
41F4DC:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
41F4DE:  VDIV.F32        S0, S0, S23
41F4E2:  RSB.W           R0, R0, R0,LSL#4
41F4E6:  ADD.W           R0, R1, R0,LSL#2
41F4EA:  VMOV            S2, R0
41F4EE:  VCVT.F32.S32    S2, S2
41F4F2:  VADD.F32        S0, S0, S2
41F4F6:  VLDR            S2, =0.0043633
41F4FA:  VMUL.F32        S0, S0, S2
41F4FE:  VMOV            R5, S0
41F502:  MOV             R0, R5; x
41F504:  BLX             sinf
41F508:  MOV             R6, R0
41F50A:  MOV             R0, R5; x
41F50C:  BLX             cosf
41F510:  LDR.W           R1, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x41F524)
41F514:  VMOV            S2, R6
41F518:  VLDR            S0, =0.7
41F51C:  VMOV            S4, R0
41F520:  ADD             R1, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
41F522:  VLDR            S19, =0.2
41F526:  LDR.W           R2, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x41F538)
41F52A:  VADD.F32        S0, S2, S0
41F52E:  LDR             R1, [R1]; CTimeCycle::m_CurrentStoredValue ...
41F530:  VSUB.F32        S2, S19, S4
41F534:  ADD             R2, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
41F536:  LDR             R3, [R1]; CTimeCycle::m_CurrentStoredValue
41F538:  LDR             R2, [R2]; CTimeCycle::m_VectorToSun ...
41F53A:  ADDS            R3, #1
41F53C:  AND.W           R0, R3, #0xF
41F540:  STR             R0, [R1]; CTimeCycle::m_CurrentStoredValue
41F542:  MOVW            R1, #0x3333
41F546:  ADD.W           R0, R0, R0,LSL#1
41F54A:  MOVT            R1, #0xBF33
41F54E:  ADD.W           R0, R2, R0,LSL#2; this
41F552:  STR             R1, [R0,#4]
41F554:  VSTR            S0, [R0]
41F558:  VSTR            S2, [R0,#8]
41F55C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
41F560:  LDR             R1, [SP,#0x870+var_854]
41F562:  LDR             R6, [SP,#0x870+var_850]
41F564:  CMP             R1, #0
41F566:  BEQ.W           loc_41FB24
41F56A:  LDR             R0, [R1,#0x1C]
41F56C:  CMP             R0, #0
41F56E:  BLT.W           loc_41FB24
41F572:  VLDR            S2, [R1,#0x20]
41F576:  MOVS            R0, #0x17
41F578:  VLDR            S0, [R7,#var_68]
41F57C:  LDR.W           R1, =(_ZN10CTimeCycle12m_nSkyTopRedE_ptr - 0x41F58A)
41F580:  VMUL.F32        S0, S2, S0
41F584:  LDR             R5, [SP,#0x870+var_85C]
41F586:  ADD             R1, PC; _ZN10CTimeCycle12m_nSkyTopRedE_ptr
41F588:  LDR             R1, [R1]; CTimeCycle::m_nSkyTopRed ...
41F58A:  MLA.W           R1, R5, R0, R1
41F58E:  VSUB.F32        S2, S26, S0
41F592:  LDRB.W          R1, [R1,R9]
41F596:  CMP             R1, #0xFF
41F598:  BEQ             loc_41F63E
41F59A:  VMOV            S4, R1
41F59E:  VCVT.F32.U32    S4, S4
41F5A2:  LDRH.W          R1, [R11,#0x24]
41F5A6:  VMOV            S6, R1
41F5AA:  LDR.W           R1, =(_ZN10CTimeCycle14m_nSkyTopGreenE_ptr - 0x41F5B6)
41F5AE:  VCVT.F32.U32    S6, S6
41F5B2:  ADD             R1, PC; _ZN10CTimeCycle14m_nSkyTopGreenE_ptr
41F5B4:  VMUL.F32        S4, S0, S4
41F5B8:  LDR             R1, [R1]; CTimeCycle::m_nSkyTopGreen ...
41F5BA:  MLA.W           R1, R5, R0, R1
41F5BE:  VMUL.F32        S6, S2, S6
41F5C2:  VADD.F32        S4, S4, S6
41F5C6:  VCVT.S32.F32    S4, S4
41F5CA:  LDRH.W          R2, [R11,#0x26]
41F5CE:  VMOV            R3, S4
41F5D2:  VMOV            S4, R2
41F5D6:  STRH.W          R3, [R11,#0x24]
41F5DA:  LDRB.W          R1, [R1,R9]
41F5DE:  VCVT.F32.U32    S4, S4
41F5E2:  VMOV            S6, R1
41F5E6:  LDR.W           R1, =(_ZN10CTimeCycle13m_nSkyTopBlueE_ptr - 0x41F5F2)
41F5EA:  VCVT.F32.U32    S6, S6
41F5EE:  ADD             R1, PC; _ZN10CTimeCycle13m_nSkyTopBlueE_ptr
41F5F0:  VMUL.F32        S4, S2, S4
41F5F4:  LDR             R1, [R1]; CTimeCycle::m_nSkyTopBlue ...
41F5F6:  MLA.W           R1, R5, R0, R1
41F5FA:  VMUL.F32        S6, S0, S6
41F5FE:  VADD.F32        S4, S4, S6
41F602:  VCVT.S32.F32    S4, S4
41F606:  LDRH.W          R2, [R11,#0x28]
41F60A:  VMOV            R3, S4
41F60E:  VMOV            S4, R2
41F612:  STRH.W          R3, [R11,#0x26]
41F616:  LDRB.W          R1, [R1,R9]
41F61A:  VCVT.F32.U32    S4, S4
41F61E:  VMOV            S6, R1
41F622:  VCVT.F32.U32    S6, S6
41F626:  VMUL.F32        S4, S2, S4
41F62A:  VMUL.F32        S6, S0, S6
41F62E:  VADD.F32        S4, S4, S6
41F632:  VCVT.S32.F32    S4, S4
41F636:  VMOV            R1, S4
41F63A:  STRH.W          R1, [R11,#0x28]
41F63E:  LDR.W           R1, =(_ZN10CTimeCycle15m_nSkyBottomRedE_ptr - 0x41F646)
41F642:  ADD             R1, PC; _ZN10CTimeCycle15m_nSkyBottomRedE_ptr
41F644:  LDR             R1, [R1]; CTimeCycle::m_nSkyBottomRed ...
41F646:  MLA.W           R0, R5, R0, R1
41F64A:  LDRB.W          R0, [R0,R9]
41F64E:  CMP             R0, #0xFF
41F650:  BEQ             loc_41F6F8
41F652:  VMOV            S4, R0
41F656:  MOVS            R1, #0x17
41F658:  VCVT.F32.U32    S4, S4
41F65C:  LDRH.W          R0, [R11,#0x2A]
41F660:  VMOV            S6, R0
41F664:  LDR.W           R0, =(_ZN10CTimeCycle17m_nSkyBottomGreenE_ptr - 0x41F670)
41F668:  VCVT.F32.U32    S6, S6
41F66C:  ADD             R0, PC; _ZN10CTimeCycle17m_nSkyBottomGreenE_ptr
41F66E:  VMUL.F32        S4, S0, S4
41F672:  LDR             R0, [R0]; CTimeCycle::m_nSkyBottomGreen ...
41F674:  MLA.W           R0, R5, R1, R0
41F678:  VMUL.F32        S6, S2, S6
41F67C:  VADD.F32        S4, S4, S6
41F680:  VCVT.S32.F32    S4, S4
41F684:  LDRH.W          R2, [R11,#0x2C]
41F688:  VMOV            R3, S4
41F68C:  VMOV            S4, R2
41F690:  STRH.W          R3, [R11,#0x2A]
41F694:  LDRB.W          R0, [R0,R9]
41F698:  VCVT.F32.U32    S4, S4
41F69C:  VMOV            S6, R0
41F6A0:  LDR.W           R0, =(_ZN10CTimeCycle16m_nSkyBottomBlueE_ptr - 0x41F6AC)
41F6A4:  VCVT.F32.U32    S6, S6
41F6A8:  ADD             R0, PC; _ZN10CTimeCycle16m_nSkyBottomBlueE_ptr
41F6AA:  VMUL.F32        S4, S2, S4
41F6AE:  LDR             R0, [R0]; CTimeCycle::m_nSkyBottomBlue ...
41F6B0:  MLA.W           R0, R5, R1, R0
41F6B4:  VMUL.F32        S6, S0, S6
41F6B8:  VADD.F32        S4, S4, S6
41F6BC:  VCVT.S32.F32    S4, S4
41F6C0:  LDRH.W          R1, [R11,#0x2E]
41F6C4:  VMOV            R2, S4
41F6C8:  VMOV            S4, R1
41F6CC:  STRH.W          R2, [R11,#0x2C]
41F6D0:  LDRB.W          R0, [R0,R9]
41F6D4:  VCVT.F32.U32    S4, S4
41F6D8:  VMOV            S6, R0
41F6DC:  VCVT.F32.U32    S6, S6
41F6E0:  VMUL.F32        S4, S2, S4
41F6E4:  VMUL.F32        S6, S0, S6
41F6E8:  VADD.F32        S4, S4, S6
41F6EC:  VCVT.S32.F32    S4, S4
41F6F0:  VMOV            R0, S4
41F6F4:  STRH.W          R0, [R11,#0x2E]
41F6F8:  LDR.W           R1, =(_ZN10CTimeCycle11m_fWaterRedE_ptr - 0x41F702)
41F6FC:  MOVS            R0, #0x17
41F6FE:  ADD             R1, PC; _ZN10CTimeCycle11m_fWaterRedE_ptr
41F700:  LDR             R1, [R1]; CTimeCycle::m_fWaterRed ...
41F702:  MLA.W           R1, R5, R0, R1
41F706:  LDRB.W          R1, [R1,R9]
41F70A:  CMP             R1, #0xFF
41F70C:  BEQ             loc_41F7AE
41F70E:  VMOV            S4, R1
41F712:  LDR.W           R1, =(_ZN10CTimeCycle13m_fWaterGreenE_ptr - 0x41F722)
41F716:  VCVT.F32.U32    S4, S4
41F71A:  VLDR            S6, [R11,#0x68]
41F71E:  ADD             R1, PC; _ZN10CTimeCycle13m_fWaterGreenE_ptr
41F720:  VLDR            S8, [R11,#0x6C]
41F724:  VMUL.F32        S6, S2, S6
41F728:  VLDR            S10, [R11,#0x70]
41F72C:  LDR             R1, [R1]; CTimeCycle::m_fWaterGreen ...
41F72E:  MLA.W           R1, R5, R0, R1
41F732:  VLDR            S12, [R11,#0x74]
41F736:  VMUL.F32        S4, S0, S4
41F73A:  VADD.F32        S4, S4, S6
41F73E:  VMUL.F32        S6, S2, S8
41F742:  VSTR            S4, [R11,#0x68]
41F746:  LDRB.W          R1, [R1,R9]
41F74A:  VMOV            S4, R1
41F74E:  LDR.W           R1, =(_ZN10CTimeCycle12m_fWaterBlueE_ptr - 0x41F75A)
41F752:  VCVT.F32.U32    S4, S4
41F756:  ADD             R1, PC; _ZN10CTimeCycle12m_fWaterBlueE_ptr
41F758:  LDR             R1, [R1]; CTimeCycle::m_fWaterBlue ...
41F75A:  MLA.W           R1, R5, R0, R1
41F75E:  VMUL.F32        S4, S0, S4
41F762:  VADD.F32        S4, S6, S4
41F766:  VMUL.F32        S6, S2, S10
41F76A:  VSTR            S4, [R11,#0x6C]
41F76E:  LDRB.W          R1, [R1,R9]
41F772:  VMOV            S4, R1
41F776:  LDR.W           R1, =(_ZN10CTimeCycle13m_fWaterAlphaE_ptr - 0x41F782)
41F77A:  VCVT.F32.U32    S4, S4
41F77E:  ADD             R1, PC; _ZN10CTimeCycle13m_fWaterAlphaE_ptr
41F780:  LDR             R1, [R1]; CTimeCycle::m_fWaterAlpha ...
41F782:  MLA.W           R1, R5, R0, R1
41F786:  VMUL.F32        S4, S0, S4
41F78A:  VADD.F32        S4, S6, S4
41F78E:  VMUL.F32        S6, S2, S12
41F792:  VSTR            S4, [R11,#0x70]
41F796:  LDRB.W          R1, [R1,R9]
41F79A:  VMOV            S4, R1
41F79E:  VCVT.F32.U32    S4, S4
41F7A2:  VMUL.F32        S4, S0, S4
41F7A6:  VADD.F32        S4, S6, S4
41F7AA:  VSTR            S4, [R11,#0x74]
41F7AE:  LDR.W           R1, =(_ZN10CTimeCycle13m_nAmbientRedE_ptr - 0x41F7B6)
41F7B2:  ADD             R1, PC; _ZN10CTimeCycle13m_nAmbientRedE_ptr
41F7B4:  LDR             R1, [R1]; CTimeCycle::m_nAmbientRed ...
41F7B6:  MLA.W           R0, R5, R0, R1
41F7BA:  LDRB.W          R0, [R0,R9]
41F7BE:  CMP             R0, #0xFF
41F7C0:  BEQ             loc_41F838
41F7C2:  VMOV            S4, R0
41F7C6:  LDR.W           R0, =(_ZN10CTimeCycle15m_nAmbientGreenE_ptr - 0x41F7D8)
41F7CA:  MOVS            R1, #0x17
41F7CC:  VCVT.F32.U32    S4, S4
41F7D0:  VLDR            S6, [R11]
41F7D4:  ADD             R0, PC; _ZN10CTimeCycle15m_nAmbientGreenE_ptr
41F7D6:  VLDR            S8, [R11,#4]
41F7DA:  VMUL.F32        S6, S2, S6
41F7DE:  VLDR            S10, [R11,#8]
41F7E2:  LDR             R0, [R0]; CTimeCycle::m_nAmbientGreen ...
41F7E4:  MLA.W           R0, R5, R1, R0
41F7E8:  VMUL.F32        S4, S0, S4
41F7EC:  VADD.F32        S4, S4, S6
41F7F0:  VMUL.F32        S6, S2, S8
41F7F4:  VSTR            S4, [R11]
41F7F8:  LDRB.W          R0, [R0,R9]
41F7FC:  VMOV            S4, R0
41F800:  LDR.W           R0, =(_ZN10CTimeCycle14m_nAmbientBlueE_ptr - 0x41F80C)
41F804:  VCVT.F32.U32    S4, S4
41F808:  ADD             R0, PC; _ZN10CTimeCycle14m_nAmbientBlueE_ptr
41F80A:  LDR             R0, [R0]; CTimeCycle::m_nAmbientBlue ...
41F80C:  MLA.W           R0, R5, R1, R0
41F810:  VMUL.F32        S4, S0, S4
41F814:  VADD.F32        S4, S6, S4
41F818:  VMUL.F32        S6, S2, S10
41F81C:  VSTR            S4, [R11,#4]
41F820:  LDRB.W          R0, [R0,R9]
41F824:  VMOV            S4, R0
41F828:  VCVT.F32.U32    S4, S4
41F82C:  VMUL.F32        S4, S0, S4
41F830:  VADD.F32        S4, S6, S4
41F834:  VSTR            S4, [R11,#8]
41F838:  LDR.W           R1, =(_ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr - 0x41F842)
41F83C:  MOVS            R0, #0x17
41F83E:  ADD             R1, PC; _ZN10CTimeCycle17m_nAmbientRed_ObjE_ptr
41F840:  LDR             R1, [R1]; CTimeCycle::m_nAmbientRed_Obj ...
41F842:  MLA.W           R1, R5, R0, R1
41F846:  LDRB.W          R1, [R1,R9]
41F84A:  CMP             R1, #0xFF
41F84C:  BEQ             loc_41F8C2
41F84E:  VMOV            S4, R1
41F852:  LDR.W           R1, =(_ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr - 0x41F862)
41F856:  VCVT.F32.U32    S4, S4
41F85A:  VLDR            S6, [R11,#0xC]
41F85E:  ADD             R1, PC; _ZN10CTimeCycle19m_nAmbientGreen_ObjE_ptr
41F860:  VLDR            S8, [R11,#0x10]
41F864:  VMUL.F32        S6, S2, S6
41F868:  VLDR            S10, [R11,#0x14]
41F86C:  LDR             R1, [R1]; CTimeCycle::m_nAmbientGreen_Obj ...
41F86E:  MLA.W           R1, R5, R0, R1
41F872:  VMUL.F32        S4, S0, S4
41F876:  VADD.F32        S4, S4, S6
41F87A:  VMUL.F32        S6, S2, S8
41F87E:  VSTR            S4, [R11,#0xC]
41F882:  LDRB.W          R1, [R1,R9]
41F886:  VMOV            S4, R1
41F88A:  LDR.W           R1, =(_ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr - 0x41F896)
41F88E:  VCVT.F32.U32    S4, S4
41F892:  ADD             R1, PC; _ZN10CTimeCycle18m_nAmbientBlue_ObjE_ptr
41F894:  LDR             R1, [R1]; CTimeCycle::m_nAmbientBlue_Obj ...
41F896:  MLA.W           R0, R5, R0, R1
41F89A:  VMUL.F32        S4, S0, S4
41F89E:  VADD.F32        S4, S6, S4
41F8A2:  VMUL.F32        S6, S2, S10
41F8A6:  VSTR            S4, [R11,#0x10]
41F8AA:  LDRB.W          R0, [R0,R9]
41F8AE:  VMOV            S4, R0
41F8B2:  VCVT.F32.U32    S4, S4
41F8B6:  VMUL.F32        S4, S0, S4
41F8BA:  VADD.F32        S4, S6, S4
41F8BE:  VSTR            S4, [R11,#0x14]
41F8C2:  LDR.W           R1, =(_ZN10CTimeCycle10m_fFarClipE_ptr - 0x41F8CC)
41F8C6:  MOVS            R0, #0x2E ; '.'
41F8C8:  ADD             R1, PC; _ZN10CTimeCycle10m_fFarClipE_ptr
41F8CA:  LDR             R1, [R1]; CTimeCycle::m_fFarClip ...
41F8CC:  MLA.W           R1, R5, R0, R1
41F8D0:  LDRH.W          R2, [R1,R9,LSL#1]
41F8D4:  MOVW            R1, #0xFFFF
41F8D8:  CMP             R2, R1
41F8DA:  BEQ             loc_41F8FE
41F8DC:  SXTH            R2, R2
41F8DE:  VLDR            S4, [R11,#0x50]
41F8E2:  VMOV            S6, R2
41F8E6:  VCVT.F32.S32    S6, S6
41F8EA:  VMIN.F32        D3, D2, D3
41F8EE:  VMUL.F32        S4, S2, S4
41F8F2:  VMUL.F32        S6, S0, S6
41F8F6:  VADD.F32        S4, S4, S6
41F8FA:  VSTR            S4, [R11,#0x50]
41F8FE:  LDR.W           R2, =(_ZN10CTimeCycle11m_fFogStartE_ptr - 0x41F906)
41F902:  ADD             R2, PC; _ZN10CTimeCycle11m_fFogStartE_ptr
41F904:  LDR             R2, [R2]; CTimeCycle::m_fFogStart ...
41F906:  MLA.W           R0, R5, R0, R2
41F90A:  LDRH.W          R0, [R0,R9,LSL#1]
41F90E:  CMP             R0, R1
41F910:  BEQ             loc_41F930
41F912:  SXTH            R0, R0
41F914:  VMOV            S4, R0
41F918:  VCVT.F32.S32    S4, S4
41F91C:  VLDR            S6, [R11,#0x54]
41F920:  VMUL.F32        S6, S2, S6
41F924:  VMUL.F32        S4, S0, S4
41F928:  VADD.F32        S4, S4, S6
41F92C:  VSTR            S4, [R11,#0x54]
41F930:  LDR.W           R1, =(_ZN10CTimeCycle13m_fPostFx1RedE_ptr - 0x41F93A)
41F934:  MOVS            R0, #0x17
41F936:  ADD             R1, PC; _ZN10CTimeCycle13m_fPostFx1RedE_ptr
41F938:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Red ...
41F93A:  MLA.W           R1, R5, R0, R1
41F93E:  LDRB.W          R1, [R1,R9]
41F942:  CMP             R1, #0xFF
41F944:  BEQ             loc_41F9E6
41F946:  VMOV            S4, R1
41F94A:  LDR.W           R1, =(_ZN10CTimeCycle15m_fPostFx1GreenE_ptr - 0x41F95A)
41F94E:  VCVT.F32.U32    S4, S4
41F952:  VLDR            S6, [R11,#0x78]
41F956:  ADD             R1, PC; _ZN10CTimeCycle15m_fPostFx1GreenE_ptr
41F958:  VLDR            S8, [R11,#0x7C]
41F95C:  VMUL.F32        S6, S2, S6
41F960:  VLDR            S10, [R11,#0x80]
41F964:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Green ...
41F966:  MLA.W           R1, R5, R0, R1
41F96A:  VLDR            S12, [R11,#0x84]
41F96E:  VMUL.F32        S4, S0, S4
41F972:  VADD.F32        S4, S4, S6
41F976:  VMUL.F32        S6, S2, S8
41F97A:  VSTR            S4, [R11,#0x78]
41F97E:  LDRB.W          R1, [R1,R9]
41F982:  VMOV            S4, R1
41F986:  LDR.W           R1, =(_ZN10CTimeCycle14m_fPostFx1BlueE_ptr - 0x41F992)
41F98A:  VCVT.F32.U32    S4, S4
41F98E:  ADD             R1, PC; _ZN10CTimeCycle14m_fPostFx1BlueE_ptr
41F990:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Blue ...
41F992:  MLA.W           R1, R5, R0, R1
41F996:  VMUL.F32        S4, S0, S4
41F99A:  VADD.F32        S4, S6, S4
41F99E:  VMUL.F32        S6, S2, S10
41F9A2:  VSTR            S4, [R11,#0x7C]
41F9A6:  LDRB.W          R1, [R1,R9]
41F9AA:  VMOV            S4, R1
41F9AE:  LDR.W           R1, =(_ZN10CTimeCycle15m_fPostFx1AlphaE_ptr - 0x41F9BA)
41F9B2:  VCVT.F32.U32    S4, S4
41F9B6:  ADD             R1, PC; _ZN10CTimeCycle15m_fPostFx1AlphaE_ptr
41F9B8:  LDR             R1, [R1]; CTimeCycle::m_fPostFx1Alpha ...
41F9BA:  MLA.W           R1, R5, R0, R1
41F9BE:  VMUL.F32        S4, S0, S4
41F9C2:  VADD.F32        S4, S6, S4
41F9C6:  VMUL.F32        S6, S2, S12
41F9CA:  VSTR            S4, [R11,#0x80]
41F9CE:  LDRB.W          R1, [R1,R9]
41F9D2:  VMOV            S4, R1
41F9D6:  VCVT.F32.U32    S4, S4
41F9DA:  VMUL.F32        S4, S0, S4
41F9DE:  VADD.F32        S4, S6, S4
41F9E2:  VSTR            S4, [R11,#0x84]
41F9E6:  LDR.W           R1, =(_ZN10CTimeCycle13m_fPostFx2RedE_ptr - 0x41F9EE)
41F9EA:  ADD             R1, PC; _ZN10CTimeCycle13m_fPostFx2RedE_ptr
41F9EC:  LDR             R1, [R1]; CTimeCycle::m_fPostFx2Red ...
41F9EE:  MLA.W           R0, R5, R0, R1
41F9F2:  LDRB.W          R0, [R0,R9]
41F9F6:  CMP             R0, #0xFF
41F9F8:  BEQ             loc_41FA9C
41F9FA:  VMOV            S4, R0
41F9FE:  LDR.W           R0, =(_ZN10CTimeCycle15m_fPostFx2GreenE_ptr - 0x41FA10)
41FA02:  MOVS            R1, #0x17
41FA04:  VCVT.F32.U32    S4, S4
41FA08:  VLDR            S6, [R11,#0x88]
41FA0C:  ADD             R0, PC; _ZN10CTimeCycle15m_fPostFx2GreenE_ptr
41FA0E:  VLDR            S8, [R11,#0x8C]
41FA12:  VMUL.F32        S6, S2, S6
41FA16:  VLDR            S10, [R11,#0x90]
41FA1A:  LDR             R0, [R0]; CTimeCycle::m_fPostFx2Green ...
41FA1C:  MLA.W           R0, R5, R1, R0
41FA20:  VLDR            S12, [R11,#0x94]
41FA24:  VMUL.F32        S4, S0, S4
41FA28:  VADD.F32        S4, S4, S6
41FA2C:  VMUL.F32        S6, S2, S8
41FA30:  VSTR            S4, [R11,#0x88]
41FA34:  LDRB.W          R0, [R0,R9]
41FA38:  VMOV            S4, R0
41FA3C:  LDR.W           R0, =(_ZN10CTimeCycle14m_fPostFx2BlueE_ptr - 0x41FA48)
41FA40:  VCVT.F32.U32    S4, S4
41FA44:  ADD             R0, PC; _ZN10CTimeCycle14m_fPostFx2BlueE_ptr
41FA46:  LDR             R0, [R0]; CTimeCycle::m_fPostFx2Blue ...
41FA48:  MLA.W           R0, R5, R1, R0
41FA4C:  VMUL.F32        S4, S0, S4
41FA50:  VADD.F32        S4, S6, S4
41FA54:  VMUL.F32        S6, S2, S10
41FA58:  VSTR            S4, [R11,#0x8C]
41FA5C:  LDRB.W          R0, [R0,R9]
41FA60:  VMOV            S4, R0
41FA64:  LDR.W           R0, =(_ZN10CTimeCycle15m_fPostFx2AlphaE_ptr - 0x41FA70)
41FA68:  VCVT.F32.U32    S4, S4
41FA6C:  ADD             R0, PC; _ZN10CTimeCycle15m_fPostFx2AlphaE_ptr
41FA6E:  LDR             R0, [R0]; CTimeCycle::m_fPostFx2Alpha ...
41FA70:  MLA.W           R0, R5, R1, R0
41FA74:  VMUL.F32        S4, S0, S4
41FA78:  VADD.F32        S4, S6, S4
41FA7C:  VMUL.F32        S6, S2, S12
41FA80:  VSTR            S4, [R11,#0x90]
41FA84:  LDRB.W          R0, [R0,R9]
41FA88:  VMOV            S4, R0
41FA8C:  VCVT.F32.U32    S4, S4
41FA90:  VMUL.F32        S4, S0, S4
41FA94:  VADD.F32        S4, S6, S4
41FA98:  VSTR            S4, [R11,#0x94]
41FA9C:  LDR.W           R0, =(_ZN10CTimeCycle11m_vRedGradeE_ptr - 0x41FAB0)
41FAA0:  MOV.W           R1, #0x170
41FAA4:  ADD.W           R2, R11, #0xAC
41FAA8:  ADD.W           R3, R11, #0xBC
41FAAC:  ADD             R0, PC; _ZN10CTimeCycle11m_vRedGradeE_ptr
41FAAE:  VLD1.32         {D16-D17}, [R2]
41FAB2:  VMUL.F32        Q8, Q8, D1[0]
41FAB6:  LDR             R0, [R0]; CTimeCycle::m_vRedGrade ...
41FAB8:  MLA.W           R0, R5, R1, R0
41FABC:  ADD.W           R0, R0, R9,LSL#4
41FAC0:  VLD1.32         {D18-D19}, [R0]
41FAC4:  VMUL.F32        Q9, Q9, D0[0]
41FAC8:  LDR.W           R0, =(_ZN10CTimeCycle13m_vGreenGradeE_ptr - 0x41FAD0)
41FACC:  ADD             R0, PC; _ZN10CTimeCycle13m_vGreenGradeE_ptr
41FACE:  LDR             R0, [R0]; CTimeCycle::m_vGreenGrade ...
41FAD0:  VADD.F32        Q8, Q8, Q9
41FAD4:  MLA.W           R0, R5, R1, R0
41FAD8:  VLD1.32         {D18-D19}, [R3]
41FADC:  VMUL.F32        Q9, Q9, D1[0]
41FAE0:  VST1.32         {D16-D17}, [R2]
41FAE4:  ADD.W           R0, R0, R9,LSL#4
41FAE8:  VLD1.32         {D16-D17}, [R0]
41FAEC:  VMUL.F32        Q8, Q8, D0[0]
41FAF0:  LDR.W           R0, =(_ZN10CTimeCycle12m_vBlueGradeE_ptr - 0x41FAF8)
41FAF4:  ADD             R0, PC; _ZN10CTimeCycle12m_vBlueGradeE_ptr
41FAF6:  LDR             R0, [R0]; CTimeCycle::m_vBlueGrade ...
41FAF8:  VADD.F32        Q8, Q9, Q8
41FAFC:  MLA.W           R0, R5, R1, R0
41FB00:  ADD.W           R1, R11, #0xCC
41FB04:  VLD1.32         {D18-D19}, [R1]
41FB08:  VMUL.F32        Q9, Q9, D1[0]
41FB0C:  VST1.32         {D16-D17}, [R3]
41FB10:  ADD.W           R0, R0, R9,LSL#4
41FB14:  VLD1.32         {D16-D17}, [R0]
41FB18:  VMUL.F32        Q8, Q8, D0[0]
41FB1C:  VADD.F32        Q8, Q9, Q8
41FB20:  VST1.32         {D16-D17}, [R1]
41FB24:  LDR.W           R0, [R7,#var_7C]
41FB28:  CBZ             R0, loc_41FB58
41FB2A:  LDRB            R0, [R0,#0x1A]
41FB2C:  VLDR            S4, =0.03125
41FB30:  VMOV            S0, R0
41FB34:  VCVT.F32.U32    S0, S0
41FB38:  VLDR            S2, [R7,#var_6C]
41FB3C:  VSUB.F32        S6, S26, S2
41FB40:  VMUL.F32        S0, S0, S4
41FB44:  VLDR            S4, [R11,#0xA8]
41FB48:  VMUL.F32        S4, S4, S6
41FB4C:  VMUL.F32        S0, S2, S0
41FB50:  VADD.F32        S0, S4, S0
41FB54:  VSTR            S0, [R11,#0xA8]
41FB58:  LDR.W           R0, [R7,#var_84]
41FB5C:  CBZ             R0, loc_41FB8A
41FB5E:  LDRSH.W         R0, [R0,#0x18]
41FB62:  VLDR            S0, [R7,#var_74]
41FB66:  VLDR            S4, [R11,#0x50]
41FB6A:  VMOV            S6, R0
41FB6E:  VSUB.F32        S2, S26, S0
41FB72:  VCVT.F32.S32    S6, S6
41FB76:  VMIN.F32        D3, D2, D3
41FB7A:  VMUL.F32        S2, S4, S2
41FB7E:  VMUL.F32        S0, S0, S6
41FB82:  VADD.F32        S0, S2, S0
41FB86:  VSTR            S0, [R11,#0x50]
41FB8A:  CBZ             R6, loc_41FBB8
41FB8C:  LDRSH.W         R0, [R6,#0x18]
41FB90:  VLDR            S0, [R7,#var_70]
41FB94:  VLDR            S4, [R11,#0x50]
41FB98:  VMOV            S6, R0
41FB9C:  VSUB.F32        S2, S26, S0
41FBA0:  VCVT.F32.S32    S6, S6
41FBA4:  VMIN.F32        D3, D2, D3
41FBA8:  VMUL.F32        S2, S4, S2
41FBAC:  VMUL.F32        S0, S0, S6
41FBB0:  VADD.F32        S0, S2, S0
41FBB4:  VSTR            S0, [R11,#0x50]
41FBB8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41FBC4)
41FBBC:  VLDR            S0, =120.0
41FBC0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41FBC2:  LDR.W           R1, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x41FBCC)
41FBC6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
41FBC8:  ADD             R1, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
41FBCA:  LDR             R1, [R1]; CTimeCycle::m_bExtraColourOn ...
41FBCC:  VLDR            S2, [R0]
41FBD0:  LDR.W           R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x41FBDC)
41FBD4:  VDIV.F32        S0, S2, S0
41FBD8:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
41FBDA:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
41FBDC:  VLDR            S2, [R0]
41FBE0:  LDR             R0, [R1]; CTimeCycle::m_bExtraColourOn
41FBE2:  CBZ             R0, loc_41FC06
41FBE4:  VADD.F32        S18, S2, S0
41FBE8:  VCMPE.F32       S18, S26
41FBEC:  VMRS            APSR_nzcv, FPSCR
41FBF0:  BLE             loc_41FC22
41FBF2:  LDR.W           R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x41FC02)
41FBF6:  MOV.W           R1, #0x3F800000
41FBFA:  VMOV.F32        S18, S26
41FBFE:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
41FC00:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
41FC02:  STR             R1, [R0]; CTimeCycle::m_ExtraColourInter
41FC04:  B               loc_41FC38
41FC06:  VSUB.F32        S18, S2, S0
41FC0A:  VCMPE.F32       S18, #0.0
41FC0E:  VMRS            APSR_nzcv, FPSCR
41FC12:  BGE             loc_41FC22
41FC14:  LDR.W           R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x41FC1E)
41FC18:  MOVS            R1, #0
41FC1A:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
41FC1C:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
41FC1E:  STR             R1, [R0]; CTimeCycle::m_ExtraColourInter
41FC20:  B               loc_41FCA6
41FC22:  LDR.W           R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x41FC32)
41FC26:  VCMPE.F32       S18, #0.0
41FC2A:  VMRS            APSR_nzcv, FPSCR
41FC2E:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
41FC30:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
41FC32:  VSTR            S18, [R0]
41FC36:  BLE             loc_41FCA6
41FC38:  LDR.W           R0, =(_ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr - 0x41FC44)
41FC3C:  LDR.W           R1, =(_ZN10CTimeCycle13m_ExtraColourE_ptr - 0x41FC46)
41FC40:  ADD             R0, PC; _ZN10CTimeCycle24m_ExtraColourWeatherTypeE_ptr
41FC42:  ADD             R1, PC; _ZN10CTimeCycle13m_ExtraColourE_ptr
41FC44:  LDR             R5, [R0]; CTimeCycle::m_ExtraColourWeatherType ...
41FC46:  ADD             R0, SP, #0x870+var_688; this
41FC48:  LDR             R6, [R1]; CTimeCycle::m_ExtraColour ...
41FC4A:  LDR             R2, [R5]; int
41FC4C:  LDR             R1, [R6]; int
41FC4E:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41FC52:  LDR.W           R1, =(_ZN10CTimeCycle12m_nSkyTopRedE_ptr - 0x41FC62)
41FC56:  MOVS            R2, #0x17
41FC58:  LDR             R0, [R6]; CTimeCycle::m_ExtraColour
41FC5A:  VSUB.F32        S2, S26, S18
41FC5E:  ADD             R1, PC; _ZN10CTimeCycle12m_nSkyTopRedE_ptr
41FC60:  LDR.W           R3, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x41FC6E)
41FC64:  LDR             R1, [R1]; CTimeCycle::m_nSkyTopRed ...
41FC66:  MLA.W           R6, R0, R2, R1
41FC6A:  ADD             R3, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
41FC6C:  LDR             R1, [R5]; CTimeCycle::m_ExtraColourWeatherType
41FC6E:  LDR             R3, [R3]; CTimeCycle::m_ExtraColourInter ...
41FC70:  VLDR            S0, [R3]
41FC74:  LDRB            R3, [R6,R1]
41FC76:  CBNZ            R3, loc_41FC8C
41FC78:  LDR.W           R3, =(_ZN10CTimeCycle14m_nSkyTopGreenE_ptr - 0x41FC80)
41FC7C:  ADD             R3, PC; _ZN10CTimeCycle14m_nSkyTopGreenE_ptr
41FC7E:  LDR             R3, [R3]; CTimeCycle::m_nSkyTopGreen ...
41FC80:  MLA.W           R2, R0, R2, R3
41FC84:  LDRB            R2, [R2,R1]
41FC86:  CMP             R2, #0
41FC88:  BEQ.W           loc_4202FC
41FC8C:  MOVS            R0, #1
41FC8E:  VMOV            R3, S2; float
41FC92:  EOR.W           R0, R0, #1
41FC96:  ADD             R2, SP, #0x870+var_688; CColourSet *
41FC98:  STR             R0, [SP,#0x870+var_86C]; bool
41FC9A:  MOV             R0, R11; this
41FC9C:  MOV             R1, R11; CColourSet *
41FC9E:  VSTR            S0, [SP,#0x870+var_870]
41FCA2:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41FCA6:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x41FCAE)
41FCAA:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
41FCAC:  LDR             R0, [R0]; CWeather::UnderWaterness ...
41FCAE:  VLDR            S0, [R0]
41FCB2:  VCMPE.F32       S0, #0.0
41FCB6:  VMRS            APSR_nzcv, FPSCR
41FCBA:  BLE             loc_41FD32
41FCBC:  ADD.W           R8, SP, #0x870+var_688
41FCC0:  LDR             R1, [SP,#0x870+var_84C]; int
41FCC2:  MOVS            R2, #0x14; int
41FCC4:  MOV             R0, R8; this
41FCC6:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41FCCA:  ADD             R6, SP, #0x870+var_764
41FCCC:  LDR             R1, [SP,#0x870+var_844]; int
41FCCE:  MOVS            R2, #0x14; int
41FCD0:  MOV             R0, R6; this
41FCD2:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41FCD6:  ADD             R5, SP, #0x870+var_840
41FCD8:  MOV.W           R9, #0
41FCDC:  ADD.W           R0, R5, #0xBC
41FCE0:  MOV             R1, R8; CColourSet *
41FCE2:  MOV             R2, R6; CColourSet *
41FCE4:  MOV             R3, R4; float
41FCE6:  VST1.32         {D14-D15}, [R0]
41FCEA:  ADD.W           R0, R5, #0xAC
41FCEE:  VST1.32         {D14-D15}, [R0]
41FCF2:  ADD.W           R0, R5, #0xCC
41FCF6:  VST1.32         {D14-D15}, [R0]
41FCFA:  MOV             R0, R5; this
41FCFC:  STR.W           R9, [SP,#0x870+var_86C]; bool
41FD00:  VSTR            S20, [SP,#0x870+var_870]
41FD04:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41FD08:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x41FD18)
41FD0C:  VMOV.F32        S0, #1.0
41FD10:  MOV             R1, R11; CColourSet *
41FD12:  MOV             R2, R5; CColourSet *
41FD14:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
41FD16:  STR.W           R9, [SP,#0x870+var_86C]; bool
41FD1A:  LDR             R0, [R0]; CWeather::UnderWaterness ...
41FD1C:  VLDR            S2, [R0]
41FD20:  MOV             R0, R11; this
41FD22:  VSUB.F32        S0, S0, S2
41FD26:  VSTR            S2, [SP,#0x870+var_870]
41FD2A:  VMOV            R3, S0; float
41FD2E:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41FD32:  LDR.W           R0, =(_ZN8CWeather12InTunnelnessE_ptr - 0x41FD3A)
41FD36:  ADD             R0, PC; _ZN8CWeather12InTunnelnessE_ptr
41FD38:  LDR             R0, [R0]; CWeather::InTunnelness ...
41FD3A:  VLDR            S18, [R0]
41FD3E:  VCMPE.F32       S18, #0.0
41FD42:  VMRS            APSR_nzcv, FPSCR
41FD46:  BLE             loc_41FDAE
41FD48:  ADD             R6, SP, #0x870+var_688
41FD4A:  MOVS            R1, #1; int
41FD4C:  MOVS            R2, #0x16; int
41FD4E:  MOV             R0, R6; this
41FD50:  BLX             j__ZN10CColourSetC2Eii; CColourSet::CColourSet(int,int)
41FD54:  VMOV.F32        S0, #1.0
41FD58:  LDR.W           R1, =(_ZN10CTimeCycle14m_nSkyTopGreenE_ptr - 0x41FD68)
41FD5C:  LDR.W           R2, =(_ZN10CTimeCycle12m_nSkyTopRedE_ptr - 0x41FD6A)
41FD60:  LDR.W           R0, =(_ZN10CTimeCycle13m_nSkyTopBlueE_ptr - 0x41FD70)
41FD64:  ADD             R1, PC; _ZN10CTimeCycle14m_nSkyTopGreenE_ptr
41FD66:  ADD             R2, PC; _ZN10CTimeCycle12m_nSkyTopRedE_ptr
41FD68:  LDR.W           R5, =(_ZN8CWeather12InTunnelnessE_ptr - 0x41FD76)
41FD6C:  ADD             R0, PC; _ZN10CTimeCycle13m_nSkyTopBlueE_ptr
41FD6E:  LDR             R1, [R1]; CTimeCycle::m_nSkyTopGreen ...
41FD70:  LDR             R2, [R2]; CTimeCycle::m_nSkyTopRed ...
41FD72:  ADD             R5, PC; _ZN8CWeather12InTunnelnessE_ptr
41FD74:  LDR             R0, [R0]; CTimeCycle::m_nSkyTopBlue ...
41FD76:  VSUB.F32        S0, S0, S18
41FD7A:  LDRB.W          R1, [R1,#(byte_966B5D - 0x966B30)]
41FD7E:  LDRB.W          R2, [R2,#(byte_966AA5 - 0x966A78)]
41FD82:  LDRB.W          R0, [R0,#(byte_966C15 - 0x966BE8)]
41FD86:  ORRS            R1, R2
41FD88:  LDR             R5, [R5]; CWeather::InTunnelness ...
41FD8A:  ORRS            R0, R1
41FD8C:  MOV             R1, R11; CColourSet *
41FD8E:  MOV             R2, R6; CColourSet *
41FD90:  LSLS            R0, R0, #0x18
41FD92:  VMOV            R3, S0; float
41FD96:  VLDR            S0, [R5]
41FD9A:  MOV.W           R0, #0
41FD9E:  VSTR            S0, [SP,#0x870+var_870]
41FDA2:  IT EQ
41FDA4:  MOVEQ           R0, #1
41FDA6:  STR             R0, [SP,#0x870+var_86C]; bool
41FDA8:  MOV             R0, R11; this
41FDAA:  BLX             j__ZN10CColourSet11InterpolateEPS_S0_ffb; CColourSet::Interpolate(CColourSet*,CColourSet*,float,float,bool)
41FDAE:  VLD1.32         {D16-D17}, [R11]
41FDB2:  ADR.W           R0, dword_420330
41FDB6:  VCVT.S32.F32    Q8, Q8
41FDBA:  VLD1.64         {D18-D19}, [R0@128]
41FDBE:  MOV             R0, R11
41FDC0:  VLDR            S0, [R11,#0x14]
41FDC4:  VLDR            S4, =0.0039216
41FDC8:  VCVT.F32.S32    Q8, Q8
41FDCC:  LDR.W           R1, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x41FDDC)
41FDD0:  LDR.W           R8, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x41FDE2)
41FDD4:  VCVT.S32.F32    S0, S0
41FDD8:  ADD             R1, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
41FDDA:  LDR.W           R12, =(_ZN10CTimeCycle22m_fShadowDisplacementXE_ptr - 0x41FDF2)
41FDDE:  ADD             R8, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
41FDE0:  LDR             R1, [R1]; CTimeCycle::m_CurrentStoredValue ...
41FDE2:  VMUL.F32        Q8, Q8, Q9
41FDE6:  LDR.W           R2, =(_ZN10CTimeCycle15m_fShadowFrontYE_ptr - 0x41FDF8)
41FDEA:  LDR.W           R6, =(_ZN10CTimeCycle15m_fShadowFrontXE_ptr - 0x41FDFA)
41FDEE:  ADD             R12, PC; _ZN10CTimeCycle22m_fShadowDisplacementXE_ptr
41FDF0:  LDR.W           LR, =(_ZN10CTimeCycle22m_fShadowDisplacementYE_ptr - 0x41FE00)
41FDF4:  ADD             R2, PC; _ZN10CTimeCycle15m_fShadowFrontYE_ptr
41FDF6:  ADD             R6, PC; _ZN10CTimeCycle15m_fShadowFrontXE_ptr
41FDF8:  LDR.W           R4, [R12]; CTimeCycle::m_fShadowDisplacementX ...
41FDFC:  ADD             LR, PC; _ZN10CTimeCycle22m_fShadowDisplacementYE_ptr
41FDFE:  LDR             R5, [R2]; CTimeCycle::m_fShadowFrontY ...
41FE00:  LDR.W           R12, [R6]; CTimeCycle::m_fShadowFrontX ...
41FE04:  VST1.32         {D16-D17}, [R0]!
41FE08:  VLDR            S2, [R0]
41FE0C:  VCVT.F32.S32    S0, S0
41FE10:  LDR.W           R6, [LR]; CTimeCycle::m_fShadowDisplacementY ...
41FE14:  VCVT.S32.F32    S2, S2
41FE18:  VMUL.F32        S0, S0, S4
41FE1C:  VCVT.F32.S32    S2, S2
41FE20:  VSTR            S0, [R11,#0x14]
41FE24:  VMUL.F32        S2, S2, S4
41FE28:  VSTR            S2, [R0]
41FE2C:  LDR             R3, [R1]; CTimeCycle::m_CurrentStoredValue
41FE2E:  LDR.W           R1, [R8]; CTimeCycle::m_VectorToSun ...
41FE32:  ADD.W           R2, R3, R3,LSL#1
41FE36:  ADD.W           R6, R6, R3,LSL#2
41FE3A:  LDR.W           R0, [R1,R2,LSL#2]
41FE3E:  ADD.W           R2, R1, R2,LSL#2
41FE42:  LDRD.W          R1, R2, [R2,#4]
41FE46:  STR             R6, [SP,#0x870+var_860]
41FE48:  ADD.W           R6, R4, R3,LSL#2
41FE4C:  LDR.W           R4, =(_ZN10CTimeCycle14m_fShadowSideYE_ptr - 0x41FE56)
41FE50:  STR             R6, [SP,#0x870+var_864]
41FE52:  ADD             R4, PC; _ZN10CTimeCycle14m_fShadowSideYE_ptr
41FE54:  LDR             R4, [R4]; CTimeCycle::m_fShadowSideY ...
41FE56:  ADD.W           R6, R4, R3,LSL#2
41FE5A:  LDR.W           R4, =(_ZN10CTimeCycle14m_fShadowSideXE_ptr - 0x41FE64)
41FE5E:  STR             R6, [SP,#0x870+var_868]
41FE60:  ADD             R4, PC; _ZN10CTimeCycle14m_fShadowSideXE_ptr
41FE62:  LDR             R4, [R4]; CTimeCycle::m_fShadowSideX ...
41FE64:  ADD.W           R6, R4, R3,LSL#2
41FE68:  STR             R6, [SP,#0x870+var_86C]
41FE6A:  ADD.W           R6, R5, R3,LSL#2
41FE6E:  ADD.W           R3, R12, R3,LSL#2
41FE72:  STR             R6, [SP,#0x870+var_870]
41FE74:  BLX             j__ZN8CShadows19CalcPedShadowValuesE7CVectorPfS1_S1_S1_S1_S1_; CShadows::CalcPedShadowValues(CVector,float *,float *,float *,float *,float *,float *)
41FE78:  LDR.W           R0, =(TheCamera_ptr - 0x41FE84)
41FE7C:  VLDR            S0, =-0.9
41FE80:  ADD             R0, PC; TheCamera_ptr
41FE82:  LDR             R0, [R0]; TheCamera
41FE84:  ADDW            R0, R0, #0x914
41FE88:  VLDR            S2, [R0]
41FE8C:  VCMPE.F32       S2, S0
41FE90:  VMRS            APSR_nzcv, FPSCR
41FE94:  BGE             loc_41FEB0
41FE96:  LDR.W           R0, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x41FE9E)
41FE9A:  ADD             R0, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
41FE9C:  LDR             R0, [R0]; CTimeCycle::m_FogReduction ...
41FE9E:  LDR             R0, [R0]; CTimeCycle::m_FogReduction
41FEA0:  ADDS            R0, #1
41FEA2:  CMP             R0, #0x40 ; '@'
41FEA4:  IT GE
41FEA6:  MOVGE           R0, #0x40 ; '@'
41FEA8:  B               loc_41FED2
41FEAA:  ALIGN 4
41FEAC:  DCFS 0.03125
41FEB0:  LDR.W           R0, =(_ZN8CWeather17bScriptsForceRainE_ptr - 0x41FEB8)
41FEB4:  ADD             R0, PC; _ZN8CWeather17bScriptsForceRainE_ptr
41FEB6:  LDR             R0, [R0]; CWeather::bScriptsForceRain ...
41FEB8:  LDRB            R0, [R0]; this
41FEBA:  CMP             R0, #0
41FEBC:  BEQ.W           loc_4202D8
41FEC0:  LDR.W           R0, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x41FEC8)
41FEC4:  ADD             R0, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
41FEC6:  LDR             R0, [R0]; CTimeCycle::m_FogReduction ...
41FEC8:  LDR             R0, [R0]; CTimeCycle::m_FogReduction
41FECA:  SUBS            R0, #1
41FECC:  CMP             R0, #0
41FECE:  IT LE
41FED0:  MOVLE           R0, #0
41FED2:  LDR.W           R1, =(TheCamera_ptr - 0x41FEDE)
41FED6:  LDR.W           R2, =(_ZN10CTimeCycle14m_FogReductionE_ptr - 0x41FEE2)
41FEDA:  ADD             R1, PC; TheCamera_ptr
41FEDC:  LDR             R6, [SP,#0x870+var_858]
41FEDE:  ADD             R2, PC; _ZN10CTimeCycle14m_FogReductionE_ptr
41FEE0:  VLDR            S0, =200.0
41FEE4:  LDR             R1, [R1]; TheCamera
41FEE6:  LDR             R2, [R2]; CTimeCycle::m_FogReduction ...
41FEE8:  LDR             R3, [R1,#(dword_951FBC - 0x951FA8)]
41FEEA:  STR             R0, [R2]; CTimeCycle::m_FogReduction
41FEEC:  ADD.W           R0, R3, #0x30 ; '0'
41FEF0:  CMP             R3, #0
41FEF2:  IT EQ
41FEF4:  ADDEQ           R0, R1, #4
41FEF6:  VLDR            S2, [R0,#8]
41FEFA:  VCMPE.F32       S2, S0
41FEFE:  VMRS            APSR_nzcv, FPSCR
41FF02:  BLT             loc_41FFB6
41FF04:  VLDR            S4, =500.0
41FF08:  VLDR            S0, [R11,#0x50]
41FF0C:  VCMPE.F32       S2, S4
41FF10:  VMRS            APSR_nzcv, FPSCR
41FF14:  BLE             loc_41FF80
41FF16:  VLDR            S2, =1000.0
41FF1A:  VMIN.F32        D0, D0, D1
41FF1E:  VSTR            S0, [R11,#0x50]
41FF22:  B               loc_41FFB6
41FF24:  DCD _ZN6CClock20ms_nGameClockMinutesE_ptr - 0x41F040
41FF28:  DCD _ZN6CClock20ms_nGameClockSecondsE_ptr - 0x41F046
41FF2C:  DCD _ZN6CClock18ms_nGameClockHoursE_ptr - 0x41F068
41FF30:  LSLS            R0, R0, #0x14
41FF32:  LSLS            R6, R0, #0x1C
41FF34:  ASRS            R4, R1, #0xC
41FF36:  ASRS            R4, R2, #0x18
41FF38:  MOVS            R0, R3
41FF3A:  MOVS            R0, R0
41FF3C:  DCD _ZN8CWeather18InterpolationValueE_ptr - 0x41F0E2
41FF40:  DCD 0, 0, 0
41FF4D:  DCB 0
41FF4E:  SUBS            R7, #0x80
41FF50:  DCD _ZN8CWeather14OldWeatherTypeE_ptr - 0x41F150
41FF54:  DCD _ZN8CWeather14NewWeatherTypeE_ptr - 0x41F19A
41FF58:  DCD TheCamera_ptr - 0x41F1C4
41FF5C:  DCD _ZN8CWeather14OldWeatherTypeE_ptr - 0x41F200
41FF60:  DCD _ZN8CWeather14NewWeatherTypeE_ptr - 0x41F2AE
41FF64:  DCFS 120.0
41FF68:  DCFS 0.0039216
41FF6C:  DCFS -0.9
41FF70:  DCFS 200.0
41FF74:  DCFS 500.0
41FF78:  DCFS 1000.0
41FF7C:  DCD _ZN8CCoronas10LightsMultE_ptr - 0x41F3B2
41FF80:  VLDR            S4, =1000.0
41FF84:  VCMPE.F32       S0, S4
41FF88:  VMRS            APSR_nzcv, FPSCR
41FF8C:  BLE             loc_41FFB6
41FF8E:  VLDR            S6, =-200.0
41FF92:  VADD.F32        S2, S2, S6
41FF96:  VLDR            S6, =300.0
41FF9A:  VDIV.F32        S2, S2, S6
41FF9E:  VMOV.F32        S6, #1.0
41FFA2:  VSUB.F32        S6, S6, S2
41FFA6:  VMUL.F32        S2, S2, S4
41FFAA:  VMUL.F32        S0, S6, S0
41FFAE:  VADD.F32        S0, S2, S0
41FFB2:  VSTR            S0, [R11,#0x50]
41FFB6:  LDR             R1, [SP,#0x870+var_844]
41FFB8:  ADR.W           R0, dword_420478
41FFBC:  ADD.W           R12, R11, #0x18
41FFC0:  LDRB            R1, [R0,R1]
41FFC2:  ADD             R0, R10
41FFC4:  LDRB.W          R0, [R0,#-1]
41FFC8:  VMOV            S0, R1
41FFCC:  LDR.W           R1, =(_ZN8CWeather14UnderWaternessE_ptr - 0x41FFE0)
41FFD0:  VMOV            S2, R0
41FFD4:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x41FFE6)
41FFD8:  VCVT.F32.U32    S0, S0
41FFDC:  ADD             R1, PC; _ZN8CWeather14UnderWaternessE_ptr
41FFDE:  VCVT.F32.U32    S2, S2
41FFE2:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
41FFE4:  LDR             R1, [R1]; CWeather::UnderWaterness ...
41FFE6:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
41FFE8:  VLDR            S4, [R1]
41FFEC:  LDRH            R2, [R0,#(dword_966576+2 - 0x96654C)]
41FFEE:  VMUL.F32        S0, S20, S0
41FFF2:  VMUL.F32        S2, S22, S2
41FFF6:  VMOV            S6, R2
41FFFA:  VCVT.F32.U32    S6, S6
41FFFE:  LDRH            R1, [R0,#(word_96657A - 0x96654C)]
420000:  VMOV            S12, R1
420004:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x420014)
420008:  VADD.F32        S2, S2, S0
42000C:  VMOV.F32        S0, #1.0
420010:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
420012:  VMUL.F32        S6, S4, S6
420016:  LDR             R1, [R1]; MobileSettings::settings ...
420018:  VCVT.S32.F32    S2, S2
42001C:  VSUB.F32        S8, S0, S4
420020:  VMOV            R2, S2
420024:  UXTB            R2, R2
420026:  VMOV            S2, R2
42002A:  VCVT.F32.U32    S10, S2
42002E:  LDRH            R0, [R0,#(dword_966576 - 0x96654C)]
420030:  VCVT.F32.U32    S12, S12
420034:  VMOV            S14, R0
420038:  LDR.W           R0, =(_ZN10CTimeCycle18m_BelowHorizonGreyE_ptr - 0x420044)
42003C:  VCVT.F32.U32    S14, S14
420040:  ADD             R0, PC; _ZN10CTimeCycle18m_BelowHorizonGreyE_ptr
420042:  VCVT.F32.S32    S2, S2
420046:  VMUL.F32        S10, S8, S10
42004A:  LDR             R0, [R0]; CTimeCycle::m_BelowHorizonGrey ...
42004C:  VMUL.F32        S12, S4, S12
420050:  VMUL.F32        S4, S4, S14
420054:  VMUL.F32        S2, S8, S2
420058:  VADD.F32        S6, S10, S6
42005C:  VADD.F32        S8, S10, S12
420060:  VADD.F32        S2, S2, S4
420064:  VCVT.S32.F32    S4, S6
420068:  VCVT.S32.F32    S6, S8
42006C:  VCVT.S32.F32    S2, S2
420070:  VMOV            R2, S6
420074:  STRB            R2, [R0,#(byte_96B4AE - 0x96B4AC)]
420076:  VMOV            R2, S2
42007A:  STRB            R2, [R0]; CTimeCycle::m_BelowHorizonGrey
42007C:  VMOV            R2, S4
420080:  STRB            R2, [R0,#(byte_96B4AD - 0x96B4AC)]
420082:  LDM.W           R11, {R0,R2,R3}
420086:  STM.W           R12, {R0,R2,R3}
42008A:  VMOV            S6, R3
42008E:  LDR.W           R1, [R1,#(dword_6E05FC - 0x6E03F4)]
420092:  VMOV            S4, R0
420096:  CMP             R1, #0x3B ; ';'
420098:  VMOV            S2, R1
42009C:  VCVT.F32.S32    S8, S2
4200A0:  VMOV            S2, R2
4200A4:  BGT             loc_4200C4
4200A6:  VDIV.F32        S8, S8, S23
4200AA:  VLDR            S10, =0.8
4200AE:  VMUL.F32        S8, S8, S10
4200B2:  VADD.F32        S8, S8, S19
4200B6:  VMUL.F32        S2, S8, S2
4200BA:  VMUL.F32        S4, S8, S4
4200BE:  VMUL.F32        S6, S8, S6
4200C2:  B               loc_4200F8
4200C4:  VLDR            S10, =-60.0
4200C8:  VMAX.F32        D16, D2, D1
4200CC:  VADD.F32        S8, S8, S10
4200D0:  VLDR            S10, =40.0
4200D4:  VADD.F32        S8, S8, S8
4200D8:  VDIV.F32        S8, S8, S10
4200DC:  VADD.F32        S8, S8, S0
4200E0:  VMAX.F32        D5, D16, D3
4200E4:  VMUL.F32        S12, S8, S10
4200E8:  VSUB.F32        S10, S12, S10
4200EC:  VADD.F32        S2, S10, S2
4200F0:  VADD.F32        S4, S10, S4
4200F4:  VADD.F32        S6, S10, S6
4200F8:  VSTR            S4, [R11]
4200FC:  VCMPE.F32       S8, S0
420100:  VSTR            S2, [R11,#4]
420104:  LDR             R3, [SP,#0x870+var_848]
420106:  VMRS            APSR_nzcv, FPSCR
42010A:  VSTR            S6, [R11,#8]
42010E:  BLE             loc_4201B6
420110:  VMOV.F32        S10, #-1.0
420114:  VMOV.F32        S12, #0.5
420118:  VMAX.F32        D16, D2, D1
42011C:  VMOV.F32        S14, S4
420120:  VMAX.F32        D9, D16, D3
420124:  VADD.F32        S8, S8, S10
420128:  VLDR            S10, =0.12
42012C:  VCMP.F32        S18, #0.0
420130:  VMRS            APSR_nzcv, FPSCR
420134:  VMUL.F32        S8, S8, S10
420138:  VMUL.F32        S10, S8, S12
42013C:  VMOV.F32        S8, S6
420140:  VMOV.F32        S12, S2
420144:  BNE             loc_420166
420146:  VLDR            S8, =0.001
42014A:  MOV             R0, #0x3A83126F
420152:  VMOV.F32        S12, S8
420156:  STRD.W          R0, R0, [R11]
42015A:  VMOV.F32        S14, S8
42015E:  STR.W           R0, [R11,#8]
420162:  VMOV            D9, D4
420166:  VCMPE.F32       S10, S18
42016A:  VMRS            APSR_nzcv, FPSCR
42016E:  BLE             loc_42018C
420170:  VDIV.F32        S10, S10, S18
420174:  VMUL.F32        S14, S10, S14
420178:  VMUL.F32        S12, S10, S12
42017C:  VMUL.F32        S8, S10, S8
420180:  VSTR            S14, [R11]
420184:  VSTR            S12, [R11,#4]
420188:  VSTR            S8, [R11,#8]
42018C:  LDR             R0, =(_ZN10CTimeCycle31m_BrightnessAddedToAmbientGreenE_ptr - 0x4201A2)
42018E:  VSUB.F32        S2, S12, S2
420192:  LDR             R1, =(_ZN10CTimeCycle29m_BrightnessAddedToAmbientRedE_ptr - 0x4201A4)
420194:  VSUB.F32        S4, S14, S4
420198:  LDR             R2, =(_ZN10CTimeCycle30m_BrightnessAddedToAmbientBlueE_ptr - 0x4201A6)
42019A:  VSUB.F32        S6, S8, S6
42019E:  ADD             R0, PC; _ZN10CTimeCycle31m_BrightnessAddedToAmbientGreenE_ptr
4201A0:  ADD             R1, PC; _ZN10CTimeCycle29m_BrightnessAddedToAmbientRedE_ptr
4201A2:  ADD             R2, PC; _ZN10CTimeCycle30m_BrightnessAddedToAmbientBlueE_ptr
4201A4:  LDR             R0, [R0]; this
4201A6:  LDR             R1, [R1]; CTimeCycle::m_BrightnessAddedToAmbientRed ...
4201A8:  LDR             R2, [R2]; CTimeCycle::m_BrightnessAddedToAmbientBlue ...
4201AA:  VSTR            S2, [R0]
4201AE:  VSTR            S4, [R1]
4201B2:  VSTR            S6, [R2]
4201B6:  VLDR            S2, =-3000.0
4201BA:  VMOV            S4, R3
4201BE:  VCMPE.F32       S4, S2
4201C2:  VMRS            APSR_nzcv, FPSCR
4201C6:  BGE             loc_4201CE
4201C8:  VSUB.F32        S4, S2, S4
4201CC:  B               loc_4201E0
4201CE:  VLDR            S6, =3000.0
4201D2:  VCMPE.F32       S4, S6
4201D6:  VMRS            APSR_nzcv, FPSCR
4201DA:  BLE             loc_4201E8
4201DC:  VADD.F32        S4, S4, S2
4201E0:  VLDR            S6, =0.0
4201E4:  VADD.F32        S16, S4, S6
4201E8:  VMOV            S4, R6
4201EC:  VCMPE.F32       S4, S2
4201F0:  VMRS            APSR_nzcv, FPSCR
4201F4:  BGE             loc_4201FC
4201F6:  VSUB.F32        S2, S2, S4
4201FA:  B               loc_42020E
4201FC:  VLDR            S6, =3000.0
420200:  VCMPE.F32       S4, S6
420204:  VMRS            APSR_nzcv, FPSCR
420208:  BLE             loc_420212
42020A:  VADD.F32        S2, S4, S2
42020E:  VADD.F32        S16, S2, S16
420212:  VLDR            S2, =1000.0
420216:  VCMPE.F32       S16, S2
42021A:  VMRS            APSR_nzcv, FPSCR
42021E:  BGE             loc_420234
420220:  VCMPE.F32       S16, #0.0
420224:  VMRS            APSR_nzcv, FPSCR
420228:  BLT             loc_420244
42022A:  VDIV.F32        S2, S16, S2
42022E:  VADD.F32        S0, S2, S0
420232:  B               loc_420238
420234:  VMOV.F32        S0, #2.0
420238:  VLDR            S2, [R11,#0xA8]
42023C:  VMUL.F32        S0, S0, S2
420240:  VSTR            S0, [R11,#0xA8]
420244:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
420248:  CMP             R0, #1
42024A:  BNE             loc_4202C8
42024C:  LDR             R0, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x420252)
42024E:  ADD             R0, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
420250:  LDR             R0, [R0]; CPostEffects::m_bNightVision ...
420252:  LDRB            R0, [R0]; CPostEffects::m_bNightVision
420254:  CBZ             R0, loc_420286
420256:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x420264)
420258:  ADR             R1, dword_420340
42025A:  VLD1.64         {D16-D17}, [R1@128]
42025E:  MOVS            R1, #0
420260:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
420262:  MOV.W           R2, #0x800000
420266:  MOVS            R3, #0x80
420268:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
42026A:  STRH.W          R1, [R0,#(word_966598 - 0x96654C)]
42026E:  STR             R1, [R0,#(dword_966594 - 0x96654C)]
420270:  STR             R1, [R0,#(dword_966560 - 0x96654C)]
420272:  STRD.W          R2, R1, [R0,#(dword_966570 - 0x96654C)]
420276:  MOVW            R1, #0xCCCD
42027A:  STR             R3, [R0,#(dword_966576+2 - 0x96654C)]
42027C:  MOVT            R1, #0x3ECC
420280:  VST1.32         {D16-D17}, [R0]!
420284:  STR             R1, [R0]
420286:  LDR             R0, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x42028C)
420288:  ADD             R0, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
42028A:  LDR             R0, [R0]; CPostEffects::m_bInfraredVision ...
42028C:  LDRB            R0, [R0]; CPostEffects::m_bInfraredVision
42028E:  CBZ             R0, loc_4202C8
420290:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x42029E)
420292:  ADR             R1, dword_420350
420294:  VLD1.64         {D16-D17}, [R1@128]
420298:  MOVS            R1, #0
42029A:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
42029C:  MOV.W           R2, #0x3F800000
4202A0:  MOV.W           R3, #0x800000
4202A4:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
4202A6:  ADD.W           R12, R0, #0x24 ; '$'
4202AA:  STRH.W          R1, [R0,#(word_966598 - 0x96654C)]
4202AE:  STR             R1, [R0,#(dword_966594 - 0x96654C)]
4202B0:  STR             R1, [R0,#(dword_9665A4 - 0x96654C)]
4202B2:  STR.W           R1, [R0,#(dword_9665E8 - 0x96654C)]
4202B6:  STRH.W          R1, [R0,#(word_9665EC - 0x96654C)]
4202BA:  STR             R2, [R0,#(dword_966560 - 0x96654C)]
4202BC:  MOVS            R2, #0x80
4202BE:  STM.W           R12, {R1-R3}
4202C2:  VST1.32         {D16-D17}, [R0]!
4202C6:  STR             R1, [R0]
4202C8:  ADD.W           SP, SP, #0x810
4202CC:  VPOP            {D8-D15}
4202D0:  ADD             SP, SP, #4
4202D2:  POP.W           {R8-R11}
4202D6:  POP             {R4-R7,PC}
4202D8:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
4202DC:  CMP             R0, #0
4202DE:  BNE.W           loc_41FE96
4202E2:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
4202E6:  CMP             R0, #0
4202E8:  BNE.W           loc_41FE96
4202EC:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x4202F2)
4202EE:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
4202F0:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
4202F2:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
4202F4:  CMP             R0, #0
4202F6:  BEQ.W           loc_41FEC0
4202FA:  B               loc_41FE96
4202FC:  LDR             R2, =(_ZN10CTimeCycle13m_nSkyTopBlueE_ptr - 0x420304)
4202FE:  MOVS            R3, #0x17
420300:  ADD             R2, PC; _ZN10CTimeCycle13m_nSkyTopBlueE_ptr
420302:  LDR             R2, [R2]; CTimeCycle::m_nSkyTopBlue ...
420304:  MLA.W           R0, R0, R3, R2
420308:  LDRB            R0, [R0,R1]
42030A:  CMP             R0, #0
42030C:  IT NE
42030E:  MOVNE           R0, #1
420310:  B               loc_41FC8E
