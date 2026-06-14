; =========================================================
; Game Engine Function: _ZN7CEntity22ProcessLightsForEntityEv
; Address            : 0x5A4110 - 0x5A4DC2
; =========================================================

5A4110:  PUSH            {R4-R7,LR}
5A4112:  ADD             R7, SP, #0xC
5A4114:  PUSH.W          {R8-R11}
5A4118:  SUB             SP, SP, #4
5A411A:  VPUSH           {D8-D15}
5A411E:  SUB             SP, SP, #0xF0
5A4120:  MOV             R9, R0
5A4122:  LDR.W           R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x5A4132)
5A4126:  VLDR            S2, =60.0
5A412A:  VMOV.F32        S16, #1.0
5A412E:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
5A4130:  LDR.W           R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x5A413A)
5A4134:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
5A4136:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
5A4138:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
5A413A:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
5A413C:  VMOV            S0, R0
5A4140:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x5A414C)
5A4144:  VCVT.F32.U32    S0, S0
5A4148:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
5A414A:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
5A414C:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
5A414E:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
5A4150:  VDIV.F32        S0, S0, S2
5A4154:  RSB.W           R0, R0, R0,LSL#4
5A4158:  ADD.W           R0, R1, R0,LSL#2
5A415C:  VMOV            S4, R0
5A4160:  VCVT.F32.S32    S4, S4
5A4164:  VADD.F32        S0, S0, S4
5A4168:  VLDR            S4, =360.0
5A416C:  VCMPE.F32       S0, S4
5A4170:  VMRS            APSR_nzcv, FPSCR
5A4174:  BLT             loc_5A41C4
5A4176:  VLDR            S4, =420.0
5A417A:  VCMPE.F32       S0, S4
5A417E:  VMRS            APSR_nzcv, FPSCR
5A4182:  BGE             loc_5A418E
5A4184:  VSUB.F32        S0, S4, S0
5A4188:  VDIV.F32        S16, S0, S2
5A418C:  B               loc_5A41C4
5A418E:  VLDR            S2, =1200.0
5A4192:  VCMPE.F32       S0, S2
5A4196:  VMRS            APSR_nzcv, FPSCR
5A419A:  BGE             loc_5A41A2
5A419C:  VLDR            S16, =0.0
5A41A0:  B               loc_5A41C4
5A41A2:  VLDR            S2, =1260.0
5A41A6:  VCMPE.F32       S0, S2
5A41AA:  VMRS            APSR_nzcv, FPSCR
5A41AE:  BGE             loc_5A41C4
5A41B0:  VSUB.F32        S0, S2, S0
5A41B4:  VLDR            S2, =-60.0
5A41B8:  VDIV.F32        S0, S0, S2
5A41BC:  VMOV.F32        S2, #1.0
5A41C0:  VADD.F32        S16, S0, S2
5A41C4:  LDR.W           R0, [R9,#0x1C]
5A41C8:  AND.W           R0, R0, #0x280
5A41CC:  TEQ.W           R0, #0x80
5A41D0:  BNE.W           loc_5A4DB4
5A41D4:  LDRB.W          R0, [R9,#0x3A]
5A41D8:  AND.W           R0, R0, #7
5A41DC:  CMP             R0, #2
5A41DE:  BNE             loc_5A41EC
5A41E0:  LDRB.W          R0, [R9,#0x47]
5A41E4:  LSLS            R0, R0, #0x1A
5A41E6:  BPL             loc_5A4206
5A41E8:  B.W             loc_5A4DB4
5A41EC:  LDR.W           R0, [R9,#0x14]
5A41F0:  CBZ             R0, loc_5A4206
5A41F2:  VLDR            S0, =0.96
5A41F6:  VLDR            S2, [R0,#0x28]
5A41FA:  VCMPE.F32       S2, S0
5A41FE:  VMRS            APSR_nzcv, FPSCR
5A4202:  BLT.W           loc_5A4DB4
5A4206:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5A4212)
5A420A:  LDRSH.W         R1, [R9,#0x26]
5A420E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5A4210:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5A4212:  LDR.W           R11, [R0,R1,LSL#2]
5A4216:  LDRB.W          R0, [R11,#0x23]
5A421A:  CMP             R0, #0
5A421C:  BEQ.W           loc_5A4DB4
5A4220:  ADD.W           R0, R9, #0x21 ; '!'
5A4224:  STR             R0, [SP,#0x150+var_B0]
5A4226:  ADD             R0, SP, #0x150+var_80
5A4228:  LDR.W           R1, =(_ZN8CWeather8SunGlareE_ptr - 0x5A4236)
5A422C:  ADDS            R0, #4
5A422E:  STR             R0, [SP,#0x150+var_C8]
5A4230:  ADD             R0, SP, #0x150+var_90
5A4232:  ADD             R1, PC; _ZN8CWeather8SunGlareE_ptr
5A4234:  ORR.W           R0, R0, #4
5A4238:  STR             R0, [SP,#0x150+var_CC]
5A423A:  LDR.W           R0, =(_ZN8CWeather8SunGlareE_ptr - 0x5A424E)
5A423E:  VMOV.F32        S25, #1.0
5A4242:  VMOV.F32        S22, #2.0
5A4246:  ADD.W           R10, R9, #4
5A424A:  ADD             R0, PC; _ZN8CWeather8SunGlareE_ptr
5A424C:  VMOV.F32        S26, #3.0
5A4250:  VMOV.F32        S28, #0.5
5A4254:  VLDR            S24, =-0.0
5A4258:  LDR             R0, [R0]; CWeather::SunGlare ...
5A425A:  VMOV.F32        S30, #10.0
5A425E:  STR             R0, [SP,#0x150+var_9C]
5A4260:  VMOV.F32        S29, #20.0
5A4264:  LDR.W           R0, =(TheCamera_ptr - 0x5A4276)
5A4268:  MOVS            R6, #0
5A426A:  VSUB.F32        S20, S25, S16
5A426E:  VLDR            S17, =1.9
5A4272:  ADD             R0, PC; TheCamera_ptr
5A4274:  VLDR            S19, =255.0
5A4278:  VLDR            S21, =0.0039062
5A427C:  LDR             R0, [R0]; TheCamera
5A427E:  STR             R0, [SP,#0x150+var_A4]
5A4280:  LDR.W           R0, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x5A4288)
5A4284:  ADD             R0, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
5A4286:  LDR             R0, [R0]; CTimeCycle::m_CurrentStoredValue ...
5A4288:  STR             R0, [SP,#0x150+var_A8]
5A428A:  LDR.W           R0, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x5A4292)
5A428E:  ADD             R0, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
5A4290:  LDR             R0, [R0]; CTimeCycle::m_VectorToSun ...
5A4292:  STR             R0, [SP,#0x150+var_AC]
5A4294:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5A429C)
5A4298:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5A429A:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5A429C:  STR             R0, [SP,#0x150+var_B4]
5A429E:  LDR             R0, [R1]; CWeather::SunGlare ...
5A42A0:  STR             R0, [SP,#0x150+var_B8]
5A42A2:  LDR.W           R0, =(gpCoronaTexture_ptr - 0x5A42AA)
5A42A6:  ADD             R0, PC; gpCoronaTexture_ptr
5A42A8:  LDR             R0, [R0]; gpCoronaTexture
5A42AA:  STR             R0, [SP,#0x150+var_BC]
5A42AC:  LDR.W           R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x5A42B4)
5A42B0:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
5A42B2:  LDR             R0, [R0]; CWeather::WetRoads ...
5A42B4:  STR             R0, [SP,#0x150+var_A0]
5A42B6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A42BE)
5A42BA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A42BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A42BE:  STR             R0, [SP,#0x150+var_F8]
5A42C0:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5A42C8)
5A42C4:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5A42C6:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5A42C8:  STR             R0, [SP,#0x150+var_C0]
5A42CA:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5A42D2)
5A42CE:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5A42D0:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5A42D2:  STR             R0, [SP,#0x150+var_DC]
5A42D4:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5A42DC)
5A42D8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5A42DA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5A42DC:  STR             R0, [SP,#0x150+var_E0]
5A42DE:  LDR.W           R0, =(TheCamera_ptr - 0x5A42E6)
5A42E2:  ADD             R0, PC; TheCamera_ptr
5A42E4:  LDR             R0, [R0]; TheCamera
5A42E6:  STR             R0, [SP,#0x150+var_D0]
5A42E8:  LDR.W           R0, =(TheCamera_ptr - 0x5A42F0)
5A42EC:  ADD             R0, PC; TheCamera_ptr
5A42EE:  LDR             R0, [R0]; TheCamera
5A42F0:  STR             R0, [SP,#0x150+var_D8]
5A42F2:  LDR.W           R0, =(_ZN8CCoronas8aCoronasE_ptr - 0x5A42FA)
5A42F6:  ADD             R0, PC; _ZN8CCoronas8aCoronasE_ptr
5A42F8:  LDR             R0, [R0]; CCoronas::aCoronas ...
5A42FA:  STR             R0, [SP,#0x150+var_E4]
5A42FC:  LDR.W           R0, =(_ZN8CCoronas8aCoronasE_ptr - 0x5A4304)
5A4300:  ADD             R0, PC; _ZN8CCoronas8aCoronasE_ptr
5A4302:  LDR             R0, [R0]; CCoronas::aCoronas ...
5A4304:  STR             R0, [SP,#0x150+var_FC]
5A4306:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A430E)
5A430A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A430C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A430E:  STR             R0, [SP,#0x150+var_D4]
5A4310:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A4318)
5A4314:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A4316:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A4318:  STR             R0, [SP,#0x150+var_E8]
5A431A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A4322)
5A431E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A4320:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A4322:  STR             R0, [SP,#0x150+var_EC]
5A4324:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A432C)
5A4328:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A432A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A432C:  STR             R0, [SP,#0x150+var_F0]
5A432E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A4336)
5A4332:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A4334:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A4336:  STR             R0, [SP,#0x150+var_100]
5A4338:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A4340)
5A433C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A433E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A4340:  STR             R0, [SP,#0x150+var_108]
5A4342:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A434A)
5A4346:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A4348:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A434A:  STR             R0, [SP,#0x150+var_104]
5A434C:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x5A4354)
5A4350:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5A4352:  LDR             R0, [R0]; CWeather::Rain ...
5A4354:  STR             R0, [SP,#0x150+var_F4]
5A4356:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A435E)
5A435A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A435C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5A435E:  STR             R0, [SP,#0x150+var_C4]
5A4360:  STRD.W          R10, R9, [SP,#0x150+var_98]
5A4364:  B               loc_5A45A4
5A4366:  LDRH.W          R0, [R8,#0x24]
5A436A:  LSLS            R1, R0, #0x18
5A436C:  BPL             loc_5A4392
5A436E:  BLX.W           rand
5A4372:  AND.W           R0, R0, #0x1F
5A4376:  VLDR            S2, =-0.012
5A437A:  VMOV            S0, R0
5A437E:  VCVT.F32.S32    S0, S0
5A4382:  LDRH.W          R0, [R8,#0x24]
5A4386:  VMUL.F32        S0, S0, S2
5A438A:  VADD.F32        S0, S0, S25
5A438E:  VMUL.F32        S27, S27, S0
5A4392:  LSLS            R1, R0, #0x16
5A4394:  BMI             loc_5A43D4
5A4396:  VMOV.F32        S0, S27
5A439A:  LSLS            R1, R0, #0x13
5A439C:  BMI             loc_5A43EA
5A439E:  B               loc_5A4402
5A43A0:  DCFS 60.0
5A43A4:  DCFS 360.0
5A43A8:  DCFS 420.0
5A43AC:  DCFS 1200.0
5A43B0:  DCFS 0.0
5A43B4:  DCFS 1260.0
5A43B8:  DCFS -60.0
5A43BC:  DCFS 0.96
5A43C0:  DCFS -0.0
5A43C4:  DCFS 1.9
5A43C8:  DCFS 255.0
5A43CC:  DCFS 0.0039062
5A43D0:  DCFS -0.012
5A43D4:  LDR             R1, [SP,#0x150+var_E0]
5A43D6:  VLDR            S0, =0.0
5A43DA:  LDR             R1, [R1]
5A43DC:  ADD             R1, R5
5A43DE:  LSLS            R1, R1, #0x1E
5A43E0:  IT EQ
5A43E2:  VMOVEQ.F32      S0, S27
5A43E6:  LSLS            R1, R0, #0x13
5A43E8:  BPL             loc_5A4402
5A43EA:  LDR             R1, [SP,#0x150+var_DC]
5A43EC:  LDR             R1, [R1]
5A43EE:  ADD             R1, R5
5A43F0:  ANDS.W          R1, R1, #0x3F ; '?'
5A43F4:  BEQ             loc_5A4402
5A43F6:  CMP             R1, #1
5A43F8:  ITE NE
5A43FA:  VLDRNE          S0, =0.0
5A43FE:  VMULEQ.F32      S0, S0, S28
5A4402:  LDR             R1, [SP,#0x150+var_C0]
5A4404:  VMUL.F32        S12, S0, S17
5A4408:  LDRH.W          R5, [R9,#0x26]
5A440C:  VMUL.F32        S8, S18, S19
5A4410:  LDRB.W          R3, [R8,#0x11]
5A4414:  VLDR            S2, [R1,#0x44]
5A4418:  CMP.W           R5, #0x1D0
5A441C:  LDRB.W          R1, [R8,#0x10]
5A4420:  VDIV.F32        S2, S2, S30
5A4424:  LDRB.W          R4, [R8,#0x12]
5A4428:  LDR.W           R12, [R8,#0x30]
5A442C:  LDRB.W          R2, [R8,#0x28]
5A4430:  VMOV            S1, R1
5A4434:  VLDR            S4, [R8,#0x14]
5A4438:  VMOV            S10, R3
5A443C:  VLDR            S6, [R8,#0x1C]
5A4440:  VMOV            S14, R4
5A4444:  LDRB.W          R3, [R8,#0x27]
5A4448:  IT EQ
5A444A:  VMOVEQ.F32      S0, S12
5A444E:  UBFX.W          R1, R0, #0xA, #1
5A4452:  VCVT.F32.U32    S12, S1
5A4456:  MOV.W           R4, #0
5A445A:  VMOV.F32        S1, S25
5A445E:  IT EQ
5A4460:  VMOVEQ.F32      S1, S22
5A4464:  STR             R1, [SP,#0x150+var_110]; int
5A4466:  UBFX.W          R1, R0, #8, #1
5A446A:  VCVT.F32.U32    S14, S14
5A446E:  STR             R1, [SP,#0x150+var_114]; int
5A4470:  MOVS            R1, #0x41700000
5A4476:  VMUL.F32        S27, S0, S2
5A447A:  STR             R1, [SP,#0x150+var_118]; float
5A447C:  MOV             R1, #0x3F4CCCCD
5A4484:  VCVT.F32.U32    S0, S10
5A4488:  STR             R1, [SP,#0x150+var_120]; float
5A448A:  UBFX.W          R1, R0, #4, #1
5A448E:  STR             R1, [SP,#0x150+var_124]; int
5A4490:  VCVT.U32.F32    S2, S8
5A4494:  AND.W           R0, R0, #1
5A4498:  STR             R4, [SP,#0x150+var_11C]; int
5A449A:  STR             R4, [SP,#0x150+var_128]; float
5A449C:  VMUL.F32        S6, S1, S6
5A44A0:  STR             R4, [SP,#0x150+var_12C]; int
5A44A2:  VMUL.F32        S8, S27, S14
5A44A6:  STRD.W          R3, R0, [SP,#0x150+var_134]; int
5A44AA:  ADD             R0, SP, #0x150+var_90
5A44AC:  STRD.W          R12, R2, [SP,#0x150+var_13C]; int
5A44B0:  VMUL.F32        S10, S27, S12
5A44B4:  VSTR            S4, [SP,#0x150+var_140]
5A44B8:  VMUL.F32        S0, S27, S0
5A44BC:  STR             R0, [SP,#0x150+var_148]; int
5A44BE:  VMOV            R0, S2
5A44C2:  MOVS            R1, #0; this
5A44C4:  VCVT.U32.F32    S2, S8
5A44C8:  STR             R0, [SP,#0x150+var_14C]; int
5A44CA:  VCVT.U32.F32    S4, S10
5A44CE:  VCVT.U32.F32    S0, S0
5A44D2:  VSTR            S6, [SP,#0x150+var_144]
5A44D6:  VMOV            R0, S2
5A44DA:  VMOV            R2, S4; int
5A44DE:  VMOV            R3, S0; int
5A44E2:  STR             R0, [SP,#0x150+var_150]; int
5A44E4:  ADD.W           R0, R6, R9; int
5A44E8:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5A44EC:  VLDR            S0, [R8,#0x18]
5A44F0:  ADD.W           R5, R8, #0x18
5A44F4:  VCMP.F32        S0, #0.0
5A44F8:  VMRS            APSR_nzcv, FPSCR
5A44FC:  BEQ.W           loc_5A4CC6
5A4500:  LDRB.W          R0, [R8,#0x10]
5A4504:  LDRB.W          R4, [R8,#0x11]
5A4508:  ORRS.W          R1, R0, R4
5A450C:  BNE             loc_5A4516
5A450E:  LDRB.W          R1, [R8,#0x12]
5A4512:  MOVS            R4, #0
5A4514:  CBZ             R1, loc_5A4580
5A4516:  VMUL.F32        S2, S18, S27
5A451A:  LDRB.W          R1, [R8,#0x12]
5A451E:  VMOV            S6, R4
5A4522:  ADD             R3, SP, #0x150+var_90
5A4524:  VMOV            S8, R0
5A4528:  MOVS            R5, #0
5A452A:  VMOV            S4, R1
5A452E:  MOVS            R4, #1
5A4530:  VCVT.F32.U32    S4, S4
5A4534:  VCVT.F32.U32    S6, S6
5A4538:  VMUL.F32        S2, S2, S21
5A453C:  VCVT.F32.U32    S8, S8
5A4540:  LDM             R3, {R1-R3}
5A4542:  LDRH.W          R0, [R8,#0x24]
5A4546:  STR             R5, [SP,#0x150+var_12C]
5A4548:  STR             R4, [SP,#0x150+var_130]
5A454A:  UBFX.W          R0, R0, #1, #2
5A454E:  STR             R0, [SP,#0x150+var_134]
5A4550:  VMUL.F32        S4, S2, S4
5A4554:  MOVS            R0, #0
5A4556:  VMUL.F32        S6, S2, S6
5A455A:  VSTR            S0, [SP,#0x150+var_144]
5A455E:  VMUL.F32        S2, S2, S8
5A4562:  STRD.W          R5, R5, [SP,#0x150+var_150]
5A4566:  STR             R5, [SP,#0x150+var_148]
5A4568:  VSTR            S4, [SP,#0x150+var_138]
5A456C:  VSTR            S6, [SP,#0x150+var_13C]
5A4570:  VSTR            S2, [SP,#0x150+var_140]
5A4574:  BLX.W           j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5A4578:  LDR.W           R10, [SP,#0x150+var_98]
5A457C:  B.W             loc_5A4DA8
5A4580:  ADD             R3, SP, #0x150+var_90
5A4582:  MOVS            R0, #1
5A4584:  LDM             R3, {R1-R3}
5A4586:  STRD.W          R4, R4, [SP,#0x150+var_140]
5A458A:  STRD.W          R4, R4, [SP,#0x150+var_138]
5A458E:  STRD.W          R0, R4, [SP,#0x150+var_130]
5A4592:  MOVS            R0, #2
5A4594:  VSTR            S0, [SP,#0x150+var_144]
5A4598:  STRD.W          R4, R4, [SP,#0x150+var_150]
5A459C:  STR             R4, [SP,#0x150+var_148]
5A459E:  BLX.W           j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5A45A2:  B               loc_5A4CC6
5A45A4:  MOV             R0, R11; this
5A45A6:  MOV             R1, R6; int
5A45A8:  BLX.W           j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
5A45AC:  MOV             R8, R0
5A45AE:  LDRB.W          R0, [R8,#0xC]
5A45B2:  CMP             R0, #4
5A45B4:  BEQ             loc_5A45EA
5A45B6:  CMP             R0, #0
5A45B8:  BNE.W           loc_5A4DA8
5A45BC:  LDR.W           R1, [R9,#0x14]
5A45C0:  LDRH.W          R4, [R9,#0x24]
5A45C4:  CBZ             R1, loc_5A462C
5A45C6:  LDR.W           R0, [R8,#8]
5A45CA:  ADD             R2, SP, #0x150+var_80
5A45CC:  VLDR            D16, [R8]
5A45D0:  STR             R0, [SP,#0x150+var_78]
5A45D2:  ADD             R0, SP, #0x150+var_70
5A45D4:  VSTR            D16, [SP,#0x150+var_80]
5A45D8:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5A45DC:  VLDR            D16, [SP,#0x150+var_70]
5A45E0:  LDR             R0, [SP,#0x150+var_68]
5A45E2:  STR             R0, [SP,#0x150+var_88]
5A45E4:  VSTR            D16, [SP,#0x150+var_90]
5A45E8:  B               loc_5A4636
5A45EA:  LDR             R0, [SP,#0x150+var_9C]
5A45EC:  VLDR            S0, [R0]
5A45F0:  VCMPE.F32       S0, #0.0
5A45F4:  VMRS            APSR_nzcv, FPSCR
5A45F8:  BLT.W           loc_5A4DA8
5A45FC:  LDR.W           R1, [R9,#0x14]
5A4600:  CMP             R1, #0
5A4602:  BEQ.W           loc_5A47A8
5A4606:  ADD             R4, SP, #0x150+var_70
5A4608:  VLDR            D16, [R8]
5A460C:  LDR.W           R0, [R8,#8]
5A4610:  ADD             R2, SP, #0x150+var_80
5A4612:  STR             R0, [SP,#0x150+var_78]
5A4614:  MOV             R0, R4
5A4616:  VSTR            D16, [SP,#0x150+var_80]
5A461A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5A461E:  VLDR            D16, [SP,#0x150+var_70]
5A4622:  LDR             R0, [SP,#0x150+var_68]
5A4624:  STR             R0, [SP,#0x150+var_88]
5A4626:  VSTR            D16, [SP,#0x150+var_90]
5A462A:  B               loc_5A47B4
5A462C:  ADD             R0, SP, #0x150+var_90
5A462E:  MOV             R1, R10
5A4630:  MOV             R2, R8
5A4632:  BLX.W           j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
5A4636:  LDRH.W          R0, [R8,#0x24]
5A463A:  AND.W           R1, R0, #0x60 ; '`'
5A463E:  CMP             R1, #0x60 ; '`'
5A4640:  BNE             loc_5A464A
5A4642:  MOVS            R1, #1
5A4644:  VMOV.F32        S18, S25
5A4648:  B               loc_5A4688
5A464A:  VCMPE.F32       S16, S25
5A464E:  VMRS            APSR_nzcv, FPSCR
5A4652:  BGE             loc_5A4662
5A4654:  ANDS.W          R1, R0, #0x20 ; ' '
5A4658:  BEQ             loc_5A4662
5A465A:  MOVS            R1, #1
5A465C:  VMOV.F32        S18, S20
5A4660:  B               loc_5A4688
5A4662:  VCMPE.F32       S16, #0.0
5A4666:  AND.W           R0, R0, #0x40 ; '@'
5A466A:  VMRS            APSR_nzcv, FPSCR
5A466E:  MOV.W           R1, #0
5A4672:  VMOV.F32        S18, S25
5A4676:  IT GT
5A4678:  MOVGT           R1, #1
5A467A:  CMP             R0, #0
5A467C:  IT NE
5A467E:  MOVNE           R0, #1
5A4680:  ANDS            R1, R0
5A4682:  IT NE
5A4684:  VMOVNE.F32      S18, S16
5A4688:  LDR             R2, [SP,#0x150+var_A0]
5A468A:  MOVS            R3, #0
5A468C:  LDRB.W          R0, [R8,#0x26]; this
5A4690:  VLDR            S0, [R2]
5A4694:  MOVS            R2, #0
5A4696:  VCMPE.F32       S0, S28
5A469A:  VMRS            APSR_nzcv, FPSCR
5A469E:  IT GT
5A46A0:  MOVGT           R2, #1
5A46A2:  CMP             R0, #2
5A46A4:  IT EQ
5A46A6:  MOVEQ           R3, #1
5A46A8:  CBNZ            R1, loc_5A46B2
5A46AA:  AND.W           R1, R3, R2
5A46AE:  CMP             R1, #1
5A46B0:  BNE             def_5A46D4; jumptable 005A46D4 default case, case 7
5A46B2:  CMP             R0, #0xD; switch 14 cases
5A46B4:  BHI             def_5A46D4; jumptable 005A46D4 default case, case 7
5A46B6:  AND.W           R1, R6, #7
5A46BA:  ADR.W           R2, dword_5A4DD4
5A46BE:  MOV.W           R9, #1
5A46C2:  VMOV.F32        S27, S25
5A46C6:  LDRH.W          R1, [R2,R1,LSL#1]
5A46CA:  MOV.W           R10, #0
5A46CE:  EOR.W           R5, R1, R4
5A46D2:  MOVS            R4, #0
5A46D4:  TBH.W           [PC,R0,LSL#1]; switch jump
5A46D8:  DCW 0x206; jump table for switch statement
5A46DA:  DCW 0x169
5A46DC:  DCW 0x169
5A46DE:  DCW 0x185
5A46E0:  DCW 0x193
5A46E2:  DCW 0x1A1
5A46E4:  DCW 0x1B1
5A46E6:  DCW 0xE
5A46E8:  DCW 0x1BD
5A46EA:  DCW 0x1CD
5A46EC:  DCW 0x1DE
5A46EE:  DCW 0x11
5A46F0:  DCW 0x11
5A46F2:  DCW 0x11
5A46F4:  BLX.W           j__ZN10CGameLogic17LaRiotsActiveHereEv; jumptable 005A46D4 default case, case 7
5A46F8:  B               loc_5A4CC0
5A46FA:  LDR             R2, [SP,#0x150+var_C4]; jumptable 005A46D4 cases 11-13
5A46FC:  MOVW            R3, #0xD05
5A4700:  LDR             R1, [SP,#0x150+var_94]
5A4702:  LDR             R2, [R2]
5A4704:  LDR             R1, [R1,#0x14]
5A4706:  SMLABB.W        R0, R0, R3, R2
5A470A:  LDR             R2, [SP,#0x150+var_98]
5A470C:  CMP             R1, #0
5A470E:  IT NE
5A4710:  ADDNE.W         R2, R1, #0x30 ; '0'
5A4714:  MOVW            R1, #0x8F37
5A4718:  VLDR            S0, [R2]
5A471C:  SUBS            R0, R0, R1
5A471E:  VLDR            S2, [R2,#4]
5A4722:  VMUL.F32        S0, S0, S29
5A4726:  MOVW            R1, #0x8BAD
5A472A:  VMOV            S4, R0
5A472E:  MOVT            R1, #0x68DB
5A4732:  VMUL.F32        S2, S2, S30
5A4736:  MOV             R3, R1
5A4738:  VCVT.F32.S32    S4, S4
5A473C:  VADD.F32        S0, S0, S4
5A4740:  VCVT.S32.F32    S0, S0
5A4744:  VCVT.F32.S32    S0, S0
5A4748:  VADD.F32        S0, S2, S0
5A474C:  VCVT.S32.F32    S0, S0
5A4750:  VMOV            R0, S0
5A4754:  SMMUL.W         R1, R0, R3
5A4758:  ASRS            R2, R1, #0xC
5A475A:  ADD.W           R1, R2, R1,LSR#31
5A475E:  MOVW            R2, #0x2710
5A4762:  MLS.W           R1, R1, R2, R0
5A4766:  ADD.W           R0, R1, R1,LSL#3
5A476A:  SMMUL.W         R0, R0, R3
5A476E:  ASRS            R2, R0, #0xC
5A4770:  ADD.W           R0, R2, R0,LSR#31
5A4774:  MOV             R2, #0xFFFFFBA9
5A477C:  MLA.W           R1, R0, R2, R1
5A4780:  VMOV            S0, R1
5A4784:  SUBS            R1, R0, #1
5A4786:  CMP             R1, #2
5A4788:  VCVT.F32.S32    S0, S0
5A478C:  BCC.W           loc_5A49DA
5A4790:  VLDR            S2, =1111.0
5A4794:  CMP             R0, #0
5A4796:  VDIV.F32        S27, S0, S2
5A479A:  BEQ.W           loc_5A4AAA
5A479E:  CMP             R0, #3
5A47A0:  BNE             def_5A46D4; jumptable 005A46D4 default case, case 7
5A47A2:  VSUB.F32        S27, S25, S27
5A47A6:  B               loc_5A4AAA
5A47A8:  ADD             R0, SP, #0x150+var_90
5A47AA:  MOV             R1, R10
5A47AC:  MOV             R2, R8
5A47AE:  BLX.W           j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
5A47B2:  ADD             R4, SP, #0x150+var_70
5A47B4:  LDR.W           R0, [R9,#0x14]
5A47B8:  MOV             R1, R10
5A47BA:  VLDR            S0, [SP,#0x150+var_90]
5A47BE:  CMP             R0, #0
5A47C0:  VLDR            S2, [SP,#0x150+var_90+4]
5A47C4:  VLDR            S4, [SP,#0x150+var_88]
5A47C8:  IT NE
5A47CA:  ADDNE.W         R1, R0, #0x30 ; '0'
5A47CE:  VLDR            S6, [R1]
5A47D2:  MOV             R0, R4; this
5A47D4:  VLDR            S8, [R1,#4]
5A47D8:  VLDR            S10, [R1,#8]
5A47DC:  VSUB.F32        S0, S0, S6
5A47E0:  VSUB.F32        S2, S2, S8
5A47E4:  VSUB.F32        S4, S4, S10
5A47E8:  VSTR            S0, [SP,#0x150+var_70]
5A47EC:  VSTR            S2, [SP,#0x150+var_70+4]
5A47F0:  VSTR            S4, [SP,#0x150+var_68]
5A47F4:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A47F8:  LDR             R2, [SP,#0x150+var_A4]
5A47FA:  VLDR            S0, [SP,#0x150+var_90]
5A47FE:  VLDR            S2, [SP,#0x150+var_90+4]
5A4802:  LDR             R0, [R2,#0x14]
5A4804:  VLDR            S4, [SP,#0x150+var_88]
5A4808:  ADD.W           R1, R0, #0x30 ; '0'
5A480C:  CMP             R0, #0
5A480E:  IT EQ
5A4810:  ADDEQ           R1, R2, #4
5A4812:  MOV             R0, R4; this
5A4814:  VLDR            S6, [R1]
5A4818:  VLDR            S8, [R1,#4]
5A481C:  VSUB.F32        S0, S6, S0
5A4820:  VLDR            S10, [R1,#8]
5A4824:  VSUB.F32        S2, S8, S2
5A4828:  VSUB.F32        S4, S10, S4
5A482C:  VMUL.F32        S8, S0, S0
5A4830:  VMUL.F32        S6, S2, S2
5A4834:  VMUL.F32        S10, S4, S4
5A4838:  VADD.F32        S6, S8, S6
5A483C:  VADD.F32        S6, S6, S10
5A4840:  VSQRT.F32       S27, S6
5A4844:  VDIV.F32        S6, S22, S27
5A4848:  VMUL.F32        S18, S0, S6
5A484C:  VLDR            S0, [SP,#0x150+var_70]
5A4850:  VMUL.F32        S23, S2, S6
5A4854:  VLDR            S2, [SP,#0x150+var_70+4]
5A4858:  VMUL.F32        S31, S4, S6
5A485C:  VLDR            S4, [SP,#0x150+var_68]
5A4860:  VADD.F32        S0, S0, S18
5A4864:  VADD.F32        S2, S2, S23
5A4868:  VADD.F32        S4, S4, S31
5A486C:  VSTR            S0, [SP,#0x150+var_70]
5A4870:  VSTR            S2, [SP,#0x150+var_70+4]
5A4874:  VSTR            S4, [SP,#0x150+var_68]
5A4878:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A487C:  LDR             R0, [SP,#0x150+var_A8]
5A487E:  LDR             R1, [SP,#0x150+var_AC]
5A4880:  VLDR            S0, [SP,#0x150+var_70]
5A4884:  LDR             R0, [R0]
5A4886:  VLDR            S2, [SP,#0x150+var_70+4]
5A488A:  VLDR            S4, [SP,#0x150+var_68]
5A488E:  ADD.W           R0, R0, R0,LSL#1
5A4892:  ADD.W           R0, R1, R0,LSL#2
5A4896:  VLDR            S6, [R0]
5A489A:  VLDR            S8, [R0,#4]
5A489E:  VMUL.F32        S0, S0, S6
5A48A2:  VLDR            S10, [R0,#8]
5A48A6:  VMUL.F32        S2, S2, S8
5A48AA:  VMUL.F32        S4, S4, S10
5A48AE:  VADD.F32        S0, S0, S2
5A48B2:  VADD.F32        S0, S0, S4
5A48B6:  VCMPE.F32       S0, S24
5A48BA:  VMRS            APSR_nzcv, FPSCR
5A48BE:  BGE.W           loc_5A4DA8
5A48C2:  VNEG.F32        S0, S0
5A48C6:  LDR             R1, [SP,#0x150+var_B4]
5A48C8:  LDR             R2, [SP,#0x150+var_B8]
5A48CA:  VSQRT.F32       S1, S27
5A48CE:  LDRH            R0, [R1,#0x30]
5A48D0:  ADD.W           R0, R0, #0x1FE
5A48D4:  VSQRT.F32       S0, S0
5A48D8:  VMOV            S4, R0
5A48DC:  VLDR            S2, [R2]
5A48E0:  MOVS            R2, #0
5A48E2:  VCVT.F32.S32    S4, S4
5A48E6:  LDRH            R0, [R1,#0x34]
5A48E8:  LDRH            R1, [R1,#0x32]
5A48EA:  VMUL.F32        S0, S0, S2
5A48EE:  ADD.W           R0, R0, #0x1FE
5A48F2:  VLDR            S6, [SP,#0x150+var_90]
5A48F6:  VLDR            S8, [SP,#0x150+var_90+4]
5A48FA:  VMUL.F32        S2, S2, S28
5A48FE:  VMOV            S12, R0
5A4902:  ADD.W           R0, R1, #0x1FE
5A4906:  VLDR            S10, [SP,#0x150+var_88]
5A490A:  VADD.F32        S8, S23, S8
5A490E:  VCVT.F32.S32    S12, S12
5A4912:  MOV.W           R1, #0x3FC00000
5A4916:  VMOV            S14, R0
5A491A:  MOVT            R2, #0x4170
5A491E:  VMUL.F32        S4, S0, S4
5A4922:  VCVT.F32.S32    S14, S14
5A4926:  LDR             R0, [SP,#0x150+var_BC]
5A4928:  VADD.F32        S6, S18, S6
5A492C:  STR             R1, [SP,#0x150+var_120]; float
5A492E:  VADD.F32        S10, S31, S10
5A4932:  MOVS            R1, #0
5A4934:  VMUL.F32        S2, S1, S2
5A4938:  LDR             R0, [R0]
5A493A:  VMUL.F32        S12, S0, S12
5A493E:  STR             R1, [SP,#0x150+var_11C]; int
5A4940:  VDIV.F32        S4, S4, S26
5A4944:  VMUL.F32        S0, S0, S14
5A4948:  VSTR            S6, [SP,#0x150+var_90]
5A494C:  VDIV.F32        S12, S12, S26
5A4950:  VDIV.F32        S0, S0, S26
5A4954:  VSTR            S8, [SP,#0x150+var_90+4]
5A4958:  VSTR            S10, [SP,#0x150+var_88]
5A495C:  STRD.W          R2, R1, [SP,#0x150+var_118]; float
5A4960:  MOVS            R2, #0x42F00000
5A4966:  STR             R1, [SP,#0x150+var_110]; int
5A4968:  STRD.W          R2, R0, [SP,#0x150+var_140]; float
5A496C:  ADD             R0, SP, #0x150+var_90
5A496E:  STRD.W          R1, R1, [SP,#0x150+var_138]; int
5A4972:  STRD.W          R1, R1, [SP,#0x150+var_130]; int
5A4976:  STRD.W          R1, R1, [SP,#0x150+var_128]; float
5A497A:  MOVS            R1, #0; this
5A497C:  STR             R0, [SP,#0x150+var_148]; int
5A497E:  MOVS            R0, #0xFF
5A4980:  STR             R0, [SP,#0x150+var_14C]; int
5A4982:  VCVT.U32.F32    S4, S4
5A4986:  VSTR            S2, [SP,#0x150+var_144]
5A498A:  VCVT.U32.F32    S2, S12
5A498E:  VCVT.U32.F32    S0, S0
5A4992:  VMOV            R2, S4; int
5A4996:  VMOV            R0, S2
5A499A:  VMOV            R3, S0; int
5A499E:  STR             R0, [SP,#0x150+var_150]; int
5A49A0:  LDR             R0, [SP,#0x150+var_B0]
5A49A2:  ADD             R0, R6; int
5A49A4:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5A49A8:  B               loc_5A4DA8
5A49AA:  LDR             R0, [SP,#0x150+var_D4]; jumptable 005A46D4 cases 1,2
5A49AC:  UXTH            R1, R5
5A49AE:  MOVS            R4, #0
5A49B0:  LDR             R0, [R0]
5A49B2:  EOR.W           R2, R0, R1
5A49B6:  EOR.W           R0, R1, R0,LSR#11
5A49BA:  AND.W           R2, R2, #0x60 ; '`'
5A49BE:  AND.W           R0, R0, #3
5A49C2:  ORRS.W          R9, R0, R2
5A49C6:  IT NE
5A49C8:  MOVNE.W         R9, #1
5A49CC:  CMP             R2, #0
5A49CE:  MOV.W           R10, #0
5A49D2:  IT EQ
5A49D4:  MOVEQ.W         R10, #1
5A49D8:  B               loc_5A4A34
5A49DA:  MOV.W           R9, #1
5A49DE:  MOVS            R4, #0
5A49E0:  B               loc_5A4ADC
5A49E2:  LDR             R0, [SP,#0x150+var_E8]; jumptable 005A46D4 case 3
5A49E4:  MOVS            R4, #0
5A49E6:  MOV.W           R10, #0
5A49EA:  LDR             R0, [R0]
5A49EC:  ADD.W           R0, R0, R6,LSL#7
5A49F0:  TST.W           R0, #0x200
5A49F4:  IT EQ
5A49F6:  MOVEQ           R4, #1
5A49F8:  UBFX.W          R9, R0, #9, #1
5A49FC:  B               loc_5A4A34
5A49FE:  LDR             R0, [SP,#0x150+var_EC]; jumptable 005A46D4 case 4
5A4A00:  MOVS            R4, #0
5A4A02:  MOV.W           R10, #0
5A4A06:  LDR             R0, [R0]
5A4A08:  ADD.W           R0, R0, R6,LSL#8
5A4A0C:  TST.W           R0, #0x400
5A4A10:  IT EQ
5A4A12:  MOVEQ           R4, #1
5A4A14:  UBFX.W          R9, R0, #0xA, #1
5A4A18:  B               loc_5A4A34
5A4A1A:  LDR             R0, [SP,#0x150+var_F0]; jumptable 005A46D4 case 5
5A4A1C:  MOVS            R4, #0
5A4A1E:  MOV.W           R10, #0
5A4A22:  LDR             R0, [R0]
5A4A24:  ADD.W           R0, R0, R6,LSL#9
5A4A28:  TST.W           R0, #0x800
5A4A2C:  IT EQ
5A4A2E:  MOVEQ           R4, #1
5A4A30:  UBFX.W          R9, R0, #0xB, #1
5A4A34:  VMOV.F32        S27, S25
5A4A38:  B               loc_5A4AE4; jumptable 005A46D4 case 0
5A4A3A:  UXTB            R0, R5; jumptable 005A46D4 case 6
5A4A3C:  MOVS            R4, #0
5A4A3E:  CMP             R0, #0x10
5A4A40:  BHI             loc_5A4AB2
5A4A42:  LDR             R1, [SP,#0x150+var_100]
5A4A44:  UXTH            R0, R5
5A4A46:  LDR             R1, [R1]
5A4A48:  EOR.W           R2, R1, R0,LSL#3
5A4A4C:  EOR.W           R0, R0, R1,LSR#11
5A4A50:  B               loc_5A49BA
5A4A52:  LDR             R1, [SP,#0x150+var_94]; jumptable 005A46D4 case 8
5A4A54:  MOVS            R4, #0
5A4A56:  LDRB.W          R0, [R1,#0x3A]
5A4A5A:  AND.W           R0, R0, #7
5A4A5E:  CMP             R0, #4
5A4A60:  MOV.W           R0, #0
5A4A64:  BNE             loc_5A4AC8
5A4A66:  LDRB.W          R0, [R1,#0x145]
5A4A6A:  LSLS            R0, R0, #0x1C
5A4A6C:  BMI             loc_5A4ABC
5A4A6E:  MOVS            R0, #0
5A4A70:  B               loc_5A4AC8
5A4A72:  BLX.W           j__ZN7CBridge22ShouldLightsBeFlashingEv; jumptable 005A46D4 case 9
5A4A76:  CMP             R0, #1
5A4A78:  BNE.W           def_5A46D4; jumptable 005A46D4 default case, case 7
5A4A7C:  LDR             R0, [SP,#0x150+var_104]
5A4A7E:  MOV.W           R9, #0
5A4A82:  MOVS            R4, #0
5A4A84:  LDR             R0, [R0]
5A4A86:  AND.W           R0, R0, #0x1FC
5A4A8A:  CMP             R0, #0x3C ; '<'
5A4A8C:  IT CC
5A4A8E:  MOVCC.W         R9, #1
5A4A92:  B               loc_5A4ADC
5A4A94:  LDR             R0, [SP,#0x150+var_F4]; jumptable 005A46D4 case 10
5A4A96:  VLDR            S0, =0.0001
5A4A9A:  VLDR            S27, [R0]
5A4A9E:  VCMPE.F32       S27, S0
5A4AA2:  VMRS            APSR_nzcv, FPSCR
5A4AA6:  BLE.W           def_5A46D4; jumptable 005A46D4 default case, case 7
5A4AAA:  MOV.W           R9, #1
5A4AAE:  MOVS            R4, #0
5A4AB0:  B               loc_5A4AE0
5A4AB2:  MOV.W           R9, #1
5A4AB6:  B               loc_5A4ADC
5A4AB8:  DCFS 1111.0
5A4ABC:  LDR             R0, [SP,#0x150+var_108]
5A4ABE:  LDR             R0, [R0]
5A4AC0:  EOR.W           R0, R6, R0,LSR#10
5A4AC4:  AND.W           R0, R0, #1
5A4AC8:  CMP             R6, #4
5A4ACA:  MOV.W           R1, #0
5A4ACE:  IT LT
5A4AD0:  MOVLT           R1, #1
5A4AD2:  CMP             R0, #0
5A4AD4:  IT NE
5A4AD6:  MOVNE           R0, #(stderr+1); this
5A4AD8:  AND.W           R9, R1, R0
5A4ADC:  VMOV.F32        S27, S25
5A4AE0:  MOV.W           R10, #0
5A4AE4:  BLX.W           j__ZN10CGameLogic17LaRiotsActiveHereEv; jumptable 005A46D4 case 0
5A4AE8:  CMP.W           R9, #1
5A4AEC:  IT EQ
5A4AEE:  CMPEQ           R0, #1
5A4AF0:  BNE             loc_5A4B8E
5A4AF2:  LDR             R0, [SP,#0x150+var_94]
5A4AF4:  LDRB.W          R0, [R0,#0x3A]
5A4AF8:  AND.W           R0, R0, #7
5A4AFC:  CMP             R0, #2
5A4AFE:  BEQ             loc_5A4B8E
5A4B00:  ANDS.W          R0, R5, #3
5A4B04:  BEQ             loc_5A4B28
5A4B06:  CMP             R0, #1
5A4B08:  BNE             loc_5A4B8E
5A4B0A:  LDR             R0, [SP,#0x150+var_F8]
5A4B0C:  LDR             R0, [R0]
5A4B0E:  EOR.W           R0, R0, R5,LSL#3
5A4B12:  ANDS.W          R0, R0, #0x60 ; '`'
5A4B16:  IT NE
5A4B18:  MOVNE           R0, #1
5A4B1A:  ORR.W           R10, R10, R0
5A4B1E:  BEQ             loc_5A4B94
5A4B20:  CMP.W           R10, #0
5A4B24:  BEQ.W           loc_5A4C4E
5A4B28:  MOVS            R5, #0
5A4B2A:  LDRH.W          R3, [R8,#0x24]
5A4B2E:  MOVS            R4, #0
5A4B30:  MOVT            R5, #0x4170
5A4B34:  VLDR            S0, [R8,#0x14]
5A4B38:  ADD.W           R12, SP, #0x150+var_13C
5A4B3C:  VLDR            S2, [R8,#0x1C]
5A4B40:  LDR.W           R0, [R8,#0x30]
5A4B44:  LDRB.W          R1, [R8,#0x28]
5A4B48:  LDRB.W          R2, [R8,#0x27]
5A4B4C:  STR             R4, [SP,#0x150+var_11C]; int
5A4B4E:  STRD.W          R5, R4, [SP,#0x150+var_118]; float
5A4B52:  MOV.W           R5, #0x3FC00000
5A4B56:  STR             R4, [SP,#0x150+var_110]; int
5A4B58:  STR             R5, [SP,#0x150+var_120]; float
5A4B5A:  UBFX.W          R5, R3, #4, #1
5A4B5E:  AND.W           R3, R3, #1
5A4B62:  STR             R5, [SP,#0x150+var_124]; int
5A4B64:  STRD.W          R4, R4, [SP,#0x150+var_12C]; int
5A4B68:  STM.W           R12, {R0-R3}
5A4B6C:  MOVS            R0, #0xFF
5A4B6E:  MOVS            R1, #0; this
5A4B70:  VSTR            S2, [SP,#0x150+var_144]
5A4B74:  MOVS            R2, #0; int
5A4B76:  VSTR            S0, [SP,#0x150+var_140]
5A4B7A:  MOVS            R3, #0; int
5A4B7C:  STR             R4, [SP,#0x150+var_150]; int
5A4B7E:  STR             R0, [SP,#0x150+var_14C]; int
5A4B80:  ADD             R0, SP, #0x150+var_90
5A4B82:  STR             R0, [SP,#0x150+var_148]; int
5A4B84:  LDR             R0, [SP,#0x150+var_94]
5A4B86:  ADD             R0, R6; int
5A4B88:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5A4B8C:  B               loc_5A4CC0
5A4B8E:  CMP.W           R9, #1
5A4B92:  BNE             loc_5A4B20
5A4B94:  LDRH.W          R0, [R8,#0x24]
5A4B98:  LDR.W           R9, [SP,#0x150+var_94]
5A4B9C:  TST.W           R0, #0x800
5A4BA0:  BEQ.W           loc_5A436A
5A4BA4:  LDRSB.W         R0, [R8,#0x2C]
5A4BA8:  LDRSB.W         R1, [R8,#0x2B]
5A4BAC:  VMOV            S0, R0
5A4BB0:  VMOV            S2, R1
5A4BB4:  VCVT.F32.S32    S0, S0
5A4BB8:  LDRSB.W         R0, [R8,#0x2D]
5A4BBC:  VCVT.F32.S32    S2, S2
5A4BC0:  VMOV            S4, R0
5A4BC4:  VCVT.F32.S32    S4, S4
5A4BC8:  VSTR            S0, [SP,#0x150+var_70+4]
5A4BCC:  VSTR            S2, [SP,#0x150+var_70]
5A4BD0:  VSTR            S4, [SP,#0x150+var_68]
5A4BD4:  LDR.W           R1, [R9,#0x14]
5A4BD8:  CBNZ            R1, loc_5A4BEE
5A4BDA:  MOV             R0, R9; this
5A4BDC:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5A4BE0:  LDR.W           R1, [R9,#0x14]; CMatrix *
5A4BE4:  LDR             R0, [SP,#0x150+var_98]; this
5A4BE6:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5A4BEA:  LDR.W           R1, [R9,#0x14]; CVector *
5A4BEE:  ADD             R0, SP, #0x150+var_80; CMatrix *
5A4BF0:  ADD             R2, SP, #0x150+var_70
5A4BF2:  BLX.W           j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5A4BF6:  LDR             R2, [SP,#0x150+var_D0]
5A4BF8:  VLDR            S0, [SP,#0x150+var_90]
5A4BFC:  LDR             R0, [R2,#0x14]
5A4BFE:  ADD.W           R1, R0, #0x30 ; '0'
5A4C02:  CMP             R0, #0
5A4C04:  IT EQ
5A4C06:  ADDEQ           R1, R2, #4
5A4C08:  LDR             R0, [SP,#0x150+var_CC]
5A4C0A:  VLDR            S2, [R1]
5A4C0E:  VLDR            D17, [R1,#4]
5A4C12:  VSUB.F32        S0, S2, S0
5A4C16:  VLDR            D16, [R0]
5A4C1A:  LDR             R0, [SP,#0x150+var_C8]
5A4C1C:  VSUB.F32        D16, D17, D16
5A4C20:  VLDR            S2, [SP,#0x150+var_80]
5A4C24:  VLDR            D17, [R0]
5A4C28:  VMUL.F32        S0, S0, S2
5A4C2C:  VMUL.F32        D1, D16, D17
5A4C30:  VADD.F32        S0, S0, S2
5A4C34:  VADD.F32        S0, S0, S3
5A4C38:  VCMPE.F32       S0, #0.0
5A4C3C:  VMRS            APSR_nzcv, FPSCR
5A4C40:  BGE.W           loc_5A4366
5A4C44:  CMP.W           R10, #1
5A4C48:  BEQ.W           loc_5A4B28
5A4C4C:  B               loc_5A4C52
5A4C4E:  CMP             R4, #1
5A4C50:  BNE             loc_5A4CC0
5A4C52:  LDR             R2, [SP,#0x150+var_D8]
5A4C54:  VLDR            D16, [SP,#0x150+var_90]
5A4C58:  LDR             R0, [R2,#0x14]
5A4C5A:  ADD.W           R1, R0, #0x30 ; '0'
5A4C5E:  CMP             R0, #0
5A4C60:  IT EQ
5A4C62:  ADDEQ           R1, R2, #4
5A4C64:  VLDR            S0, [R8,#0x14]
5A4C68:  VLDR            D17, [R1]
5A4C6C:  VSUB.F32        D16, D17, D16
5A4C70:  VMUL.F32        S0, S0, S0
5A4C74:  VMUL.F32        D1, D16, D16
5A4C78:  VADD.F32        S2, S2, S3
5A4C7C:  VCMPE.F32       S2, S0
5A4C80:  VMRS            APSR_nzcv, FPSCR
5A4C84:  BGT             loc_5A4CC0
5A4C86:  LDR             R0, [SP,#0x150+var_94]
5A4C88:  ADDS            R1, R6, R0
5A4C8A:  LDR             R0, [SP,#0x150+var_E4]
5A4C8C:  ADD.W           R2, R0, #0xC
5A4C90:  MOVS            R0, #0
5A4C92:  LDR             R3, [R2]
5A4C94:  CMP             R3, R1
5A4C96:  BEQ             loc_5A4CA6
5A4C98:  ADDS            R0, #1
5A4C9A:  ADDS            R2, #0x3C ; '<'
5A4C9C:  CMP             R0, #0x40 ; '@'
5A4C9E:  BCC             loc_5A4C92
5A4CA0:  UXTH            R1, R0
5A4CA2:  CMP             R1, #0x40 ; '@'
5A4CA4:  BEQ             loc_5A4CC0
5A4CA6:  RSB.W           R0, R0, R0,LSL#4
5A4CAA:  LDR             R2, [SP,#0x150+var_FC]
5A4CAC:  VLDR            D16, [SP,#0x150+var_90]
5A4CB0:  ADD.W           R0, R2, R0,LSL#2
5A4CB4:  LDR             R1, [SP,#0x150+var_88]
5A4CB6:  STR             R1, [R0,#8]
5A4CB8:  MOVS            R1, #0
5A4CBA:  VSTR            D16, [R0]
5A4CBE:  STR             R1, [R0,#0x18]
5A4CC0:  ADD.W           R5, R8, #0x18
5A4CC4:  MOVS            R4, #1
5A4CC6:  LDRH.W          R0, [R8,#0x24]
5A4CCA:  TST.W           R0, #4
5A4CCE:  BNE             loc_5A4D4A
5A4CD0:  LSLS            R0, R0, #0x1E
5A4CD2:  MOV.W           R0, #0
5A4CD6:  IT PL
5A4CD8:  MOVPL           R0, #1
5A4CDA:  LDRD.W          R10, R9, [SP,#0x150+var_98]
5A4CDE:  ORRS            R0, R4
5A4CE0:  BNE             loc_5A4DA8
5A4CE2:  VLDR            S0, [R5]
5A4CE6:  VCMP.F32        S0, #0.0
5A4CEA:  VMRS            APSR_nzcv, FPSCR
5A4CEE:  BNE             loc_5A4DA8
5A4CF0:  LDRB.W          R0, [R8,#0x10]
5A4CF4:  ADD             R3, SP, #0x150+var_90
5A4CF6:  LDRB.W          R1, [R8,#0x11]
5A4CFA:  LDRB.W          R2, [R8,#0x12]
5A4CFE:  VMOV            S4, R0
5A4D02:  MOVS            R0, #1
5A4D04:  VMOV            S2, R1
5A4D08:  VMOV            S0, R2
5A4D0C:  VCVT.F32.U32    S0, S0
5A4D10:  VCVT.F32.U32    S2, S2
5A4D14:  VCVT.F32.U32    S4, S4
5A4D18:  LDM             R3, {R1-R3}
5A4D1A:  STRD.W          R0, R0, [SP,#0x150+var_134]
5A4D1E:  MOVS            R0, #0
5A4D20:  STR             R0, [SP,#0x150+var_12C]
5A4D22:  STRD.W          R0, R0, [SP,#0x150+var_150]
5A4D26:  VMUL.F32        S0, S0, S21
5A4D2A:  STRD.W          R0, R0, [SP,#0x150+var_148]
5A4D2E:  VMUL.F32        S2, S2, S21
5A4D32:  MOVS            R0, #4
5A4D34:  VMUL.F32        S4, S4, S21
5A4D38:  VSTR            S4, [SP,#0x150+var_140]
5A4D3C:  VSTR            S2, [SP,#0x150+var_13C]
5A4D40:  VSTR            S0, [SP,#0x150+var_138]
5A4D44:  BLX.W           j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5A4D48:  B               loc_5A4DA8
5A4D4A:  LDRB.W          R0, [R8,#0x10]
5A4D4E:  ADD             R3, SP, #0x150+var_90
5A4D50:  LDRB.W          R1, [R8,#0x11]
5A4D54:  LDRB.W          R2, [R8,#0x12]
5A4D58:  VMOV            S4, R0
5A4D5C:  MOVS            R0, #2
5A4D5E:  VMOV            S2, R1
5A4D62:  VMOV            S0, R2
5A4D66:  VCVT.F32.U32    S0, S0
5A4D6A:  VCVT.F32.U32    S2, S2
5A4D6E:  VCVT.F32.U32    S4, S4
5A4D72:  LDM             R3, {R1-R3}
5A4D74:  STR             R0, [SP,#0x150+var_134]
5A4D76:  MOVS            R0, #1
5A4D78:  STR             R0, [SP,#0x150+var_130]
5A4D7A:  MOVS            R0, #0
5A4D7C:  STR             R0, [SP,#0x150+var_12C]
5A4D7E:  VMUL.F32        S0, S0, S21
5A4D82:  STRD.W          R0, R0, [SP,#0x150+var_150]
5A4D86:  VMUL.F32        S2, S2, S21
5A4D8A:  STRD.W          R0, R0, [SP,#0x150+var_148]
5A4D8E:  VMUL.F32        S4, S4, S21
5A4D92:  MOVS            R0, #3
5A4D94:  VSTR            S4, [SP,#0x150+var_140]
5A4D98:  VSTR            S2, [SP,#0x150+var_13C]
5A4D9C:  VSTR            S0, [SP,#0x150+var_138]
5A4DA0:  BLX.W           j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5A4DA4:  LDRD.W          R10, R9, [SP,#0x150+var_98]
5A4DA8:  LDRB.W          R0, [R11,#0x23]
5A4DAC:  ADDS            R6, #1
5A4DAE:  CMP             R6, R0
5A4DB0:  BLT.W           loc_5A45A4
5A4DB4:  ADD             SP, SP, #0xF0
5A4DB6:  VPOP            {D8-D15}
5A4DBA:  ADD             SP, SP, #4
5A4DBC:  POP.W           {R8-R11}
5A4DC0:  POP             {R4-R7,PC}
