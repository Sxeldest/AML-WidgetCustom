; =========================================================
; Game Engine Function: _ZN6CPedIK19PointGunInDirectionEffbf
; Address            : 0x4B9158 - 0x4B94B8
; =========================================================

4B9158:  PUSH            {R4-R7,LR}
4B915A:  ADD             R7, SP, #0xC
4B915C:  PUSH.W          {R8-R11}
4B9160:  SUB             SP, SP, #4
4B9162:  VPUSH           {D8-D9}
4B9166:  SUB             SP, SP, #0x10
4B9168:  MOV             R11, R0
4B916A:  VMOV            S0, R1; float
4B916E:  LDR.W           R0, [R11]
4B9172:  MOV             R8, R3
4B9174:  MOV             R9, R2
4B9176:  ADDW            R0, R0, #0x55C
4B917A:  VLDR            S2, [R0]
4B917E:  VSUB.F32        S0, S0, S2
4B9182:  VMOV            R0, S0; this
4B9186:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4B918A:  MOV             R10, R0
4B918C:  LDR.W           R0, [R11]
4B9190:  LDR.W           R1, [R11,#0x1C]
4B9194:  MOVS            R2, #2
4B9196:  BFI.W           R1, R2, #0, #2
4B919A:  STR.W           R1, [R11,#0x1C]
4B919E:  LDR             R0, [R0,#0x18]
4B91A0:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4B91A4:  MOV             R6, R0
4B91A6:  LDR.W           R0, [R11]
4B91AA:  LDR.W           R0, [R0,#0x4D4]
4B91AE:  LDR             R1, [R0,#0x14]
4B91B0:  MOV             R0, R6
4B91B2:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4B91B6:  MOV             R5, R0
4B91B8:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
4B91BC:  MOV             R4, R0
4B91BE:  MOV             R0, R6
4B91C0:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4B91C4:  ADD.W           R0, R0, R5,LSL#6
4B91C8:  ADD.W           R2, R0, #0x20 ; ' '
4B91CC:  MOV             R1, R0
4B91CE:  ADDS            R0, #0x30 ; '0'
4B91D0:  VLD1.32         {D22-D23}, [R0]
4B91D4:  ADD.W           R0, R4, #0x30 ; '0'
4B91D8:  VLD1.32         {D16-D17}, [R1]!
4B91DC:  VLD1.32         {D18-D19}, [R2]
4B91E0:  VLD1.32         {D20-D21}, [R1]
4B91E4:  VST1.32         {D22-D23}, [R0]
4B91E8:  ADD.W           R0, R4, #0x20 ; ' '
4B91EC:  VST1.32         {D18-D19}, [R0]
4B91F0:  MOV             R0, R4
4B91F2:  VST1.32         {D16-D17}, [R0]!
4B91F6:  VST1.32         {D20-D21}, [R0]
4B91FA:  MOV             R0, R4
4B91FC:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
4B9200:  VLDR            S2, [R7,#arg_0]
4B9204:  VMOV            S0, R9
4B9208:  VMOV            S4, R10
4B920C:  VCMPE.F32       S2, #0.0
4B9210:  VMRS            APSR_nzcv, FPSCR
4B9214:  BGE             loc_4B923A
4B9216:  VLDR            S2, [R11,#4]
4B921A:  LDR             R0, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9224)
4B921C:  VSUB.F32        S6, S2, S4
4B9220:  ADD             R0, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9222:  LDR             R0, [R0]; CPedIK::ms_torsoInfo ...
4B9224:  VABS.F32        S8, S6
4B9228:  VLDR            S6, [R0,#8]
4B922C:  VCMPE.F32       S8, S6
4B9230:  VMRS            APSR_nzcv, FPSCR
4B9234:  BGE             loc_4B927A
4B9236:  MOVS            R0, #2
4B9238:  B               loc_4B92FE
4B923A:  VMUL.F32        S4, S4, S2
4B923E:  LDR             R0, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9248)
4B9240:  VMUL.F32        S0, S0, S2
4B9244:  ADD             R0, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9246:  LDR             R0, [R0]; CPedIK::ms_torsoInfo ...
4B9248:  VSTR            S4, [R11,#4]
4B924C:  VSTR            S0, [R11,#8]
4B9250:  VLDR            S6, [R0]
4B9254:  VCMPE.F32       S4, S6
4B9258:  VMRS            APSR_nzcv, FPSCR
4B925C:  BGT             loc_4B9272
4B925E:  LDR             R0, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9264)
4B9260:  ADD             R0, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9262:  LDR             R0, [R0]; CPedIK::ms_torsoInfo ...
4B9264:  VLDR            S6, [R0,#4]
4B9268:  VCMPE.F32       S4, S6
4B926C:  VMRS            APSR_nzcv, FPSCR
4B9270:  BGE             loc_4B928A
4B9272:  MOVS            R1, #0
4B9274:  VSTR            S6, [R11,#4]
4B9278:  B               loc_4B928C
4B927A:  VCMPE.F32       S2, S4
4B927E:  VMRS            APSR_nzcv, FPSCR
4B9282:  BGE             loc_4B92EC
4B9284:  VADD.F32        S4, S2, S6
4B9288:  B               loc_4B92FC
4B928A:  MOVS            R1, #1
4B928C:  LDR             R0, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9292)
4B928E:  ADD             R0, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9290:  LDR             R0, [R0]; CPedIK::ms_torsoInfo ...
4B9292:  VLDR            S4, [R0,#0xC]
4B9296:  VCMPE.F32       S0, S4
4B929A:  VMRS            APSR_nzcv, FPSCR
4B929E:  BGT             loc_4B92B4
4B92A0:  LDR             R0, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B92A6)
4B92A2:  ADD             R0, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B92A4:  LDR             R0, [R0]; CPedIK::ms_torsoInfo ...
4B92A6:  VLDR            S4, [R0,#0x10]
4B92AA:  VCMPE.F32       S0, S4
4B92AE:  VMRS            APSR_nzcv, FPSCR
4B92B2:  BGE             loc_4B92BA
4B92B4:  MOVS            R1, #0
4B92B6:  VSTR            S4, [R11,#8]
4B92BA:  VLDR            S0, =0.9
4B92BE:  CMP             R1, #0
4B92C0:  MOV             R0, R1
4B92C2:  VCMPE.F32       S2, S0
4B92C6:  IT NE
4B92C8:  MOVNE           R0, #2
4B92CA:  VMRS            APSR_nzcv, FPSCR
4B92CE:  IT LE
4B92D0:  MOVLE           R0, R1
4B92D2:  CMP             R0, #0
4B92D4:  BEQ             loc_4B939A
4B92D6:  CMP             R0, #2
4B92D8:  MOV.W           R6, #1
4B92DC:  ITTT EQ
4B92DE:  LDREQ.W         R0, [R11,#0x1C]
4B92E2:  ORREQ.W         R0, R0, #1
4B92E6:  STREQ.W         R0, [R11,#0x1C]
4B92EA:  B               loc_4B939C
4B92EC:  VCMPE.F32       S2, S4
4B92F0:  VMRS            APSR_nzcv, FPSCR
4B92F4:  BLE.W           loc_4B94AA
4B92F8:  VSUB.F32        S4, S2, S6
4B92FC:  MOVS            R0, #1
4B92FE:  VSTR            S4, [R11,#4]
4B9302:  LDR             R1, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9308)
4B9304:  ADD             R1, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9306:  LDR             R1, [R1]; CPedIK::ms_torsoInfo ...
4B9308:  VLDR            S2, [R1]
4B930C:  VCMPE.F32       S4, S2
4B9310:  VMRS            APSR_nzcv, FPSCR
4B9314:  BGT             loc_4B932A
4B9316:  LDR             R1, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B931C)
4B9318:  ADD             R1, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B931A:  LDR             R1, [R1]; CPedIK::ms_torsoInfo ...
4B931C:  VLDR            S2, [R1,#4]
4B9320:  VCMPE.F32       S4, S2
4B9324:  VMRS            APSR_nzcv, FPSCR
4B9328:  BGE             loc_4B9330
4B932A:  MOVS            R0, #0
4B932C:  VSTR            S2, [R11,#4]
4B9330:  VLDR            S2, [R11,#8]
4B9334:  LDR             R1, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B933E)
4B9336:  VSUB.F32        S4, S2, S0
4B933A:  ADD             R1, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B933C:  LDR             R1, [R1]; CPedIK::ms_torsoInfo ...
4B933E:  VABS.F32        S6, S4
4B9342:  VLDR            S4, [R1,#0x14]
4B9346:  VCMPE.F32       S6, S4
4B934A:  VMRS            APSR_nzcv, FPSCR
4B934E:  BLT             loc_4B936A
4B9350:  VCMPE.F32       S2, S0
4B9354:  VMRS            APSR_nzcv, FPSCR
4B9358:  BGE             loc_4B9360
4B935A:  VADD.F32        S0, S2, S4
4B935E:  B               loc_4B9368
4B9360:  BLE.W           loc_4B94B2
4B9364:  VSUB.F32        S0, S2, S4
4B9368:  MOVS            R0, #1
4B936A:  VSTR            S0, [R11,#8]
4B936E:  LDR             R1, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9374)
4B9370:  ADD             R1, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9372:  LDR             R1, [R1]; CPedIK::ms_torsoInfo ...
4B9374:  VLDR            S2, [R1,#0xC]
4B9378:  VCMPE.F32       S0, S2
4B937C:  VMRS            APSR_nzcv, FPSCR
4B9380:  BGT             loc_4B9396
4B9382:  LDR             R1, =(_ZN6CPedIK12ms_torsoInfoE_ptr - 0x4B9388)
4B9384:  ADD             R1, PC; _ZN6CPedIK12ms_torsoInfoE_ptr
4B9386:  LDR             R1, [R1]; CPedIK::ms_torsoInfo ...
4B9388:  VLDR            S2, [R1,#0x10]
4B938C:  VCMPE.F32       S0, S2
4B9390:  VMRS            APSR_nzcv, FPSCR
4B9394:  BGE             loc_4B92D2
4B9396:  VSTR            S2, [R11,#8]
4B939A:  MOVS            R6, #0
4B939C:  LDR.W           R0, [R11]
4B93A0:  LDR             R0, [R0,#0x18]
4B93A2:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4B93A6:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4B93AA:  LDRD.W          R1, R0, [R0,#0xA0]
4B93AE:  EOR.W           R0, R0, #0x80000000; y
4B93B2:  EOR.W           R1, R1, #0x80000000; x
4B93B6:  BLX             atan2f
4B93BA:  LDR.W           R1, [R11]; float
4B93BE:  VMOV            S0, R0
4B93C2:  ADDW            R0, R1, #0x55C
4B93C6:  VLDR            S2, [R0]
4B93CA:  VSUB.F32        S0, S0, S2
4B93CE:  VMOV            R0, S0; this
4B93D2:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4B93D6:  MOV             R5, R0
4B93D8:  MOVS            R0, #0
4B93DA:  VMOV            S0, R5
4B93DE:  CMP.W           R8, #1
4B93E2:  STR             R0, [SP,#0x40+var_3C]
4B93E4:  VNEG.F32        S16, S0
4B93E8:  BNE             loc_4B9404
4B93EA:  MOV             R0, R5; x
4B93EC:  BLX             cosf
4B93F0:  MOV             R4, R0
4B93F2:  VMOV            R0, S16; x
4B93F6:  BLX             sinf
4B93FA:  VMOV            S0, R0
4B93FE:  VMOV            S2, R4
4B9402:  B               loc_4B9420
4B9404:  VMOV            R0, S16; x
4B9408:  BLX             sinf
4B940C:  MOV             R4, R0
4B940E:  MOV             R0, R5; x
4B9410:  BLX             cosf
4B9414:  VMOV            S0, R0
4B9418:  EOR.W           R0, R4, #0x80000000
4B941C:  VMOV            S2, R0
4B9420:  VSTR            S0, [SP,#0x40+var_34]
4B9424:  ADD             R1, SP, #0x40+var_3C
4B9426:  VSTR            S2, [SP,#0x40+var_38]
4B942A:  MOVS            R3, #2
4B942C:  VLDR            S16, =180.0
4B9430:  VLDR            S0, [R11,#8]
4B9434:  VLDR            S18, =3.1416
4B9438:  VMUL.F32        S0, S0, S16
4B943C:  LDR.W           R0, [R11]
4B9440:  LDR.W           R0, [R0,#0x498]
4B9444:  LDR             R4, [R0,#0x10]
4B9446:  VDIV.F32        S0, S0, S18
4B944A:  MOV             R0, R4
4B944C:  VMOV            R2, S0
4B9450:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4B9454:  VLDR            S0, [R11,#4]
4B9458:  MOVS            R3, #2
4B945A:  LDR             R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x4B9464)
4B945C:  VMUL.F32        S0, S0, S16
4B9460:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
4B9462:  LDR             R1, [R0]; CPedIK::XaxisIK ...
4B9464:  MOV             R0, R4
4B9466:  VDIV.F32        S0, S0, S18
4B946A:  VMOV            R2, S0
4B946E:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4B9472:  LDR.W           R0, [R11]
4B9476:  LDR.W           R2, [R0,#0x488]
4B947A:  LDR.W           R1, [R0,#0x484]
4B947E:  LDR.W           R3, [R0,#0x48C]
4B9482:  ORR.W           R2, R2, #0x4000
4B9486:  LDR.W           R5, [R0,#0x490]
4B948A:  STR.W           R1, [R0,#0x484]
4B948E:  STR.W           R2, [R0,#0x488]
4B9492:  STR.W           R3, [R0,#0x48C]
4B9496:  STR.W           R5, [R0,#0x490]
4B949A:  MOV             R0, R6
4B949C:  ADD             SP, SP, #0x10
4B949E:  VPOP            {D8-D9}
4B94A2:  ADD             SP, SP, #4
4B94A4:  POP.W           {R8-R11}
4B94A8:  POP             {R4-R7,PC}
4B94AA:  MOVS            R0, #1
4B94AC:  VMOV.F32        S4, S2
4B94B0:  B               loc_4B9302
4B94B2:  VMOV.F32        S0, S2
4B94B6:  B               loc_4B936E
