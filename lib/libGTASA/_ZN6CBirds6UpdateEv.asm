; =========================================================
; Game Engine Function: _ZN6CBirds6UpdateEv
; Address            : 0x59CF50 - 0x59D3EE
; =========================================================

59CF50:  PUSH            {R4-R7,LR}
59CF52:  ADD             R7, SP, #0xC
59CF54:  PUSH.W          {R8-R11}
59CF58:  SUB             SP, SP, #4
59CF5A:  VPUSH           {D8-D13}
59CF5E:  SUB             SP, SP, #0x38
59CF60:  LDR.W           R0, =(TheCamera_ptr - 0x59CF6C)
59CF64:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x59CF6E)
59CF68:  ADD             R0, PC; TheCamera_ptr
59CF6A:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
59CF6C:  LDR             R2, [R0]; TheCamera
59CF6E:  LDR             R0, [R1]; CGame::currArea ...
59CF70:  LDR             R1, [R2,#(dword_951FBC - 0x951FA8)]
59CF72:  LDR             R3, [R0]; CGame::currArea
59CF74:  ADD.W           R0, R1, #0x30 ; '0'
59CF78:  CMP             R1, #0
59CF7A:  IT EQ
59CF7C:  ADDEQ           R0, R2, #4
59CF7E:  CMP             R3, #0
59CF80:  VLDR            S16, [R0]
59CF84:  VLDR            S18, [R0,#4]
59CF88:  BNE.W           loc_59D1F8
59CF8C:  LDR.W           R1, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59CF94)
59CF90:  ADD             R1, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59CF92:  LDR             R1, [R1]; CBirds::NumberOfBirds ...
59CF94:  LDR             R4, [R1]; CBirds::NumberOfBirds
59CF96:  CMP             R4, #5
59CF98:  BGT.W           loc_59D1F8
59CF9C:  LDR.W           R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x59CFA4)
59CFA0:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
59CFA2:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
59CFA4:  LDRB            R1, [R1]; CClock::ms_nGameClockHours
59CFA6:  SUBS            R1, #6
59CFA8:  UXTB            R1, R1
59CFAA:  CMP             R1, #0xF
59CFAC:  BHI.W           loc_59D1F8
59CFB0:  LDR.W           R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x59CFB8)
59CFB4:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
59CFB6:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
59CFB8:  LDR             R1, [R1]; CTimer::m_FrameCounter
59CFBA:  BFC.W           R1, #9, #0x17
59CFBE:  CMP             R1, #6
59CFC0:  BNE.W           loc_59D1F8
59CFC4:  VLDR            S20, [R0,#8]
59CFC8:  BLX.W           rand
59CFCC:  UXTH            R0, R0
59CFCE:  VLDR            S2, =0.000015259
59CFD2:  VMOV            S0, R0
59CFD6:  RSB.W           R0, R4, #6
59CFDA:  VCVT.F32.S32    S0, S0
59CFDE:  VMOV            S4, R0
59CFE2:  LDR.W           R0, =(TheCamera_ptr - 0x59CFEE)
59CFE6:  VCVT.F32.S32    S4, S4
59CFEA:  ADD             R0, PC; TheCamera_ptr
59CFEC:  LDR             R0, [R0]; TheCamera
59CFEE:  VMUL.F32        S0, S0, S2
59CFF2:  VMOV.F32        S2, #30.0
59CFF6:  VMUL.F32        S0, S0, S4
59CFFA:  VCVT.S32.F32    S0, S0
59CFFE:  VLDR            S4, [R0,#0xE0]
59D002:  VCMPE.F32       S4, S2
59D006:  VMRS            APSR_nzcv, FPSCR
59D00A:  VMOV            R0, S0
59D00E:  ADD.W           R5, R0, #1
59D012:  BGE             loc_59D01E
59D014:  MOV.W           R9, #0
59D018:  CMP             R5, #1
59D01A:  BGE             loc_59D054
59D01C:  B               loc_59D1F8
59D01E:  LDR.W           R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x59D026)
59D022:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
59D024:  LDR             R0, [R0]; CWeather::WeatherRegion ...
59D026:  LDRH            R0, [R0]; CWeather::WeatherRegion
59D028:  CMP             R0, #4
59D02A:  BNE             loc_59D04A
59D02C:  LDR.W           R0, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59D038)
59D030:  MOV.W           R9, #1
59D034:  ADD             R0, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59D036:  LDR             R0, [R0]; CBirds::NumberOfBirds ...
59D038:  LDR             R0, [R0]; CBirds::NumberOfBirds
59D03A:  RSB.W           R0, R0, #3
59D03E:  CMP             R5, R0
59D040:  IT GE
59D042:  MOVGE           R5, R0
59D044:  CMP             R5, #1
59D046:  BGE             loc_59D054
59D048:  B               loc_59D1F8
59D04A:  MOV.W           R9, #2
59D04E:  CMP             R5, #1
59D050:  BLT.W           loc_59D1F8
59D054:  BLX.W           rand
59D058:  BLX.W           rand
59D05C:  AND.W           R0, R9, #3
59D060:  CMP             R0, #1
59D062:  BEQ             loc_59D074
59D064:  CBNZ            R0, loc_59D082
59D066:  VMOV.F32        S24, #4.0
59D06A:  VLDR            S22, =45.0
59D06E:  VMOV.F32        S26, #9.0
59D072:  B               loc_59D08E
59D074:  VMOV.F32        S24, #15.0
59D078:  VLDR            S22, =80.0
59D07C:  VMOV.F32        S26, #10.0
59D080:  B               loc_59D08E
59D082:  VMOV.F32        S24, #2.0
59D086:  VLDR            S22, =40.0
59D08A:  VMOV.F32        S26, #8.0
59D08E:  BLX.W           rand
59D092:  VMOV            S0, R0
59D096:  VLDR            S2, =4.6566e-10
59D09A:  VCVT.F32.S32    S0, S0
59D09E:  VMUL.F32        S0, S0, S2
59D0A2:  VMOV.F32        S2, #5.0
59D0A6:  VMUL.F32        S0, S26, S0
59D0AA:  VADD.F32        S0, S24, S0
59D0AE:  VADD.F32        S20, S20, S0
59D0B2:  VCMPE.F32       S20, S2
59D0B6:  VMRS            APSR_nzcv, FPSCR
59D0BA:  BLE.W           loc_59D1F8
59D0BE:  BLX.W           rand
59D0C2:  TST.W           R0, #1
59D0C6:  BNE             loc_59D130
59D0C8:  LDR             R0, =(TheCamera_ptr - 0x59D0CE)
59D0CA:  ADD             R0, PC; TheCamera_ptr
59D0CC:  LDR             R0, [R0]; TheCamera
59D0CE:  LDR.W           R1, [R0,#(dword_9528B4 - 0x951FA8)]
59D0D2:  LDR.W           R0, [R0,#(dword_9528B8 - 0x951FA8)]
59D0D6:  STRD.W          R1, R0, [SP,#0x88+var_60]
59D0DA:  MOVS            R0, #0
59D0DC:  VLDR            S0, [SP,#0x88+var_60]
59D0E0:  STR             R0, [SP,#0x88+var_58]
59D0E2:  VCMP.F32        S0, #0.0
59D0E6:  VMRS            APSR_nzcv, FPSCR
59D0EA:  ITTT EQ
59D0EC:  MOVWEQ          R0, #0xD70A
59D0F0:  MOVTEQ          R0, #0x3C23
59D0F4:  STREQ           R0, [SP,#0x88+var_60]
59D0F6:  ADD             R0, SP, #0x88+var_60; this
59D0F8:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
59D0FC:  LDRD.W          R0, R1, [SP,#0x88+var_60]; x
59D100:  BLX.W           atan2f
59D104:  MOV             R4, R0
59D106:  BLX.W           rand
59D10A:  MOV             R1, #0xFFFFFF80
59D10E:  UXTAB.W         R0, R1, R0
59D112:  VLDR            S2, =0.0039062
59D116:  VMOV            S0, R0
59D11A:  VCVT.F32.S32    S0, S0
59D11E:  VMUL.F32        S0, S0, S2
59D122:  VMOV            S2, R4
59D126:  VADD.F32        S0, S2, S0
59D12A:  B               loc_59D146
59D12C:  DCFS 0.000015259
59D130:  BLX.W           rand
59D134:  UXTB            R0, R0
59D136:  VLDR            S2, =0.024531
59D13A:  VMOV            S0, R0
59D13E:  VCVT.F32.S32    S0, S0
59D142:  VMUL.F32        S0, S0, S2
59D146:  VMOV            R4, S0
59D14A:  MOV             R0, R4; x
59D14C:  BLX.W           sinf
59D150:  VMOV            S24, R0
59D154:  MOV             R0, R4; x
59D156:  BLX.W           cosf
59D15A:  VMOV            S0, R0
59D15E:  ADD             R3, SP, #0x88+var_64; float
59D160:  VMUL.F32        S2, S22, S24
59D164:  MOVS            R6, #0
59D166:  VMUL.F32        S0, S22, S0
59D16A:  STRD.W          R6, R6, [SP,#0x88+var_88]; float *
59D16E:  VMOV            R4, S20
59D172:  VADD.F32        S2, S16, S2
59D176:  VADD.F32        S0, S18, S0
59D17A:  VMOV            R8, S2
59D17E:  VMOV            R10, S0
59D182:  MOV             R2, R4; float
59D184:  MOV             R0, R8; this
59D186:  MOV             R1, R10; float
59D188:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
59D18C:  CMP             R0, #1
59D18E:  BNE             loc_59D1A6
59D190:  VMOV.F32        S0, #4.0
59D194:  VLDR            S2, [SP,#0x88+var_64]
59D198:  VADD.F32        S0, S2, S0
59D19C:  VCMPE.F32       S0, S20
59D1A0:  VMRS            APSR_nzcv, FPSCR
59D1A4:  BGE             loc_59D1F8
59D1A6:  LDR             R0, =(TheCamera_ptr - 0x59D1AE)
59D1A8:  STR             R6, [SP,#0x88+var_58]
59D1AA:  ADD             R0, PC; TheCamera_ptr
59D1AC:  LDR             R0, [R0]; TheCamera
59D1AE:  LDR.W           R1, [R0,#(dword_9528B4 - 0x951FA8)]
59D1B2:  LDR.W           R0, [R0,#(dword_9528B8 - 0x951FA8)]
59D1B6:  STRD.W          R1, R0, [SP,#0x88+var_60]
59D1BA:  ADD             R0, SP, #0x88+var_60; this
59D1BC:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
59D1C0:  VMOV.F32        S0, #8.0
59D1C4:  VLDR            S2, [SP,#0x88+var_60]
59D1C8:  VLDR            S4, [SP,#0x88+var_5C]
59D1CC:  ADD             R1, SP, #0x88+var_84
59D1CE:  MOVS            R0, #1
59D1D0:  STM.W           R1, {R4,R5,R9}
59D1D4:  MOV             R1, R10
59D1D6:  STR             R0, [SP,#0x88+var_78]
59D1D8:  MOV             R0, R8
59D1DA:  MOV             R2, R4
59D1DC:  VMUL.F32        S2, S2, S0
59D1E0:  VMUL.F32        S0, S4, S0
59D1E4:  VADD.F32        S2, S16, S2
59D1E8:  VADD.F32        S0, S18, S0
59D1EC:  VMOV            R3, S2
59D1F0:  VSTR            S0, [SP,#0x88+var_88]
59D1F4:  BLX.W           j__ZN6CBirds19CreateNumberOfBirdsE7CVectorS0_iib; CBirds::CreateNumberOfBirds(CVector,CVector,int,int,bool)
59D1F8:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x59D206)
59D1FA:  MOV             R1, #0xAAAAAAAB
59D202:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
59D204:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
59D206:  LDR             R0, [R0]; CTimer::m_FrameCounter
59D208:  UMULL.W         R1, R2, R0, R1
59D20C:  LDR             R1, =(_ZN6CBirds6aBirdsE_ptr - 0x59D212)
59D20E:  ADD             R1, PC; _ZN6CBirds6aBirdsE_ptr
59D210:  LDR             R3, [R1]; CBirds::aBirds ...
59D212:  LSRS            R1, R2, #2
59D214:  ADD.W           R1, R1, R1,LSL#1
59D218:  SUB.W           R0, R0, R1,LSL#1
59D21C:  ADD.W           R1, R0, R0,LSL#4
59D220:  ADD.W           R0, R3, R1,LSL#2
59D224:  LDRB.W          R2, [R0,#0x3F]!
59D228:  CBZ             R2, loc_59D272
59D22A:  LDR             R2, =(_ZN6CBirds6aBirdsE_ptr - 0x59D230)
59D22C:  ADD             R2, PC; _ZN6CBirds6aBirdsE_ptr
59D22E:  LDR             R2, [R2]; CBirds::aBirds ...
59D230:  ADD.W           R1, R2, R1,LSL#2
59D234:  VLDR            S0, [R1]
59D238:  VLDR            S2, [R1,#4]
59D23C:  VSUB.F32        S0, S0, S16
59D240:  VLDR            S4, [R1,#0x34]
59D244:  VSUB.F32        S2, S2, S18
59D248:  VMUL.F32        S4, S4, S4
59D24C:  VMUL.F32        S0, S0, S0
59D250:  VMUL.F32        S2, S2, S2
59D254:  VADD.F32        S0, S0, S2
59D258:  VCMPE.F32       S0, S4
59D25C:  VMRS            APSR_nzcv, FPSCR
59D260:  BLE             loc_59D272
59D262:  LDR             R1, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59D26C)
59D264:  MOVS            R2, #0
59D266:  STRB            R2, [R0]
59D268:  ADD             R1, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59D26A:  LDR             R1, [R1]; CBirds::NumberOfBirds ...
59D26C:  LDR             R0, [R1]; CBirds::NumberOfBirds
59D26E:  SUBS            R0, #1
59D270:  STR             R0, [R1]; CBirds::NumberOfBirds
59D272:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59D282)
59D274:  VMOV.F32        S4, #1.0
59D278:  VLDR            S0, =50.0
59D27C:  MOVS            R4, #0
59D27E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
59D280:  VLDR            S6, =0.002
59D284:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
59D286:  VLDR            S2, [R0]
59D28A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59D294)
59D28C:  VDIV.F32        S16, S2, S0
59D290:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59D292:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59D294:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds
59D298:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59D29E)
59D29A:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59D29C:  LDR             R6, [R0]; CBirds::aBirds ...
59D29E:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59D2A4)
59D2A0:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59D2A2:  LDR.W           R10, [R0]; CBirds::aBirds ...
59D2A6:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59D2AC)
59D2A8:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59D2AA:  VMUL.F32        S2, S2, S6
59D2AE:  LDR.W           R11, [R0]; CBirds::aBirds ...
59D2B2:  VMOV.F32        S0, #0.5
59D2B6:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59D2BC)
59D2B8:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59D2BA:  LDR             R0, [R0]; CBirds::aBirds ...
59D2BC:  STR             R0, [SP,#0x88+var_68]
59D2BE:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59D2C8)
59D2C0:  VMUL.F32        S0, S16, S0
59D2C4:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59D2C6:  LDR             R0, [R0]; CBirds::aBirds ...
59D2C8:  STR             R0, [SP,#0x88+var_6C]
59D2CA:  VMOV            R0, S2
59D2CE:  VMIN.F32        D9, D0, D2
59D2D2:  VSUB.F32        S20, S4, S18
59D2D6:  STRD.W          R10, R0, [SP,#0x88+var_74]
59D2DA:  ADDS            R0, R6, R4
59D2DC:  LDRB.W          R0, [R0,#0x3F]
59D2E0:  CMP             R0, #0
59D2E2:  BEQ             loc_59D3D6
59D2E4:  ADD.W           R0, R10, R4
59D2E8:  LDRB.W          R0, [R0,#0x38]
59D2EC:  CMP             R0, #1
59D2EE:  BNE             loc_59D3D6
59D2F0:  ADD.W           R0, R11, R4
59D2F4:  LDR             R0, [R0,#0x28]
59D2F6:  CMP             R9, R0
59D2F8:  BLS             loc_59D3D6
59D2FA:  LDR             R0, [SP,#0x88+var_68]
59D2FC:  ADD.W           R8, R0, R4
59D300:  LDRB.W          R0, [R8,#0x40]
59D304:  VLDR            S24, [R8,#0x18]
59D308:  VLDR            S22, [R8,#0x1C]
59D30C:  CBZ             R0, loc_59D354
59D30E:  MOV             R10, R11
59D310:  MOV             R11, R9
59D312:  LDR.W           R9, [SP,#0x88+x]
59D316:  MOV             R0, R9; x
59D318:  BLX.W           cosf
59D31C:  MOV             R5, R0
59D31E:  MOV             R0, R9; x
59D320:  MOV             R9, R11
59D322:  MOV             R11, R10
59D324:  LDR.W           R10, [SP,#0x88+var_74]
59D328:  BLX.W           sinf
59D32C:  VMOV            S0, R0
59D330:  VMOV            S2, R5
59D334:  VMUL.F32        S4, S22, S0
59D338:  VMUL.F32        S6, S24, S2
59D33C:  VMUL.F32        S0, S24, S0
59D340:  VMUL.F32        S2, S22, S2
59D344:  VADD.F32        S24, S6, S4
59D348:  VSUB.F32        S22, S2, S0
59D34C:  VSTR            S24, [R8,#0x18]
59D350:  VSTR            S22, [R8,#0x1C]
59D354:  LDR             R0, [SP,#0x88+var_6C]
59D356:  VMUL.F32        S0, S22, S18
59D35A:  VMUL.F32        S14, S24, S18
59D35E:  ADDS            R5, R0, R4
59D360:  VMOV            R0, S24; y
59D364:  VMOV            R1, S22; x
59D368:  VLDR            S8, [R5,#0xC]
59D36C:  VLDR            S10, [R5,#0x10]
59D370:  VLDR            S12, [R5,#0x14]
59D374:  VMUL.F32        S8, S8, S20
59D378:  VLDR            S1, [R5,#0x20]
59D37C:  VMUL.F32        S10, S10, S20
59D380:  VMUL.F32        S12, S12, S20
59D384:  VLDR            S2, [R5]
59D388:  VMUL.F32        S1, S1, S18
59D38C:  VLDR            S4, [R5,#4]
59D390:  VLDR            S6, [R5,#8]
59D394:  VADD.F32        S8, S14, S8
59D398:  VADD.F32        S0, S0, S10
59D39C:  VADD.F32        S10, S1, S12
59D3A0:  VMUL.F32        S12, S8, S16
59D3A4:  VMUL.F32        S14, S0, S16
59D3A8:  VMUL.F32        S1, S10, S16
59D3AC:  VADD.F32        S2, S2, S12
59D3B0:  VADD.F32        S4, S14, S4
59D3B4:  VADD.F32        S6, S1, S6
59D3B8:  VSTR            S2, [R5]
59D3BC:  VSTR            S4, [R5,#4]
59D3C0:  VSTR            S6, [R5,#8]
59D3C4:  VSTR            S8, [R5,#0xC]
59D3C8:  VSTR            S0, [R5,#0x10]
59D3CC:  VSTR            S10, [R5,#0x14]
59D3D0:  BLX.W           atan2f
59D3D4:  STR             R0, [R5,#0x24]
59D3D6:  ADDS            R4, #0x44 ; 'D'
59D3D8:  CMP.W           R4, #0x198
59D3DC:  BNE.W           loc_59D2DA
59D3E0:  ADD             SP, SP, #0x38 ; '8'
59D3E2:  VPOP            {D8-D13}
59D3E6:  ADD             SP, SP, #4
59D3E8:  POP.W           {R8-R11}
59D3EC:  POP             {R4-R7,PC}
