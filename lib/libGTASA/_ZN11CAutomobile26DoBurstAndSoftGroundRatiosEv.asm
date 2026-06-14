; =========================================================
; Game Engine Function: _ZN11CAutomobile26DoBurstAndSoftGroundRatiosEv
; Address            : 0x55F0C8 - 0x55F380
; =========================================================

55F0C8:  PUSH            {R4-R7,LR}
55F0CA:  ADD             R7, SP, #0xC
55F0CC:  PUSH.W          {R8-R11}
55F0D0:  SUB             SP, SP, #4
55F0D2:  VPUSH           {D8-D15}
55F0D6:  SUB             SP, SP, #0x10
55F0D8:  MOV             R9, R0
55F0DA:  VLDR            S20, =0.3
55F0DE:  LDR.W           R0, [R9,#0x14]
55F0E2:  VMOV.F32        S24, #1.0
55F0E6:  VLDR            S0, [R9,#0x48]
55F0EA:  VMOV.F32        S17, #0.25
55F0EE:  VLDR            S2, [R9,#0x4C]
55F0F2:  VMOV.F32        S21, #0.5
55F0F6:  VLDR            S6, [R0,#0x10]
55F0FA:  VMOV.F32        S23, #1.5
55F0FE:  VLDR            S8, [R0,#0x14]
55F102:  ADDW            R11, R9, #0x75B
55F106:  VMUL.F32        S0, S0, S6
55F10A:  VLDR            S10, [R0,#0x18]
55F10E:  VMUL.F32        S2, S2, S8
55F112:  VLDR            S4, [R9,#0x50]
55F116:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55F128)
55F118:  ADD.W           R10, R9, #0x7E8
55F11C:  VMUL.F32        S4, S4, S10
55F120:  LDRSH.W         R1, [R9,#0x26]
55F124:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55F126:  ADDW            R5, R9, #0x5B4
55F12A:  VLDR            S30, =0.000015259
55F12E:  MOVS            R6, #0
55F130:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55F132:  MOV.W           R4, #0x3F800000
55F136:  VADD.F32        S0, S0, S2
55F13A:  VLDR            S2, =40.0
55F13E:  VADD.F32        S0, S0, S4
55F142:  VABS.F32        S16, S0
55F146:  VLDR            S0, =-0.7
55F14A:  VMUL.F32        S2, S16, S2
55F14E:  VMUL.F32        S0, S16, S0
55F152:  VDIV.F32        S22, S16, S20
55F156:  VCVT.U32.F32    S2, S2
55F15A:  LDR.W           R1, [R0,R1,LSL#2]
55F15E:  VDIV.F32        S0, S0, S20
55F162:  VMOV            R0, S2
55F166:  VADD.F32        S28, S0, S24
55F16A:  ADDS            R0, #0x62 ; 'b'
55F16C:  VMOV            S2, R0
55F170:  ADD.W           R0, R1, #0x5C ; '\'
55F174:  VCVT.F32.S32    S26, S2
55F178:  STR             R0, [SP,#0x70+var_68]
55F17A:  LDR             R0, =(g_surfaceInfos_ptr - 0x55F182)
55F17C:  STR             R1, [SP,#0x70+var_64]
55F17E:  ADD             R0, PC; g_surfaceInfos_ptr
55F180:  LDR.W           R8, [R0]; g_surfaceInfos
55F184:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x55F18A)
55F186:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
55F188:  LDR             R0, [R0]; CWeather::WetRoads ...
55F18A:  STR             R0, [SP,#0x70+var_70]
55F18C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x55F192)
55F18E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
55F190:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
55F192:  STR             R0, [SP,#0x70+var_6C]
55F194:  MOV             R0, R5; this
55F196:  MOV             R1, R6; int
55F198:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55F19C:  CMP             R0, #2
55F19E:  BNE             loc_55F1A6
55F1A0:  STR.W           R4, [R10]
55F1A4:  B               loc_55F362
55F1A6:  MOV             R0, R5; this
55F1A8:  MOV             R1, R6; int
55F1AA:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55F1AE:  CMP             R0, #1
55F1B0:  BNE             loc_55F206
55F1B2:  BLX             rand
55F1B6:  UXTH            R0, R0
55F1B8:  VMOV            S0, R0
55F1BC:  VCVT.F32.S32    S0, S0
55F1C0:  VMUL.F32        S0, S0, S30
55F1C4:  VMUL.F32        S0, S0, S26
55F1C8:  VCVT.S32.F32    S0, S0
55F1CC:  VMOV            R0, S0
55F1D0:  CMP             R0, #0x63 ; 'c'
55F1D2:  BGT.W           loc_55F362
55F1D6:  VLDR            S2, [R10,#0xA4]
55F1DA:  VLDR            S4, [R10,#0xB4]
55F1DE:  VLDR            S0, [R10]
55F1E2:  VSUB.F32        S2, S4, S2
55F1E6:  VMUL.F32        S2, S2, S17
55F1EA:  VDIV.F32        S2, S2, S4
55F1EE:  VADD.F32        S0, S0, S2
55F1F2:  VCMPE.F32       S0, S24
55F1F6:  VSTR            S0, [R10]
55F1FA:  VMRS            APSR_nzcv, FPSCR
55F1FE:  IT GT
55F200:  STRGT.W         R4, [R10]
55F204:  B               loc_55F362
55F206:  VLDR            S29, [R10]
55F20A:  VCMPE.F32       S29, S24
55F20E:  VMRS            APSR_nzcv, FPSCR
55F212:  BGE             loc_55F230
55F214:  LDRB.W          R1, [R11]; unsigned int
55F218:  MOV             R0, R8; this
55F21A:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
55F21E:  CMP             R0, #4
55F220:  BNE             loc_55F22C
55F222:  LDRH.W          R0, [R9,#0x26]
55F226:  CMP.W           R0, #0x1B0
55F22A:  BNE             loc_55F306
55F22C:  VLDR            S29, [R10]
55F230:  VCMPE.F32       S29, S24
55F234:  VMRS            APSR_nzcv, FPSCR
55F238:  BGE.W           loc_55F362
55F23C:  LDRB.W          R0, [R11]
55F240:  CMP             R0, #0xB2
55F242:  BNE.W           loc_55F362
55F246:  ORR.W           R0, R6, #2
55F24A:  VCMPE.F32       S16, S20
55F24E:  CMP             R0, #2
55F250:  LDRD.W          R0, R1, [SP,#0x70+var_68]
55F254:  IT EQ
55F256:  ADDEQ.W         R0, R1, #0x58 ; 'X'
55F25A:  VMRS            APSR_nzcv, FPSCR
55F25E:  VLDR            S0, [R0]
55F262:  VMUL.F32        S0, S0, S21
55F266:  VDIV.F32        S19, S23, S0
55F26A:  VMUL.F32        S0, S22, S19
55F26E:  IT GT
55F270:  VMOVGT.F32      S19, S0
55F274:  VLDR            S27, [R10,#0x54]
55F278:  VLDR            S31, [R10,#0x74]
55F27C:  VDIV.F32        S18, S27, S19
55F280:  VMOV            R0, S18; x
55F284:  BLX             floorf
55F288:  MOV             R4, R0
55F28A:  LDR             R0, [SP,#0x70+var_6C]
55F28C:  VLDR            S0, [R0]
55F290:  VMUL.F32        S0, S31, S0
55F294:  VADD.F32        S0, S27, S0
55F298:  VDIV.F32        S19, S0, S19
55F29C:  VMOV            R0, S19; x
55F2A0:  BLX             floorf
55F2A4:  VMOV            S2, R4
55F2A8:  MOV.W           R4, #0x3F800000
55F2AC:  VMOV            S0, R0
55F2B0:  VSUB.F32        S2, S18, S2
55F2B4:  VSUB.F32        S0, S19, S0
55F2B8:  VCMPE.F32       S31, #0.0
55F2BC:  VMRS            APSR_nzcv, FPSCR
55F2C0:  BLE             loc_55F2CC
55F2C2:  VCMPE.F32       S0, S2
55F2C6:  VMRS            APSR_nzcv, FPSCR
55F2CA:  BLT             loc_55F2E0
55F2CC:  VCMPE.F32       S31, #0.0
55F2D0:  VMRS            APSR_nzcv, FPSCR
55F2D4:  BGE             loc_55F362
55F2D6:  VCMPE.F32       S0, S2
55F2DA:  VMRS            APSR_nzcv, FPSCR
55F2DE:  BLE             loc_55F362
55F2E0:  VLDR            S0, [R10,#0xA4]
55F2E4:  VLDR            S2, [R10,#0xB4]
55F2E8:  VLDR            S4, =-0.3
55F2EC:  VSUB.F32        S0, S2, S0
55F2F0:  VMUL.F32        S0, S0, S4
55F2F4:  VDIV.F32        S0, S0, S2
55F2F8:  VADD.F32        S0, S29, S0
55F2FC:  VLDR            S2, =0.2
55F300:  VMAX.F32        D0, D0, D1
55F304:  B               loc_55F35E
55F306:  LDR.W           R0, [R9,#0x390]
55F30A:  VLDR            S0, =0.15
55F30E:  TST.W           R0, #0x200000
55F312:  BNE             loc_55F320
55F314:  LSLS            R0, R0, #0xB
55F316:  ADR             R0, dword_55F398
55F318:  IT PL
55F31A:  ADDPL           R0, #4
55F31C:  VLDR            S0, [R0]
55F320:  LDR             R0, [SP,#0x70+var_70]
55F322:  VLDR            S4, =-0.7
55F326:  VLDR            S10, =0.4
55F32A:  VLDR            S2, [R0]
55F32E:  VLDR            S6, [R10,#0xA4]
55F332:  VMUL.F32        S2, S2, S4
55F336:  VLDR            S8, [R10,#0xB4]
55F33A:  VLDR            S4, [R10]
55F33E:  VSUB.F32        S6, S8, S6
55F342:  VADD.F32        S2, S28, S2
55F346:  VMAX.F32        D1, D1, D5
55F34A:  VMUL.F32        S0, S0, S2
55F34E:  VMUL.F32        S0, S6, S0
55F352:  VDIV.F32        S0, S0, S8
55F356:  VADD.F32        S0, S4, S0
55F35A:  VMIN.F32        D0, D0, D12
55F35E:  VSTR            S0, [R10]
55F362:  ADDS            R6, #1
55F364:  ADD.W           R11, R11, #0x2C ; ','
55F368:  ADD.W           R10, R10, #4
55F36C:  CMP             R6, #4
55F36E:  BNE.W           loc_55F194
55F372:  ADD             SP, SP, #0x10
55F374:  VPOP            {D8-D15}
55F378:  ADD             SP, SP, #4
55F37A:  POP.W           {R8-R11}
55F37E:  POP             {R4-R7,PC}
