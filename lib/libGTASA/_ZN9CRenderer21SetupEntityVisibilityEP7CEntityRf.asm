; =========================================================
; Game Engine Function: _ZN9CRenderer21SetupEntityVisibilityEP7CEntityRf
; Address            : 0x411028 - 0x411494
; =========================================================

411028:  PUSH            {R4-R7,LR}
41102A:  ADD             R7, SP, #0xC
41102C:  PUSH.W          {R8,R9,R11}
411030:  MOV             R4, R0
411032:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x411040)
411036:  MOV             R8, R1
411038:  LDRSH.W         R1, [R4,#0x26]
41103C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41103E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
411040:  LDR.W           R5, [R0,R1,LSL#2]
411044:  LDR             R0, [R5]
411046:  LDR             R1, [R0,#8]
411048:  MOV             R0, R5
41104A:  BLX             R1
41104C:  MOV             R6, R0
41104E:  LDRB.W          R0, [R4,#0x3A]
411052:  AND.W           R0, R0, #7
411056:  CMP             R0, #2
411058:  BNE             loc_41108A
41105A:  LDR             R0, [R4,#0x1C]
41105C:  CMP             R0, #0
41105E:  BLT             loc_41108A
411060:  ANDS.W          R0, R0, #0x40000000
411064:  BEQ             loc_411076
411066:  LDR.W           R1, =(_ZN9CRenderer17ms_bRenderTunnelsE_ptr - 0x41106E)
41106A:  ADD             R1, PC; _ZN9CRenderer17ms_bRenderTunnelsE_ptr
41106C:  LDR             R1, [R1]; CRenderer::ms_bRenderTunnels ...
41106E:  LDRB            R1, [R1]; CRenderer::ms_bRenderTunnels
411070:  CMP             R1, #0
411072:  BEQ.W           loc_411394
411076:  LDR.W           R1, =(_ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr - 0x41107E)
41107A:  ADD             R1, PC; _ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr
41107C:  LDR             R1, [R1]; CRenderer::ms_bRenderOutsideTunnels ...
41107E:  LDRB            R1, [R1]; CRenderer::ms_bRenderOutsideTunnels
411080:  CMP             R1, #0
411082:  IT EQ
411084:  CMPEQ           R0, #0
411086:  BEQ.W           loc_411394
41108A:  LDR             R0, [R5]
41108C:  LDR             R1, [R0,#0x14]
41108E:  MOV             R0, R5
411090:  BLX             R1
411092:  CBZ             R6, loc_4110D8
411094:  CMP             R0, #3
411096:  BNE             loc_411184
411098:  LDR             R0, [R5]
41109A:  LDR             R1, [R0,#0x18]
41109C:  MOV             R0, R5
41109E:  BLX             R1
4110A0:  LDRB            R2, [R0]; unsigned __int8
4110A2:  LDRH            R6, [R0,#2]
4110A4:  LDRB            R1, [R0,#1]; unsigned __int8
4110A6:  MOV             R0, R2; this
4110A8:  SXTH.W          R9, R6
4110AC:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
4110B0:  CMP             R0, #0
4110B2:  BEQ.W           loc_411260
4110B6:  MOVW            R0, #0xFFFF
4110BA:  CMP             R6, R0
4110BC:  BEQ             loc_411190
4110BE:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4110C6)
4110C2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4110C4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4110C6:  LDR.W           R0, [R0,R9,LSL#2]
4110CA:  LDR             R0, [R0,#0x34]
4110CC:  CMP             R0, #0
4110CE:  ITT NE
4110D0:  MOVNE           R0, #0xFF
4110D2:  STRBNE.W        R0, [R5,#0x22]
4110D6:  B               loc_411190
4110D8:  CMP             R0, #5
4110DA:  BEQ             loc_411190
4110DC:  LDR             R0, [R5]
4110DE:  LDR             R1, [R0,#0x14]
4110E0:  MOV             R0, R5
4110E2:  BLX             R1
4110E4:  CMP             R0, #4
4110E6:  BEQ             loc_411190
4110E8:  MOV.W           R0, #0xFFFFFFFF; int
4110EC:  MOVS            R1, #0; bool
4110EE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4110F2:  CMP             R0, R4
4110F4:  BNE.W           loc_411354
4110F8:  LDR.W           R0, =(gbFirstPersonRunThisFrame_ptr - 0x411100)
4110FC:  ADD             R0, PC; gbFirstPersonRunThisFrame_ptr
4110FE:  LDR             R0, [R0]; gbFirstPersonRunThisFrame
411100:  LDRB            R0, [R0]
411102:  CMP             R0, #0
411104:  BEQ.W           loc_411354
411108:  LDR.W           R0, =(TheCamera_ptr - 0x411110)
41110C:  ADD             R0, PC; TheCamera_ptr
41110E:  LDR             R0, [R0]; TheCamera
411110:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
411114:  ADD.W           R1, R1, R1,LSL#5
411118:  ADD.W           R0, R0, R1,LSL#4
41111C:  MOVS            R1, #0; bool
41111E:  LDR.W           R5, [R0,#0x190]
411122:  MOV.W           R0, #0xFFFFFFFF; int
411126:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41112A:  LDR.W           R0, [R0,#0x5A0]
41112E:  CMP             R0, #9
411130:  BNE             loc_411146
411132:  MOV.W           R0, #0xFFFFFFFF; int
411136:  MOVS            R1, #0; bool
411138:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41113C:  LDRSB.W         R0, [R0,#0x628]
411140:  CMP             R0, #0
411142:  BLT.W           loc_411354
411146:  CMP             R5, #3
411148:  BEQ.W           loc_4113AE
41114C:  LDRSH.W         R1, [R4,#0x26]
411150:  MOVS            R0, #2
411152:  UXTH            R2, R1
411154:  CMP.W           R2, #0x1B0
411158:  ITT NE
41115A:  MOVWNE          R3, #0x1B5
41115E:  CMPNE           R2, R3
411160:  BEQ.W           loc_411396
411164:  LDR             R2, =(TheCamera_ptr - 0x41116A)
411166:  ADD             R2, PC; TheCamera_ptr
411168:  LDR             R2, [R2]; TheCamera
41116A:  LDRB.W          R2, [R2,#(byte_951FC8 - 0x951FA8)]
41116E:  CMP             R2, #0
411170:  BNE.W           loc_411396
411174:  CMP             R5, #0
411176:  BEQ.W           loc_411324
41117A:  LDR             R0, =(_ZN9CRenderer21m_pFirstPersonVehicleE_ptr - 0x411180)
41117C:  ADD             R0, PC; _ZN9CRenderer21m_pFirstPersonVehicleE_ptr
41117E:  LDR             R0, [R0]; CRenderer::m_pFirstPersonVehicle ...
411180:  STR             R4, [R0]; CRenderer::m_pFirstPersonVehicle
411182:  B               loc_4113AE
411184:  MOV             R6, R4
411186:  LDR.W           R0, [R6,#0x1C]!
41118A:  TST.W           R0, #0x80000
41118E:  BNE             loc_411282
411190:  MOVS            R3, #1; float
411192:  LDRB.W          R0, [R4,#0x33]
411196:  CMP             R0, #0xD
411198:  BEQ             loc_4111A8
41119A:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x4111A0)
41119C:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
41119E:  LDR             R1, [R1]; CGame::currArea ...
4111A0:  LDR             R1, [R1]; CGame::currArea
4111A2:  CMP             R1, R0
4111A4:  BNE.W           loc_411394
4111A8:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4111B0)
4111AA:  LDR             R1, [R4,#0x34]
4111AC:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4111AE:  VLDR            S4, =300.0
4111B2:  CMP             R1, #0
4111B4:  IT EQ
4111B6:  MOVEQ           R1, R4
4111B8:  LDR             R0, [R0]; CRenderer::ms_vecCameraPosition ...
4111BA:  LDR             R2, [R1,#0x14]
4111BC:  ADD.W           R6, R2, #0x30 ; '0'
4111C0:  CMP             R2, #0
4111C2:  VLDR            S0, [R0]
4111C6:  IT EQ
4111C8:  ADDEQ           R6, R1, #4
4111CA:  VLDR            S2, [R6]
4111CE:  VLDR            D16, [R0,#4]
4111D2:  VSUB.F32        S0, S2, S0
4111D6:  VLDR            D17, [R6,#4]
4111DA:  VSUB.F32        D16, D17, D16
4111DE:  VMUL.F32        D1, D16, D16
4111E2:  VMUL.F32        S0, S0, S0
4111E6:  VADD.F32        S0, S0, S2
4111EA:  VADD.F32        S0, S0, S3
4111EE:  VSQRT.F32       S0, S0
4111F2:  VCMPE.F32       S0, S4
4111F6:  VSTR            S0, [R8]
4111FA:  VMRS            APSR_nzcv, FPSCR
4111FE:  BLE             loc_41124C
411200:  LDR             R0, =(TheCamera_ptr - 0x41120A)
411202:  VLDR            S2, [R5,#0x30]
411206:  ADD             R0, PC; TheCamera_ptr
411208:  LDR             R0, [R0]; TheCamera
41120A:  VLDR            S6, [R0,#0xEC]
41120E:  VMUL.F32        S2, S2, S6
411212:  VCMPE.F32       S2, S4
411216:  VMRS            APSR_nzcv, FPSCR
41121A:  BLE             loc_41124C
41121C:  LDR             R0, =(FadeDistMult_ptr - 0x411226)
41121E:  VMOV.F32        S4, #22.0
411222:  ADD             R0, PC; FadeDistMult_ptr
411224:  LDR             R0, [R0]; FadeDistMult
411226:  VLDR            S6, [R0]
41122A:  VMUL.F32        S4, S6, S4
41122E:  VADD.F32        S4, S2, S4
411232:  VCMPE.F32       S0, S4
411236:  VMRS            APSR_nzcv, FPSCR
41123A:  ITTTT LT
41123C:  VLDRLT          S4, =-300.0
411240:  VADDLT.F32      S2, S2, S4
411244:  VADDLT.F32      S0, S0, S2
411248:  VSTRLT          S0, [R8]
41124C:  VMOV            R2, S0; CBaseModelInfo *
411250:  MOV             R0, R4; this
411252:  MOV             R1, R5; CEntity *
411254:  POP.W           {R8,R9,R11}
411258:  POP.W           {R4-R7,LR}
41125C:  B.W             sub_19A8B0
411260:  MOVW            R0, #0xFFFF
411264:  CMP             R6, R0
411266:  BEQ             loc_411278
411268:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41126E)
41126A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41126C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
41126E:  LDR.W           R0, [R0,R9,LSL#2]
411272:  LDR             R0, [R0,#0x34]
411274:  CMP             R0, #0
411276:  BEQ             loc_411320
411278:  LDR             R0, [R4]
41127A:  LDR             R1, [R0,#0x24]
41127C:  MOV             R0, R4
41127E:  BLX             R1
411280:  B               loc_411394
411282:  LDR             R1, [R4,#0x18]
411284:  CMP             R1, #0
411286:  BEQ.W           loc_411394
41128A:  LSLS            R0, R0, #0x18
41128C:  BMI             loc_4112A0
41128E:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x411294)
411290:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
411292:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
411294:  LDR             R0, [R0]; CMirrors::TypeOfMirror
411296:  CMP             R0, #0
411298:  BEQ             loc_411394
41129A:  LDRH            R0, [R4,#0x26]
41129C:  CMP             R0, #0
41129E:  BNE             loc_411394
4112A0:  MOV             R0, R4; this
4112A2:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4112A6:  CMP             R0, #1
4112A8:  BNE.W           loc_4113AE
4112AC:  MOV             R0, R4; this
4112AE:  BLX             j__ZN7CEntity16IsEntityOccludedEv; CEntity::IsEntityOccluded(void)
4112B2:  CMP             R0, #0
4112B4:  BNE             loc_4113AE
4112B6:  LDRB            R0, [R6,#1]
4112B8:  LSLS            R0, R0, #0x19
4112BA:  BPL.W           loc_4113BE
4112BE:  LDR             R0, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4112C6)
4112C0:  LDR             R1, [R4,#0x14]
4112C2:  ADD             R0, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4112C4:  ADD.W           R2, R1, #0x30 ; '0'
4112C8:  CMP             R1, #0
4112CA:  LDR             R0, [R0]; CRenderer::ms_vecCameraPosition ...
4112CC:  IT EQ
4112CE:  ADDEQ           R2, R4, #4; float
4112D0:  VLDR            S0, [R2]
4112D4:  VLDR            S2, [R2,#4]
4112D8:  VLDR            S6, [R0]
4112DC:  VLDR            S8, [R0,#4]
4112E0:  VSUB.F32        S0, S0, S6
4112E4:  VLDR            S10, [R0,#8]
4112E8:  VSUB.F32        S2, S2, S8
4112EC:  VLDR            S4, [R2,#8]
4112F0:  MOV             R0, R4; this
4112F2:  VSUB.F32        S4, S4, S10
4112F6:  VMUL.F32        S0, S0, S0
4112FA:  VMUL.F32        S2, S2, S2
4112FE:  VMUL.F32        S4, S4, S4
411302:  VADD.F32        S0, S0, S2
411306:  VADD.F32        S0, S0, S4
41130A:  VSQRT.F32       S0, S0
41130E:  VMOV            R1, S0; CEntity *
411312:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
411316:  LDR             R0, [R6]
411318:  BIC.W           R0, R0, #0x8000
41131C:  STR             R0, [R6]
41131E:  B               loc_411394
411320:  MOVS            R3, #0
411322:  B               loc_411192
411324:  LDR.W           R0, [R4,#0x388]
411328:  LDRB.W          R0, [R0,#0xCD]
41132C:  LSLS            R0, R0, #0x19
41132E:  BMI             loc_4113AE
411330:  LDR.W           R0, [R4,#0x5A0]
411334:  CMP             R0, #5
411336:  BNE.W           loc_41117A
41133A:  SUB.W           R0, R1, #0x1AE
41133E:  CMP             R0, #0x1E
411340:  BHI             loc_411354
411342:  MOVS            R1, #1
411344:  LSL.W           R0, R1, R0
411348:  MOVS            R1, #0x41800001
41134E:  TST             R0, R1
411350:  BNE.W           loc_41117A
411354:  LDR             R1, [R4,#0x18]
411356:  MOVS            R0, #0
411358:  CBZ             R1, loc_411396
41135A:  MOV             R5, R4
41135C:  LDRB.W          R1, [R5,#0x1C]!
411360:  CMP.W           R0, R1,LSR#7
411364:  BNE             loc_411374
411366:  LDR             R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x41136C)
411368:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
41136A:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
41136C:  LDR             R0, [R0]; CMirrors::TypeOfMirror
41136E:  CBZ             R0, loc_411394
411370:  LDRH            R0, [R4,#0x26]
411372:  CBNZ            R0, loc_411394
411374:  LDRB.W          R0, [R4,#0x33]
411378:  CMP             R0, #0xD
41137A:  BEQ             loc_41139C
41137C:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x411382)
41137E:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
411380:  LDR             R1, [R1]; CGame::currArea ...
411382:  LDR             R1, [R1]; CGame::currArea
411384:  CMP             R1, R0
411386:  BEQ             loc_41139C
411388:  LDRB.W          R0, [R4,#0x3A]
41138C:  AND.W           R0, R0, #7
411390:  CMP             R0, #2
411392:  BNE             loc_41139C
411394:  MOVS            R0, #0
411396:  POP.W           {R8,R9,R11}
41139A:  POP             {R4-R7,PC}
41139C:  MOV             R0, R4; this
41139E:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4113A2:  CMP             R0, #1
4113A4:  BNE             loc_4113AE
4113A6:  MOV             R0, R4; this
4113A8:  BLX             j__ZN7CEntity16IsEntityOccludedEv; CEntity::IsEntityOccluded(void)
4113AC:  CBZ             R0, loc_4113B6
4113AE:  MOVS            R0, #2
4113B0:  POP.W           {R8,R9,R11}
4113B4:  POP             {R4-R7,PC}
4113B6:  LDR             R0, [R5]
4113B8:  TST.W           R0, #0x4000
4113BC:  BNE             loc_4113C6
4113BE:  MOVS            R0, #1
4113C0:  POP.W           {R8,R9,R11}
4113C4:  POP             {R4-R7,PC}
4113C6:  LDR             R2, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4113D2)
4113C8:  BIC.W           R0, R0, #0x8000
4113CC:  LDR             R1, [R5,#4]
4113CE:  ADD             R2, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4113D0:  STRD.W          R0, R1, [R5]
4113D4:  LDR             R1, [R2]; CRenderer::ms_vecCameraPosition ...
4113D6:  LDR             R0, [R4,#0x14]
4113D8:  ADD.W           R2, R0, #0x30 ; '0'
4113DC:  CMP             R0, #0
4113DE:  VLDR            S0, [R1]
4113E2:  VLDR            S2, [R1,#4]
4113E6:  VLDR            S4, [R1,#8]
4113EA:  IT EQ
4113EC:  ADDEQ           R2, R4, #4; float
4113EE:  VLDR            S6, [R2]
4113F2:  VLDR            S8, [R2,#4]
4113F6:  VSUB.F32        S0, S6, S0
4113FA:  VLDR            S10, [R2,#8]
4113FE:  VSUB.F32        S2, S8, S2
411402:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x411410)
411404:  VSUB.F32        S4, S10, S4
411408:  LDRSH.W         R1, [R4,#0x26]
41140C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41140E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
411410:  VMUL.F32        S0, S0, S0
411414:  VMUL.F32        S2, S2, S2
411418:  LDR.W           R0, [R0,R1,LSL#2]
41141C:  VMUL.F32        S4, S4, S4
411420:  LDRH            R1, [R0,#0x28]
411422:  BIC.W           R1, R1, #1
411426:  STRH            R1, [R0,#0x28]
411428:  LDR             R0, [R5]
41142A:  VADD.F32        S0, S0, S2
41142E:  TST.W           R0, #0x8000
411432:  VADD.F32        S0, S0, S4
411436:  VSQRT.F32       S0, S0
41143A:  BNE             loc_411458
41143C:  LSLS            R0, R0, #0x11
41143E:  BPL             loc_411466
411440:  VMOV            R1, S0; CEntity *
411444:  MOV             R0, R4; this
411446:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
41144A:  CMP             R0, #1
41144C:  BNE             loc_411466
41144E:  LDR             R0, [R5]
411450:  BIC.W           R0, R0, #0x8000
411454:  STR             R0, [R5]
411456:  B               loc_411394
411458:  VMOV            R1, S0; CEntity *
41145C:  MOV             R0, R4; this
41145E:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
411462:  CMP             R0, #0
411464:  BNE             loc_411394
411466:  LDRB.W          R0, [R4,#0x3B]
41146A:  CBZ             R0, loc_41147C
41146C:  LDRB            R0, [R5,#2]
41146E:  LSLS            R0, R0, #0x1B
411470:  BMI             loc_41147C
411472:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x41147A)
411474:  LDR             R1, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x41147C)
411476:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
411478:  ADD             R1, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
41147A:  B               loc_411484
41147C:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x411484)
41147E:  LDR             R1, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x411486)
411480:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
411482:  ADD             R1, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
411484:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
411486:  LDR             R1, [R1]; CRenderer::ms_aVisibleEntityPtrs
411488:  LDR             R2, [R0]; CRenderer::ms_nNoOfVisibleEntities
41148A:  B.W             loc_3F67BE
41148E:  ADDS            R1, R2, #1
411490:  STR             R1, [R0]; CRenderer::ms_nNoOfVisibleEntities
411492:  B               loc_411394
