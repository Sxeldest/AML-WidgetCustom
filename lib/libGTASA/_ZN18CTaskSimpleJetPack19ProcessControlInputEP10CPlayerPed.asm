; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack19ProcessControlInputEP10CPlayerPed
; Address            : 0x530FB8 - 0x5316B0
; =========================================================

530FB8:  PUSH            {R4-R7,LR}
530FBA:  ADD             R7, SP, #0xC
530FBC:  PUSH.W          {R8-R10}
530FC0:  VPUSH           {D8-D14}; float
530FC4:  MOV             R9, R1
530FC6:  MOV             R8, R0
530FC8:  MOV             R0, R9; this
530FCA:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
530FCE:  MOV             R6, R0
530FD0:  LDRSB.W         R0, [R9,#0x71C]
530FD4:  RSB.W           R0, R0, R0,LSL#3
530FD8:  ADD.W           R0, R9, R0,LSL#2
530FDC:  LDR.W           R4, [R0,#0x5A4]
530FE0:  MOV             R0, R9; this
530FE2:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
530FE6:  MOV             R1, R0
530FE8:  MOV             R0, R4
530FEA:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
530FEE:  LDR             R1, [R0]
530FF0:  CMP             R1, #1
530FF2:  BNE             loc_531016
530FF4:  LDRB            R0, [R0,#0x18]
530FF6:  LSLS            R0, R0, #0x1E
530FF8:  BPL             loc_531016
530FFA:  LDR.W           R0, [R9,#0x440]
530FFE:  LDR             R0, [R0,#0x14]
531000:  CBZ             R0, loc_531016
531002:  LDR             R1, [R0]
531004:  LDR             R1, [R1,#0x14]
531006:  BLX             R1
531008:  CBNZ            R0, loc_531016
53100A:  LDR.W           R0, [R9,#0x440]
53100E:  MOV             R1, R9; CPlayerPed *
531010:  LDR             R0, [R0,#0x14]; this
531012:  BLX             j__ZN23CTaskSimplePlayerOnFoot19ProcessPlayerWeaponEP10CPlayerPed; CTaskSimplePlayerOnFoot::ProcessPlayerWeapon(CPlayerPed *)
531016:  MOV             R0, R6; this
531018:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
53101C:  VMOV            S0, R0
531020:  MOV             R0, R6; this
531022:  VCVT.F32.S32    S20, S0
531026:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
53102A:  VMOV            S0, R0; this
53102E:  VCVT.F32.S32    S18, S0
531032:  VMUL.F32        S0, S20, S20
531036:  VMUL.F32        S2, S18, S18
53103A:  VADD.F32        S0, S0, S2
53103E:  VLDR            S2, =60.0
531042:  VSQRT.F32       S0, S0
531046:  VDIV.F32        S16, S0, S2
53104A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
53104E:  CMP             R0, #2
531050:  ITT EQ
531052:  LDRBEQ.W        R0, [R9,#0x484]
531056:  MOVSEQ.W        R0, R0,LSL#31
53105A:  BEQ             loc_5310D2
53105C:  LDR.W           R0, [R9,#0x720]
531060:  CMP             R0, #0
531062:  ITT EQ
531064:  LDRBEQ.W        R0, [R9,#0x484]
531068:  MOVSEQ.W        R0, R0,LSL#31
53106C:  BEQ.W           loc_5311D2
531070:  VCMPE.F32       S16, #0.0
531074:  VMRS            APSR_nzcv, FPSCR
531078:  BLE.W           loc_5311A0
53107C:  VMOV            R0, S20
531080:  MOVS            R1, #0; float
531082:  VMOV            R3, S18; float
531086:  EOR.W           R2, R0, #0x80000000; float
53108A:  MOVS            R0, #0; this
53108C:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
531090:  LDR.W           R1, =(TheCamera_ptr - 0x53109C)
531094:  VMOV            S0, R0
531098:  ADD             R1, PC; TheCamera_ptr
53109A:  LDR             R1, [R1]; TheCamera ; float
53109C:  VLDR            S2, [R1,#0x14C]
5310A0:  VSUB.F32        S0, S0, S2
5310A4:  VMOV            R0, S0; this
5310A8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5310AC:  LDR.W           R1, =(_ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr - 0x5310BC)
5310B0:  VMOV.F32        S0, #-0.75
5310B4:  STR.W           R0, [R9,#0x560]
5310B8:  ADD             R1, PC; _ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr
5310BA:  LDR             R1, [R1]; CTaskSimpleJetPack::THRUST_MAX_ANGLE ...
5310BC:  VLDR            S2, [R1]
5310C0:  VMUL.F32        S0, S2, S0
5310C4:  VMOV.F32        S2, #0.46875
5310C8:  VMUL.F32        S0, S16, S0
5310CC:  VMUL.F32        S0, S0, S2
5310D0:  B               loc_5312D0
5310D2:  LDR.W           R0, =(TheCamera_ptr - 0x5310DA)
5310D6:  ADD             R0, PC; TheCamera_ptr
5310D8:  LDR             R0, [R0]; TheCamera ; this
5310DA:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5310DE:  ADD.W           R1, R1, R1,LSL#5
5310E2:  ADD.W           R1, R0, R1,LSL#4
5310E6:  VLDR            S22, [R1,#0x2D8]
5310EA:  VLDR            S24, [R1,#0x2DC]
5310EE:  VNEG.F32        S26, S22
5310F2:  VNEG.F32        S28, S24
5310F6:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
5310FA:  CMP             R0, #3
5310FC:  ITT EQ
5310FE:  VMOVEQ.F32      S26, S22
531102:  VMOVEQ.F32      S28, S24
531106:  VMOV            R0, S26
53110A:  VMOV            R1, S28; x
53110E:  EOR.W           R0, R0, #0x80000000; y
531112:  BLX             atan2f
531116:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531122)
53111A:  STR.W           R0, [R9,#0x560]
53111E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531120:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack18JETPACK_ANGLE_RATEE_ptr - 0x53112A)
531124:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
531126:  ADD             R0, PC; _ZN18CTaskSimpleJetPack18JETPACK_ANGLE_RATEE_ptr
531128:  LDR             R0, [R0]; CTaskSimpleJetPack::JETPACK_ANGLE_RATE ...
53112A:  VLDR            S22, [R1]
53112E:  VMOV            R1, S22; y
531132:  LDR             R0, [R0]; x
531134:  BLX             powf
531138:  VMOV.F32        S0, #1.0
53113C:  VLDR            S2, =0.0078125
531140:  VMOV            S4, R0
531144:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr - 0x531154)
531148:  VMUL.F32        S18, S18, S2
53114C:  VLDR            S8, [R8,#0x14]
531150:  ADD             R0, PC; _ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr
531152:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_MAX_ANGLE ...
531154:  VSUB.F32        S6, S0, S4
531158:  VLDR            S10, [R0]
53115C:  VMUL.F32        S4, S4, S8
531160:  VMUL.F32        S6, S18, S6
531164:  VMUL.F32        S6, S6, S10
531168:  VADD.F32        S6, S4, S6
53116C:  VMUL.F32        S4, S20, S2
531170:  VSTR            S6, [R8,#0x14]
531174:  VCMPE.F32       S4, #0.0
531178:  VMRS            APSR_nzcv, FPSCR
53117C:  BGE             loc_5311AA
53117E:  VLDR            S0, =-0.1
531182:  VMOV.F32        S4, #-1.0
531186:  VLDR            S2, [R8,#0x10]
53118A:  ADD.W           R0, R8, #0x10
53118E:  VMUL.F32        S0, S22, S0
531192:  VADD.F32        S0, S2, S0
531196:  VMAX.F32        D0, D0, D2
53119A:  VSTR            S0, [R0]
53119E:  B               loc_5312D4
5311A0:  LDR.W           R0, [R9,#0x444]
5311A4:  MOVS            R1, #0
5311A6:  STR             R1, [R0,#0x14]
5311A8:  B               loc_5312D4
5311AA:  VCMPE.F32       S4, #0.0
5311AE:  VLDR            S2, [R8,#0x10]
5311B2:  ADD.W           R0, R8, #0x10
5311B6:  VMRS            APSR_nzcv, FPSCR
5311BA:  BLE             loc_53123A
5311BC:  VLDR            S4, =0.1
5311C0:  VMUL.F32        S4, S22, S4
5311C4:  VADD.F32        S2, S2, S4
5311C8:  VMIN.F32        D0, D1, D0
5311CC:  VSTR            S0, [R0]
5311D0:  B               loc_5312D4
5311D2:  MOV             R0, R6; this
5311D4:  MOVS            R1, #0; bool
5311D6:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
5311DA:  CMP             R0, #1
5311DC:  BEQ.W           loc_531070
5311E0:  VLDR            S2, =0.0078125
5311E4:  VMUL.F32        S0, S20, S2
5311E8:  VMUL.F32        S18, S18, S2
5311EC:  VCMP.F32        S0, #0.0
5311F0:  VMRS            APSR_nzcv, FPSCR
5311F4:  BEQ             loc_53126A
5311F6:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack17JETPACK_TURN_RATEE_ptr - 0x531202)
5311FA:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531204)
5311FE:  ADD             R0, PC; _ZN18CTaskSimpleJetPack17JETPACK_TURN_RATEE_ptr
531200:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531202:  LDR             R0, [R0]; CTaskSimpleJetPack::JETPACK_TURN_RATE ...
531204:  VLDR            S2, [R0]
531208:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
53120A:  VMUL.F32        S2, S0, S2
53120E:  VLDR            S0, [R0]
531212:  ADD.W           R0, R9, #0x560
531216:  VLDR            S4, [R0]
53121A:  VMUL.F32        S2, S2, S0
53121E:  VADD.F32        S2, S4, S2
531222:  VLDR            S4, =3.1416
531226:  VCMPE.F32       S2, S4
53122A:  VSTR            S2, [R0]
53122E:  VMRS            APSR_nzcv, FPSCR
531232:  BLE             loc_531278
531234:  VLDR            S4, =-6.2832
531238:  B               loc_53128A
53123A:  VCMPE.F32       S2, #0.0
53123E:  VMRS            APSR_nzcv, FPSCR
531242:  BLE             loc_53124E
531244:  VLDR            S0, =-0.05
531248:  VLDR            S4, =0.0
53124C:  B               loc_53118E
53124E:  BGE             loc_5312D4
531250:  VLDR            S0, =0.05
531254:  VLDR            S4, =0.0
531258:  VMUL.F32        S0, S22, S0
53125C:  VADD.F32        S0, S2, S0
531260:  VMIN.F32        D0, D0, D2
531264:  VSTR            S0, [R0]
531268:  B               loc_5312D4
53126A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531272)
53126E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531270:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
531272:  VLDR            S0, [R0]
531276:  B               loc_531292
531278:  VLDR            S4, =-3.1416
53127C:  VCMPE.F32       S2, S4
531280:  VMRS            APSR_nzcv, FPSCR
531284:  BGE             loc_531292
531286:  VLDR            S4, =6.2832
53128A:  VADD.F32        S2, S2, S4
53128E:  VSTR            S2, [R0]
531292:  VMOV            R1, S0; y
531296:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack18JETPACK_ANGLE_RATEE_ptr - 0x53129E)
53129A:  ADD             R0, PC; _ZN18CTaskSimpleJetPack18JETPACK_ANGLE_RATEE_ptr
53129C:  LDR             R0, [R0]; CTaskSimpleJetPack::JETPACK_ANGLE_RATE ...
53129E:  LDR             R0, [R0]; x
5312A0:  BLX             powf
5312A4:  VMOV.F32        S0, #1.0
5312A8:  VLDR            S4, [R8,#0x14]
5312AC:  VMOV            S2, R0
5312B0:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr - 0x5312B8)
5312B4:  ADD             R0, PC; _ZN18CTaskSimpleJetPack16THRUST_MAX_ANGLEE_ptr
5312B6:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_MAX_ANGLE ...
5312B8:  VSUB.F32        S0, S0, S2
5312BC:  VLDR            S6, [R0]
5312C0:  VMUL.F32        S2, S2, S4
5312C4:  VMUL.F32        S0, S18, S0
5312C8:  VMUL.F32        S0, S0, S6
5312CC:  VADD.F32        S0, S2, S0
5312D0:  VSTR            S0, [R8,#0x14]
5312D4:  LDR.W           R0, [R9,#0x720]
5312D8:  CMP             R0, #0
5312DA:  BEQ.W           loc_5313EC
5312DE:  LDRB.W          R1, [R9,#0x484]
5312E2:  LSLS            R1, R1, #0x1F
5312E4:  BNE.W           loc_5313EC
5312E8:  LDR             R1, [R0,#0x14]
5312EA:  LDR.W           R2, [R9,#0x14]
5312EE:  ADD.W           R3, R1, #0x30 ; '0'
5312F2:  CMP             R1, #0
5312F4:  IT EQ
5312F6:  ADDEQ           R3, R0, #4
5312F8:  ADD.W           R0, R2, #0x30 ; '0'
5312FC:  CMP             R2, #0
5312FE:  VLDR            S2, [R3]
531302:  VLDR            S0, [R3,#4]
531306:  VLDR            S4, [R3,#8]
53130A:  IT EQ
53130C:  ADDEQ.W         R0, R9, #4
531310:  VLDR            S6, [R0]
531314:  VLDR            S8, [R0,#4]
531318:  VSUB.F32        S2, S6, S2
53131C:  VLDR            S10, [R0,#8]
531320:  VSUB.F32        S0, S8, S0
531324:  VSUB.F32        S4, S10, S4
531328:  VLDR            S10, =0.2
53132C:  VMUL.F32        S8, S2, S2
531330:  VMUL.F32        S6, S0, S0
531334:  VADD.F32        S6, S8, S6
531338:  VABS.F32        S8, S4
53133C:  VMOV.F32        S4, #3.0
531340:  VSQRT.F32       S6, S6
531344:  VMUL.F32        S8, S8, S10
531348:  VADD.F32        S8, S8, S4
53134C:  VCMPE.F32       S6, S8
531350:  VMRS            APSR_nzcv, FPSCR
531354:  BGE             loc_5313EC
531356:  VLDR            S10, =0.1
53135A:  VMOV.F32        S12, #1.0
53135E:  LDR             R0, =(_ZN18CTaskSimpleJetPack11THRUST_FULLE_ptr - 0x53136C)
531360:  VMAX.F32        D5, D3, D5
531364:  VDIV.F32        S6, S6, S8
531368:  ADD             R0, PC; _ZN18CTaskSimpleJetPack11THRUST_FULLE_ptr
53136A:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_FULL ...
53136C:  VDIV.F32        S8, S12, S10
531370:  VSUB.F32        S6, S12, S6
531374:  VLDR            S10, =0.0
531378:  VMUL.F32        S2, S2, S8
53137C:  VMUL.F32        S0, S0, S8
531380:  VMUL.F32        S4, S6, S4
531384:  VMUL.F32        S6, S8, S10
531388:  VMUL.F32        S2, S2, S4
53138C:  VMUL.F32        S0, S0, S4
531390:  VMUL.F32        S4, S6, S4
531394:  VLDR            S6, =0.008
531398:  VMUL.F32        S2, S2, S6
53139C:  VMUL.F32        S0, S0, S6
5313A0:  VMUL.F32        S4, S4, S6
5313A4:  VLDR            S6, [R0]
5313A8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5313AE)
5313AA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5313AC:  VMUL.F32        S2, S2, S6
5313B0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5313B2:  VMUL.F32        S0, S0, S6
5313B6:  VMUL.F32        S4, S4, S6
5313BA:  VLDR            S6, [R9,#0x90]
5313BE:  VMUL.F32        S2, S2, S6
5313C2:  VMUL.F32        S0, S0, S6
5313C6:  VMUL.F32        S4, S4, S6
5313CA:  VLDR            S6, [R0]
5313CE:  MOV             R0, R9
5313D0:  VMUL.F32        S2, S2, S6
5313D4:  VMUL.F32        S0, S0, S6
5313D8:  VMUL.F32        S4, S4, S6
5313DC:  VMOV            R1, S2
5313E0:  VMOV            R2, S0
5313E4:  VMOV            R3, S4
5313E8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5313EC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5313F0:  CMP             R0, #2
5313F2:  ITT EQ
5313F4:  LDRBEQ.W        R0, [R9,#0x484]
5313F8:  MOVSEQ.W        R0, R0,LSL#31
5313FC:  BEQ             loc_531438
5313FE:  MOV             R0, R6; this
531400:  BLX             j__ZN4CPad15GetJetpackHoverEv; CPad::GetJetpackHover(void)
531404:  CMP             R0, #1
531406:  BEQ             loc_531474
531408:  MOVS            R0, #0
53140A:  B               loc_53147C
53140C:  DCFS 60.0
531410:  DCFS 0.0078125
531414:  DCFS -0.1
531418:  DCFS 0.1
53141C:  DCFS 3.1416
531420:  DCFS -6.2832
531424:  DCFS -0.05
531428:  DCFS 0.0
53142C:  DCFS 0.05
531430:  DCFS -3.1416
531434:  DCFS 6.2832
531438:  MOVS            R4, #0
53143A:  MOV             R0, R6; this
53143C:  STRB.W          R4, [R8,#0xD]
531440:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
531444:  CBZ             R0, loc_53144A
531446:  MOVS            R0, #0xFF
531448:  B               loc_531464
53144A:  VCMP.F32        S18, #0.0
53144E:  MOV             R0, R6; this
531450:  VMRS            APSR_nzcv, FPSCR
531454:  IT NE
531456:  MOVNE           R4, #1
531458:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
53145C:  CMP             R0, #0
53145E:  IT NE
531460:  MOVNE           R0, #1
531462:  ORRS            R0, R4
531464:  STRB.W          R0, [R8,#0xE]
531468:  MOV             R0, R6; this
53146A:  BLX             j__ZN4CPad15GetJetpackHoverEv; CPad::GetJetpackHover(void)
53146E:  CMP             R0, #1
531470:  BNE.W           loc_531656
531474:  MOVS            R0, #0
531476:  STR.W           R0, [R8,#0x10]
53147A:  MOVS            R0, #1
53147C:  STRH.W          R0, [R8,#0xD]
531480:  MOV             R0, R6; this
531482:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
531486:  CMP             R0, #0
531488:  ITT NE
53148A:  MOVNE           R0, #1
53148C:  STRBNE.W        R0, [R8,#0xE]
531490:  MOV             R0, R6; this
531492:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
531496:  CMP             R0, #0
531498:  ITT NE
53149A:  MOVNE           R0, #0xFF
53149C:  STRBNE.W        R0, [R8,#0xE]
5314A0:  MOV             R0, R6; this
5314A2:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
5314A6:  MOV             R4, R0
5314A8:  MOV             R0, R6; this
5314AA:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
5314AE:  MOV             R5, R0
5314B0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5314B4:  CMP             R0, #2
5314B6:  BNE             loc_531500
5314B8:  MOVS            R0, #0x56 ; 'V'
5314BA:  MOVS            R1, #0
5314BC:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5314C0:  CMP             R0, #1
5314C2:  MOV.W           R1, #0
5314C6:  ITT EQ
5314C8:  MOVEQ           R0, #1
5314CA:  STRBEQ.W        R0, [R8,#0xE]
5314CE:  MOVS            R0, #0x57 ; 'W'
5314D0:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5314D4:  CMP             R0, #1
5314D6:  MOV.W           R1, #0
5314DA:  ITT EQ
5314DC:  MOVEQ           R0, #0xFF
5314DE:  STRBEQ.W        R0, [R8,#0xE]
5314E2:  MOVS            R0, #0x56 ; 'V'
5314E4:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5314E8:  CMP             R0, #1
5314EA:  BNE             loc_531500
5314EC:  MOVS            R0, #0x57 ; 'W'
5314EE:  MOVS            R1, #0
5314F0:  MOV.W           R10, #0
5314F4:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5314F8:  CMP             R0, #1
5314FA:  IT EQ
5314FC:  STRBEQ.W        R10, [R8,#0xE]
531500:  LDRB.W          R0, [R8,#0xE]
531504:  CBNZ            R0, loc_53150E
531506:  LDRB.W          R0, [R9,#0x484]
53150A:  LSLS            R0, R0, #0x1F
53150C:  BNE             loc_531518
53150E:  CMP             R4, #0
531510:  IT LT
531512:  NEGLT           R4, R4
531514:  CMP             R4, #0x40 ; '@'
531516:  BLE             loc_53151C
531518:  MOVS            R5, #0
53151A:  B               loc_53152E
53151C:  CMP             R5, #0
53151E:  MOV             R0, R5
531520:  IT LT
531522:  NEGLT           R0, R0
531524:  CMP             R0, #0x41 ; 'A'
531526:  ITT GE
531528:  MOVGE           R0, #0
53152A:  STRBGE.W        R0, [R8,#0xE]
53152E:  MOV             R0, R6; this
531530:  MOVS            R1, #1; bool
531532:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
531536:  CBNZ            R0, loc_53153E
531538:  CMP.W           R5, #0xFFFFFFFF
53153C:  BGT             loc_531548
53153E:  MOV             R0, R6; this
531540:  MOVS            R1, #0; bool
531542:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
531546:  CBZ             R0, loc_5315B2
531548:  MOV             R0, R6; this
53154A:  MOVS            R1, #1; bool
53154C:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
531550:  CMP             R5, #0
531552:  BGT             loc_531558
531554:  CMP             R0, #1
531556:  BNE             loc_531562
531558:  MOV             R0, R6; this
53155A:  MOVS            R1, #0; bool
53155C:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
531560:  CBZ             R0, loc_5315DA
531562:  VLDR            S0, [R8,#0x10]
531566:  ADD.W           R0, R8, #0x10
53156A:  VCMPE.F32       S0, #0.0
53156E:  VMRS            APSR_nzcv, FPSCR
531572:  BLE             loc_531594
531574:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53157E)
531576:  VLDR            S2, =-0.05
53157A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53157C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
53157E:  VLDR            S4, [R1]
531582:  VMUL.F32        S2, S4, S2
531586:  VLDR            S4, =0.0
53158A:  VADD.F32        S0, S0, S2
53158E:  VMAX.F32        D0, D0, D2
531592:  B               loc_531600
531594:  BGE             loc_531604
531596:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5315A0)
531598:  VLDR            S2, =0.05
53159C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53159E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5315A0:  VLDR            S4, [R1]
5315A4:  VMUL.F32        S2, S4, S2
5315A8:  VLDR            S4, =0.0
5315AC:  VADD.F32        S0, S0, S2
5315B0:  B               loc_5315FC
5315B2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5315C0)
5315B4:  VMOV.F32        S4, #-1.0
5315B8:  VLDR            S0, =-0.1
5315BC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5315BE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5315C0:  VLDR            S2, [R0]
5315C4:  ADD.W           R0, R8, #0x10
5315C8:  VMUL.F32        S0, S2, S0
5315CC:  VLDR            S2, [R8,#0x10]
5315D0:  VADD.F32        S0, S2, S0
5315D4:  VMAX.F32        D0, D0, D2
5315D8:  B               loc_531600
5315DA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5315E8)
5315DC:  VMOV.F32        S4, #1.0
5315E0:  VLDR            S0, =0.1
5315E4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5315E6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5315E8:  VLDR            S2, [R0]
5315EC:  ADD.W           R0, R8, #0x10
5315F0:  VMUL.F32        S0, S2, S0
5315F4:  VLDR            S2, [R8,#0x10]
5315F8:  VADD.F32        S0, S2, S0
5315FC:  VMIN.F32        D0, D0, D2
531600:  VSTR            S0, [R0]
531604:  VCMPE.F32       S16, #0.0
531608:  VMRS            APSR_nzcv, FPSCR
53160C:  BLE             loc_531644
53160E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531618)
531610:  LDR.W           R1, [R9,#0x444]
531614:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531616:  VLDR            S0, =0.07
53161A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53161C:  VLDR            S4, [R1,#0x14]
531620:  VLDR            S2, [R0]
531624:  VMUL.F32        S0, S2, S0
531628:  VSUB.F32        S2, S16, S4
53162C:  VADD.F32        S4, S0, S4
531630:  VCMPE.F32       S2, S0
531634:  VMRS            APSR_nzcv, FPSCR
531638:  IT GT
53163A:  VMOVGT.F32      S16, S4
53163E:  VSTR            S16, [R1,#0x14]
531642:  B               loc_53164C
531644:  LDR.W           R0, [R9,#0x444]
531648:  MOVS            R1, #0
53164A:  STR             R1, [R0,#0x14]
53164C:  VPOP            {D8-D14}
531650:  POP.W           {R8-R10}
531654:  POP             {R4-R7,PC}
531656:  VLDR            S0, [R8,#0x10]
53165A:  VCMPE.F32       S0, #0.0
53165E:  VMRS            APSR_nzcv, FPSCR
531662:  BLE             loc_531688
531664:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53166E)
531666:  VLDR            S2, =-0.05
53166A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53166C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53166E:  VLDR            S4, [R0]
531672:  VMUL.F32        S2, S4, S2
531676:  VLDR            S4, =0.0
53167A:  VADD.F32        S0, S0, S2
53167E:  VMAX.F32        D0, D0, D2
531682:  VSTR            S0, [R8,#0x10]
531686:  B               loc_531480
531688:  BGE.W           loc_531480
53168C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531696)
53168E:  VLDR            S2, =0.05
531692:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531694:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
531696:  VLDR            S4, [R0]
53169A:  VMUL.F32        S2, S4, S2
53169E:  VLDR            S4, =0.0
5316A2:  VADD.F32        S0, S0, S2
5316A6:  VMIN.F32        D0, D0, D2
5316AA:  VSTR            S0, [R8,#0x10]
5316AE:  B               loc_531480
