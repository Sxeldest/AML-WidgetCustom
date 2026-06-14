; =========================================================
; Game Engine Function: _ZN7CObject31SpecialEntityCalcCollisionStepsERbS0_
; Address            : 0x455220 - 0x4555E6
; =========================================================

455220:  PUSH            {R4-R7,LR}
455222:  ADD             R7, SP, #0xC
455224:  PUSH.W          {R11}
455228:  VPUSH           {D8-D10}
45522C:  SUB             SP, SP, #0x38
45522E:  MOV             R4, R0
455230:  LDR             R1, [R4,#0x44]
455232:  TST.W           R1, #0x80
455236:  BNE             loc_455242
455238:  LDR.W           R0, [R4,#0x164]
45523C:  LDRB            R0, [R0,#0x1D]
45523E:  CMP             R0, #5
455240:  BNE             loc_4552A4
455242:  VLDR            S0, [R4,#0x48]
455246:  VLDR            S2, [R4,#0x4C]
45524A:  VMUL.F32        S0, S0, S0
45524E:  VLDR            S4, [R4,#0x50]
455252:  VMUL.F32        S2, S2, S2
455256:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x455262)
455258:  VMUL.F32        S4, S4, S4
45525C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x455268)
45525E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
455260:  LDRSH.W         R2, [R4,#0x26]
455264:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
455266:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
455268:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
45526A:  VADD.F32        S0, S0, S2
45526E:  VLDR            S2, [R1]
455272:  LDR.W           R0, [R0,R2,LSL#2]
455276:  LDR             R0, [R0,#0x2C]
455278:  VADD.F32        S0, S0, S4
45527C:  VMUL.F32        S4, S2, S0
455280:  VLDR            S0, [R0,#0x24]
455284:  VMUL.F32        S6, S0, S0
455288:  VMUL.F32        S2, S2, S4
45528C:  VCMPE.F32       S2, S6
455290:  VMRS            APSR_nzcv, FPSCR
455294:  BGE             loc_45529A
455296:  MOVS            R0, #1
455298:  B               loc_45550C
45529A:  VSQRT.F32       S2, S2
45529E:  VDIV.F32        S0, S2, S0
4552A2:  B               loc_4554F8
4552A4:  LSLS            R2, R1, #0x1A
4552A6:  BMI.W           loc_4553F2
4552AA:  LSLS            R1, R1, #0x19
4552AC:  BMI.W           loc_45547C
4552B0:  LDRB.W          R1, [R4,#0x140]
4552B4:  CMP             R1, #3
4552B6:  BNE             loc_4552C0
4552B8:  LDRB.W          R1, [R4,#0x145]
4552BC:  LSLS            R1, R1, #0x1A
4552BE:  BPL             loc_455296
4552C0:  CMP             R0, #1
4552C2:  BNE.W           loc_455518
4552C6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4552D2)
4552C8:  ADD             R5, SP, #0x60+var_38
4552CA:  LDRSH.W         R1, [R4,#0x26]
4552CE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4552D0:  MOV             R2, R5
4552D2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4552D4:  LDR.W           R0, [R0,R1,LSL#2]
4552D8:  MOVS            R1, #0
4552DA:  LDR             R0, [R0,#0x2C]
4552DC:  STRD.W          R1, R1, [SP,#0x60+var_38]
4552E0:  STR             R1, [SP,#0x60+var_30]
4552E2:  VLDR            D16, [SP,#0x60+var_38]
4552E6:  LDR             R1, [SP,#0x60+var_30]
4552E8:  STR             R1, [SP,#0x60+var_40]
4552EA:  VSTR            D16, [SP,#0x60+var_48]
4552EE:  LDR             R1, [R0,#0x14]
4552F0:  STR             R1, [SP,#0x60+var_30]
4552F2:  LDR             R0, [R0,#8]
4552F4:  STR             R0, [SP,#0x60+var_40]
4552F6:  ADD             R0, SP, #0x60+var_58; CMatrix *
4552F8:  LDR             R1, [R4,#0x14]; CVector *
4552FA:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4552FE:  VLDR            D16, [SP,#0x60+var_58]
455302:  ADD             R6, SP, #0x60+var_48
455304:  LDR             R0, [SP,#0x60+var_50]
455306:  STR             R0, [SP,#0x60+var_30]
455308:  ADD             R0, SP, #0x60+var_58; CMatrix *
45530A:  VSTR            D16, [SP,#0x60+var_38]
45530E:  MOV             R2, R6
455310:  LDR             R1, [R4,#0x14]; CVector *
455312:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
455316:  VLDR            D16, [SP,#0x60+var_58]
45531A:  MOV             R1, R4
45531C:  LDR             R0, [SP,#0x60+var_50]
45531E:  STR             R0, [SP,#0x60+var_40]
455320:  VSTR            D16, [SP,#0x60+var_48]
455324:  LDRD.W          R2, R3, [SP,#0x60+var_38]
455328:  LDR             R0, [SP,#0x60+var_30]
45532A:  STR             R0, [SP,#0x60+var_60]
45532C:  ADD             R0, SP, #0x60+var_58
45532E:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
455332:  VLDR            D16, [SP,#0x60+var_58]
455336:  MOV             R1, R4
455338:  LDR             R0, [SP,#0x60+var_50]
45533A:  STR             R0, [SP,#0x60+var_30]
45533C:  VSTR            D16, [SP,#0x60+var_38]
455340:  LDRD.W          R2, R3, [SP,#0x60+var_48]
455344:  LDR             R0, [SP,#0x60+var_40]
455346:  STR             R0, [SP,#0x60+var_60]
455348:  ADD             R0, SP, #0x60+var_58
45534A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
45534E:  VLDR            D16, [SP,#0x60+var_58]
455352:  LDR             R0, [SP,#0x60+var_50]
455354:  STR             R0, [SP,#0x60+var_40]
455356:  VSTR            D16, [SP,#0x60+var_48]
45535A:  VLDR            S0, [SP,#0x60+var_48]
45535E:  VLDR            S2, [SP,#0x60+var_48+4]
455362:  VLDR            S6, [SP,#0x60+var_38]
455366:  VMUL.F32        S0, S0, S0
45536A:  VLDR            S8, [SP,#0x60+var_38+4]
45536E:  VMUL.F32        S2, S2, S2
455372:  VMUL.F32        S6, S6, S6
455376:  VLDR            S4, [SP,#0x60+var_40]
45537A:  VMUL.F32        S8, S8, S8
45537E:  VLDR            S10, [SP,#0x60+var_30]
455382:  VMUL.F32        S4, S4, S4
455386:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x45538C)
455388:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
45538A:  VADD.F32        S0, S0, S2
45538E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
455390:  VMUL.F32        S2, S10, S10
455394:  VADD.F32        S6, S6, S8
455398:  VADD.F32        S0, S0, S4
45539C:  VADD.F32        S2, S6, S2
4553A0:  VCMPE.F32       S2, S0
4553A4:  VMRS            APSR_nzcv, FPSCR
4553A8:  IT GT
4553AA:  MOVGT           R6, R5
4553AC:  VLDR            S0, [R6]
4553B0:  VLDR            S2, [R6,#4]
4553B4:  VMUL.F32        S0, S0, S0
4553B8:  VLDR            S4, [R6,#8]
4553BC:  VMUL.F32        S2, S2, S2
4553C0:  VMUL.F32        S4, S4, S4
4553C4:  VADD.F32        S0, S0, S2
4553C8:  VLDR            S2, [R0]
4553CC:  VADD.F32        S0, S0, S4
4553D0:  VMUL.F32        S0, S2, S0
4553D4:  VMUL.F32        S0, S2, S0
4553D8:  VLDR            S2, =0.09
4553DC:  VCMPE.F32       S0, S2
4553E0:  VMRS            APSR_nzcv, FPSCR
4553E4:  BLT.W           loc_455296
4553E8:  VSQRT.F32       S0, S0
4553EC:  VLDR            S2, =0.3
4553F0:  B               loc_4554F4
4553F2:  MOV             R0, R4; this
4553F4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4553F8:  VLDR            S16, [R0,#0xC]
4553FC:  MOV             R0, R4; this
4553FE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
455402:  VLDR            S18, [R0,#0x10]
455406:  MOV             R0, R4; this
455408:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
45540C:  VCMPE.F32       S16, S18
455410:  ADD.W           R1, R0, #0x10
455414:  VMRS            APSR_nzcv, FPSCR
455418:  IT GT
45541A:  ADDGT.W         R1, R0, #0xC
45541E:  MOV             R0, R4; this
455420:  VLDR            S16, [R1]
455424:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
455428:  VLDR            S18, [R0]
45542C:  MOV             R0, R4; this
45542E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
455432:  VLDR            S20, [R0,#4]
455436:  MOV             R0, R4; this
455438:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
45543C:  VCMPE.F32       S18, S20
455440:  VMRS            APSR_nzcv, FPSCR
455444:  IT GE
455446:  ADDGE           R0, #4
455448:  VLDR            S0, [R0]
45544C:  VNEG.F32        S2, S0
455450:  VCMPE.F32       S16, S2
455454:  VLDR            S2, =0.1
455458:  VMRS            APSR_nzcv, FPSCR
45545C:  IT LT
45545E:  VMOVLT.F32      S16, S0
455462:  VLDR            S0, [R4,#0x5C]
455466:  VMUL.F32        S0, S0, S16
45546A:  VABS.F32        S0, S0
45546E:  VCMPE.F32       S0, S2
455472:  VMRS            APSR_nzcv, FPSCR
455476:  BLE.W           loc_455296
45547A:  B               loc_4554F4
45547C:  MOV             R0, R4; this
45547E:  LDR             R5, [R4,#0x14]
455480:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
455484:  MOV             R2, R0
455486:  ADD             R0, SP, #0x60+var_38; CMatrix *
455488:  MOV             R1, R5; CVector *
45548A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
45548E:  LDRD.W          R2, R3, [SP,#0x60+var_38]
455492:  MOV             R1, R4
455494:  LDR             R0, [SP,#0x60+var_30]
455496:  STR             R0, [SP,#0x60+var_60]
455498:  ADD             R0, SP, #0x60+var_48
45549A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
45549E:  VLDR            D16, [SP,#0x60+var_48]
4554A2:  LDR             R0, [SP,#0x60+var_40]
4554A4:  STR             R0, [SP,#0x60+var_30]
4554A6:  VSTR            D16, [SP,#0x60+var_38]
4554AA:  VLDR            S0, [SP,#0x60+var_38]
4554AE:  VLDR            S2, [SP,#0x60+var_38+4]
4554B2:  VMUL.F32        S0, S0, S0
4554B6:  VLDR            S4, [SP,#0x60+var_30]
4554BA:  VMUL.F32        S2, S2, S2
4554BE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4554C8)
4554C0:  VMUL.F32        S4, S4, S4
4554C4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4554C6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4554C8:  VADD.F32        S0, S0, S2
4554CC:  VLDR            S2, [R0]
4554D0:  VADD.F32        S0, S0, S4
4554D4:  VMUL.F32        S0, S2, S0
4554D8:  VMUL.F32        S0, S2, S0
4554DC:  VLDR            S2, =0.0225
4554E0:  VCMPE.F32       S0, S2
4554E4:  VMRS            APSR_nzcv, FPSCR
4554E8:  BLT.W           loc_455296
4554EC:  VSQRT.F32       S0, S0
4554F0:  VLDR            S2, =0.15
4554F4:  VDIV.F32        S0, S0, S2
4554F8:  VMOV            R0, S0; x
4554FC:  BLX             ceilf
455500:  VMOV            S0, R0
455504:  VCVT.U32.F32    S0, S0
455508:  VMOV            R0, S0
45550C:  ADD             SP, SP, #0x38 ; '8'
45550E:  VPOP            {D8-D10}
455512:  POP.W           {R11}
455516:  POP             {R4-R7,PC}
455518:  LDRB.W          R1, [R4,#0x145]
45551C:  LSLS            R1, R1, #0x1A
45551E:  BMI             loc_455528
455520:  CMP             R0, #4
455522:  IT NE
455524:  CMPNE           R0, #2
455526:  BNE             loc_4555C6
455528:  MOV             R0, R4; this
45552A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
45552E:  VLDR            S0, [R4,#0x48]
455532:  VMOV.F32        S1, #0.5
455536:  VLDR            S2, [R4,#0x4C]
45553A:  VMUL.F32        S0, S0, S0
45553E:  VLDR            S6, [R0,#4]
455542:  VMUL.F32        S2, S2, S2
455546:  VLDR            S12, [R0,#0x10]
45554A:  VLDR            S10, [R0,#0xC]
45554E:  VLDR            S4, [R4,#0x50]
455552:  VSUB.F32        S6, S12, S6
455556:  VLDR            S8, [R0,#8]
45555A:  VMUL.F32        S4, S4, S4
45555E:  VLDR            S14, [R0,#0x14]
455562:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x455574)
455564:  VSUB.F32        S8, S14, S8
455568:  VADD.F32        S0, S0, S2
45556C:  VLDR            S2, [R0]
455570:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
455572:  VSUB.F32        S2, S10, S2
455576:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
455578:  VADD.F32        S4, S0, S4
45557C:  VMIN.F32        D16, D3, D1
455580:  VLDR            S6, [R0]
455584:  VMIN.F32        D1, D4, D16
455588:  VMUL.F32        S0, S2, S1
45558C:  VMUL.F32        S2, S6, S4
455590:  VMUL.F32        S4, S0, S0
455594:  VMUL.F32        S2, S6, S2
455598:  VCMPE.F32       S2, S4
45559C:  VMRS            APSR_nzcv, FPSCR
4555A0:  BLT.W           loc_455296
4555A4:  VSQRT.F32       S2, S2
4555A8:  VDIV.F32        S0, S2, S0
4555AC:  VMOV            R0, S0; x
4555B0:  BLX             ceilf
4555B4:  VLDR            S0, =255.0
4555B8:  VMOV            S2, R0
4555BC:  VMIN.F32        D0, D1, D0
4555C0:  VCVT.U32.F32    S0, S0
4555C4:  B               loc_455508
4555C6:  VLDR            S0, [R4,#0x48]
4555CA:  VLDR            S2, [R4,#0x4C]
4555CE:  VMUL.F32        S0, S0, S0
4555D2:  VLDR            S4, [R4,#0x50]
4555D6:  VMUL.F32        S2, S2, S2
4555DA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4555E4)
4555DC:  VMUL.F32        S4, S4, S4
4555E0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4555E2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4555E4:  B               loc_4553C4
