; =========================================================
; Game Engine Function: _Z12RtTileRenderP8RwCameraiiiiPFS0_S0_iiPvEPFP7RwImageS5_iiS1_ES1_
; Address            : 0x21200C - 0x21250C
; =========================================================

21200C:  PUSH            {R4-R7,LR}
21200E:  ADD             R7, SP, #0xC
212010:  PUSH.W          {R8-R11}
212014:  SUB             SP, SP, #4
212016:  VPUSH           {D8-D15}
21201A:  SUB             SP, SP, #0x98
21201C:  MOV             R11, R3
21201E:  MOV             R10, R1
212020:  MOV             R8, R2
212022:  MOV             R5, R0
212024:  MOVS            R6, #0
212026:  CMP             R10, R11
212028:  BLT.W           loc_2124FC
21202C:  CMP.W           R10, #1
212030:  IT GE
212032:  CMPGE.W         R8, #1
212036:  BLT.W           loc_2124FC
21203A:  CMP.W           R11, #1
21203E:  ITT GE
212040:  LDRGE.W         R9, [R7,#arg_0]
212044:  CMPGE.W         R9, #1
212048:  BLT.W           loc_2124FC
21204C:  MOVS            R6, #0
21204E:  CMP             R5, #0
212050:  BEQ.W           loc_2124FC
212054:  CMP             R8, R9
212056:  BLT.W           loc_2124FC
21205A:  MOV             R0, R10
21205C:  MOV             R1, R11
21205E:  BLX             __aeabi_idivmod
212062:  CMP             R1, #0
212064:  BLE             loc_21206A
212066:  MOVS            R6, #0
212068:  B               loc_2124FC
21206A:  MOV             R0, R8
21206C:  MOV             R1, R9
21206E:  BLX             __aeabi_idivmod
212072:  MOVS            R6, #0
212074:  CMP             R1, #0
212076:  BGT.W           loc_2124FC
21207A:  MOVS            R0, #1
21207C:  STR             R6, [SP,#0xF8+var_C4]
21207E:  STR             R0, [SP,#0xF8+var_CC]
212080:  STR             R6, [SP,#0xF8+var_9C]
212082:  BLX             j__Z14RwCameraCreatev; RwCameraCreate(void)
212086:  LDR             R1, [R5,#0x14]
212088:  MOV             R4, R0
21208A:  LDR             R0, [R5,#4]
21208C:  STR             R1, [SP,#0xF8+var_D4]
21208E:  LDR             R1, [R5,#0x60]
212090:  STR             R1, [SP,#0xF8+var_D8]
212092:  LDR             R1, [R5,#0x64]
212094:  STR             R1, [SP,#0xF8+var_E0]
212096:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
21209A:  STR             R0, [SP,#0xF8+var_DC]
21209C:  LDR             R0, [R5,#0x18]
21209E:  VLDR            S16, [R5,#0x68]
2120A2:  VLDR            S18, [R5,#0x6C]
2120A6:  VLDR            S20, [R5,#0x78]
2120AA:  VLDR            S22, [R5,#0x7C]
2120AE:  STR             R0, [R4,#0x18]
2120B0:  LDR             R0, [R5,#0x1C]
2120B2:  STR             R0, [R4,#0x1C]
2120B4:  MOV             R0, R4
2120B6:  LDR.W           R1, [R5,#0x80]
2120BA:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
2120BE:  LDR.W           R1, [R5,#0x84]
2120C2:  MOV             R0, R4
2120C4:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
2120C8:  MOV             R0, R4
2120CA:  STR             R0, [SP,#0xF8+var_D0]
2120CC:  LDRD.W          R4, R1, [SP,#0xF8+var_D8]
2120D0:  BLX             j__Z21RwCameraSetProjectionP8RwCamera18RwCameraProjection; RwCameraSetProjection(RwCamera *,RwCameraProjection)
2120D4:  LDR             R0, [R4,#0xC]
2120D6:  CMP             R0, R11
2120D8:  BLT.W           loc_2124D8
2120DC:  LDR             R0, [R4,#0x10]
2120DE:  MOVS            R6, #0
2120E0:  CMP             R0, R9
2120E2:  BLT.W           loc_2124D8
2120E6:  MOVS            R0, #0; int
2120E8:  MOVS            R1, #0; int
2120EA:  MOVS            R2, #0; int
2120EC:  MOVS            R3, #2; int
2120EE:  STRD.W          R6, R6, [SP,#0xF8+var_98]
2120F2:  STRD.W          R11, R9, [SP,#0xF8+var_90]
2120F6:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
2120FA:  MOV             R6, R0
2120FC:  CMP             R6, #0
2120FE:  BEQ             loc_2121D4
212100:  ADD             R2, SP, #0xF8+var_98
212102:  MOV             R0, R6
212104:  MOV             R1, R4
212106:  BLX             j__Z17RwRasterSubRasterP8RwRasterS0_P6RwRect; RwRasterSubRaster(RwRaster *,RwRaster *,RwRect *)
21210A:  LDR             R0, [SP,#0xF8+var_D0]
21210C:  MOVS            R1, #0; int
21210E:  STR             R6, [SP,#0xF8+var_D8]
212110:  MOVS            R2, #0; int
212112:  MOVS            R3, #1; int
212114:  STR             R6, [R0,#0x60]
212116:  MOVS            R0, #0; int
212118:  MOVS            R6, #0
21211A:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
21211E:  LDR             R1, [SP,#0xF8+var_E0]
212120:  ADD             R2, SP, #0xF8+var_98
212122:  MOV             R4, R0
212124:  BLX             j__Z17RwRasterSubRasterP8RwRasterS0_P6RwRect; RwRasterSubRaster(RwRaster *,RwRaster *,RwRect *)
212128:  LDR             R0, [SP,#0xF8+var_D0]
21212A:  MOV             R1, R9; int
21212C:  MOVS            R2, #0x20 ; ' '; int
21212E:  STR             R4, [R0,#0x64]
212130:  MOV             R0, R11; int
212132:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
212136:  CMP             R0, #0
212138:  BEQ.W           loc_2124C4
21213C:  STR             R0, [SP,#0xF8+var_E0]
21213E:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
212142:  CMP             R0, #0
212144:  BEQ             loc_2121E6
212146:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
21214A:  MOV             R3, R0
21214C:  CMP             R3, #0
21214E:  BEQ             loc_2121E6
212150:  LDR             R2, [SP,#0xF8+var_DC]
212152:  ADD.W           R1, R2, #0x20 ; ' '
212156:  MOV             R0, R2
212158:  VLD1.32         {D18-D19}, [R1]
21215C:  MOV             R1, R3
21215E:  VLD1.32         {D16-D17}, [R0]!
212162:  VLD1.32         {D20-D21}, [R0]
212166:  ADD.W           R0, R2, #0x30 ; '0'
21216A:  VLD1.32         {D22-D23}, [R0]
21216E:  ADD.W           R0, R3, #0x10
212172:  STR             R0, [SP,#0xF8+var_EC]
212174:  VST1.32         {D16-D17}, [R0]
212178:  ADD.W           R0, R3, #0x40 ; '@'
21217C:  VST1.32         {D22-D23}, [R0]
212180:  ADD.W           R0, R3, #0x30 ; '0'
212184:  VST1.32         {D18-D19}, [R0]
212188:  ADD.W           R0, R3, #0x20 ; ' '
21218C:  VST1.32         {D20-D21}, [R0]
212190:  LDR             R0, [SP,#0xF8+var_D0]
212192:  STR             R3, [SP,#0xF8+var_E8]
212194:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
212198:  MOV             R0, R10
21219A:  MOV             R1, R11
21219C:  BLX             __aeabi_idiv
2121A0:  MOV             R6, R0
2121A2:  MOV             R0, R8
2121A4:  MOV             R1, R9
2121A6:  BLX             __aeabi_idiv
2121AA:  CMP             R10, R8
2121AC:  BLE             loc_2121EA
2121AE:  VMOV            S0, R0
2121B2:  VMOV            S2, R11
2121B6:  VCVT.F32.S32    S0, S0
2121BA:  VCVT.F32.S32    S2, S2
2121BE:  VMOV            S4, R9
2121C2:  VCVT.F32.S32    S4, S4
2121C6:  VDIV.F32        S0, S18, S0
2121CA:  VMUL.F32        S2, S0, S2
2121CE:  VDIV.F32        S2, S2, S4
2121D2:  B               loc_21220E
2121D4:  MOVS            R0, #0; int
2121D6:  MOVS            R1, #0; int
2121D8:  MOVS            R2, #0; int
2121DA:  MOVS            R3, #1; int
2121DC:  MOVS            R6, #0
2121DE:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
2121E2:  MOV             R4, R0
2121E4:  B               loc_2124CA
2121E6:  MOVS            R6, #0
2121E8:  B               loc_2124BE
2121EA:  VMOV            S0, R6
2121EE:  VMOV            S4, R11
2121F2:  VCVT.F32.S32    S0, S0
2121F6:  VDIV.F32        S2, S16, S0
2121FA:  VMOV            S0, R9
2121FE:  VCVT.F32.S32    S0, S0
212202:  VCVT.F32.S32    S4, S4
212206:  VMUL.F32        S0, S2, S0
21220A:  VDIV.F32        S0, S0, S4
21220E:  VMOV            S4, R10
212212:  STR             R0, [SP,#0xF8+var_F0]
212214:  VMOV            S6, R8
212218:  STR             R6, [SP,#0xF8+var_E4]
21221A:  VCVT.F32.S32    S4, S4
21221E:  VCVT.F32.S32    S6, S6
212222:  VSTR            S2, [SP,#0xF8+var_88]
212226:  VDIV.F32        S8, S18, S16
21222A:  VDIV.F32        S10, S6, S4
21222E:  VCMPE.F32       S8, S10
212232:  VSTR            S0, [SP,#0xF8+var_84]
212236:  VMRS            APSR_nzcv, FPSCR
21223A:  BLE             loc_212250
21223C:  VDIV.F32        S0, S10, S8
212240:  MOV             R1, R8
212242:  VMUL.F32        S0, S0, S4
212246:  VCVT.S32.F32    S0, S0
21224A:  VMOV            R0, S0
21224E:  B               loc_212262
212250:  VDIV.F32        S0, S8, S10
212254:  MOV             R0, R10
212256:  VMUL.F32        S0, S0, S6
21225A:  VCVT.S32.F32    S0, S0
21225E:  VMOV            R1, S0
212262:  STRD.W          R0, R1, [SP,#0xF8+var_A4]
212266:  ADD             R1, SP, #0xF8+var_88
212268:  LDR             R0, [SP,#0xF8+var_D0]
21226A:  LDR             R6, [R7,#arg_C]
21226C:  BLX             j__Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d; RwCameraSetViewWindow(RwCamera *,RwV2d const*)
212270:  VLDR            S0, [SP,#0xF8+var_88]
212274:  LDR             R0, =(_Z20RtTileDefaultArchiveP7RwImageiiPv_ptr - 0x212282)
212276:  VLDR            S24, [SP,#0xF8+var_84]
21227A:  VADD.F32        S0, S0, S0
21227E:  ADD             R0, PC; _Z20RtTileDefaultArchiveP7RwImageiiPv_ptr
212280:  LDR             R1, [R7,#arg_8]
212282:  VADD.F32        S2, S24, S24
212286:  LDR             R0, [R0]; RtTileDefaultArchive(RwImage *,int,int,void *)
212288:  CMP             R1, R0
21228A:  LDR             R1, [SP,#0xF8+var_F0]
21228C:  MOV             R0, R6
21228E:  VSTR            S2, [SP,#0xF8+var_84]
212292:  VSTR            S0, [SP,#0xF8+var_88]
212296:  BNE             loc_212344
212298:  LDR             R0, [R7,#arg_C]
21229A:  CMP             R0, #0
21229C:  BEQ             loc_212344
21229E:  MOV             R6, R4
2122A0:  MOVS            R4, #0
2122A2:  MOV.W           R0, #0x1000000
2122A6:  STR             R4, [SP,#0xF8+var_64]
2122A8:  STRD.W          R0, R0, [SP,#0xF8+var_6C]
2122AC:  MOV.W           R0, #0x18000000
2122B0:  STR             R0, [SP,#0xF8+var_74]
2122B2:  REV.W           R0, R10
2122B6:  STR             R0, [SP,#0xF8+var_7C]
2122B8:  REV.W           R0, R8
2122BC:  STR             R0, [SP,#0xF8+var_78]
2122BE:  MOV             R0, #0x956AA659
2122C6:  STR             R1, [SP,#0xF8+var_AC]
2122C8:  STR             R0, [SP,#0xF8+var_80]
2122CA:  ADD.W           R0, R10, R10,LSL#1
2122CE:  MOVS            R1, #7
2122D0:  LDR             R2, [R7,#arg_C]
2122D2:  ORR.W           R0, R1, R0,LSL#3
2122D6:  ASRS            R1, R0, #0x1F
2122D8:  ADD.W           R0, R0, R1,LSR#29
2122DC:  MOVS            R1, #1
2122DE:  ADD.W           R0, R1, R0,ASR#3
2122E2:  LDR             R1, [SP,#0xF8+var_E4]
2122E4:  BIC.W           R0, R0, #1
2122E8:  STR             R1, [SP,#0xF8+var_B0]
2122EA:  STRD.W          R11, R9, [SP,#0xF8+var_B8]
2122EE:  MOVS            R1, #2
2122F0:  MUL.W           R0, R0, R8
2122F4:  STR.W           R10, [SP,#0xF8+var_C0]
2122F8:  STR             R2, [SP,#0xF8+var_C8]
2122FA:  STR.W           R8, [SP,#0xF8+var_BC]
2122FE:  REV             R0, R0
212300:  STR             R0, [SP,#0xF8+var_70]
212302:  MOVS            R0, #2
212304:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
212308:  CMP             R0, #0
21230A:  STR             R0, [SP,#0xF8+var_C4]
21230C:  BEQ             loc_21233C
21230E:  ADD             R1, SP, #0xF8+var_80; void *
212310:  MOVS            R2, #0x20 ; ' '; size_t
212312:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
212316:  MUL.W           R0, R11, R9
21231A:  LDR             R1, =(RwEngineInstance_ptr - 0x212322)
21231C:  LDR             R2, [SP,#0xF8+var_B0]
21231E:  ADD             R1, PC; RwEngineInstance_ptr
212320:  LDR             R1, [R1]; RwEngineInstance
212322:  MULS            R0, R2
212324:  LDR             R1, [R1]
212326:  ADD.W           R0, R0, R0,LSL#1
21232A:  STR             R0, [SP,#0xF8+var_A8]
21232C:  LDR.W           R1, [R1,#0x12C]
212330:  BLX             R1
212332:  LDR             R1, [SP,#0xF8+var_A8]
212334:  STR             R0, [SP,#0xF8+var_9C]
212336:  BLX             j___aeabi_memclr8_1
21233A:  B               loc_21233E
21233C:  STR             R4, [SP,#0xF8+var_9C]
21233E:  LDR             R1, [SP,#0xF8+var_F0]
212340:  ADD             R0, SP, #0xF8+var_CC
212342:  MOV             R4, R6
212344:  CMP             R1, #1
212346:  BLT.W           loc_2124B0
21234A:  VMOV.F32        S4, #-0.5
21234E:  VLDR            S2, [SP,#0xF8+var_84]
212352:  VMOV.F32        S28, #0.5
212356:  MOV             R8, R0
212358:  LDR.W           R10, [R7,#arg_4]
21235C:  MOV.W           R9, #0
212360:  LDR.W           R11, [SP,#0xF8+var_D4]
212364:  LDR             R0, [SP,#0xF8+var_E4]
212366:  VLDR            S0, [SP,#0xF8+var_88]
21236A:  STR             R4, [SP,#0xF8+var_F4]
21236C:  VMUL.F32        S4, S2, S4
212370:  VADD.F32        S4, S18, S4
212374:  VNEG.F32        S26, S4
212378:  CMP             R0, #1
21237A:  BLT.W           loc_212496
21237E:  VMUL.F32        S2, S0, S28
212382:  MOVS            R6, #0
212384:  VADD.F32        S23, S22, S26
212388:  VNEG.F32        S21, S26
21238C:  VSUB.F32        S17, S16, S2
212390:  VMOV            D15, D8
212394:  VCMPE.F32       S24, #0.0
212398:  MOV             R4, R0
21239A:  VMRS            APSR_nzcv, FPSCR
21239E:  BLE             loc_212456
2123A0:  VCMPE.F32       S2, #0.0
2123A4:  MOV             R4, R0
2123A6:  VMRS            APSR_nzcv, FPSCR
2123AA:  BLE             loc_212456
2123AC:  LDR             R0, [SP,#0xF8+var_DC]
2123AE:  MOVS            R1, #0
2123B0:  LDR             R4, [SP,#0xF8+var_E8]
2123B2:  VLDR            S0, [R0]
2123B6:  VLDR            S6, [R0,#0x30]
2123BA:  VMUL.F32        S0, S17, S0
2123BE:  VLDR            S2, [R0,#4]
2123C2:  VLDR            S4, [R0,#8]
2123C6:  VMUL.F32        S2, S17, S2
2123CA:  VMUL.F32        S4, S17, S4
2123CE:  VADD.F32        S0, S0, S6
2123D2:  VSTR            S0, [R4,#0x40]
2123D6:  VLDR            S6, [R0,#0x34]
2123DA:  VADD.F32        S2, S2, S6
2123DE:  VSTR            S2, [R4,#0x44]
2123E2:  VLDR            S6, [R0,#0x38]
2123E6:  VADD.F32        S4, S4, S6
2123EA:  VSTR            S4, [R4,#0x48]
2123EE:  VLDR            S6, [R0,#0x10]
2123F2:  VLDR            S8, [R0,#0x14]
2123F6:  VLDR            S10, [R0,#0x18]
2123FA:  VMUL.F32        S6, S6, S21
2123FE:  VMUL.F32        S8, S8, S21
212402:  VMUL.F32        S10, S10, S21
212406:  VADD.F32        S0, S0, S6
21240A:  VADD.F32        S2, S2, S8
21240E:  VADD.F32        S4, S4, S10
212412:  VSTR            S0, [R4,#0x40]
212416:  VSTR            S2, [R4,#0x44]
21241A:  VSTR            S4, [R4,#0x48]
21241E:  LDR             R0, [SP,#0xF8+var_EC]
212420:  BLX             j__Z16RwMatrixOptimizeP11RwMatrixTagPK17RwMatrixTolerance; RwMatrixOptimize(RwMatrixTag *,RwMatrixTolerance const*)
212424:  CMP.W           R11, #1
212428:  BNE             loc_21243E
21242A:  VADD.F32        S0, S20, S17
21242E:  LDR             R0, [SP,#0xF8+var_D0]
212430:  ADD             R1, SP, #0xF8+var_80
212432:  VSTR            S23, [SP,#0xF8+var_7C]
212436:  VSTR            S0, [SP,#0xF8+var_80]
21243A:  BLX             j__Z21RwCameraSetViewOffsetP8RwCameraPK5RwV2d; RwCameraSetViewOffset(RwCamera *,RwV2d const*)
21243E:  MOV             R0, R4
212440:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
212444:  LDR             R4, [SP,#0xF8+var_D0]
212446:  MOV             R1, R6
212448:  LDR             R3, [R7,#arg_C]
21244A:  MOV             R2, R9
21244C:  MOV             R0, R4
21244E:  BLX             R10
212450:  CMP             R0, R4
212452:  MOV             R4, R6
212454:  BNE             loc_2124B4
212456:  LDR             R6, [SP,#0xF8+var_E0]
212458:  LDR             R1, [SP,#0xF8+var_D8]
21245A:  MOV             R0, R6
21245C:  BLX             j__Z20RwImageSetFromRasterP7RwImageP8RwRaster; RwImageSetFromRaster(RwImage *,RwRaster *)
212460:  MOV             R0, R6
212462:  LDR             R6, [R7,#arg_8]
212464:  MOV             R1, R4
212466:  MOV             R2, R9
212468:  MOV             R3, R8
21246A:  BLX             R6
21246C:  CMP             R0, #0
21246E:  LDR             R0, [SP,#0xF8+var_E4]
212470:  BEQ             loc_2124B4
212472:  VLDR            S0, [SP,#0xF8+var_88]
212476:  ADDS            R6, R4, #1
212478:  CMP             R6, R0
21247A:  VMUL.F32        S2, S0, S28
21247E:  VSUB.F32        S17, S17, S0
212482:  VSUB.F32        S30, S30, S2
212486:  VMIN.F32        D1, D15, D1
21248A:  BLT.W           loc_212394
21248E:  VLDR            S2, [SP,#0xF8+var_84]
212492:  LDRD.W          R4, R1, [SP,#0xF8+var_F4]
212496:  VMUL.F32        S4, S2, S28
21249A:  ADD.W           R9, R9, #1
21249E:  VADD.F32        S26, S26, S2
2124A2:  CMP             R9, R1
2124A4:  VSUB.F32        S18, S18, S4
2124A8:  VMIN.F32        D12, D9, D2
2124AC:  BLT.W           loc_212378
2124B0:  MOV             R6, R5
2124B2:  B               loc_2124B8
2124B4:  MOVS            R6, #0
2124B6:  LDR             R4, [SP,#0xF8+var_F4]
2124B8:  LDR             R0, [SP,#0xF8+var_E8]
2124BA:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
2124BE:  LDR             R0, [SP,#0xF8+var_E0]
2124C0:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
2124C4:  LDR             R0, [SP,#0xF8+var_D8]
2124C6:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
2124CA:  CMP             R4, #0
2124CC:  ITT NE
2124CE:  MOVNE           R0, R4
2124D0:  BLXNE           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
2124D4:  LDR             R0, [SP,#0xF8+var_D0]
2124D6:  CBZ             R0, loc_2124DE
2124D8:  LDR             R0, [SP,#0xF8+var_D0]
2124DA:  BLX             j__Z15RwCameraDestroyP8RwCamera; RwCameraDestroy(RwCamera *)
2124DE:  LDR             R0, [SP,#0xF8+var_C4]
2124E0:  CMP             R0, #0
2124E2:  ITT NE
2124E4:  MOVNE           R1, #0
2124E6:  BLXNE           j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
2124EA:  LDR             R0, [SP,#0xF8+var_9C]
2124EC:  CBZ             R0, loc_2124FC
2124EE:  LDR             R1, =(RwEngineInstance_ptr - 0x2124F4)
2124F0:  ADD             R1, PC; RwEngineInstance_ptr
2124F2:  LDR             R1, [R1]; RwEngineInstance
2124F4:  LDR             R1, [R1]
2124F6:  LDR.W           R1, [R1,#0x130]
2124FA:  BLX             R1
2124FC:  MOV             R0, R6
2124FE:  ADD             SP, SP, #0x98
212500:  VPOP            {D8-D15}
212504:  ADD             SP, SP, #4
212506:  POP.W           {R8-R11}
21250A:  POP             {R4-R7,PC}
