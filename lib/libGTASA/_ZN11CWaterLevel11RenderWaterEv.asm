; =========================================================
; Game Engine Function: _ZN11CWaterLevel11RenderWaterEv
; Address            : 0x597060 - 0x597A78
; =========================================================

597060:  PUSH            {R4-R7,LR}
597062:  ADD             R7, SP, #0xC
597064:  PUSH.W          {R8-R11}
597068:  SUB             SP, SP, #4
59706A:  VPUSH           {D8-D15}
59706E:  SUB             SP, SP, #0x70; float
597070:  BLX.W           j__ZN5CGame23CanSeeWaterFromCurrAreaEv; CGame::CanSeeWaterFromCurrArea(void)
597074:  CMP             R0, #1
597076:  BNE.W           loc_597A6A
59707A:  LDR.W           R0, =(DETAILEDWATERDIST_ptr - 0x59708A)
59707E:  VMOV.F32        S20, #0.5
597082:  LDR.W           R1, =(TheCamera_ptr - 0x59708C)
597086:  ADD             R0, PC; DETAILEDWATERDIST_ptr
597088:  ADD             R1, PC; TheCamera_ptr
59708A:  LDR             R0, [R0]; DETAILEDWATERDIST
59708C:  LDR             R1, [R1]; TheCamera
59708E:  VLDR            S0, [R0]
597092:  LDR             R0, [R1,#(dword_951FBC - 0x951FA8)]
597094:  VCVT.F32.S32    S16, S0
597098:  ADD.W           R4, R0, #0x30 ; '0'
59709C:  CMP             R0, #0
59709E:  IT EQ
5970A0:  ADDEQ           R4, R1, #4
5970A2:  VLDR            S18, [R4]
5970A6:  VSUB.F32        S0, S18, S16
5970AA:  VMUL.F32        S0, S0, S20
5970AE:  VMOV            R0, S0; x
5970B2:  BLX.W           floorf
5970B6:  VADD.F32        S0, S18, S16
5970BA:  LDR.W           R5, =(CameraRangeMaxX_ptr - 0x5970C6)
5970BE:  VMOV            S18, R0
5970C2:  ADD             R5, PC; CameraRangeMaxX_ptr
5970C4:  VMUL.F32        S0, S0, S20
5970C8:  VMOV            R1, S0
5970CC:  MOV             R0, R1; x
5970CE:  BLX             ceilf
5970D2:  VCVT.S32.F32    S2, S18
5970D6:  LDR.W           R1, =(CameraRangeMinX_ptr - 0x5970E4)
5970DA:  VMOV            S0, R0
5970DE:  LDR             R0, [R5]; CameraRangeMaxX
5970E0:  ADD             R1, PC; CameraRangeMinX_ptr
5970E2:  VCVT.S32.F32    S0, S0
5970E6:  LDR             R1, [R1]; CameraRangeMinX
5970E8:  VMOV            R2, S2
5970EC:  LSLS            R2, R2, #1
5970EE:  STR             R2, [R1]
5970F0:  VMOV            R1, S0
5970F4:  LSLS            R1, R1, #1
5970F6:  STR             R1, [R0]
5970F8:  VLDR            S18, [R4,#4]
5970FC:  VSUB.F32        S0, S18, S16
597100:  VMUL.F32        S0, S0, S20
597104:  VMOV            R0, S0; x
597108:  BLX.W           floorf
59710C:  VADD.F32        S0, S18, S16
597110:  MOV             R4, R0
597112:  VMUL.F32        S0, S0, S20
597116:  VMOV            R0, S0; x
59711A:  BLX             ceilf
59711E:  VMOV            S0, R0
597122:  LDR.W           R1, =(CameraRangeMaxY_ptr - 0x597136)
597126:  LDR.W           R2, =(CameraRangeMinY_ptr - 0x597138)
59712A:  VMOV            S2, R4
59712E:  VCVT.S32.F32    S0, S0
597132:  ADD             R1, PC; CameraRangeMaxY_ptr
597134:  ADD             R2, PC; CameraRangeMinY_ptr
597136:  VCVT.S32.F32    S2, S2
59713A:  LDR             R0, [R1]; CameraRangeMaxY
59713C:  LDR             R1, [R2]; CameraRangeMinY
59713E:  VMOV            R2, S0
597142:  LSLS            R2, R2, #1
597144:  STR             R2, [R0]
597146:  VMOV            R0, S2
59714A:  LSLS            R0, R0, #1
59714C:  STR             R0, [R1]
59714E:  BLX.W           j__Z12DefinedStatev; DefinedState(void)
597152:  LDR.W           R0, =(gpSeaBedTex_ptr - 0x597160)
597156:  MOVS            R3, #0
597158:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x597166)
59715C:  ADD             R0, PC; gpSeaBedTex_ptr
59715E:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x597168)
597162:  ADD             R1, PC; TempBufferVerticesStored_ptr
597164:  ADD             R2, PC; TempBufferIndicesStored_ptr
597166:  LDR             R0, [R0]; gpSeaBedTex
597168:  LDR             R1, [R1]; TempBufferVerticesStored
59716A:  LDR             R2, [R2]; TempBufferIndicesStored
59716C:  LDR             R0, [R0]
59716E:  STR             R3, [R1]
597170:  STR             R3, [R2]
597172:  LDR             R1, [R0]
597174:  MOVS            R0, #1
597176:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59717A:  MOVS            R0, #0xE
59717C:  MOVS            R1, #1
59717E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
597182:  MOVS            R0, #0xA
597184:  MOVS            R1, #5
597186:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59718A:  MOVS            R0, #0xB
59718C:  MOVS            R1, #6
59718E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
597192:  MOVS            R0, #0x1E
597194:  MOVS            R1, #0
597196:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59719A:  MOVS            R0, #0xC
59719C:  MOVS            R1, #1
59719E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5971A2:  MOVS            R0, #1; unsigned __int8
5971A4:  BLX             j__Z12emu_SetWaterh; emu_SetWater(uchar)
5971A8:  LDR.W           R0, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x5971B0)
5971AC:  ADD             R0, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
5971AE:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
5971B0:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
5971B2:  CMP             R0, #1
5971B4:  BLT.W           loc_5973C0
5971B8:  LDR.W           R0, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr - 0x5971CC)
5971BC:  VMOV.F32        S24, #1.0
5971C0:  LDR.W           R1, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr - 0x5971D2)
5971C4:  VMOV.I32        D16, #0x10
5971C8:  ADD             R0, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr
5971CA:  VMOV.I32        D9, #0x3F000000
5971CE:  ADD             R1, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr
5971D0:  VLDR            D10, =2.99759638e19
5971D4:  LDR             R0, [R0]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldX ...
5971D6:  VNEG.S32        D8, D16
5971DA:  STR             R0, [SP,#0xD0+var_64]
5971DC:  MOV.W           R11, #0
5971E0:  LDR.W           R0, =(TheCamera_ptr - 0x5971EC)
5971E4:  LDR.W           R10, [R1]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldY ...
5971E8:  ADD             R0, PC; TheCamera_ptr
5971EA:  VLDR            D11, =-3.32454743e25
5971EE:  VLDR            S26, =0.0
5971F2:  LDR             R6, [R0]; TheCamera
5971F4:  LDR.W           R0, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x597200)
5971F8:  VLDR            S28, =0.04
5971FC:  ADD             R0, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
5971FE:  VLDR            S30, =600.0
597202:  VLDR            S25, =0.96
597206:  LDR.W           R8, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
59720A:  LDR             R0, [SP,#0xD0+var_64]
59720C:  MOV.W           R9, #0
597210:  LDRSH.W         R4, [R10,R11,LSL#1]
597214:  LDRSH.W         R5, [R0,R11,LSL#1]
597218:  LDR             R0, [R6,#(dword_951FBC - 0x951FA8)]
59721A:  ADD.W           R1, R0, #0x30 ; '0'
59721E:  CMP             R0, #0
597220:  VMOV.32         D16[0], R5
597224:  IT EQ
597226:  ADDEQ           R1, R6, #4
597228:  CMP             R4, #0xB
59722A:  VLDR            D17, [R1]
59722E:  IT LE
597230:  CMPLE           R5, #0xB
597232:  VMOV.32         D16[1], R4
597236:  VSHL.I32        D16, D16, #0x10
59723A:  VSHL.S32        D16, D8, D16
59723E:  VCVT.F32.S32    D16, D16
597242:  VADD.F32        D16, D16, D9
597246:  VMUL.F32        D16, D16, D10
59724A:  VADD.F32        D16, D16, D11
59724E:  VSUB.F32        D16, D17, D16
597252:  VMUL.F32        D0, D16, D16
597256:  VADD.F32        S0, S0, S1
59725A:  VSQRT.F32       S0, S0
59725E:  BGT             loc_5972A6
597260:  VMOV.F32        S4, S26
597264:  ORR.W           R0, R4, R5
597268:  VMOV.F32        S2, S24
59726C:  CMP             R0, #0
59726E:  VMOV.F32        S27, S26
597272:  VMOV.F32        S29, S24
597276:  BLT             loc_5972E8
597278:  UXTH            R0, R5
59727A:  CBZ             R0, loc_5972B4
59727C:  CMP             R0, #0xB
59727E:  BNE             loc_5972BC
597280:  MOVS            R0, #1
597282:  VMOV.F32        S2, S24
597286:  VMOV.F32        S4, S25
59728A:  CBNZ            R4, loc_5972CA
59728C:  VMOV.F32        S29, S28
597290:  CMP             R0, #0
597292:  VMOV.F32        S27, S26
597296:  BEQ             loc_597338
597298:  MOV.W           R9, #1
59729C:  VMOV.F32        S27, S26
5972A0:  VMOV.F32        S29, S28
5972A4:  B               loc_5972E8
5972A6:  VMOV.F32        S4, S26
5972AA:  VMOV.F32        S2, S24
5972AE:  VMOV.F32        S27, S26
5972B2:  B               loc_5972E4
5972B4:  MOVS            R0, #1
5972B6:  VMOV.F32        S2, S28
5972BA:  B               loc_5972C2
5972BC:  VMOV.F32        S2, S24
5972C0:  MOVS            R0, #0
5972C2:  VMOV.F32        S4, S26
5972C6:  CMP             R4, #0
5972C8:  BEQ             loc_59728C
5972CA:  CMP             R4, #0xB
5972CC:  ADR.W           R1, dword_597AAC
5972D0:  MOV.W           R9, #0
5972D4:  IT EQ
5972D6:  ADDEQ           R1, #4
5972D8:  IT EQ
5972DA:  MOVEQ.W         R9, #1
5972DE:  CBZ             R0, loc_59732C
5972E0:  VLDR            S27, [R1]
5972E4:  VMOV.F32        S29, S24
5972E8:  VMOV            R2, S4; int
5972EC:  MOVS            R0, #0
5972EE:  VMOV            R3, S2; float
5972F2:  VCMPE.F32       S0, S30
5972F6:  VMRS            APSR_nzcv, FPSCR
5972FA:  BGE             loc_597314
5972FC:  STR             R0, [SP,#0xD0+var_D0]; float
5972FE:  MOV.W           R0, #0x3F800000
597302:  STR             R0, [SP,#0xD0+var_CC]; float
597304:  MOV             R0, R5; this
597306:  MOV             R1, R4; int
597308:  BLX.W           j__ZN11CWaterLevel27RenderDetailedSeaBedSegmentEiiffff; CWaterLevel::RenderDetailedSeaBedSegment(int,int,float,float,float,float)
59730C:  CMP.W           R9, #0
597310:  BNE             loc_597342
597312:  B               loc_5973B2
597314:  STR             R0, [SP,#0xD0+var_D0]; float
597316:  MOV.W           R0, #0x3F800000
59731A:  STR             R0, [SP,#0xD0+var_CC]; float
59731C:  MOV             R0, R5; this
59731E:  MOV             R1, R4; int
597320:  BLX.W           j__ZN11CWaterLevel19RenderSeaBedSegmentEiiffff; CWaterLevel::RenderSeaBedSegment(int,int,float,float,float,float)
597324:  CMP.W           R9, #0
597328:  BNE             loc_59739C
59732A:  B               loc_5973B2
59732C:  VMOV.F32        S29, S24
597330:  CMP             R4, #0xB
597332:  VMOV.F32        S27, S25
597336:  BNE             loc_5973B2
597338:  VCMPE.F32       S0, S30
59733C:  VMRS            APSR_nzcv, FPSCR
597340:  BGE             loc_59739C
597342:  MOV             R0, R5; this
597344:  MOV             R1, R4; int
597346:  MOVS            R2, #0; int
597348:  MOV.W           R3, #0x3F800000; float
59734C:  VSTR            S27, [SP,#0xD0+var_D0]
597350:  VSTR            S29, [SP,#0xD0+var_CC]
597354:  BLX.W           j__ZN11CWaterLevel27RenderDetailedSeaBedSegmentEiiffff; CWaterLevel::RenderDetailedSeaBedSegment(int,int,float,float,float,float)
597358:  B               loc_5973B2
59735A:  ALIGN 0x10
597360:  DCFD 2.99759638e19
597368:  DCFD -3.32454743e25
597370:  DCFS 0.0
597374:  DCFS 0.04
597378:  DCFS 600.0
59737C:  DCFS 0.96
597380:  DCFS 0.08
597384:  DCFS 0.001534
597388:  DCFS 0.00076699
59738C:  DCFS 0.6
597390:  DCFS 4.6566e-10
597394:  DCFS 0.01
597398:  DCFS 0.1
59739C:  MOV             R0, R5; this
59739E:  MOV             R1, R4; int
5973A0:  MOVS            R2, #0; int
5973A2:  MOV.W           R3, #0x3F800000; float
5973A6:  VSTR            S27, [SP,#0xD0+var_D0]
5973AA:  VSTR            S29, [SP,#0xD0+var_CC]
5973AE:  BLX.W           j__ZN11CWaterLevel19RenderSeaBedSegmentEiiffff; CWaterLevel::RenderSeaBedSegment(int,int,float,float,float,float)
5973B2:  LDR.W           R0, [R8]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
5973B6:  ADD.W           R11, R11, #1
5973BA:  CMP             R11, R0
5973BC:  BLT.W           loc_59720A
5973C0:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5973C8)
5973C4:  ADD             R0, PC; TempBufferVerticesStored_ptr
5973C6:  LDR             R0, [R0]; TempBufferVerticesStored
5973C8:  LDR             R0, [R0]
5973CA:  CBZ             R0, loc_597408
5973CC:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5973D0:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5973DE)
5973D4:  MOVS            R3, #1
5973D6:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x5973E0)
5973DA:  ADD             R0, PC; TempBufferVerticesStored_ptr
5973DC:  ADD             R1, PC; TempVertexBuffer_ptr
5973DE:  LDR             R2, [R0]; TempBufferVerticesStored
5973E0:  LDR             R0, [R1]; TempVertexBuffer
5973E2:  LDR             R1, [R2]
5973E4:  MOVS            R2, #0
5973E6:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5973EA:  CBZ             R0, loc_597408
5973EC:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5973F8)
5973F0:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5973FA)
5973F4:  ADD             R0, PC; TempBufferIndicesStored_ptr
5973F6:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5973F8:  LDR             R0, [R0]; TempBufferIndicesStored
5973FA:  LDR             R1, [R1]; TempBufferRenderIndexList
5973FC:  LDR             R2, [R0]
5973FE:  MOVS            R0, #3
597400:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
597404:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
597408:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x597416)
59740C:  MOVS            R2, #0
59740E:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x597418)
597412:  ADD             R0, PC; TempBufferIndicesStored_ptr
597414:  ADD             R1, PC; TempBufferVerticesStored_ptr
597416:  LDR             R0, [R0]; TempBufferIndicesStored
597418:  LDR             R1, [R1]; TempBufferVerticesStored
59741A:  STR             R2, [R0]
59741C:  MOVS            R0, #8
59741E:  STR             R2, [R1]
597420:  MOVS            R1, #0
597422:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
597426:  MOVS            R0, #2
597428:  MOVS            R1, #1
59742A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59742E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59743A)
597432:  LDR.W           R1, =(_ZN11CWaterLevel14m_CurrentFlowXE_ptr - 0x597440)
597436:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
597438:  VLDR            S16, =0.04
59743C:  ADD             R1, PC; _ZN11CWaterLevel14m_CurrentFlowXE_ptr
59743E:  VLDR            S22, =0.08
597442:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
597444:  LDR             R1, [R1]; CWaterLevel::m_CurrentFlowX ...
597446:  VLDR            S0, [R0]
59744A:  LDR.W           R0, =(_ZN11CWaterLevel14m_CurrentFlowYE_ptr - 0x59745A)
59744E:  VMUL.F32        S0, S0, S16
597452:  VLDR            S2, [R1]
597456:  ADD             R0, PC; _ZN11CWaterLevel14m_CurrentFlowYE_ptr
597458:  LDR.W           R1, =(CurrentTextureShiftV_ptr - 0x597462)
59745C:  LDR             R0, [R0]; CWaterLevel::m_CurrentFlowY ...
59745E:  ADD             R1, PC; CurrentTextureShiftV_ptr
597460:  LDR             R1, [R1]; CurrentTextureShiftV
597462:  VLDR            S4, [R0]
597466:  VMUL.F32        S2, S0, S2
59746A:  LDR.W           R0, =(CurrentTextureShiftU_ptr - 0x59747A)
59746E:  VMUL.F32        S4, S0, S4
597472:  VLDR            S10, [R1]
597476:  ADD             R0, PC; CurrentTextureShiftU_ptr
597478:  LDR             R0, [R0]; CurrentTextureShiftU
59747A:  VMUL.F32        S0, S2, S22
59747E:  VLDR            S8, [R0]
597482:  VMUL.F32        S6, S4, S22
597486:  VADD.F32        S20, S8, S0
59748A:  VMOV.F32        S0, #1.0
59748E:  VADD.F32        S18, S10, S6
597492:  VSTR            S20, [R0]
597496:  VCMPE.F32       S20, S0
59749A:  VMRS            APSR_nzcv, FPSCR
59749E:  VSTR            S18, [R1]
5974A2:  BLE             loc_5974B8
5974A4:  VMOV.F32        S6, #-1.0
5974A8:  LDR.W           R0, =(CurrentTextureShiftU_ptr - 0x5974B0)
5974AC:  ADD             R0, PC; CurrentTextureShiftU_ptr
5974AE:  LDR             R0, [R0]; CurrentTextureShiftU
5974B0:  VADD.F32        S20, S20, S6
5974B4:  VSTR            S20, [R0]
5974B8:  VCMPE.F32       S18, S0
5974BC:  VMRS            APSR_nzcv, FPSCR
5974C0:  BLE             loc_5974D6
5974C2:  VMOV.F32        S6, #-1.0
5974C6:  LDR.W           R0, =(CurrentTextureShiftV_ptr - 0x5974CE)
5974CA:  ADD             R0, PC; CurrentTextureShiftV_ptr
5974CC:  LDR             R0, [R0]; CurrentTextureShiftV
5974CE:  VADD.F32        S18, S18, S6
5974D2:  VSTR            S18, [R0]
5974D6:  LDR.W           R0, =(CurrentTextureShiftSecondU_ptr - 0x5974EA)
5974DA:  VMUL.F32        S2, S2, S16
5974DE:  LDR.W           R1, =(CurrentTextureShiftSecondV_ptr - 0x5974EC)
5974E2:  VMUL.F32        S4, S4, S16
5974E6:  ADD             R0, PC; CurrentTextureShiftSecondU_ptr
5974E8:  ADD             R1, PC; CurrentTextureShiftSecondV_ptr
5974EA:  LDR             R0, [R0]; CurrentTextureShiftSecondU
5974EC:  LDR             R1, [R1]; CurrentTextureShiftSecondV
5974EE:  VLDR            S6, [R0]
5974F2:  VLDR            S8, [R1]
5974F6:  VADD.F32        S24, S6, S2
5974FA:  VADD.F32        S26, S8, S4
5974FE:  VCMPE.F32       S24, S0
597502:  VSTR            S24, [R0]
597506:  VMRS            APSR_nzcv, FPSCR
59750A:  VSTR            S26, [R1]
59750E:  BLE             loc_597524
597510:  VMOV.F32        S2, #-1.0
597514:  LDR.W           R0, =(CurrentTextureShiftSecondU_ptr - 0x59751C)
597518:  ADD             R0, PC; CurrentTextureShiftSecondU_ptr
59751A:  LDR             R0, [R0]; CurrentTextureShiftSecondU
59751C:  VADD.F32        S24, S24, S2
597520:  VSTR            S24, [R0]
597524:  VCMPE.F32       S26, S0
597528:  VMRS            APSR_nzcv, FPSCR
59752C:  BLE             loc_597542
59752E:  VMOV.F32        S0, #-1.0
597532:  LDR.W           R0, =(CurrentTextureShiftSecondV_ptr - 0x59753A)
597536:  ADD             R0, PC; CurrentTextureShiftSecondV_ptr
597538:  LDR             R0, [R0]; CurrentTextureShiftSecondV
59753A:  VADD.F32        S26, S26, S0
59753E:  VSTR            S26, [R0]
597542:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59754E)
597546:  VLDR            S2, =0.001534
59754A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59754C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59754E:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
597550:  MOV             R0, R5
597552:  BFC.W           R0, #0xC, #0x14
597556:  VMOV            S0, R0
59755A:  VCVT.F32.U32    S0, S0
59755E:  VMUL.F32        S0, S0, S2
597562:  VMOV            R4, S0
597566:  MOV             R0, R4; x
597568:  BLX.W           sinf
59756C:  BFC.W           R5, #0xD, #0x13
597570:  VLDR            S2, =0.00076699
597574:  VMOV            S30, R0
597578:  MOV             R0, R4; x
59757A:  VMOV            S0, R5
59757E:  VCVT.F32.U32    S0, S0
597582:  VMUL.F32        S28, S0, S2
597586:  BLX.W           cosf
59758A:  VMOV            R4, S28
59758E:  LDR.W           R6, =(_ZN8CWeather8WavynessE_ptr - 0x597598)
597592:  MOV             R5, R0
597594:  ADD             R6, PC; _ZN8CWeather8WavynessE_ptr
597596:  MOV             R0, R4; x
597598:  BLX.W           cosf
59759C:  VMOV            S28, R0
5975A0:  LDR             R0, [R6]; CWeather::Wavyness ...
5975A2:  VMOV            S0, R5
5975A6:  VLDR            S8, =0.6
5975AA:  VMUL.F32        S4, S28, S16
5975AE:  LDR.W           R1, =(TextureShiftU_ptr - 0x5975CA)
5975B2:  VMUL.F32        S2, S30, S22
5975B6:  VLDR            S6, [R0]
5975BA:  VMUL.F32        S0, S0, S22
5975BE:  LDR.W           R0, =(TextureShiftSecondU_ptr - 0x5975D0)
5975C2:  LDR.W           R2, =(TextureShiftV_ptr - 0x5975D2)
5975C6:  ADD             R1, PC; TextureShiftU_ptr
5975C8:  LDR.W           R3, =(TextureShiftSecondV_ptr - 0x5975D6)
5975CC:  ADD             R0, PC; TextureShiftSecondU_ptr
5975CE:  ADD             R2, PC; TextureShiftV_ptr
5975D0:  LDR             R1, [R1]; TextureShiftU
5975D2:  ADD             R3, PC; TextureShiftSecondV_ptr
5975D4:  LDR             R0, [R0]; TextureShiftSecondU
5975D6:  VMUL.F32        S4, S4, S8
5975DA:  LDR             R2, [R2]; TextureShiftV
5975DC:  VMUL.F32        S2, S2, S6
5975E0:  LDR             R3, [R3]; TextureShiftSecondV
5975E2:  VMUL.F32        S0, S0, S6
5975E6:  VSTR            S24, [R0]
5975EA:  VADD.F32        S4, S26, S4
5975EE:  VADD.F32        S2, S20, S2
5975F2:  VADD.F32        S0, S18, S0
5975F6:  VSTR            S4, [R3]
5975FA:  VSTR            S2, [R1]
5975FE:  VSTR            S0, [R2]
597602:  BLX             rand
597606:  VMOV            S0, R0
59760A:  VLDR            S16, =4.6566e-10
59760E:  VLDR            S18, =0.01
597612:  VCVT.F32.S32    S0, S0
597616:  VLDR            S20, =0.0
59761A:  LDR.W           R0, =(TextureShiftHighLightU_ptr - 0x597622)
59761E:  ADD             R0, PC; TextureShiftHighLightU_ptr
597620:  LDR             R5, [R0]; TextureShiftHighLightU
597622:  MOV             R0, R4; x
597624:  VMUL.F32        S0, S0, S16
597628:  VMUL.F32        S0, S0, S18
59762C:  VADD.F32        S0, S0, S20
597630:  VSTR            S0, [R5]
597634:  BLX.W           sinf
597638:  MOV             R4, R0
59763A:  BLX             rand
59763E:  VMOV            S0, R0
597642:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x597656)
597646:  VMOV            S4, R4
59764A:  VLDR            S2, =0.1
59764E:  LDR.W           R6, =(gpWaterTex_ptr - 0x597660)
597652:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
597654:  VMUL.F32        S4, S4, S2
597658:  LDR.W           R4, =(WaterColor_ptr - 0x59766E)
59765C:  ADD             R6, PC; gpWaterTex_ptr
59765E:  LDR             R3, [R0]; CTimeCycle::m_CurrentColours ...
597660:  VCVT.F32.S32    S0, S0
597664:  VLDR            S6, [R5]
597668:  LDR             R6, [R6]; gpWaterTex
59766A:  ADD             R4, PC; WaterColor_ptr
59766C:  VLDR            S10, [R3,#0x6C]
597670:  VMUL.F32        S2, S28, S2
597674:  VLDR            S12, [R3,#0x70]
597678:  VLDR            S14, [R3,#0x74]
59767C:  VLDR            S8, [R3,#0x68]
597680:  VADD.F32        S4, S6, S4
597684:  VCVT.S32.F32    S6, S14
597688:  LDR             R4, [R4]; WaterColor
59768A:  VCVT.U32.F32    S12, S12
59768E:  LDR             R6, [R6]
597690:  VCVT.U32.F32    S10, S10
597694:  LDR.W           R2, =(TextureShiftHighLightV_ptr - 0x5976A8)
597698:  VCVT.U32.F32    S8, S8
59769C:  LDR.W           R1, =(WaterColorDebug_ptr - 0x5976AE)
5976A0:  VMUL.F32        S0, S0, S16
5976A4:  ADD             R2, PC; TextureShiftHighLightV_ptr
5976A6:  LDR.W           R12, =(TempBufferVerticesStored_ptr - 0x5976B8)
5976AA:  ADD             R1, PC; WaterColorDebug_ptr
5976AC:  LDR.W           LR, [R2]; TextureShiftHighLightV
5976B0:  LDR.W           R2, =(TempBufferIndicesStored_ptr - 0x5976C0)
5976B4:  ADD             R12, PC; TempBufferVerticesStored_ptr
5976B6:  LDR             R1, [R1]; WaterColorDebug
5976B8:  VMOV            R0, S10
5976BC:  ADD             R2, PC; TempBufferIndicesStored_ptr
5976BE:  LDR.W           R3, [R12]; TempBufferVerticesStored
5976C2:  VMUL.F32        S0, S0, S18
5976C6:  LDR             R2, [R2]; TempBufferIndicesStored
5976C8:  VSTR            S4, [R5]
5976CC:  VADD.F32        S0, S0, S20
5976D0:  VADD.F32        S0, S2, S0
5976D4:  STRB            R0, [R4,#(WaterColor+1 - 0xA1C480)]
5976D6:  VMOV            R0, S8
5976DA:  VSTR            S0, [LR]
5976DE:  STRB            R0, [R4]
5976E0:  VMOV            R0, S12
5976E4:  STRB            R0, [R4,#(WaterColor+2 - 0xA1C480)]
5976E6:  LDR             R0, [R4]
5976E8:  MOVS            R4, #0
5976EA:  STR             R4, [R2]
5976EC:  LDR.W           R2, =(dword_6B15B8 - 0x5976F8)
5976F0:  STR             R0, [R1]
5976F2:  MOVS            R0, #1
5976F4:  ADD             R2, PC; dword_6B15B8
5976F6:  STR             R4, [R3]
5976F8:  VSTR            S6, [R2]
5976FC:  LDR             R1, [R6]
5976FE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
597702:  MOVS            R0, #0xE
597704:  MOVS            R1, #1
597706:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59770A:  MOVS            R0, #0xA
59770C:  MOVS            R1, #5
59770E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
597712:  MOVS            R0, #0xB
597714:  MOVS            R1, #6
597716:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
59771A:  LDR.W           R0, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x597722)
59771E:  ADD             R0, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
597720:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterTriangles ...
597722:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterTriangles
597724:  CMP             R0, #1
597726:  BLT             loc_59780C
597728:  LDR.W           R1, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x597732)
59772C:  MOVS            R4, #0
59772E:  ADD             R1, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
597730:  LDR             R2, [R1]; CWaterLevel::m_aTriangles ...
597732:  LDR.W           R1, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x59773A)
597736:  ADD             R1, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
597738:  LDR             R1, [R1]; CWaterLevel::m_aTriangles ...
59773A:  STR             R1, [SP,#0xD0+var_84]
59773C:  LDR.W           R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x597744)
597740:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
597742:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
597744:  STR             R1, [SP,#0xD0+var_88]
597746:  LDR.W           R1, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x59774E)
59774A:  ADD             R1, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
59774C:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterTriangles ...
59774E:  STR             R1, [SP,#0xD0+var_8C]
597750:  STR             R2, [SP,#0xD0+var_80]
597752:  ADD.W           R8, R2, R4,LSL#3
597756:  LDRB.W          R1, [R8,#6]
59775A:  LSLS            R1, R1, #0x1F
59775C:  BEQ             loc_597806
59775E:  LDR             R3, [SP,#0xD0+var_84]
597760:  ADD.W           R5, R3, R4,LSL#3
597764:  LDRSH.W         R0, [R3,R4,LSL#3]
597768:  ADD.W           R1, R0, R0,LSL#2
59776C:  LDR             R0, [SP,#0xD0+var_88]
59776E:  LDRSH.W         R6, [R0,R1,LSL#2]
597772:  ADD.W           R1, R0, R1,LSL#2
597776:  STR             R6, [SP,#0xD0+var_64]
597778:  LDR             R6, [R1,#4]
59777A:  STR             R6, [SP,#0xD0+var_6C]
59777C:  LDR             R6, [R1,#8]
59777E:  STR             R6, [SP,#0xD0+var_68]
597780:  LDR             R6, [R1,#0xC]
597782:  STR             R6, [SP,#0xD0+var_74]
597784:  LDR             R6, [R1,#0x10]
597786:  STR             R6, [SP,#0xD0+var_78]
597788:  LDRSH.W         R1, [R1,#2]
59778C:  STR             R1, [SP,#0xD0+var_70]
59778E:  LDRSH.W         R9, [R5,#2]
597792:  LDRSH.W         R5, [R5,#4]
597796:  ADD.W           R6, R9, R9,LSL#2
59779A:  ADD.W           R5, R5, R5,LSL#2
59779E:  LDRSH.W         R1, [R0,R6,LSL#2]
5977A2:  ADD.W           R6, R0, R6,LSL#2
5977A6:  STR             R1, [SP,#0xD0+var_7C]
5977A8:  LDRSH.W         R12, [R6,#2]
5977AC:  LDRD.W          R3, LR, [R6,#4]
5977B0:  LDRD.W          R9, R6, [R6,#0xC]
5977B4:  LDRSH.W         R2, [R0,R5,LSL#2]
5977B8:  ADD.W           R5, R0, R5,LSL#2
5977BC:  LDRSH.W         R11, [R5,#2]
5977C0:  LDRD.W          R10, R0, [R5,#4]
5977C4:  LDRD.W          R1, R5, [R5,#0xC]
5977C8:  STRD.W          R2, R11, [SP,#0xD0+var_B0]
5977CC:  STRD.W          R10, R0, [SP,#0xD0+var_A8]
5977D0:  STRD.W          R1, R5, [SP,#0xD0+var_A0]
5977D4:  LDR             R0, [SP,#0xD0+var_74]
5977D6:  STR             R0, [SP,#0xD0+var_D0]
5977D8:  LDR             R0, [SP,#0xD0+var_78]
5977DA:  STR             R0, [SP,#0xD0+var_CC]
5977DC:  LDR             R0, [SP,#0xD0+var_7C]
5977DE:  STRD.W          R0, R12, [SP,#0xD0+var_C8]
5977E2:  STRD.W          R3, LR, [SP,#0xD0+var_C0]
5977E6:  ADD             R3, SP, #0xD0+var_70
5977E8:  STRD.W          R9, R6, [SP,#0xD0+var_B8]
5977EC:  LDR             R0, [SP,#0xD0+var_64]
5977EE:  LDM             R3, {R1-R3}
5977F0:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
5977F4:  LDRB.W          R0, [R8,#6]
5977F8:  LDR             R2, [SP,#0xD0+var_80]
5977FA:  AND.W           R0, R0, #0xFE
5977FE:  STRB.W          R0, [R8,#6]
597802:  LDR             R0, [SP,#0xD0+var_8C]
597804:  LDR             R0, [R0]
597806:  ADDS            R4, #1
597808:  CMP             R4, R0
59780A:  BLT             loc_597752
59780C:  LDR             R0, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x597812)
59780E:  ADD             R0, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
597810:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterQuads ...
597812:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterQuads
597814:  CMP             R0, #1
597816:  BLT             loc_5978FE
597818:  LDR             R1, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x597822)
59781A:  MOV.W           R8, #0
59781E:  ADD             R1, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
597820:  LDR             R1, [R1]; CWaterLevel::m_aQuads ...
597822:  ADD.W           R4, R1, #8
597826:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59782C)
597828:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59782A:  LDR             R1, [R1]; CWaterLevel::m_aVertices ...
59782C:  STR             R1, [SP,#0xD0+var_8C]
59782E:  LDR             R1, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x597834)
597830:  ADD             R1, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
597832:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterQuads ...
597834:  STR             R1, [SP,#0xD0+var_90]
597836:  LDR             R5, [SP,#0xD0+var_8C]
597838:  LDRB            R1, [R4]
59783A:  LSLS            R1, R1, #0x1F
59783C:  BEQ             loc_5978F4
59783E:  LDRSH.W         R0, [R4,#-8]; CWaterLevel::m_aQuads
597842:  LDRSH.W         R3, [R4,#-4]
597846:  LDRSH.W         R1, [R4,#-6]
59784A:  ADD.W           R2, R0, R0,LSL#2
59784E:  LDRSH.W         R11, [R4,#-2]
597852:  ADD.W           R3, R3, R3,LSL#2
597856:  LDRSH.W         R0, [R5,R2,LSL#2]
59785A:  ADD.W           R6, R5, R2,LSL#2
59785E:  STR             R0, [SP,#0xD0+var_64]
597860:  LDRSH.W         R0, [R6,#2]
597864:  STR             R0, [SP,#0xD0+var_68]
597866:  LDR             R0, [R6,#4]
597868:  STR             R0, [SP,#0xD0+var_70]
59786A:  LDR             R0, [R6,#8]
59786C:  STR             R0, [SP,#0xD0+var_74]
59786E:  LDR             R0, [R6,#0xC]
597870:  STR             R0, [SP,#0xD0+var_78]
597872:  LDR             R0, [R6,#0x10]
597874:  ADD.W           R6, R1, R1,LSL#2
597878:  STR             R0, [SP,#0xD0+var_7C]
59787A:  LDRSH.W         R0, [R5,R6,LSL#2]
59787E:  ADD.W           R6, R5, R6,LSL#2
597882:  STR             R0, [SP,#0xD0+var_6C]
597884:  LDRD.W          R12, LR, [R6,#4]
597888:  LDR             R0, [R6,#0xC]
59788A:  STR             R0, [SP,#0xD0+var_84]
59788C:  LDR             R0, [R6,#0x10]
59788E:  ADD.W           R6, R11, R11,LSL#2
597892:  STR             R0, [SP,#0xD0+var_88]
597894:  ADD.W           R0, R5, R3,LSL#2
597898:  ADDS            R3, R0, #4
59789A:  ADD.W           R6, R5, R6,LSL#2
59789E:  LDRSH.W         R1, [R0,#2]
5978A2:  STR             R1, [SP,#0xD0+var_80]
5978A4:  LDM             R3, {R1-R3}
5978A6:  LDR             R0, [R0,#0x10]
5978A8:  LDRD.W          R11, R10, [R6,#4]
5978AC:  LDRD.W          R9, R6, [R6,#0xC]
5978B0:  STR             R1, [SP,#0xD0+var_B0]
5978B2:  ADD             R1, SP, #0xD0+var_C4
5978B4:  STR             R2, [SP,#0xD0+var_AC]
5978B6:  STR             R3, [SP,#0xD0+var_A8]
5978B8:  STRD.W          R0, R11, [SP,#0xD0+var_A4]
5978BC:  STRD.W          R10, R9, [SP,#0xD0+var_9C]
5978C0:  STR             R6, [SP,#0xD0+var_94]
5978C2:  LDR             R0, [SP,#0xD0+var_70]
5978C4:  STR             R0, [SP,#0xD0+var_D0]
5978C6:  LDR             R0, [SP,#0xD0+var_74]
5978C8:  STR             R0, [SP,#0xD0+var_CC]
5978CA:  LDR             R0, [SP,#0xD0+var_78]
5978CC:  STR             R0, [SP,#0xD0+var_C8]
5978CE:  LDR             R0, [SP,#0xD0+var_7C]
5978D0:  STM.W           R1, {R0,R12,LR}
5978D4:  LDR             R0, [SP,#0xD0+var_84]
5978D6:  STR             R0, [SP,#0xD0+var_B8]
5978D8:  LDR             R0, [SP,#0xD0+var_88]
5978DA:  STR             R0, [SP,#0xD0+var_B4]
5978DC:  LDR             R0, [SP,#0xD0+var_64]
5978DE:  LDRD.W          R1, R2, [SP,#0xD0+var_6C]
5978E2:  LDR             R3, [SP,#0xD0+var_80]
5978E4:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
5978E8:  LDRB            R0, [R4]
5978EA:  AND.W           R0, R0, #0xFE
5978EE:  STRB            R0, [R4]
5978F0:  LDR             R0, [SP,#0xD0+var_90]
5978F2:  LDR             R0, [R0]
5978F4:  ADD.W           R8, R8, #1
5978F8:  ADDS            R4, #0xA
5978FA:  CMP             R8, R0
5978FC:  BLT             loc_597838
5978FE:  LDR             R0, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x597904)
597900:  ADD             R0, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
597902:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
597904:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
597906:  CMP             R0, #1
597908:  BLT             loc_5979FC
59790A:  LDR             R1, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr - 0x59791A)
59790C:  MOV.W           R9, #0
597910:  LDR             R2, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr - 0x597920)
597912:  MOV.W           R10, #0
597916:  ADD             R1, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr
597918:  VLDR            S16, =-3000.0
59791C:  ADD             R2, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr
59791E:  LDR             R3, [R1]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldY ...
597920:  LDR             R1, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x597928)
597922:  LDR             R6, [R2]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldX ...
597924:  ADD             R1, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
597926:  LDR             R1, [R1]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
597928:  STR             R1, [SP,#0xD0+var_64]
59792A:  STR             R3, [SP,#0xD0+var_68]
59792C:  LDRSH.W         R1, [R6,R10,LSL#1]
597930:  LDRH.W          R2, [R3,R10,LSL#1]
597934:  CMP             R1, #0xB
597936:  IT LS
597938:  CMPLS           R2, #0xC
59793A:  BCC             loc_5979F4
59793C:  MOV.W           R5, #0x1F4
597940:  SXTH            R0, R2
597942:  SMLABB.W        R2, R0, R5, R5
597946:  BFC.W           R8, #0, #0x10
59794A:  SMLABB.W        R3, R1, R5, R5
59794E:  BFC.W           LR, #0, #0x10
597952:  SMULBB.W        R0, R0, R5
597956:  STRD.W          R9, R8, [SP,#0xD0+var_98]
59795A:  SMULBB.W        R1, R1, R5
59795E:  BFC.W           R12, #0, #0x10
597962:  MOV             R11, LR
597964:  VMOV            S6, R2
597968:  MOV             R5, R12
59796A:  VMOV            S2, R3
59796E:  VMOV            S4, R0
597972:  MOVW            R0, #0xFFFF
597976:  VMOV            S0, R1
59797A:  MOV.W           R1, #0x3F800000
59797E:  BICS            R4, R0
597980:  VCVT.F32.S32    S0, S0
597984:  VCVT.F32.S32    S2, S2
597988:  STR             R1, [SP,#0xD0+var_9C]
59798A:  VCVT.F32.S32    S4, S4
59798E:  STR.W           R9, [SP,#0xD0+var_A0]
597992:  VCVT.F32.S32    S6, S6
597996:  STRD.W          R9, LR, [SP,#0xD0+var_A8]
59799A:  STRD.W          R9, R1, [SP,#0xD0+var_B0]
59799E:  STR.W           R12, [SP,#0xD0+var_B4]
5979A2:  STR.W           R9, [SP,#0xD0+var_B8]
5979A6:  VADD.F32        S0, S0, S16
5979AA:  STRD.W          R9, R1, [SP,#0xD0+var_C0]
5979AE:  VADD.F32        S2, S2, S16
5979B2:  STR             R4, [SP,#0xD0+var_C4]
5979B4:  VADD.F32        S4, S4, S16
5979B8:  VADD.F32        S6, S6, S16
5979BC:  VCVT.S32.F32    S0, S0
5979C0:  STR.W           R9, [SP,#0xD0+var_C8]
5979C4:  VCVT.S32.F32    S2, S2
5979C8:  STR             R1, [SP,#0xD0+var_CC]
5979CA:  VCVT.S32.F32    S4, S4
5979CE:  VCVT.S32.F32    S6, S6
5979D2:  STR.W           R9, [SP,#0xD0+var_D0]
5979D6:  VMOV            R0, S0
5979DA:  VMOV            R1, S2
5979DE:  VMOV            R2, S4
5979E2:  VMOV            R3, S6
5979E6:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
5979EA:  LDRD.W          R3, R0, [SP,#0xD0+var_68]
5979EE:  MOV             LR, R11
5979F0:  LDR             R0, [R0]
5979F2:  MOV             R12, R5
5979F4:  ADD.W           R10, R10, #1
5979F8:  CMP             R10, R0
5979FA:  BLT             loc_59792C
5979FC:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x597A02)
5979FE:  ADD             R0, PC; TempBufferVerticesStored_ptr
597A00:  LDR             R0, [R0]; TempBufferVerticesStored
597A02:  LDR             R0, [R0]
597A04:  CBZ             R0, loc_597A3A
597A06:  BLX.W           j__Z10LittleTestv; LittleTest(void)
597A0A:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x597A14)
597A0C:  MOVS            R3, #1
597A0E:  LDR             R1, =(TempVertexBuffer_ptr - 0x597A16)
597A10:  ADD             R0, PC; TempBufferVerticesStored_ptr
597A12:  ADD             R1, PC; TempVertexBuffer_ptr
597A14:  LDR             R2, [R0]; TempBufferVerticesStored
597A16:  LDR             R0, [R1]; TempVertexBuffer
597A18:  LDR             R1, [R2]
597A1A:  MOVS            R2, #0
597A1C:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
597A20:  CBZ             R0, loc_597A3A
597A22:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x597A2A)
597A24:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x597A2C)
597A26:  ADD             R0, PC; TempBufferIndicesStored_ptr
597A28:  ADD             R1, PC; TempBufferRenderIndexList_ptr
597A2A:  LDR             R0, [R0]; TempBufferIndicesStored
597A2C:  LDR             R1, [R1]; TempBufferRenderIndexList
597A2E:  LDR             R2, [R0]
597A30:  MOVS            R0, #3
597A32:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
597A36:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
597A3A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x597A44)
597A3C:  MOVS            R2, #0
597A3E:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x597A46)
597A40:  ADD             R0, PC; TempBufferIndicesStored_ptr
597A42:  ADD             R1, PC; TempBufferVerticesStored_ptr
597A44:  LDR             R0, [R0]; TempBufferIndicesStored
597A46:  LDR             R1, [R1]; TempBufferVerticesStored
597A48:  STR             R2, [R0]
597A4A:  MOVS            R0, #0; unsigned __int8
597A4C:  STR             R2, [R1]
597A4E:  BLX             j__Z12emu_SetWaterh; emu_SetWater(uchar)
597A52:  BLX.W           j__ZN11CWaterLevel15RenderBoatWakesEv; CWaterLevel::RenderBoatWakes(void)
597A56:  ADD             SP, SP, #0x70 ; 'p'
597A58:  VPOP            {D8-D15}
597A5C:  ADD             SP, SP, #4
597A5E:  POP.W           {R8-R11}
597A62:  POP.W           {R4-R7,LR}
597A66:  B.W             j_j__Z12DefinedStatev; j_DefinedState(void)
597A6A:  ADD             SP, SP, #0x70 ; 'p'
597A6C:  VPOP            {D8-D15}
597A70:  ADD             SP, SP, #4
597A72:  POP.W           {R8-R11}
597A76:  POP             {R4-R7,PC}
