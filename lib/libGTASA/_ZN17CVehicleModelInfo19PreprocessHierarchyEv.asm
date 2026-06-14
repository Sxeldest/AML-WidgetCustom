; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19PreprocessHierarchyEv
; Address            : 0x387180 - 0x3876CC
; =========================================================

387180:  PUSH            {R4-R7,LR}
387182:  ADD             R7, SP, #0xC
387184:  PUSH.W          {R8-R11}
387188:  SUB             SP, SP, #0x6C
38718A:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x387196)
38718E:  LDR.W           R11, [R0,#0x54]
387192:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
387194:  STR             R0, [SP,#0x88+var_3C]
387196:  LDR             R2, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387198:  MOVS            R1, #0
38719A:  STRB.W          R1, [R0,#0x64]
38719E:  LDR.W           R0, [R2,R11,LSL#2]
3871A2:  LDR             R1, [R0]
3871A4:  CMP             R1, #0
3871A6:  BEQ.W           loc_3876C4
3871AA:  LDR             R4, [SP,#0x88+var_3C]
3871AC:  MOV.W           R10, #0
3871B0:  LDRB.W          R1, [R4,#0x62]
3871B4:  STR             R1, [SP,#0x88+var_6C]
3871B6:  LDR.W           R1, =(_ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr - 0x3871BE)
3871BA:  ADD             R1, PC; _ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr
3871BC:  LDR             R1, [R1]; CClumpModelInfo::FindFrameFromIdCB(RwFrame *,void *)
3871BE:  STR             R1, [SP,#0x88+var_40]
3871C0:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3871C8)
3871C4:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3871C6:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3871C8:  STR             R1, [SP,#0x88+var_44]
3871CA:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3871D2)
3871CE:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3871D0:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3871D2:  STR             R1, [SP,#0x88+var_5C]
3871D4:  LDR.W           R1, =(_ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr - 0x3871DC)
3871D8:  ADD             R1, PC; _ZN15CClumpModelInfo28FindFrameFromNameWithoutIdCBEP7RwFramePv_ptr
3871DA:  LDR             R1, [R1]; CClumpModelInfo::FindFrameFromNameWithoutIdCB(RwFrame *,void *)
3871DC:  STR             R1, [SP,#0x88+var_48]
3871DE:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3871E6)
3871E2:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3871E4:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3871E6:  STR             R1, [SP,#0x88+var_4C]
3871E8:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3871F0)
3871EC:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3871EE:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3871F0:  STR             R1, [SP,#0x88+var_58]
3871F2:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3871FA)
3871F6:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3871F8:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3871FA:  STR             R1, [SP,#0x88+var_64]
3871FC:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x387204)
387200:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
387202:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387204:  STR             R1, [SP,#0x88+var_68]
387206:  LDR.W           R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x38720E)
38720A:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
38720C:  LDR.W           R8, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387210:  MOVS            R1, #0
387212:  STR             R1, [SP,#0x88+var_50]
387214:  MOVS            R1, #0
387216:  STR             R1, [SP,#0x88+var_54]
387218:  STR.W           R8, [SP,#0x88+var_60]
38721C:  ADD.W           R9, R10, R10,LSL#1
387220:  MOV             R2, #0x20208
387228:  ADD.W           R1, R0, R9,LSL#2
38722C:  LDR             R1, [R1,#8]
38722E:  TST             R1, R2
387230:  BEQ.W           loc_3873BE
387234:  MOVS            R1, #0
387236:  ADD             R2, SP, #0x88+var_28
387238:  STR             R1, [SP,#0x88+var_24]
38723A:  LDR.W           R0, [R0,R9,LSL#2]
38723E:  STR             R0, [SP,#0x88+var_28]
387240:  LDR             R0, [R4,#0x34]
387242:  LDR             R1, [SP,#0x88+var_48]
387244:  LDR             R0, [R0,#4]
387246:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
38724A:  LDR.W           R8, [SP,#0x88+var_24]
38724E:  CMP.W           R8, #0
387252:  BEQ.W           loc_3873B0
387256:  LDR             R0, [SP,#0x88+var_58]
387258:  LDR.W           R0, [R0,R11,LSL#2]
38725C:  ADD.W           R1, R0, R9,LSL#2
387260:  LDR             R0, [R1,#8]
387262:  TST.W           R0, #8
387266:  BNE             loc_3872B6
387268:  LSLS            R0, R0, #0xE
38726A:  BMI             loc_387326
38726C:  MOV             R0, R8
38726E:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
387272:  MOV             R6, R0
387274:  MOV             R0, R8
387276:  BLX             j__Z15GetSecondObjectP7RwFrame; GetSecondObject(RwFrame *)
38727A:  LDR             R4, [SP,#0x88+var_3C]
38727C:  MOV             R5, R0
38727E:  MOV             R1, R6
387280:  LDR             R0, [R4,#0x34]
387282:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
387286:  LDR             R0, [R6,#0x18]
387288:  LDRB            R0, [R0,#9]
38728A:  LSLS            R0, R0, #0x1D
38728C:  BMI             loc_38736C
38728E:  LDR             R0, [SP,#0x88+var_64]
387290:  MOV             R1, R8
387292:  LDR.W           R0, [R0,R11,LSL#2]
387296:  ADD.W           R0, R0, R9,LSL#2
38729A:  LDR             R2, [R0,#8]
38729C:  MOV             R0, R4
38729E:  BLX             j__ZN17CVehicleModelInfo24SetVehicleComponentFlagsEP7RwFramej; CVehicleModelInfo::SetVehicleComponentFlags(RwFrame *,uint)
3872A2:  LDR             R0, [R4,#0x74]
3872A4:  MOV             R5, R6
3872A6:  LDRSB.W         R1, [R0,#0x324]
3872AA:  ADD.W           R0, R0, R1,LSL#2
3872AE:  MOVS            R1, #0
3872B0:  STR.W           R1, [R0,#0x30C]
3872B4:  B               loc_387396
3872B6:  VLDR            D16, [R8,#0x40]
3872BA:  LDR.W           R0, [R8,#0x48]
3872BE:  STR             R0, [SP,#0x88+var_30]
3872C0:  VSTR            D16, [SP,#0x88+var_38]
3872C4:  LDR             R1, [R1,#4]
3872C6:  LDR             R2, [SP,#0x88+var_3C]
3872C8:  ADD.W           R1, R1, R1,LSL#1
3872CC:  LDR             R2, [R2,#0x74]
3872CE:  ADD.W           R1, R2, R1,LSL#2
3872D2:  STR             R0, [R1,#8]
3872D4:  VSTR            D16, [R1]
3872D8:  LDR.W           R1, [R8,#4]
3872DC:  CMP             R1, #0
3872DE:  ITTT NE
3872E0:  MOVNE           R6, R1
3872E2:  LDRNE.W         R0, [R6,#4]!
3872E6:  CMPNE           R0, #0
3872E8:  BEQ             loc_38731E
3872EA:  LDR             R4, [SP,#0x88+var_60]
3872EC:  LDR             R5, [SP,#0x88+var_3C]
3872EE:  LDR.W           R0, [R4,R11,LSL#2]
3872F2:  ADD.W           R3, R1, #0x10
3872F6:  LDR             R2, [R5,#0x74]
3872F8:  ADD.W           R0, R0, R9,LSL#2
3872FC:  LDR             R0, [R0,#4]
3872FE:  ADD.W           R0, R0, R0,LSL#1
387302:  ADD.W           R0, R2, R0,LSL#2
387306:  MOVS            R2, #1
387308:  MOV             R1, R0
38730A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
38730E:  LDR             R1, [R6]
387310:  MOV             R6, R1
387312:  LDR.W           R0, [R6,#4]!
387316:  CMP             R0, #0
387318:  BNE             loc_3872EE
38731A:  LDR.W           R8, [SP,#0x88+var_24]
38731E:  MOV             R0, R8
387320:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
387324:  B               loc_3873B0
387326:  LDR.W           R0, [R8,#4]
38732A:  LDR             R6, [R1,#4]
38732C:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
387330:  VLDR            D16, [R8,#0x40]
387334:  MOV             R5, R0
387336:  LDR             R4, [SP,#0x88+var_3C]
387338:  LDR.W           R0, [R8,#0x48]
38733C:  STR             R0, [SP,#0x88+var_30]
38733E:  VSTR            D16, [SP,#0x88+var_38]
387342:  LDR             R1, [R4,#0x74]
387344:  ADD.W           R1, R1, R6,LSL#5
387348:  STR.W           R0, [R1,#0xBC]
38734C:  VSTR            D16, [R1,#0xB4]
387350:  ADD.W           R1, R8, #0x10
387354:  LDR             R0, [R4,#0x74]
387356:  ADD.W           R0, R0, R6,LSL#5
38735A:  ADDS            R0, #0xC0
38735C:  BLX             j__ZN11CQuaternion3SetERK11RwMatrixTag; CQuaternion::Set(RwMatrixTag const&)
387360:  LDR             R0, [R4,#0x74]
387362:  ADD.W           R0, R0, R6,LSL#5
387366:  STR.W           R5, [R0,#0xD0]
38736A:  B               loc_3873B0
38736C:  LDR             R0, [R4,#0x34]
38736E:  MOV             R1, R5
387370:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
387374:  LDR             R0, [SP,#0x88+var_68]
387376:  MOV             R1, R8
387378:  LDR.W           R0, [R0,R11,LSL#2]
38737C:  ADD.W           R0, R0, R9,LSL#2
387380:  LDR             R2, [R0,#8]
387382:  MOV             R0, R4
387384:  BLX             j__ZN17CVehicleModelInfo24SetVehicleComponentFlagsEP7RwFramej; CVehicleModelInfo::SetVehicleComponentFlags(RwFrame *,uint)
387388:  LDR             R0, [R4,#0x74]
38738A:  LDRSB.W         R1, [R0,#0x324]
38738E:  ADD.W           R0, R0, R1,LSL#2
387392:  STR.W           R6, [R0,#0x30C]
387396:  LDR             R0, [R4,#0x74]
387398:  LDRSB.W         R1, [R0,#0x324]
38739C:  ADDS            R2, R1, #1
38739E:  STRB.W          R2, [R0,#0x324]
3873A2:  ADD.W           R0, R0, R1,LSL#2
3873A6:  STR.W           R5, [R0,#0x2F4]
3873AA:  MOV             R0, R8
3873AC:  BLX             j__Z18RwFrameRemoveChildP7RwFrame; RwFrameRemoveChild(RwFrame *)
3873B0:  LDR             R0, [SP,#0x88+var_4C]
3873B2:  LDR             R4, [SP,#0x88+var_3C]
3873B4:  LDR.W           R0, [R0,R11,LSL#2]
3873B8:  ADD.W           R1, R0, R9,LSL#2
3873BC:  LDR             R1, [R1,#8]
3873BE:  TST.W           R1, #0x110000
3873C2:  BEQ             loc_387424
3873C4:  MOVS            R1, #0
3873C6:  ADD.W           R0, R0, R9,LSL#2
3873CA:  STR             R1, [SP,#0x88+var_38+4]
3873CC:  ADD             R2, SP, #0x88+var_38
3873CE:  LDR             R0, [R0,#4]
3873D0:  STR             R0, [SP,#0x88+var_38]
3873D2:  LDR             R0, [R4,#0x34]
3873D4:  LDR             R1, [SP,#0x88+var_40]
3873D6:  LDR             R0, [R0,#4]
3873D8:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3873DC:  LDR             R6, [SP,#0x88+var_38+4]
3873DE:  CBNZ            R6, loc_3873EC
3873E0:  B               loc_38741E
3873E2:  MOV             R0, R6
3873E4:  BLX             j__Z13GetFirstChildP7RwFrame; GetFirstChild(RwFrame *)
3873E8:  MOV             R6, R0
3873EA:  CBZ             R6, loc_38741E
3873EC:  MOV             R0, R6
3873EE:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
3873F2:  CMP             R0, #0
3873F4:  BEQ             loc_3873E2
3873F6:  LDR             R0, [SP,#0x88+var_5C]
3873F8:  LDR.W           R0, [R0,R11,LSL#2]
3873FC:  ADD.W           R0, R0, R9,LSL#2
387400:  LDR             R0, [R0,#8]
387402:  AND.W           R5, R0, #0x10000
387406:  MOV             R0, R6
387408:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
38740C:  CMP             R5, #0
38740E:  LDR             R1, [SP,#0x88+var_50]
387410:  IT NE
387412:  MOVNE           R1, R0
387414:  STR             R1, [SP,#0x88+var_50]
387416:  LDR             R1, [SP,#0x88+var_54]
387418:  IT EQ
38741A:  MOVEQ           R1, R0
38741C:  STR             R1, [SP,#0x88+var_54]
38741E:  LDR             R0, [SP,#0x88+var_44]
387420:  LDR.W           R0, [R0,R11,LSL#2]
387424:  ADD.W           R10, R10, #1
387428:  ADD.W           R1, R10, R10,LSL#1
38742C:  LDR.W           R1, [R0,R1,LSL#2]
387430:  CMP             R1, #0
387432:  BNE.W           loc_38721C
387436:  LDR             R1, [R0]
387438:  CMP             R1, #0
38743A:  BEQ.W           loc_3876C4
38743E:  LDR             R1, =(mod_HandlingManager_ptr - 0x38744C)
387440:  ADD             R4, SP, #0x88+var_38
387442:  LDR             R2, [SP,#0x88+var_6C]
387444:  MOV.W           R10, #8
387448:  ADD             R1, PC; mod_HandlingManager_ptr
38744A:  MOV.W           R8, #0
38744E:  LDR             R1, [R1]; mod_HandlingManager
387450:  RSB.W           R2, R2, R2,LSL#3
387454:  ADD.W           R1, R1, R2,LSL#5
387458:  ADDS            R1, #0xE0
38745A:  STR             R1, [SP,#0x88+var_7C]
38745C:  LDR             R1, =(_ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr - 0x387462)
38745E:  ADD             R1, PC; _ZN15CClumpModelInfo17FindFrameFromIdCBEP7RwFramePv_ptr
387460:  LDR             R5, [R1]; CClumpModelInfo::FindFrameFromIdCB(RwFrame *,void *)
387462:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x387468)
387464:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
387466:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387468:  STR             R1, [SP,#0x88+var_40]
38746A:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x387470)
38746C:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
38746E:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387470:  STR             R1, [SP,#0x88+var_44]
387472:  LDR             R1, =(_ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr - 0x387478)
387474:  ADD             R1, PC; _ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr
387476:  LDR             R1, [R1]; CVisibilityPlugins::RenderWheelAtomicCB(RpAtomic *)
387478:  STR             R1, [SP,#0x88+var_74]
38747A:  LDR             R1, =(_ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr - 0x387480)
38747C:  ADD             R1, PC; _ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr
38747E:  LDR             R1, [R1]; CVisibilityPlugins::RenderWheelAtomicCB(RpAtomic *)
387480:  STR             R1, [SP,#0x88+var_60]
387482:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x387488)
387484:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
387486:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
387488:  STR             R1, [SP,#0x88+var_64]
38748A:  LDR             R1, =(_ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr - 0x387490)
38748C:  ADD             R1, PC; _ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr
38748E:  LDR             R1, [R1]; CVisibilityPlugins::RenderWheelAtomicCB(RpAtomic *)
387490:  STR             R1, [SP,#0x88+var_80]
387492:  LDR             R1, =(_ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr - 0x387498)
387494:  ADD             R1, PC; _ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr
387496:  LDR             R1, [R1]; CVehicleModelInfo::CollapseFramesCB(RwFrame *,void *)
387498:  STR             R1, [SP,#0x88+var_68]
38749A:  LDR             R1, =(_ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr - 0x3874A0)
38749C:  ADD             R1, PC; _ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic_ptr
38749E:  LDR             R1, [R1]; CVisibilityPlugins::RenderWheelAtomicCB(RpAtomic *)
3874A0:  STR             R1, [SP,#0x88+var_6C]
3874A2:  LDR             R1, =(_ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr - 0x3874A8)
3874A4:  ADD             R1, PC; _ZN17CVehicleModelInfo16CollapseFramesCBEP7RwFramePv_ptr
3874A6:  LDR             R1, [R1]; CVehicleModelInfo::CollapseFramesCB(RwFrame *,void *)
3874A8:  STR             R1, [SP,#0x88+var_48]
3874AA:  LDR             R1, =(_Z23GetOkAndDamagedAtomicCBP8RwObjectPv_ptr - 0x3874B0)
3874AC:  ADD             R1, PC; _Z23GetOkAndDamagedAtomicCBP8RwObjectPv_ptr
3874AE:  LDR             R1, [R1]; GetOkAndDamagedAtomicCB(RwObject *,void *)
3874B0:  STR             R1, [SP,#0x88+var_4C]
3874B2:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3874B8)
3874B4:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3874B6:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3874B8:  STR             R1, [SP,#0x88+var_58]
3874BA:  LDR             R1, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x3874C0)
3874BC:  ADD             R1, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
3874BE:  LDR             R1, [R1]; AtomicDefaultRenderCallBack(RpAtomic *)
3874C0:  STR             R1, [SP,#0x88+var_78]
3874C2:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3874C8)
3874C4:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3874C6:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3874C8:  STR             R1, [SP,#0x88+var_70]
3874CA:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3874D0)
3874CC:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3874CE:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3874D0:  STR             R1, [SP,#0x88+var_5C]
3874D2:  LDR             R1, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x3874D8)
3874D4:  ADD             R1, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
3874D6:  LDR.W           R9, [R1]; CVehicleModelInfo::ms_vehicleDescs ...
3874DA:  B               loc_3876A0
3874DC:  ADD             R0, R10
3874DE:  STR.W           R8, [SP,#0x88+var_38+4]
3874E2:  MOV             R1, R5
3874E4:  MOV             R2, R4
3874E6:  LDR.W           R0, [R0,#-4]
3874EA:  STR             R0, [SP,#0x88+var_38]
3874EC:  LDR             R0, [SP,#0x88+var_3C]
3874EE:  LDR             R0, [R0,#0x34]
3874F0:  LDR             R0, [R0,#4]
3874F2:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
3874F6:  LDR             R3, [SP,#0x88+var_38+4]
3874F8:  CMP             R3, #0
3874FA:  BEQ.W           loc_3876B2
3874FE:  LDR             R0, [SP,#0x88+var_40]
387500:  LDR.W           R0, [R0,R11,LSL#2]
387504:  LDR.W           R2, [R0,R10]
387508:  TST.W           R2, #0x10
38750C:  BEQ             loc_387524
38750E:  LDR             R1, [SP,#0x88+var_3C]
387510:  LDRB.W          R0, [R1,#0x64]
387514:  ADDS            R0, #1
387516:  STRB.W          R0, [R1,#0x64]
38751A:  LDR             R0, [SP,#0x88+var_5C]
38751C:  LDR.W           R0, [R0,R11,LSL#2]
387520:  LDR.W           R2, [R0,R10]
387524:  LSLS            R0, R2, #0x1E
387526:  BPL             loc_38758A
387528:  STRD.W          R8, R8, [SP,#0x88+var_28]
38752C:  MOV             R0, R3
38752E:  LDR             R1, [SP,#0x88+var_48]
387530:  MOV             R2, R3
387532:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
387536:  LDR             R0, [SP,#0x88+var_38+4]
387538:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
38753C:  LDR             R0, [SP,#0x88+var_38+4]
38753E:  ADD             R2, SP, #0x88+var_28
387540:  LDR             R1, [SP,#0x88+var_4C]
387542:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
387546:  LDR             R1, [SP,#0x88+var_28]
387548:  CMP             R1, #0
38754A:  ITT NE
38754C:  LDRNE           R0, [SP,#0x88+var_24]
38754E:  CMPNE           R0, #0
387550:  BEQ             loc_38757E
387552:  LDR             R1, [R1,#0x48]
387554:  MOVS            R3, #1
387556:  STR             R1, [R0,#0x48]
387558:  CMP             R1, #0
38755A:  ITT EQ
38755C:  LDREQ           R1, [SP,#0x88+var_78]
38755E:  STREQ           R1, [R0,#0x48]
387560:  LDR             R0, [SP,#0x88+var_70]
387562:  LDR             R1, [SP,#0x88+var_3C]
387564:  LDR.W           R0, [R0,R11,LSL#2]
387568:  LDR             R1, [R1,#0x74]
38756A:  ADD             R0, R10
38756C:  LDR.W           R0, [R0,#-4]
387570:  LDR.W           R2, [R1,#0x328]
387574:  LSL.W           R0, R3, R0
387578:  ORRS            R0, R2
38757A:  STR.W           R0, [R1,#0x328]
38757E:  LDR             R0, [SP,#0x88+var_58]
387580:  LDR             R3, [SP,#0x88+var_38+4]
387582:  LDR.W           R0, [R0,R11,LSL#2]
387586:  LDR.W           R2, [R0,R10]
38758A:  LDR             R0, [SP,#0x88+var_3C]
38758C:  MOV             R1, R3
38758E:  BLX             j__ZN17CVehicleModelInfo24SetVehicleComponentFlagsEP7RwFramej; CVehicleModelInfo::SetVehicleComponentFlags(RwFrame *,uint)
387592:  LDR             R0, [SP,#0x88+var_44]
387594:  MOVS            R1, #0x10004
38759A:  LDR.W           R0, [R0,R11,LSL#2]
38759E:  LDR.W           R0, [R0,R10]
3875A2:  TST             R0, R1
3875A4:  BEQ             loc_38765A
3875A6:  LDR             R1, [SP,#0x88+var_50]
3875A8:  CMP             R1, #0
3875AA:  BEQ.W           loc_3876B2
3875AE:  LSLS            R0, R0, #0xF
3875B0:  BMI             loc_387686
3875B2:  LDR             R0, [SP,#0x88+var_50]
3875B4:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
3875B8:  LDR             R1, [SP,#0x88+var_38+4]
3875BA:  MOV             R6, R0
3875BC:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
3875C0:  LDR             R0, [SP,#0x88+var_3C]
3875C2:  MOV             R1, R6
3875C4:  LDR             R0, [R0,#0x34]
3875C6:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
3875CA:  LDR             R1, [SP,#0x88+var_60]
3875CC:  MOV             R0, R6
3875CE:  ADD             R4, SP, #0x88+var_38
3875D0:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
3875D4:  LDR             R0, [SP,#0x88+var_64]
3875D6:  LDR.W           R0, [R0,R11,LSL#2]
3875DA:  ADD             R0, R10
3875DC:  LDR.W           R0, [R0,#-4]
3875E0:  CMP             R0, #2
3875E2:  IT NE
3875E4:  CMPNE           R0, #5
3875E6:  BEQ             loc_3876B2
3875E8:  LDR             R0, [SP,#0x88+var_7C]
3875EA:  LDRB            R0, [R0,#3]
3875EC:  LSLS            R0, R0, #0x1A
3875EE:  BPL             loc_3876B2
3875F0:  LDR             R0, [SP,#0x88+var_50]
3875F2:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
3875F6:  MOV             R4, R0
3875F8:  STR             R4, [SP,#0x88+var_84]
3875FA:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
3875FE:  MOV             R6, R0
387600:  MOV             R0, R4
387602:  MOV             R1, R6
387604:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387608:  LDR             R0, [SP,#0x88+var_38+4]
38760A:  MOV             R1, R6
38760C:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
387610:  MOV.W           R0, #0x3F800000
387614:  MOVS            R1, #:lower16:(elf_hash_chain+0xFE9B)
387616:  STRD.W          R8, R0, [R6,#0x20]
38761A:  MOVT            R1, #:upper16:(elf_hash_chain+0xFE9B)
38761E:  STR.W           R8, [R6,#0x18]
387622:  ADD             R4, SP, #0x88+var_38
387624:  STRD.W          R0, R8, [R6,#0x10]
387628:  STR.W           R8, [R6,#0x28]
38762C:  STRD.W          R8, R8, [R6,#0x30]
387630:  STR             R0, [R6,#0x38]
387632:  MOV             R0, #0xBE933333
38763A:  STRD.W          R0, R8, [R6,#0x40]
38763E:  STR.W           R8, [R6,#0x48]
387642:  LDR             R0, [R6,#0x1C]
387644:  ORRS            R0, R1
387646:  STR             R0, [R6,#0x1C]
387648:  LDR             R0, [SP,#0x88+var_3C]
38764A:  LDR             R6, [SP,#0x88+var_84]
38764C:  LDR             R0, [R0,#0x34]
38764E:  MOV             R1, R6
387650:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
387654:  MOV             R0, R6
387656:  LDR             R1, [SP,#0x88+var_80]
387658:  B               loc_38769A
38765A:  LDR             R1, [SP,#0x88+var_54]
38765C:  CMP             R1, #0
38765E:  IT NE
387660:  ANDSNE.W        R0, R0, #0x200000
387664:  BEQ             loc_3876B2
387666:  LDR             R0, [SP,#0x88+var_54]
387668:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
38766C:  LDR             R1, [SP,#0x88+var_38+4]
38766E:  MOV             R6, R0
387670:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
387674:  LDR             R0, [SP,#0x88+var_3C]
387676:  MOV             R1, R6
387678:  LDR             R0, [R0,#0x34]
38767A:  BLX             j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
38767E:  LDR             R1, [SP,#0x88+var_74]
387680:  ADD             R4, SP, #0x88+var_38
387682:  MOV             R0, R6
387684:  B               loc_38769A
387686:  LDR             R0, [SP,#0x88+var_38+4]
387688:  LDR             R1, [SP,#0x88+var_68]
38768A:  MOV             R2, R0
38768C:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
387690:  LDR             R0, [SP,#0x88+var_38+4]
387692:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
387696:  LDR             R0, [SP,#0x88+var_50]
387698:  LDR             R1, [SP,#0x88+var_6C]
38769A:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
38769E:  B               loc_3876B2
3876A0:  LDR.W           R1, [R0,R10]
3876A4:  MOV             R2, #0x20208
3876AC:  TST             R1, R2
3876AE:  BEQ.W           loc_3874DC
3876B2:  LDR.W           R0, [R9,R11,LSL#2]
3876B6:  ADD.W           R1, R0, R10
3876BA:  ADD.W           R10, R10, #0xC
3876BE:  LDR             R1, [R1,#4]
3876C0:  CMP             R1, #0
3876C2:  BNE             loc_3876A0
3876C4:  ADD             SP, SP, #0x6C ; 'l'
3876C6:  POP.W           {R8-R11}
3876CA:  POP             {R4-R7,PC}
