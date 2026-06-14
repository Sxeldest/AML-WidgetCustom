; =========================================================
; Game Engine Function: _ZN9CPhysical12ProcessShiftEv
; Address            : 0x4010F0 - 0x401466
; =========================================================

4010F0:  PUSH            {R4-R7,LR}
4010F2:  ADD             R7, SP, #0xC
4010F4:  PUSH.W          {R8-R11}
4010F8:  SUB             SP, SP, #4
4010FA:  VPUSH           {D8-D12}
4010FE:  SUB             SP, SP, #0x60
401100:  MOV             R10, R0
401102:  LDR.W           R0, [R10]
401106:  MOV             R1, R10
401108:  LDR             R2, [R0,#0x28]
40110A:  ADD             R0, SP, #0xA8+var_58
40110C:  BLX             R2
40110E:  LDRB.W          R0, [R10,#0x3A]
401112:  MOVS            R2, #0
401114:  LDR.W           R1, [R10,#0x44]
401118:  STR.W           R2, [R10,#0xD8]
40111C:  AND.W           R2, R0, #0xF8
401120:  CMP             R2, #0x10
401122:  BEQ             loc_401154
401124:  ANDS.W          R2, R1, #0xE0
401128:  BNE             loc_401154
40112A:  LDRB.W          R1, [R10,#0x1D]
40112E:  LSLS            R1, R1, #0x1B
401130:  BPL             loc_4011C6
401132:  AND.W           R0, R0, #7
401136:  CMP             R0, #3
401138:  BNE             loc_40117C
40113A:  LDR.W           R0, [R10,#0x56C]
40113E:  CMP             R0, #0
401140:  ITT NE
401142:  LDRNE           R0, [R0,#0x44]
401144:  TSTNE.W         R0, #4
401148:  BEQ             loc_401186
40114A:  LSLS            R0, R0, #0x1C
40114C:  BMI             loc_401186
40114E:  LDR             R0, =(_ZN6CWorld12bSecondShiftE_ptr - 0x401154)
401150:  ADD             R0, PC; _ZN6CWorld12bSecondShiftE_ptr
401152:  B               loc_401180
401154:  TST.W           R1, #0xE0
401158:  MOV.W           R1, #2
40115C:  ITTT NE
40115E:  MOVNE           R0, #0
401160:  STRDNE.W        R0, R0, [R10,#0x54]
401164:  STRNE.W         R0, [R10,#0x5C]
401168:  LDR.W           R0, [R10,#0x1C]
40116C:  BFI.W           R0, R1, #4, #2
401170:  STR.W           R0, [R10,#0x1C]
401174:  MOV             R0, R10; this
401176:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
40117A:  B               loc_401458
40117C:  LDR             R0, =(_ZN6CWorld12bSecondShiftE_ptr - 0x401182)
40117E:  ADD             R0, PC; _ZN6CWorld12bSecondShiftE_ptr
401180:  LDR             R0, [R0]; CWorld::bSecondShift ...
401182:  LDRB            R0, [R0]; CWorld::bSecondShift
401184:  CBZ             R0, loc_4011C6
401186:  LDR             R0, =(PHYSICAL_SHIFT_SPEED_DAMP_ptr - 0x40118E)
401188:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x401190)
40118A:  ADD             R0, PC; PHYSICAL_SHIFT_SPEED_DAMP_ptr
40118C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40118E:  LDR             R0, [R0]; PHYSICAL_SHIFT_SPEED_DAMP
401190:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
401192:  LDR             R0, [R0]; x
401194:  LDR             R1, [R1]; y
401196:  BLX             powf
40119A:  ADD.W           R1, R10, #0x48 ; 'H'
40119E:  VMOV            S0, R0
4011A2:  VLDR            S2, [R10,#0x58]
4011A6:  VLDR            S4, [R10,#0x5C]
4011AA:  VLD1.32         {D16-D17}, [R1]
4011AE:  VMUL.F32        S2, S0, S2
4011B2:  VMUL.F32        Q8, Q8, D0[0]
4011B6:  VMUL.F32        S0, S0, S4
4011BA:  VST1.32         {D16-D17}, [R1]
4011BE:  VSTR            S2, [R10,#0x58]
4011C2:  VSTR            S0, [R10,#0x5C]
4011C6:  LDR.W           R1, [R10,#0x14]; CMatrix *
4011CA:  ADD             R0, SP, #0xA8+var_A0; this
4011CC:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
4011D0:  MOV             R0, R10; this
4011D2:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
4011D6:  LDR.W           R0, [R10,#0x14]; this
4011DA:  BLX             j__ZN7CMatrix15ReorthogonaliseEv; CMatrix::Reorthogonalise(void)
4011DE:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4011E8)
4011E0:  MOVW            R9, #0xFFFF
4011E4:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4011E6:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4011E8:  LDRH            R0, [R0]; this
4011EA:  CMP             R0, R9
4011EC:  BNE             loc_4011F6
4011EE:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4011F2:  MOVS            R0, #1
4011F4:  B               loc_4011F8
4011F6:  ADDS            R0, #1
4011F8:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x401202)
4011FA:  VLDR            S16, =50.0
4011FE:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
401200:  VLDR            S18, =60.0
401204:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
401206:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
401208:  LDRB.W          R4, [R10,#0x3A]
40120C:  AND.W           R0, R4, #7
401210:  CMP             R0, #2
401212:  ITTT EQ
401214:  LDREQ.W         R0, [R10,#0x44]
401218:  ORREQ.W         R0, R0, #0x8000
40121C:  STREQ.W         R0, [R10,#0x44]
401220:  VLDR            S0, [SP,#0xA8+var_58]
401224:  VLDR            S20, [SP,#0xA8+var_54]
401228:  VDIV.F32        S0, S0, S16
40122C:  VADD.F32        S0, S0, S18
401230:  VLDR            S22, [SP,#0xA8+var_50]
401234:  VLDR            S24, [SP,#0xA8+var_4C]
401238:  VMOV            R0, S0; x
40123C:  BLX             floorf
401240:  VDIV.F32        S0, S24, S16
401244:  MOV             R8, R0
401246:  VADD.F32        S0, S0, S18
40124A:  VMOV            R0, S0; x
40124E:  BLX             floorf
401252:  VDIV.F32        S0, S22, S16
401256:  MOV             R6, R0
401258:  VADD.F32        S0, S0, S18
40125C:  VMOV            R0, S0; x
401260:  BLX             floorf
401264:  VDIV.F32        S0, S20, S16
401268:  MOV             R5, R0
40126A:  VADD.F32        S0, S0, S18
40126E:  VMOV            R0, S0; x
401272:  BLX             floorf
401276:  VMOV            S0, R0
40127A:  VMOV            S2, R5
40127E:  VMOV            S4, R6
401282:  VCVT.S32.F32    S8, S0
401286:  VCVT.S32.F32    S0, S2
40128A:  VCVT.S32.F32    S4, S4
40128E:  VMOV            S6, R8
401292:  VCVT.S32.F32    S2, S6
401296:  VMOV            R8, S8
40129A:  VMOV            R5, S4
40129E:  CMP             R5, R8
4012A0:  BLE             loc_4012B0
4012A2:  LDR.W           R0, [R10,#0x44]
4012A6:  BIC.W           R0, R0, #0x8000
4012AA:  STR.W           R0, [R10,#0x44]
4012AE:  B               loc_4012F4
4012B0:  VMOV            R11, S0
4012B4:  MOVS            R4, #0
4012B6:  VMOV            R9, S2
4012BA:  CMP             R9, R11
4012BC:  MOV             R6, R9
4012BE:  BGT             loc_4012D4
4012C0:  MOV             R0, R10; this
4012C2:  MOV             R1, R6; int
4012C4:  MOV             R2, R5; int
4012C6:  BLX             j__ZN9CPhysical22ProcessShiftSectorListEii; CPhysical::ProcessShiftSectorList(int,int)
4012CA:  ORRS            R4, R0
4012CC:  ADDS            R0, R6, #1
4012CE:  CMP             R6, R11
4012D0:  MOV             R6, R0
4012D2:  BLT             loc_4012C0
4012D4:  ADDS            R0, R5, #1
4012D6:  CMP             R5, R8
4012D8:  MOV             R5, R0
4012DA:  BLT             loc_4012BA
4012DC:  LDR.W           R0, [R10,#0x44]
4012E0:  MOVW            R9, #0xFFFF
4012E4:  BIC.W           R0, R0, #0x8000
4012E8:  STR.W           R0, [R10,#0x44]
4012EC:  LSLS            R0, R4, #0x1F
4012EE:  BNE             loc_4012FC
4012F0:  LDRB.W          R4, [R10,#0x3A]
4012F4:  AND.W           R0, R4, #7
4012F8:  CMP             R0, #2
4012FA:  BNE             loc_4013A2
4012FC:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x401302)
4012FE:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
401300:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
401302:  LDRH            R0, [R0]; this
401304:  CMP             R0, R9
401306:  BNE             loc_401312
401308:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
40130C:  MOV.W           R9, #1
401310:  B               loc_401316
401312:  ADD.W           R9, R0, #1
401316:  VLDR            S0, [SP,#0xA8+var_58]
40131A:  VLDR            S20, [SP,#0xA8+var_54]
40131E:  VDIV.F32        S0, S0, S16
401322:  VADD.F32        S0, S0, S18
401326:  VLDR            S22, [SP,#0xA8+var_50]
40132A:  VLDR            S24, [SP,#0xA8+var_4C]
40132E:  VMOV            R0, S0; x
401332:  BLX             floorf
401336:  VDIV.F32        S0, S24, S16
40133A:  MOV             R8, R0
40133C:  VADD.F32        S0, S0, S18
401340:  VMOV            R0, S0; x
401344:  BLX             floorf
401348:  VDIV.F32        S0, S22, S16
40134C:  MOV             R6, R0
40134E:  VADD.F32        S0, S0, S18
401352:  VMOV            R0, S0; x
401356:  BLX             floorf
40135A:  VDIV.F32        S0, S20, S16
40135E:  MOV             R5, R0
401360:  VADD.F32        S0, S0, S18
401364:  VMOV            R0, S0; x
401368:  BLX             floorf
40136C:  VMOV            S0, R0
401370:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x40137E)
401372:  VMOV            S2, R5
401376:  VMOV            S4, R6
40137A:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
40137C:  VCVT.S32.F32    S8, S0
401380:  VCVT.S32.F32    S0, S2
401384:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
401386:  VCVT.S32.F32    S4, S4
40138A:  VMOV            S6, R8
40138E:  VCVT.S32.F32    S2, S6
401392:  STRH.W          R9, [R0]; CWorld::ms_nCurrentScanCode
401396:  VMOV            R1, S8
40139A:  VMOV            R5, S4
40139E:  CMP             R5, R1
4013A0:  BLE             loc_4013FC
4013A2:  ADD.W           R0, R10, #0x1C
4013A6:  MOVS            R2, #2
4013A8:  LDR             R1, [R0]
4013AA:  BFI.W           R1, R2, #4, #2
4013AE:  STR             R1, [R0]
4013B0:  LDR.W           R0, [R10,#0x14]
4013B4:  VLDR            S0, [SP,#0xA8+var_70]
4013B8:  VLDR            S2, [SP,#0xA8+var_6C]
4013BC:  VLDR            S6, [R0,#0x30]
4013C0:  VLDR            S8, [R0,#0x34]
4013C4:  VSUB.F32        S0, S6, S0
4013C8:  VLDR            S10, [R0,#0x38]
4013CC:  VSUB.F32        S2, S8, S2
4013D0:  VLDR            S4, [SP,#0xA8+var_68]
4013D4:  MOV             R0, R10; this
4013D6:  VSUB.F32        S4, S10, S4
4013DA:  VMUL.F32        S0, S0, S0
4013DE:  VMUL.F32        S2, S2, S2
4013E2:  VMUL.F32        S4, S4, S4
4013E6:  VADD.F32        S0, S0, S2
4013EA:  VADD.F32        S0, S0, S4
4013EE:  VSQRT.F32       S0, S0
4013F2:  VSTR            S0, [R10,#0xD8]
4013F6:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
4013FA:  B               loc_401452
4013FC:  VMOV            R9, S0
401400:  LDR             R0, =(_ZN6CWorld12bSecondShiftE_ptr - 0x40140E)
401402:  VMOV            R4, S2
401406:  MOV.W           R8, #0
40140A:  ADD             R0, PC; _ZN6CWorld12bSecondShiftE_ptr
40140C:  STR             R1, [SP,#0xA8+var_A4]
40140E:  LDR.W           R11, [R0]; CWorld::bSecondShift ...
401412:  CMP             R4, R9
401414:  BGT             loc_401438
401416:  MOV             R6, R4
401418:  MOV             R0, R10; this
40141A:  MOV             R1, R6; int
40141C:  MOV             R2, R5; int
40141E:  BLX             j__ZN9CPhysical26ProcessCollisionSectorListEii; CPhysical::ProcessCollisionSectorList(int,int)
401422:  CMP             R0, #1
401424:  BNE             loc_401430
401426:  LDRB.W          R0, [R11]; CWorld::bSecondShift
40142A:  CBZ             R0, loc_401448
40142C:  MOV.W           R8, #1
401430:  ADDS            R0, R6, #1
401432:  CMP             R6, R9
401434:  MOV             R6, R0
401436:  BLT             loc_401418
401438:  LDR             R1, [SP,#0xA8+var_A4]
40143A:  ADDS            R0, R5, #1
40143C:  CMP             R5, R1
40143E:  MOV             R5, R0
401440:  BLT             loc_401412
401442:  MOVS.W          R0, R8,LSL#31
401446:  BEQ             loc_4013A2
401448:  LDR.W           R0, [R10,#0x14]
40144C:  ADD             R1, SP, #0xA8+var_A0
40144E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
401452:  ADD             R0, SP, #0xA8+var_A0; this
401454:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
401458:  ADD             SP, SP, #0x60 ; '`'
40145A:  VPOP            {D8-D12}
40145E:  ADD             SP, SP, #4
401460:  POP.W           {R8-R11}
401464:  POP             {R4-R7,PC}
