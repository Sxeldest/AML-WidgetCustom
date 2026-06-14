; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c6RenderEP8RwCamerajfh
; Address            : 0x36708C - 0x367F3E
; =========================================================

36708C:  PUSH            {R4-R7,LR}
36708E:  ADD             R7, SP, #0xC
367090:  PUSH.W          {R8-R11}
367094:  SUB             SP, SP, #4
367096:  VPUSH           {D8-D15}
36709A:  SUB             SP, SP, #0x1E0
36709C:  MOV             R5, R0
36709E:  MOV             R10, R1
3670A0:  LDR             R1, [R5,#0x2C]
3670A2:  MOV             R9, R3
3670A4:  LDR             R0, [R7,#arg_0]
3670A6:  CMP             R1, #1
3670A8:  BLT             loc_3670C2
3670AA:  LDR             R2, [R5,#0x30]
3670AC:  MOVS            R3, #0
3670AE:  MOVW            R6, #0x4008
3670B2:  LDR.W           R4, [R2,R3,LSL#2]
3670B6:  LDRH            R4, [R4,#4]
3670B8:  CMP             R4, R6
3670BA:  BEQ             loc_3670E8
3670BC:  ADDS            R3, #1
3670BE:  CMP             R3, R1
3670C0:  BLT             loc_3670B2
3670C2:  MOVS            R6, #0
3670C4:  CBZ             R0, loc_3670EE
3670C6:  LDRB.W          R0, [R5,#0x3D]
3670CA:  CMP             R0, #0
3670CC:  BEQ.W           loc_367F30
3670D0:  MOV             R0, R5
3670D2:  MOV             R1, R10
3670D4:  ADD             SP, SP, #0x1E0
3670D6:  VPOP            {D8-D15}
3670DA:  ADD             SP, SP, #4
3670DC:  POP.W           {R8-R11}
3670E0:  POP.W           {R4-R7,LR}
3670E4:  B.W             _ZN13FxEmitterBP_c14RenderHeatHazeEP8RwCamerajf; float
3670E8:  MOVS            R6, #1
3670EA:  CMP             R0, #0
3670EC:  BNE             loc_3670C6
3670EE:  ADD.W           R4, R5, #0x20 ; ' '
3670F2:  MOV             R0, R4; this
3670F4:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
3670F8:  CBZ             R6, loc_367112
3670FA:  CMP             R0, #1
3670FC:  BLT.W           loc_367F30
367100:  LDR.W           R0, =(g_fxMan_ptr - 0x36710A)
367104:  MOVS            R1, #1
367106:  ADD             R0, PC; g_fxMan_ptr
367108:  LDR             R0, [R0]; g_fxMan
36710A:  STRB.W          R1, [R0,#(byte_82064C - 0x820594)]
36710E:  B.W             loc_367F30
367112:  CMP             R0, #0
367114:  BEQ.W           loc_367F30
367118:  LDR             R0, [R5,#0xC]
36711A:  LDR             R6, [R0]
36711C:  MOV             R0, R4; this
36711E:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
367122:  CMP             R0, #0
367124:  BEQ.W           loc_367F30
367128:  STR             R6, [SP,#0x240+var_16C]
36712A:  MOVS            R0, #0xC
36712C:  LDRB            R1, [R5,#7]
36712E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
367132:  LDRB            R0, [R5,#7]
367134:  CBZ             R0, loc_367156
367136:  LDR.W           R0, =(g_blendFunctions_ptr - 0x367142)
36713A:  LDRSB.W         R1, [R5,#5]
36713E:  ADD             R0, PC; g_blendFunctions_ptr
367140:  LDR             R6, [R0]; g_blendFunctions
367142:  MOVS            R0, #0xA
367144:  LDR.W           R1, [R6,R1,LSL#2]
367148:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36714C:  LDRSB.W         R0, [R5,#6]
367150:  LDR.W           R1, [R6,R0,LSL#2]
367154:  B               loc_367168
367156:  LDR.W           R0, =(g_blendFunctions_ptr - 0x36715E)
36715A:  ADD             R0, PC; g_blendFunctions_ptr
36715C:  LDR             R6, [R0]; g_blendFunctions
36715E:  MOVS            R0, #0xA
367160:  LDR             R1, [R6,#(dword_686780 - 0x68677C)]
367162:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
367166:  LDR             R1, [R6]
367168:  MOVS            R0, #0xB
36716A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36716E:  LDR.W           R0, =(g_pMatrix_ptr - 0x36717A)
367172:  LDR.W           R3, =(g_pVertex3d_ptr - 0x367184)
367176:  ADD             R0, PC; g_pMatrix_ptr
367178:  LDR.W           R1, =(g_numTris_ptr - 0x36718A)
36717C:  LDR.W           R12, =(g_pRaster_ptr - 0x367190)
367180:  ADD             R3, PC; g_pVertex3d_ptr
367182:  LDR.W           R2, =(g_numVertices_ptr - 0x367196)
367186:  ADD             R1, PC; g_numTris_ptr
367188:  LDR.W           R6, =(TempVertexBuffer_ptr - 0x36719A)
36718C:  ADD             R12, PC; g_pRaster_ptr
36718E:  LDR.W           LR, =(g_rwFlags_ptr - 0x36719C)
367192:  ADD             R2, PC; g_numVertices_ptr
367194:  LDR             R0, [R0]; g_pMatrix
367196:  ADD             R6, PC; TempVertexBuffer_ptr
367198:  ADD             LR, PC; g_rwFlags_ptr
36719A:  LDR.W           R8, [R3]; g_pVertex3d
36719E:  STR             R5, [SP,#0x240+var_190]
3671A0:  LDR             R5, [R1]; g_numTris
3671A2:  LDR.W           R1, [R12]; g_pRaster
3671A6:  MOV.W           R12, #0
3671AA:  STR.W           R12, [R0]
3671AE:  MOVS            R0, #1
3671B0:  LDR.W           R11, [R2]; g_numVertices
3671B4:  LDR             R6, [R6]; TempVertexBuffer
3671B6:  LDR.W           R2, [LR]; g_rwFlags
3671BA:  LDR             R3, [SP,#0x240+var_16C]
3671BC:  STR.W           R6, [R8]
3671C0:  ADD             R6, SP, #0x240+var_128
3671C2:  STR             R3, [R1]
3671C4:  STR             R0, [R2]
3671C6:  MOVS            R0, #1
3671C8:  MOV             R1, R6
3671CA:  STR.W           R12, [R5]
3671CE:  STR.W           R12, [R11]
3671D2:  MOV             R5, R3
3671D4:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
3671D8:  LDR             R0, [SP,#0x240+var_128]
3671DA:  CMP             R0, R5
3671DC:  ITTT NE
3671DE:  MOVNE           R0, #1
3671E0:  MOVNE           R1, R5
3671E2:  BLXNE           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
3671E6:  LDR.W           R8, [R4]
3671EA:  CMP.W           R8, #0
3671EE:  BEQ.W           loc_367EDC
3671F2:  VMOV            S0, R9
3671F6:  ADD.W           R0, R6, #0x38 ; '8'
3671FA:  LDR.W           R2, =(g_numVertices_ptr - 0x367212)
3671FE:  VMOV.F32        S22, #1.0
367202:  VSTR            S0, [SP,#0x240+var_198]
367206:  VMOV.F32        S26, #-0.5
36720A:  LDR.W           R1, [R10,#4]
36720E:  ADD             R2, PC; g_numVertices_ptr
367210:  STR             R0, [SP,#0x240+var_1E0]
367212:  ADD             R0, SP, #0x240+var_80
367214:  ORR.W           R0, R0, #4
367218:  STR             R0, [SP,#0x240+var_170]
36721A:  LDR             R0, [SP,#0x240+var_190]
36721C:  VMOV.F32        S25, #4.0
367220:  LDR.W           R3, =(g_pVertex3d_ptr - 0x367238)
367224:  VMOV.F32        S29, #0.5
367228:  ADDS            R0, #0x2C ; ','
36722A:  STR             R0, [SP,#0x240+var_174]
36722C:  ADD.W           R0, R1, #0x10
367230:  STR             R1, [SP,#0x240+var_168]
367232:  STR             R0, [SP,#0x240+var_1E4]
367234:  ADD             R3, PC; g_pVertex3d_ptr
367236:  LDR.W           R0, =(g_fx_ptr - 0x36724A)
36723A:  MOV.W           R9, #0
36723E:  LDR.W           R1, =(g_numTris_ptr - 0x367250)
367242:  MOV.W           R11, #0x3F800000
367246:  ADD             R0, PC; g_fx_ptr
367248:  LDR.W           R6, =(TempVertexBuffer_ptr - 0x367258)
36724C:  ADD             R1, PC; g_numTris_ptr
36724E:  LDR.W           R5, =(g_pRaster_ptr - 0x36725C)
367252:  LDR             R0, [R0]; g_fx
367254:  ADD             R6, PC; TempVertexBuffer_ptr
367256:  STR             R0, [SP,#0x240+var_188]
367258:  ADD             R5, PC; g_pRaster_ptr
36725A:  LDR.W           R0, =(g_fxMan_ptr - 0x367266)
36725E:  LDR.W           R12, =(g_rwFlags_ptr - 0x36726C)
367262:  ADD             R0, PC; g_fxMan_ptr
367264:  VLDR            S20, =255.0
367268:  ADD             R12, PC; g_rwFlags_ptr
36726A:  VLDR            S28, =360.0
36726E:  LDR             R0, [R0]; g_fxMan
367270:  STR             R0, [SP,#0x240+var_178]
367272:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x36727E)
367276:  VLDR            S30, =-360.0
36727A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
36727C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
36727E:  STR             R0, [SP,#0x240+var_19C]
367280:  LDR.W           R0, =(TheCamera_ptr - 0x367288)
367284:  ADD             R0, PC; TheCamera_ptr
367286:  LDR             R0, [R0]; TheCamera
367288:  STR             R0, [SP,#0x240+var_1A0]
36728A:  LDR.W           R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x367292)
36728E:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
367290:  LDR             R0, [R0]; CMaths::ms_SinTable ...
367292:  STR             R0, [SP,#0x240+var_194]
367294:  LDR.W           R0, =(g_fxMan_ptr - 0x36729C)
367298:  ADD             R0, PC; g_fxMan_ptr
36729A:  LDR             R0, [R0]; g_fxMan
36729C:  STR             R0, [SP,#0x240+var_17C]
36729E:  LDR.W           R0, =(g_numTris_ptr - 0x3672A6)
3672A2:  ADD             R0, PC; g_numTris_ptr
3672A4:  LDR             R0, [R0]; g_numTris
3672A6:  STR             R0, [SP,#0x240+var_1A4]
3672A8:  LDR.W           R0, =(g_pMatrix_ptr - 0x3672B0)
3672AC:  ADD             R0, PC; g_pMatrix_ptr
3672AE:  LDR             R0, [R0]; g_pMatrix
3672B0:  STR             R0, [SP,#0x240+var_1A8]
3672B2:  LDR             R0, [R1]; g_numTris
3672B4:  STR             R0, [SP,#0x240+var_1AC]
3672B6:  LDR             R0, [R2]; g_numVertices
3672B8:  STR             R0, [SP,#0x240+var_1B0]
3672BA:  LDR             R0, [R3]; g_pVertex3d
3672BC:  STR             R0, [SP,#0x240+var_1B4]
3672BE:  LDR             R0, [R6]; TempVertexBuffer
3672C0:  ADD             R6, SP, #0x240+var_128
3672C2:  STR             R0, [SP,#0x240+var_1B8]
3672C4:  LDR             R0, [R5]; g_pRaster
3672C6:  STR             R0, [SP,#0x240+var_1BC]
3672C8:  LDR.W           R0, [R12]; g_rwFlags
3672CC:  STR             R0, [SP,#0x240+var_1C0]
3672CE:  LDR.W           R0, =(g_rwFlags_ptr - 0x3672DA)
3672D2:  LDR.W           R1, =(g_pMatrix_ptr - 0x3672E0)
3672D6:  ADD             R0, PC; g_rwFlags_ptr
3672D8:  LDR.W           R2, =(g_numTris_ptr - 0x3672E8)
3672DC:  ADD             R1, PC; g_pMatrix_ptr
3672DE:  LDR.W           R3, =(TempVertexBuffer_ptr - 0x3672EC)
3672E2:  LDR             R0, [R0]; g_rwFlags
3672E4:  ADD             R2, PC; g_numTris_ptr
3672E6:  STR             R0, [SP,#0x240+var_1C4]
3672E8:  ADD             R3, PC; TempVertexBuffer_ptr
3672EA:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x3672F4)
3672EE:  LDR             R1, [R1]; g_pMatrix
3672F0:  ADD             R0, PC; TempVertexBuffer_ptr
3672F2:  STR             R1, [SP,#0x240+var_1C8]
3672F4:  LDR.W           R1, =(g_pVertex3d_ptr - 0x367300)
3672F8:  LDR             R0, [R0]; TempVertexBuffer
3672FA:  STR             R0, [SP,#0x240+var_1CC]
3672FC:  ADD             R1, PC; g_pVertex3d_ptr
3672FE:  LDR.W           R0, =(g_numVertices_ptr - 0x367306)
367302:  ADD             R0, PC; g_numVertices_ptr
367304:  LDR             R0, [R0]; g_numVertices
367306:  STR             R0, [SP,#0x240+var_1D0]
367308:  LDR             R0, [R1]; g_pVertex3d
36730A:  STR             R0, [SP,#0x240+var_1D4]
36730C:  LDR             R0, [R2]; g_numTris
36730E:  STR             R0, [SP,#0x240+var_1D8]
367310:  LDR             R0, [R3]; TempVertexBuffer
367312:  STR             R0, [SP,#0x240+var_1DC]
367314:  LDR.W           R0, =(g_fxMan_ptr - 0x36731C)
367318:  ADD             R0, PC; g_fxMan_ptr
36731A:  LDR             R0, [R0]; g_fxMan
36731C:  STR             R0, [SP,#0x240+var_18C]
36731E:  MOVS            R0, #0
367320:  STR             R0, [SP,#0x240+var_184]
367322:  MOVS            R0, #0
367324:  STR             R0, [SP,#0x240+var_180]
367326:  B               loc_36736E
367328:  LDR             R2, [SP,#0x240+var_1E4]
36732A:  ADD.W           R1, R2, #0x20 ; ' '
36732E:  MOV             R0, R2
367330:  VLD1.32         {D18-D19}, [R1]
367334:  VLD1.32         {D16-D17}, [R0]!
367338:  VLD1.32         {D20-D21}, [R0]
36733C:  ADD.W           R0, R2, #0x30 ; '0'
367340:  VLD1.32         {D22-D23}, [R0]
367344:  ADD.W           R0, R5, #0x30 ; '0'
367348:  VST1.32         {D22-D23}, [R0]
36734C:  ADD.W           R0, R5, #0x20 ; ' '
367350:  VST1.32         {D18-D19}, [R0]
367354:  MOV             R0, R5
367356:  VST1.32         {D16-D17}, [R0]!
36735A:  VST1.32         {D20-D21}, [R0]
36735E:  LDR             R0, [SP,#0x240+var_168]
367360:  VLDR            S0, [R0,#0x30]
367364:  VLDR            S2, [R0,#0x34]
367368:  VLDR            S4, [R0,#0x38]
36736C:  B               loc_36780E
36736E:  LDRB.W          R0, [R8,#0x37]
367372:  CBZ             R0, loc_3673A0
367374:  LDR             R4, [SP,#0x240+var_18C]
367376:  MOV             R0, R4; this
367378:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
36737C:  MOV             R5, R0
36737E:  LDR.W           R0, [R8,#0x28]
367382:  MOV             R1, R5
367384:  BLX             j__ZN10FxSystem_c18GetCompositeMatrixEP11RwMatrixTag; FxSystem_c::GetCompositeMatrix(RwMatrixTag *)
367388:  ADD.W           R1, R8, #0x10
36738C:  ADD             R0, SP, #0x240+var_80
36738E:  MOVS            R2, #1
367390:  MOV             R3, R5
367392:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
367396:  MOV             R0, R4
367398:  MOV             R1, R5
36739A:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
36739E:  B               loc_3673AE
3673A0:  VLDR            D16, [R8,#0x10]
3673A4:  LDR.W           R0, [R8,#0x18]
3673A8:  STR             R0, [SP,#0x240+var_78]
3673AA:  VSTR            D16, [SP,#0x240+var_80]
3673AE:  VLDR            S0, [R8,#8]
3673B2:  VLDR            S2, [R8,#0xC]
3673B6:  LDR.W           R0, [R8,#0x28]
3673BA:  VDIV.F32        S0, S2, S0
3673BE:  LDR             R3, [R0,#8]
3673C0:  LDR             R1, [R0,#0x58]; int
3673C2:  VMOV            R2, S0; int
3673C6:  VLDR            S0, [R3,#0xC]
3673CA:  STRD.W          R9, R6, [SP,#0x240+var_23C]; int
3673CE:  MOVS            R3, #0; int
3673D0:  VSTR            S0, [SP,#0x240+var_240]
3673D4:  LDR             R0, [SP,#0x240+var_174]; int
3673D6:  BLX             j__ZN15FxInfoManager_c17ProcessRenderInfoEffffhP12RenderInfo_t; FxInfoManager_c::ProcessRenderInfo(float,float,float,float,uchar,RenderInfo_t *)
3673DA:  LDRSB.W         R0, [SP,#0x240+var_AD]
3673DE:  CMP             R0, #0
3673E0:  BLT             loc_3674C0
3673E2:  VLDR            S16, [SP,#0x240+var_90]
3673E6:  BLX             rand
3673EA:  ADD             R4, SP, #0x240+var_148
3673EC:  MOV             R5, R0
3673EE:  MOV             R0, R4; this
3673F0:  BLX             j__ZN11FxPrtMult_cC2Ev; FxPrtMult_c::FxPrtMult_c(void)
3673F4:  VMOV            S0, R5
3673F8:  VLDR            S4, =4.6566e-10
3673FC:  VADD.F32        S2, S16, S16
367400:  ADD             R2, SP, #0x240+var_164; int
367402:  VCVT.F32.S32    S0, S0
367406:  VLDR            S6, [SP,#0x240+var_98]
36740A:  VLDR            S8, [SP,#0x240+var_94]
36740E:  MOVS            R3, #0; int
367410:  VDIV.F32        S6, S6, S20
367414:  LDR             R0, [SP,#0x240+var_88]
367416:  LDR             R1, [SP,#0x240+var_8C]
367418:  STR.W           R11, [SP,#0x240+var_134]
36741C:  STR             R1, [SP,#0x240+var_138]
36741E:  MOVS            R1, #0
367420:  STR             R0, [SP,#0x240+var_130]
367422:  MOVT            R1, #0xBF80
367426:  VMUL.F32        S0, S0, S4
36742A:  VLDR            S4, [SP,#0x240+var_9C]
36742E:  VDIV.F32        S8, S8, S20
367432:  VMUL.F32        S0, S2, S0
367436:  VLDR            S2, [SP,#0x240+var_A0]
36743A:  VDIV.F32        S4, S4, S20
36743E:  VSUB.F32        S0, S0, S16
367442:  VSTR            S8, [SP,#0x240+var_13C]
367446:  VDIV.F32        S2, S2, S20
36744A:  VDIV.F32        S0, S0, S20
36744E:  VADD.F32        S6, S0, S6
367452:  VADD.F32        S4, S0, S4
367456:  VADD.F32        S0, S2, S0
36745A:  VMIN.F32        D18, D3, D11
36745E:  VMIN.F32        D17, D2, D11
367462:  VMIN.F32        D16, D0, D11
367466:  VLDR            S0, =0.0
36746A:  VMOV            D19, D0
36746E:  VMAX.F32        D1, D16, D19
367472:  VMAX.F32        D0, D18, D19
367476:  VMAX.F32        D2, D17, D19
36747A:  VSTR            S2, [SP,#0x240+var_148]
36747E:  VSTR            S4, [SP,#0x240+var_148+4]
367482:  VSTR            S0, [SP,#0x240+var_140]
367486:  VLDR            D16, [R8,#0x10]
36748A:  LDR.W           R0, [R8,#0x18]
36748E:  STR             R0, [SP,#0x240+var_150]
367490:  VSTR            D16, [SP,#0x240+var_158]
367494:  LDR             R0, [SP,#0x240+var_188]
367496:  LDR             R0, [R0,#0x20]; int
367498:  STRD.W          R9, R9, [SP,#0x240+var_164]
36749C:  STR.W           R9, [SP,#0x240+var_15C]
3674A0:  STR             R4, [SP,#0x240+var_240]; float
3674A2:  STR             R1, [SP,#0x240+var_23C]; float
3674A4:  MOV             R1, #0x3F99999A
3674AC:  STR             R1, [SP,#0x240+var_238]; float
3674AE:  MOV             R1, #0x3F19999A
3674B6:  STRD.W          R1, R9, [SP,#0x240+var_234]; float
3674BA:  ADD             R1, SP, #0x240+var_158; int
3674BC:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3674C0:  LDR             R0, [SP,#0x240+var_178]; this
3674C2:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
3674C6:  MOV             R5, R0
3674C8:  MOVS            R1, #:lower16:(elf_hash_chain+0xFE9B)
3674CA:  STRD.W          R11, R9, [R5]
3674CE:  MOV             R10, R5
3674D0:  STR.W           R9, [R5,#8]
3674D4:  MOVT            R1, #:upper16:(elf_hash_chain+0xFE9B)
3674D8:  STRD.W          R11, R9, [R5,#0x14]
3674DC:  MOV.W           R2, #0x3F800000
3674E0:  STRD.W          R9, R9, [R5,#0x20]
3674E4:  STR.W           R11, [R5,#0x28]
3674E8:  MOV             R11, R5
3674EA:  STR.W           R9, [R5,#0x38]
3674EE:  STR.W           R9, [R5,#0x30]
3674F2:  STR.W           R9, [R10,#0x10]!
3674F6:  STR.W           R9, [R11,#0x34]!
3674FA:  LDR             R0, [R5,#0xC]
3674FC:  ORRS            R0, R1
3674FE:  STR             R0, [R5,#0xC]
367500:  LDR             R0, [SP,#0x240+var_FC]
367502:  CMP             R0, #1
367504:  BLT             loc_3675A8
367506:  VLDR            S4, [R8,#0x10]
36750A:  CMP             R0, #2
36750C:  VLDR            S2, [R8,#0x14]
367510:  VLDR            S0, [R8,#0x18]
367514:  BNE.W           loc_367624
367518:  LDR             R0, [SP,#0x240+var_19C]
36751A:  VLDR            S8, =50.0
36751E:  VLDR            S10, [R8,#0x20]
367522:  VLDR            S6, [R0]
367526:  VLDR            S12, [R8,#0x24]
36752A:  VDIV.F32        S6, S6, S8
36752E:  LDR             R0, [SP,#0x240+var_168]
367530:  LDR             R3, [SP,#0x240+var_1A0]
367532:  ADDW            R1, R3, #0x978
367536:  VLDR            S8, [R8,#0x1C]
36753A:  VMUL.F32        S10, S10, S6
36753E:  VLDR            S14, [R0,#0x44]
367542:  VMUL.F32        S8, S8, S6
367546:  VLDR            S1, [R0,#0x48]
36754A:  VMUL.F32        S6, S12, S6
36754E:  VLDR            S12, [R0,#0x40]
367552:  ADDW            R0, R3, #0x974
367556:  VLDR            S3, [R1]
36755A:  VSUB.F32        S12, S4, S12
36755E:  VLDR            S5, [R0]
367562:  ADDW            R0, R3, #0x97C
367566:  VSUB.F32        S10, S2, S10
36756A:  VSUB.F32        S14, S2, S14
36756E:  VSUB.F32        S8, S4, S8
367572:  VSUB.F32        S6, S0, S6
367576:  VSUB.F32        S1, S0, S1
36757A:  VSUB.F32        S10, S10, S3
36757E:  VLDR            S3, [R0]
367582:  VSUB.F32        S8, S8, S5
367586:  VSUB.F32        S6, S6, S3
36758A:  VSUB.F32        S10, S14, S10
36758E:  VSUB.F32        S8, S12, S8
367592:  VLDR            S12, [SP,#0x240+var_F8]
367596:  VSUB.F32        S6, S1, S6
36759A:  VMUL.F32        S10, S12, S10
36759E:  VMUL.F32        S8, S12, S8
3675A2:  VMUL.F32        S6, S12, S6
3675A6:  B               loc_367658
3675A8:  LDRB.W          R0, [SP,#0x240+var_AF]
3675AC:  CMP             R0, #0
3675AE:  BEQ.W           loc_3676EE
3675B2:  LDRB.W          R0, [SP,#0x240+var_AE]
3675B6:  CMP             R0, #0
3675B8:  BEQ.W           loc_36773C
3675BC:  LDR.W           R0, [R8,#0x24]
3675C0:  VLDR            D16, [R8,#0x1C]
3675C4:  STR             R0, [SP,#0x240+var_68]
3675C6:  VLDR            S0, [SP,#0x240+var_68]
3675CA:  VSTR            D16, [SP,#0x240+var_70]
3675CE:  VLDR            S2, [SP,#0x240+var_70]
3675D2:  VCMP.F32        S2, #0.0
3675D6:  VMRS            APSR_nzcv, FPSCR
3675DA:  ITTT EQ
3675DC:  VLDREQ          S2, [SP,#0x240+var_70+4]
3675E0:  VCMPEQ.F32      S2, #0.0
3675E4:  VMRSEQ          APSR_nzcv, FPSCR
3675E8:  BNE.W           loc_367746
3675EC:  VCMP.F32        S0, #0.0
3675F0:  VMRS            APSR_nzcv, FPSCR
3675F4:  IT EQ
3675F6:  STREQ           R2, [SP,#0x240+var_68]
3675F8:  B               loc_367746
3675FA:  ALIGN 4
3675FC:  DCFS 255.0
367600:  DCFS 360.0
367604:  DCFS -360.0
367608:  DCFS 4.6566e-10
36760C:  DCFS 0.0
367610:  DCFS 50.0
367614:  DCFS 0.017453
367618:  DCFS 256.0
36761C:  DCFS 6.2832
367620:  DCFS 64.0
367624:  VLDR            S6, [SP,#0x240+var_F8]
367628:  VLDR            S8, [R8,#0x1C]
36762C:  VLDR            S10, [R8,#0x20]
367630:  VLDR            S12, [R8,#0x24]
367634:  VMUL.F32        S8, S8, S6
367638:  VMUL.F32        S10, S6, S10
36763C:  VMUL.F32        S6, S6, S12
367640:  VSUB.F32        S8, S4, S8
367644:  VSUB.F32        S10, S2, S10
367648:  VSUB.F32        S6, S0, S6
36764C:  VSUB.F32        S8, S4, S8
367650:  VSUB.F32        S10, S2, S10
367654:  VSUB.F32        S6, S0, S6
367658:  VSTR            S8, [SP,#0x240+var_148]
36765C:  VSTR            S10, [SP,#0x240+var_148+4]
367660:  VLDR            D16, [SP,#0x240+var_148]
367664:  VSTR            S6, [SP,#0x240+var_140]
367668:  VSTR            D16, [SP,#0x240+var_70]
36766C:  VLDR            S8, [SP,#0x240+var_70]
367670:  VLDR            S6, [SP,#0x240+var_70+4]
367674:  VCMP.F32        S8, #0.0
367678:  LDR             R0, [SP,#0x240+var_140]
36767A:  VMRS            APSR_nzcv, FPSCR
36767E:  STR             R0, [SP,#0x240+var_68]
367680:  BNE             loc_36769E
367682:  VCMP.F32        S6, #0.0
367686:  VMRS            APSR_nzcv, FPSCR
36768A:  ITTT EQ
36768C:  VLDREQ          S6, [SP,#0x240+var_68]
367690:  VCMPEQ.F32      S6, #0.0
367694:  VMRSEQ          APSR_nzcv, FPSCR
367698:  BNE             loc_36769E
36769A:  STR             R2, [SP,#0x240+var_68]
36769C:  B               loc_3676B2
36769E:  ADD             R0, SP, #0x240+var_70
3676A0:  MOV             R1, R0
3676A2:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
3676A6:  VLDR            S4, [R8,#0x10]
3676AA:  VLDR            S2, [R8,#0x14]
3676AE:  VLDR            S0, [R8,#0x18]
3676B2:  LDR             R0, [SP,#0x240+var_168]
3676B4:  VLDR            S6, [R0,#0x40]
3676B8:  VSUB.F32        S4, S4, S6
3676BC:  VSTR            S4, [SP,#0x240+var_158]
3676C0:  VLDR            S4, [R0,#0x44]
3676C4:  VSUB.F32        S2, S2, S4
3676C8:  VSTR            S2, [SP,#0x240+var_158+4]
3676CC:  VLDR            S2, [R0,#0x48]
3676D0:  ADD             R0, SP, #0x240+var_158
3676D2:  VSUB.F32        S0, S0, S2
3676D6:  MOV             R1, R0
3676D8:  VSTR            S0, [SP,#0x240+var_150]
3676DC:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
3676E0:  VLDR            S0, [SP,#0x240+var_158]
3676E4:  VLDR            S2, [SP,#0x240+var_158+4]
3676E8:  VLDR            S4, [SP,#0x240+var_150]
3676EC:  B               loc_367794
3676EE:  LDRB.W          R0, [SP,#0x240+var_B0]
3676F2:  CMP             R0, #0
3676F4:  BEQ.W           loc_367328
3676F8:  LDR             R2, [SP,#0x240+var_1E0]
3676FA:  ADD.W           R1, R2, #0x20 ; ' '
3676FE:  MOV             R0, R2
367700:  VLD1.32         {D18-D19}, [R1]
367704:  VLD1.32         {D16-D17}, [R0]!
367708:  VLD1.32         {D20-D21}, [R0]
36770C:  ADD.W           R0, R2, #0x30 ; '0'
367710:  VLD1.32         {D22-D23}, [R0]
367714:  ADD.W           R0, R5, #0x30 ; '0'
367718:  VST1.32         {D22-D23}, [R0]
36771C:  ADD.W           R0, R5, #0x20 ; ' '
367720:  VST1.32         {D18-D19}, [R0]
367724:  MOV             R0, R5
367726:  VST1.32         {D16-D17}, [R0]!
36772A:  VST1.32         {D20-D21}, [R0]
36772E:  VLDR            S0, [SP,#0x240+var_D0]
367732:  VLDR            S2, [SP,#0x240+var_CC]
367736:  VLDR            S4, [SP,#0x240+var_C8]
36773A:  B               loc_36780E
36773C:  ADD             R2, SP, #0x240+var_AC
36773E:  LDM             R2, {R0-R2}
367740:  STRD.W          R0, R1, [SP,#0x240+var_70]
367744:  STR             R2, [SP,#0x240+var_68]
367746:  ADD             R0, SP, #0x240+var_70
367748:  MOV             R1, R0
36774A:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36774E:  LDR             R0, [SP,#0x240+var_168]
367750:  VLDR            S0, [SP,#0x240+var_80]
367754:  VLDR            S2, [SP,#0x240+var_80+4]
367758:  VLDR            S6, [R0,#0x40]
36775C:  VLDR            S4, [SP,#0x240+var_78]
367760:  VSUB.F32        S0, S0, S6
367764:  VSTR            S0, [SP,#0x240+var_148]
367768:  VLDR            S0, [R0,#0x44]
36776C:  VSUB.F32        S0, S2, S0
367770:  VSTR            S0, [SP,#0x240+var_148+4]
367774:  VLDR            S0, [R0,#0x48]
367778:  ADD             R0, SP, #0x240+var_148
36777A:  VSUB.F32        S0, S4, S0
36777E:  MOV             R1, R0
367780:  VSTR            S0, [SP,#0x240+var_140]
367784:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
367788:  VLDR            S0, [SP,#0x240+var_148]
36778C:  VLDR            S2, [SP,#0x240+var_148+4]
367790:  VLDR            S4, [SP,#0x240+var_140]
367794:  VLDR            S8, [SP,#0x240+var_70+4]
367798:  VLDR            S6, [SP,#0x240+var_70]
36779C:  VLDR            S10, [SP,#0x240+var_68]
3677A0:  VMUL.F32        S12, S8, S0
3677A4:  VMUL.F32        S14, S2, S6
3677A8:  VMUL.F32        S1, S8, S4
3677AC:  VMUL.F32        S2, S10, S2
3677B0:  VMUL.F32        S4, S4, S6
3677B4:  VMUL.F32        S0, S10, S0
3677B8:  VSUB.F32        S12, S14, S12
3677BC:  VSUB.F32        S14, S1, S2
3677C0:  VSUB.F32        S1, S0, S4
3677C4:  VMUL.F32        S0, S6, S12
3677C8:  VMUL.F32        S2, S10, S14
3677CC:  VSTR            S14, [R5]
3677D0:  VMUL.F32        S4, S10, S1
3677D4:  VSTR            S1, [R5,#4]
3677D8:  VMUL.F32        S10, S8, S12
3677DC:  VSTR            S12, [R5,#8]
3677E0:  VMUL.F32        S8, S8, S14
3677E4:  VLDR            D16, [SP,#0x240+var_70]
3677E8:  VMUL.F32        S6, S6, S1
3677EC:  LDR             R0, [SP,#0x240+var_68]
3677EE:  STR.W           R0, [R10,#8]
3677F2:  VSUB.F32        S2, S2, S0
3677F6:  VSTR            D16, [R10]
3677FA:  VSUB.F32        S0, S10, S4
3677FE:  VSUB.F32        S4, S6, S8
367802:  VSTR            S0, [R5,#0x20]
367806:  VSTR            S2, [R5,#0x24]
36780A:  VSTR            S4, [R5,#0x28]
36780E:  LDRB.W          R0, [R8,#0x36]
367812:  CMP             R0, #0xFF
367814:  BEQ             loc_36782C
367816:  VMOV            S6, R0
36781A:  ADD.W           R0, R8, #0x38 ; '8'
36781E:  VCVT.F32.U32    S6, S6
367822:  VADD.F32        S6, S6, S6
367826:  VSTR            S6, [R8,#0x38]
36782A:  B               loc_367850
36782C:  VLDR            S6, [R8,#0x38]
367830:  ADD.W           R0, R8, #0x38 ; '8'
367834:  VCMPE.F32       S6, #0.0
367838:  VMRS            APSR_nzcv, FPSCR
36783C:  BGE             loc_367850
36783E:  VADD.F32        S6, S6, S28
367842:  VCMPE.F32       S6, #0.0
367846:  VMRS            APSR_nzcv, FPSCR
36784A:  BLT             loc_36783E
36784C:  VSTR            S6, [R0]
367850:  VCMPE.F32       S6, S28
367854:  VMRS            APSR_nzcv, FPSCR
367858:  BLT             loc_36786C
36785A:  VADD.F32        S6, S6, S30
36785E:  VCMPE.F32       S6, S28
367862:  VMRS            APSR_nzcv, FPSCR
367866:  BGE             loc_36785A
367868:  VSTR            S6, [R0]
36786C:  VCMPE.F32       S6, #0.0
367870:  VMRS            APSR_nzcv, FPSCR
367874:  BLE.W           loc_367990
367878:  VLDR            S8, =0.017453
36787C:  VMUL.F32        S6, S6, S8
367880:  VLDR            S8, =256.0
367884:  VMUL.F32        S6, S6, S8
367888:  VLDR            S8, =6.2832
36788C:  VDIV.F32        S6, S6, S8
367890:  VLDR            S8, =64.0
367894:  VADD.F32        S8, S6, S8
367898:  VCVT.U32.F32    S8, S8
36789C:  LDR             R1, [SP,#0x240+var_194]
36789E:  VMOV            R0, S8
3678A2:  UXTB            R0, R0
3678A4:  ADD.W           R0, R1, R0,LSL#2
3678A8:  VLDR            S8, [R0]
3678AC:  VCVT.U32.F32    S6, S6
3678B0:  VLDR            S16, [R5]
3678B4:  VSUB.F32        S10, S22, S8
3678B8:  VLDR            S18, [R5,#4]
3678BC:  VLDR            S24, [R5,#8]
3678C0:  VMOV            R0, S6
3678C4:  VMUL.F32        S6, S0, S10
3678C8:  VMUL.F32        S12, S2, S10
3678CC:  VMUL.F32        S10, S4, S10
3678D0:  VMUL.F32        S7, S4, S6
3678D4:  VMUL.F32        S3, S4, S12
3678D8:  VMUL.F32        S12, S2, S12
3678DC:  VMUL.F32        S9, S2, S6
3678E0:  VMUL.F32        S6, S0, S6
3678E4:  VMUL.F32        S10, S4, S10
3678E8:  VADD.F32        S12, S8, S12
3678EC:  UXTB            R0, R0
3678EE:  VADD.F32        S6, S8, S6
3678F2:  ADD.W           R0, R1, R0,LSL#2
3678F6:  VADD.F32        S8, S8, S10
3678FA:  VLDR            S14, [R0]
3678FE:  VMUL.F32        S1, S0, S14
367902:  VMUL.F32        S5, S2, S14
367906:  VMUL.F32        S14, S4, S14
36790A:  VMUL.F32        S6, S16, S6
36790E:  VMUL.F32        S12, S18, S12
367912:  VMUL.F32        S8, S8, S24
367916:  VADD.F32        S11, S1, S3
36791A:  VSUB.F32        S13, S7, S5
36791E:  VSUB.F32        S15, S9, S14
367922:  VADD.F32        S14, S14, S9
367926:  VSUB.F32        S1, S3, S1
36792A:  VADD.F32        S5, S5, S7
36792E:  VMUL.F32        S10, S18, S11
367932:  VMUL.F32        S9, S16, S13
367936:  VMUL.F32        S7, S18, S15
36793A:  VMUL.F32        S14, S16, S14
36793E:  VMUL.F32        S1, S1, S24
367942:  VMUL.F32        S3, S5, S24
367946:  VADD.F32        S10, S9, S10
36794A:  VADD.F32        S6, S6, S7
36794E:  VADD.F32        S12, S14, S12
367952:  VADD.F32        S19, S8, S10
367956:  VADD.F32        S27, S3, S6
36795A:  VADD.F32        S17, S1, S12
36795E:  VMUL.F32        S6, S0, S19
367962:  VMUL.F32        S8, S4, S27
367966:  VMUL.F32        S10, S2, S19
36796A:  VMUL.F32        S4, S4, S17
36796E:  VMUL.F32        S2, S2, S27
367972:  VMUL.F32        S0, S0, S17
367976:  VSUB.F32        S6, S8, S6
36797A:  VSUB.F32        S4, S10, S4
36797E:  VSUB.F32        S0, S0, S2
367982:  VSTR            S6, [SP,#0x240+var_70+4]
367986:  VSTR            S4, [SP,#0x240+var_70]
36798A:  VSTR            S0, [SP,#0x240+var_68]
36798E:  B               loc_3679AA
367990:  VLDR            S27, [R5]
367994:  VLDR            S17, [R5,#4]
367998:  VLDR            S19, [R5,#8]
36799C:  VLDR            D16, [R10]
3679A0:  LDR.W           R0, [R10,#8]
3679A4:  STR             R0, [SP,#0x240+var_68]
3679A6:  VSTR            D16, [SP,#0x240+var_70]
3679AA:  LDR             R0, [SP,#0x240+var_17C]
3679AC:  MOV             R1, R5
3679AE:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
3679B2:  LDRB.W          R0, [R8,#0x32]
3679B6:  VMOV            S0, R0
3679BA:  VCVT.F32.U32    S12, S0
3679BE:  VLDR            S6, [SP,#0x240+var_114]
3679C2:  VLDR            S2, [SP,#0x240+var_11C]
3679C6:  VLDR            S4, [SP,#0x240+var_118]
3679CA:  VLDR            S14, [SP,#0x240+var_110]
3679CE:  VDIV.F32        S8, S12, S20
3679D2:  VADD.F32        S0, S8, S26
3679D6:  VMUL.F32        S0, S6, S0
3679DA:  VADD.F32        S0, S2, S0
3679DE:  VSTR            S0, [SP,#0x240+var_11C]
3679E2:  LDRB.W          R0, [R8,#0x33]
3679E6:  VMOV            S2, R0
3679EA:  VCVT.F32.U32    S2, S2
3679EE:  VDIV.F32        S10, S2, S20
3679F2:  VADD.F32        S2, S10, S26
3679F6:  VMUL.F32        S2, S14, S2
3679FA:  VADD.F32        S2, S4, S2
3679FE:  VLDR            S4, [SP,#0x240+var_80]
367A02:  VSTR            S2, [SP,#0x240+var_118]
367A06:  VMUL.F32        S14, S2, S0
367A0A:  VLDR            S6, [R5,#0x30]
367A0E:  LDR             R0, [SP,#0x240+var_170]
367A10:  VSUB.F32        S4, S4, S6
367A14:  VLDR            D16, [R11]
367A18:  VLDR            D17, [R0]
367A1C:  VSUB.F32        D16, D17, D16
367A20:  LDRB.W          R0, [R8,#0x30]
367A24:  CMP             R0, #0xFF
367A26:  VMUL.F32        S4, S4, S4
367A2A:  VMUL.F32        D3, D16, D16
367A2E:  VADD.F32        S4, S4, S6
367A32:  VADD.F32        S4, S4, S7
367A36:  VDIV.F32        S4, S14, S4
367A3A:  VSUB.F32        S4, S25, S4
367A3E:  VMUL.F32        S4, S4, S29
367A42:  VMIN.F32        D2, D2, D11
367A46:  BEQ             loc_367A64
367A48:  VMOV            S6, R0
367A4C:  VCVT.F32.U32    S6, S6
367A50:  VDIV.F32        S6, S6, S20
367A54:  VMUL.F32        S2, S2, S6
367A58:  VMUL.F32        S0, S0, S6
367A5C:  VSTR            S2, [SP,#0x240+var_118]
367A60:  VSTR            S0, [SP,#0x240+var_11C]
367A64:  LDRB.W          R3, [SP,#0x240+var_128+3]
367A68:  MOV.W           R11, #0x3F800000
367A6C:  LDRB.W          R0, [SP,#0x240+var_128]
367A70:  LDRB.W          R2, [SP,#0x240+var_128+2]
367A74:  VMOV            S0, R3
367A78:  LDRB.W          R1, [SP,#0x240+var_128+1]
367A7C:  VMOV            S6, R0
367A80:  VCVT.F32.U32    S0, S0
367A84:  VMOV            S2, R2
367A88:  VCVT.F32.U32    S2, S2
367A8C:  VMUL.F32        S0, S4, S0
367A90:  VMOV            S4, R1
367A94:  VCVT.F32.U32    S4, S4
367A98:  VCVT.F32.U32    S6, S6
367A9C:  VCMPE.F32       S0, #0.0
367AA0:  VMRS            APSR_nzcv, FPSCR
367AA4:  BLT.W           loc_367ED0
367AA8:  LDR             R0, [SP,#0x240+var_120]
367AAA:  CMP             R0, #2
367AAC:  BEQ             loc_367B10
367AAE:  LDRD.W          R5, R4, [SP,#0x240+var_184]
367AB2:  CMP             R0, #1
367AB4:  BNE             loc_367B60
367AB6:  LDRB.W          R0, [R8,#0x34]
367ABA:  VMOV            S12, R0
367ABE:  VCVT.F32.U32    S12, S12
367AC2:  LDRB.W          R0, [SP,#0x240+var_124]
367AC6:  LDRB.W          R1, [SP,#0x240+var_123]
367ACA:  LDRB.W          R2, [SP,#0x240+var_122]
367ACE:  VMOV            S1, R0
367AD2:  VMOV            S14, R1
367AD6:  VMOV            S9, R2
367ADA:  VCVT.F32.U32    S14, S14
367ADE:  VDIV.F32        S12, S12, S20
367AE2:  VCVT.F32.U32    S1, S1
367AE6:  VCVT.F32.U32    S9, S9
367AEA:  VSUB.F32        S14, S14, S4
367AEE:  VSUB.F32        S1, S1, S6
367AF2:  VSUB.F32        S9, S9, S2
367AF6:  VMUL.F32        S10, S14, S10
367AFA:  VMUL.F32        S8, S1, S8
367AFE:  VMUL.F32        S12, S9, S12
367B02:  VADD.F32        S4, S10, S4
367B06:  VADD.F32        S6, S8, S6
367B0A:  VADD.F32        S2, S12, S2
367B0E:  B               loc_367B60
367B10:  VLDR            S8, =0.0078125
367B14:  LDRB.W          R0, [SP,#0x240+var_121]
367B18:  VMUL.F32        S8, S12, S8
367B1C:  VMOV.F32        S12, #-1.0
367B20:  VMOV            S10, R0
367B24:  VCVT.F32.U32    S10, S10
367B28:  LDRD.W          R5, R4, [SP,#0x240+var_184]
367B2C:  VADD.F32        S8, S8, S12
367B30:  VMUL.F32        S8, S8, S10
367B34:  VADD.F32        S2, S8, S2
367B38:  VADD.F32        S4, S8, S4
367B3C:  VADD.F32        S6, S8, S6
367B40:  VLDR            S8, =0.0
367B44:  VMOV            D18, D4
367B48:  VMAX.F32        D17, D1, D18
367B4C:  VMAX.F32        D16, D2, D18
367B50:  VMAX.F32        D18, D3, D18
367B54:  VMIN.F32        D1, D17, D10
367B58:  VMIN.F32        D2, D16, D10
367B5C:  VMIN.F32        D3, D18, D10
367B60:  LDRB.W          R0, [R8,#0x2C]
367B64:  LDR             R2, [SP,#0x240+var_16C]
367B66:  CMP             R0, #0xFF
367B68:  BEQ             loc_367B7A
367B6A:  VMOV            S8, R0
367B6E:  VCVT.F32.U32    S8, S8
367B72:  VDIV.F32        S8, S8, S20
367B76:  VMUL.F32        S6, S6, S8
367B7A:  LDRB.W          R0, [R8,#0x2D]
367B7E:  CMP             R0, #0xFF
367B80:  BEQ             loc_367B92
367B82:  VMOV            S8, R0
367B86:  VCVT.F32.U32    S8, S8
367B8A:  VDIV.F32        S8, S8, S20
367B8E:  VMUL.F32        S4, S4, S8
367B92:  LDRB.W          R0, [R8,#0x2E]
367B96:  CMP             R0, #0xFF
367B98:  BEQ             loc_367BAA
367B9A:  VMOV            S8, R0
367B9E:  VCVT.F32.U32    S8, S8
367BA2:  VDIV.F32        S8, S8, S20
367BA6:  VMUL.F32        S2, S2, S8
367BAA:  LDRB.W          R0, [R8,#0x2F]
367BAE:  CMP             R0, #0xFF
367BB0:  BEQ             loc_367BC2
367BB2:  VMOV            S8, R0
367BB6:  VCVT.F32.U32    S8, S8
367BBA:  VDIV.F32        S8, S8, S20
367BBE:  VMUL.F32        S0, S0, S8
367BC2:  LDRB.W          R0, [SP,#0x240+var_F1]
367BC6:  CBZ             R0, loc_367BD2
367BC8:  VCVT.U32.F32    S4, S4
367BCC:  VCVT.U32.F32    S6, S6
367BD0:  B               loc_367C0A
367BD2:  LDRB.W          R0, [R8,#0x35]
367BD6:  VLDR            S10, =0.01
367BDA:  CMP             R0, #0x65 ; 'e'
367BDC:  VMOV            S8, R0
367BE0:  VCVT.F32.U32    S8, S8
367BE4:  VMUL.F32        S8, S8, S10
367BE8:  VLDR            S10, [SP,#0x240+var_198]
367BEC:  IT CC
367BEE:  VMOVCC.F32      S10, S8
367BF2:  VMUL.F32        S4, S4, S10
367BF6:  VSTR            S10, [SP,#0x240+var_198]
367BFA:  VMUL.F32        S6, S6, S10
367BFE:  VMUL.F32        S2, S2, S10
367C02:  VCVT.U32.F32    S4, S4
367C06:  VCVT.U32.F32    S6, S6
367C0A:  VMOV            R0, S4
367C0E:  STRB.W          R0, [SP,#0x240+var_128+1]
367C12:  VMOV            R0, S6
367C16:  STRB.W          R0, [SP,#0x240+var_128]
367C1A:  LDRB.W          R0, [SP,#0x240+var_F4]
367C1E:  VCVT.U32.F32    S0, S0
367C22:  VCVT.U32.F32    S2, S2
367C26:  CMP             R0, #0
367C28:  VMOV            R1, S0
367C2C:  STRB.W          R1, [SP,#0x240+var_128+3]
367C30:  VMOV            R1, S2
367C34:  STRB.W          R1, [SP,#0x240+var_128+2]
367C38:  BEQ             loc_367C62; jumptable 00367C44 case 1
367C3A:  LDRB.W          R0, [SP,#0x240+var_F3]
367C3E:  SUBS            R0, #1; switch 4 cases
367C40:  CMP             R0, #3
367C42:  BHI             def_367C44; jumptable 00367C44 default case
367C44:  TBB.W           [PC,R0]; switch jump
367C48:  DCB 0xD; jump table for switch statement
367C49:  DCB 2
367C4A:  DCB 6
367C4B:  DCB 0xA
367C4C:  LDR             R0, [SP,#0x240+var_190]; jumptable 00367C44 case 2
367C4E:  LDR             R0, [R0,#0x10]
367C50:  CBNZ            R0, loc_367C66
367C52:  B               loc_367C62; jumptable 00367C44 case 1
367C54:  LDR             R0, [SP,#0x240+var_190]; jumptable 00367C44 case 3
367C56:  LDR             R0, [R0,#0x14]
367C58:  CBNZ            R0, loc_367C66
367C5A:  B               loc_367C62; jumptable 00367C44 case 1
367C5C:  LDR             R0, [SP,#0x240+var_190]; jumptable 00367C44 case 4
367C5E:  LDR             R0, [R0,#0x18]
367C60:  CBNZ            R0, loc_367C66
367C62:  LDR             R0, [SP,#0x240+var_190]; jumptable 00367C44 case 1
367C64:  LDR             R0, [R0,#0xC]
367C66:  LDR             R4, [R0]
367C68:  MOV             R5, R4
367C6A:  CMP             R2, R5; jumptable 00367C44 default case
367C6C:  BEQ             loc_367CDE
367C6E:  LDR             R0, [SP,#0x240+var_1A4]
367C70:  LDR             R0, [R0]
367C72:  CBZ             R0, loc_367CA4
367C74:  LDR             R1, [SP,#0x240+var_1C4]
367C76:  LDR             R3, [R1]
367C78:  LDR             R1, [SP,#0x240+var_1C8]
367C7A:  LDR             R2, [R1]
367C7C:  ADD.W           R1, R0, R0,LSL#1
367C80:  LDR             R0, [SP,#0x240+var_1CC]
367C82:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
367C86:  CBZ             R0, loc_367C92
367C88:  MOVS            R0, #3
367C8A:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
367C8E:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
367C92:  LDR             R0, [SP,#0x240+var_1D0]
367C94:  STR.W           R9, [R0]
367C98:  LDR             R0, [SP,#0x240+var_1D8]
367C9A:  STR.W           R9, [R0]
367C9E:  LDR             R0, [SP,#0x240+var_1D4]
367CA0:  LDR             R1, [SP,#0x240+var_1DC]
367CA2:  STR             R1, [R0]
367CA4:  LDR             R0, [SP,#0x240+var_1A8]
367CA6:  MOVS            R1, #1
367CA8:  STR.W           R9, [R0]
367CAC:  LDR             R0, [SP,#0x240+var_1BC]
367CAE:  STR             R4, [R0]
367CB0:  LDR             R0, [SP,#0x240+var_1C0]
367CB2:  STR             R1, [R0]
367CB4:  LDR             R0, [SP,#0x240+var_1AC]
367CB6:  STR.W           R9, [R0]
367CBA:  LDR             R0, [SP,#0x240+var_1B0]
367CBC:  STR.W           R9, [R0]
367CC0:  LDRD.W          R1, R0, [SP,#0x240+var_1B8]
367CC4:  STR             R1, [R0]
367CC6:  ADD             R1, SP, #0x240+var_158
367CC8:  MOVS            R0, #1
367CCA:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
367CCE:  LDR             R0, [SP,#0x240+var_158]
367CD0:  CMP             R0, R4
367CD2:  ITTT NE
367CD4:  MOVNE           R0, #1
367CD6:  MOVNE           R1, R4
367CD8:  BLXNE           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
367CDC:  MOV             R2, R5
367CDE:  LDR             R0, [SP,#0x240+var_FC]
367CE0:  STRD.W          R5, R4, [SP,#0x240+var_184]
367CE4:  MOV             R4, R2
367CE6:  CMP             R0, #0
367CE8:  BLE             loc_367D0C
367CEA:  ADD             R0, SP, #0x240+var_148
367CEC:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
367CF0:  VLDR            S2, =0.0
367CF4:  VMOV            S0, R0
367CF8:  STR             R0, [SP,#0x240+var_10C]
367CFA:  STR.W           R9, [SP,#0x240+var_108]
367CFE:  B               loc_367D14
367D00:  DCFS 0.0078125
367D04:  DCFS 0.0
367D08:  DCFS 0.01
367D0C:  VLDR            S0, [SP,#0x240+var_10C]
367D10:  VLDR            S2, [SP,#0x240+var_108]
367D14:  STR             R4, [SP,#0x240+var_16C]
367D16:  ADD.W           LR, SP, #0x240+var_20C
367D1A:  VLDR            S4, [SP,#0x240+var_118]
367D1E:  VLDR            S6, [SP,#0x240+var_11C]
367D22:  VMUL.F32        S2, S4, S2
367D26:  VLDR            S8, [SP,#0x240+var_70]
367D2A:  VMUL.F32        S0, S4, S0
367D2E:  VLDR            S4, [SP,#0x240+var_100]
367D32:  VLDR            S10, [SP,#0x240+var_70+4]
367D36:  VLDR            S12, [SP,#0x240+var_68]
367D3A:  VMUL.F32        S4, S6, S4
367D3E:  VLDR            S14, [SP,#0x240+var_104]
367D42:  VLDR            S1, [SP,#0x240+var_78]
367D46:  VMUL.F32        S6, S6, S14
367D4A:  VLDR            S14, [SP,#0x240+var_80+4]
367D4E:  VMUL.F32        S25, S8, S2
367D52:  LDRB.W          R12, [SP,#0x240+var_128]
367D56:  VMUL.F32        S24, S8, S0
367D5A:  VLDR            S8, [SP,#0x240+var_80]
367D5E:  VMUL.F32        S18, S10, S0
367D62:  LDRB.W          R6, [SP,#0x240+var_128+1]
367D66:  VMUL.F32        S26, S0, S12
367D6A:  LDRB.W          R4, [SP,#0x240+var_128+2]
367D6E:  VMUL.F32        S29, S27, S4
367D72:  LDRB.W          R5, [SP,#0x240+var_128+3]
367D76:  VMUL.F32        S22, S10, S2
367D7A:  VMUL.F32        S31, S17, S6
367D7E:  VADD.F32        S0, S25, S8
367D82:  STRD.W          R4, R5, [SP,#0x240+var_1EC]; int
367D86:  VMUL.F32        S16, S19, S6
367D8A:  STM.W           LR, {R4,R5,R12}
367D8E:  VMUL.F32        S27, S27, S6
367D92:  VADD.F32        S6, S26, S1
367D96:  STRD.W          R6, R4, [SP,#0x240+var_200]; int
367D9A:  VADD.F32        S8, S24, S8
367D9E:  STRD.W          R5, R12, [SP,#0x240+var_1F8]; int
367DA2:  VADD.F32        S3, S18, S14
367DA6:  STR             R6, [SP,#0x240+var_1F0]; int
367DA8:  VMUL.F32        S23, S12, S2
367DAC:  STRD.W          R9, R9, [SP,#0x240+var_22C]; float
367DB0:  VADD.F32        S0, S0, S29
367DB4:  STRD.W          R11, R11, [SP,#0x240+var_224]; float
367DB8:  VMUL.F32        S19, S19, S4
367DBC:  STRD.W          R11, R9, [SP,#0x240+var_21C]; float
367DC0:  VMUL.F32        S17, S17, S4
367DC4:  STRD.W          R12, R6, [SP,#0x240+var_214]; char
367DC8:  VADD.F32        S10, S16, S6
367DCC:  VADD.F32        S2, S27, S8
367DD0:  VADD.F32        S4, S31, S3
367DD4:  VADD.F32        S8, S8, S29
367DD8:  VMOV            R3, S0; float
367DDC:  VADD.F32        S0, S23, S1
367DE0:  VMOV            R2, S10; float
367DE4:  VMOV            R0, S2; float
367DE8:  VMOV            R1, S4; float
367DEC:  VADD.F32        S2, S22, S14
367DF0:  VADD.F32        S4, S19, S6
367DF4:  VADD.F32        S6, S17, S3
367DF8:  VADD.F32        S0, S19, S0
367DFC:  VADD.F32        S2, S17, S2
367E00:  VSTR            S2, [SP,#0x240+var_240]
367E04:  VSTR            S0, [SP,#0x240+var_23C]
367E08:  VSTR            S8, [SP,#0x240+var_238]
367E0C:  VSTR            S6, [SP,#0x240+var_234]
367E10:  VSTR            S4, [SP,#0x240+var_230]
367E14:  BLX             j__Z12RenderAddTrifffffffffffffffiiiiiiiiiiii; RenderAddTri(float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,int,int,int,int,int,int)
367E18:  VLDR            S0, [SP,#0x240+var_80]
367E1C:  ADD.W           R12, SP, #0x240+var_20C
367E20:  VLDR            S2, [SP,#0x240+var_80+4]
367E24:  VLDR            S4, [SP,#0x240+var_78]
367E28:  VADD.F32        S6, S25, S0
367E2C:  VADD.F32        S8, S22, S2
367E30:  LDRB.W          R6, [SP,#0x240+var_128]
367E34:  VADD.F32        S0, S24, S0
367E38:  LDRB.W          R2, [SP,#0x240+var_128+2]
367E3C:  VADD.F32        S10, S23, S4
367E40:  LDRB.W          R3, [SP,#0x240+var_128+3]
367E44:  LDRB.W          R5, [SP,#0x240+var_128+1]
367E48:  VADD.F32        S2, S18, S2
367E4C:  STRD.W          R2, R3, [SP,#0x240+var_1EC]; int
367E50:  VADD.F32        S12, S29, S6
367E54:  STM.W           R12, {R2,R3,R6}
367E58:  VADD.F32        S14, S17, S8
367E5C:  VADD.F32        S0, S27, S0
367E60:  STRD.W          R5, R2, [SP,#0x240+var_200]; int
367E64:  VADD.F32        S1, S19, S10
367E68:  STRD.W          R3, R6, [SP,#0x240+var_1F8]; int
367E6C:  VADD.F32        S8, S31, S8
367E70:  STR             R5, [SP,#0x240+var_1F0]; int
367E72:  VADD.F32        S6, S27, S6
367E76:  STRD.W          R11, R11, [SP,#0x240+var_22C]; float
367E7A:  VADD.F32        S2, S31, S2
367E7E:  STRD.W          R9, R9, [SP,#0x240+var_224]; float
367E82:  VMOV            R0, S12; float
367E86:  STRD.W          R9, R11, [SP,#0x240+var_21C]; float
367E8A:  VMOV            R1, S14; float
367E8E:  STRD.W          R6, R5, [SP,#0x240+var_214]; char
367E92:  VMOV            R3, S0; float
367E96:  VMOV            R2, S1; float
367E9A:  VADD.F32        S0, S26, S4
367E9E:  VADD.F32        S4, S16, S10
367EA2:  VSTR            S2, [SP,#0x240+var_240]
367EA6:  VADD.F32        S0, S16, S0
367EAA:  VSTR            S0, [SP,#0x240+var_23C]
367EAE:  VSTR            S6, [SP,#0x240+var_238]
367EB2:  VSTR            S8, [SP,#0x240+var_234]
367EB6:  VSTR            S4, [SP,#0x240+var_230]
367EBA:  BLX             j__Z12RenderAddTrifffffffffffffffiiiiiiiiiiii; RenderAddTri(float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,int,int,int,int,int,int)
367EBE:  VMOV.F32        S22, #1.0
367EC2:  ADD             R6, SP, #0x240+var_128
367EC4:  VMOV.F32        S26, #-0.5
367EC8:  VMOV.F32        S25, #4.0
367ECC:  VMOV.F32        S29, #0.5
367ED0:  LDR.W           R8, [R8,#4]
367ED4:  CMP.W           R8, #0
367ED8:  BNE.W           loc_36736E
367EDC:  LDR             R0, =(g_numTris_ptr - 0x367EE2)
367EDE:  ADD             R0, PC; g_numTris_ptr
367EE0:  LDR             R0, [R0]; g_numTris
367EE2:  LDR             R1, [R0]
367EE4:  CBZ             R1, loc_367F30
367EE6:  LDR             R0, =(g_rwFlags_ptr - 0x367EF2)
367EE8:  ADD.W           R1, R1, R1,LSL#1
367EEC:  LDR             R2, =(g_pMatrix_ptr - 0x367EF6)
367EEE:  ADD             R0, PC; g_rwFlags_ptr
367EF0:  LDR             R6, =(TempVertexBuffer_ptr - 0x367EFA)
367EF2:  ADD             R2, PC; g_pMatrix_ptr
367EF4:  LDR             R0, [R0]; g_rwFlags
367EF6:  ADD             R6, PC; TempVertexBuffer_ptr
367EF8:  LDR             R2, [R2]; g_pMatrix
367EFA:  LDR             R3, [R0]
367EFC:  LDR             R2, [R2]
367EFE:  LDR             R0, [R6]; TempVertexBuffer
367F00:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
367F04:  CBZ             R0, loc_367F10
367F06:  MOVS            R0, #3
367F08:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
367F0C:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
367F10:  LDR             R0, =(g_numVertices_ptr - 0x367F1C)
367F12:  MOVS            R6, #0
367F14:  LDR             R1, =(g_pVertex3d_ptr - 0x367F1E)
367F16:  LDR             R2, =(g_numTris_ptr - 0x367F22)
367F18:  ADD             R0, PC; g_numVertices_ptr
367F1A:  ADD             R1, PC; g_pVertex3d_ptr
367F1C:  LDR             R3, =(TempVertexBuffer_ptr - 0x367F26)
367F1E:  ADD             R2, PC; g_numTris_ptr
367F20:  LDR             R0, [R0]; g_numVertices
367F22:  ADD             R3, PC; TempVertexBuffer_ptr
367F24:  LDR             R1, [R1]; g_pVertex3d
367F26:  LDR             R2, [R2]; g_numTris
367F28:  LDR             R3, [R3]; TempVertexBuffer
367F2A:  STR             R6, [R0]
367F2C:  STR             R6, [R2]
367F2E:  STR             R3, [R1]
367F30:  ADD             SP, SP, #0x1E0
367F32:  VPOP            {D8-D15}
367F36:  ADD             SP, SP, #4
367F38:  POP.W           {R8-R11}
367F3C:  POP             {R4-R7,PC}
