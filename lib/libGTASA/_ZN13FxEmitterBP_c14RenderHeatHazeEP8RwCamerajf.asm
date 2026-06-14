; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c14RenderHeatHazeEP8RwCamerajf
; Address            : 0x368010 - 0x368918
; =========================================================

368010:  PUSH            {R4-R7,LR}
368012:  ADD             R7, SP, #0xC
368014:  PUSH.W          {R8-R11}
368018:  SUB             SP, SP, #4
36801A:  VPUSH           {D8-D15}
36801E:  SUB             SP, SP, #0x198; float
368020:  MOV             R4, R0
368022:  ADD.W           R5, R4, #0x20 ; ' '
368026:  MOV             R8, R1
368028:  MOV             R0, R5; this
36802A:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
36802E:  CMP             R0, #0
368030:  BEQ.W           loc_36890A
368034:  LDR             R0, [R4,#0xC]
368036:  LDR.W           R10, [R0]
36803A:  MOV             R0, R5; this
36803C:  BLX             j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
368040:  CMP             R0, #0
368042:  BEQ.W           loc_36890A
368046:  MOVS            R0, #0xC
368048:  MOVS            R1, #1
36804A:  STR             R4, [SP,#0x1F8+var_140]
36804C:  MOV.W           R9, #1
368050:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
368054:  MOVS            R0, #0xA
368056:  MOVS            R1, #5
368058:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36805C:  MOVS            R0, #0xB
36805E:  MOVS            R1, #2
368060:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
368064:  LDR.W           R0, =(g_pRaster_ptr - 0x368070)
368068:  LDR.W           R1, =(g_pMatrix_ptr - 0x368076)
36806C:  ADD             R0, PC; g_pRaster_ptr
36806E:  LDR.W           R2, =(g_numVertices_ptr - 0x36807E)
368072:  ADD             R1, PC; g_pMatrix_ptr
368074:  LDR.W           R4, =(g_numTris_ptr - 0x368082)
368078:  LDR             R0, [R0]; g_pRaster
36807A:  ADD             R2, PC; g_numVertices_ptr
36807C:  LDR             R1, [R1]; g_pMatrix
36807E:  ADD             R4, PC; g_numTris_ptr
368080:  LDR.W           R3, =(g_pVertex3d_ptr - 0x368090)
368084:  STR.W           R10, [R0]
368088:  MOVS            R0, #0
36808A:  STR             R0, [R1]
36808C:  ADD             R3, PC; g_pVertex3d_ptr
36808E:  LDR.W           R1, =(g_rwFlags_ptr - 0x36809A)
368092:  LDR.W           R6, =(TempVertexBuffer_ptr - 0x3680A2)
368096:  ADD             R1, PC; g_rwFlags_ptr
368098:  LDR.W           R12, [R2]; g_numVertices
36809C:  LDR             R4, [R4]; g_numTris
36809E:  ADD             R6, PC; TempVertexBuffer_ptr
3680A0:  LDR             R1, [R1]; g_rwFlags
3680A2:  LDR             R3, [R3]; g_pVertex3d
3680A4:  LDR             R2, [R6]; TempVertexBuffer
3680A6:  MOV             R6, R10
3680A8:  STR.W           R9, [R1]
3680AC:  ADD             R1, SP, #0x1F8+var_128
3680AE:  STR             R0, [R4]
3680B0:  STR.W           R0, [R12]
3680B4:  MOVS            R0, #1
3680B6:  STR             R2, [R3]
3680B8:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
3680BC:  LDR             R0, [SP,#0x1F8+var_128]
3680BE:  CMP             R0, R6
3680C0:  ITTT NE
3680C2:  MOVNE           R0, #1
3680C4:  MOVNE           R1, R6
3680C6:  BLXNE           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
3680CA:  LDR.W           R10, [R5]
3680CE:  LDR             R0, [SP,#0x1F8+var_140]
3680D0:  CMP.W           R10, #0
3680D4:  BEQ.W           loc_3688B6
3680D8:  LDR.W           R2, [R8,#4]
3680DC:  ADDS            R0, #0x2C ; ','
3680DE:  STR             R0, [SP,#0x1F8+var_144]
3680E0:  ADD             R1, SP, #0x1F8+var_128
3680E2:  ADD.W           R0, R2, #0x10
3680E6:  STR             R0, [SP,#0x1F8+var_19C]
3680E8:  LDR.W           R0, =(g_fxMan_ptr - 0x3680F8)
3680EC:  ADDS            R1, #0x38 ; '8'
3680EE:  STR             R1, [SP,#0x1F8+var_198]
3680F0:  VMOV.F32        S30, #-0.5
3680F4:  ADD             R0, PC; g_fxMan_ptr
3680F6:  LDR.W           R1, =(g_numTris_ptr - 0x368106)
3680FA:  STR             R2, [SP,#0x1F8+var_150]
3680FC:  MOV.W           R8, #0
368100:  LDR             R0, [R0]; g_fxMan
368102:  ADD             R1, PC; g_numTris_ptr
368104:  STR             R0, [SP,#0x1F8+var_148]
368106:  MOV.W           R11, #0
36810A:  LDR.W           R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x368116)
36810E:  LDR.W           R2, =(g_numVertices_ptr - 0x368120)
368112:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
368114:  LDR.W           R3, =(g_pVertex3d_ptr - 0x368124)
368118:  LDR.W           R12, =(TempVertexBuffer_ptr - 0x368128)
36811C:  ADD             R2, PC; g_numVertices_ptr
36811E:  LDR             R0, [R0]; CMaths::ms_SinTable ...
368120:  ADD             R3, PC; g_pVertex3d_ptr
368122:  STR             R0, [SP,#0x1F8+var_178]
368124:  ADD             R12, PC; TempVertexBuffer_ptr
368126:  LDR.W           R0, =(g_fxMan_ptr - 0x368132)
36812A:  LDR.W           R5, =(g_pRaster_ptr - 0x368138)
36812E:  ADD             R0, PC; g_fxMan_ptr
368130:  LDR.W           R4, =(g_rwFlags_ptr - 0x368140)
368134:  ADD             R5, PC; g_pRaster_ptr
368136:  VLDR            S16, =360.0
36813A:  LDR             R0, [R0]; g_fxMan
36813C:  ADD             R4, PC; g_rwFlags_ptr
36813E:  STR             R0, [SP,#0x1F8+var_14C]
368140:  LDR.W           R0, =(g_numTris_ptr - 0x36814C)
368144:  VLDR            S28, =255.0
368148:  ADD             R0, PC; g_numTris_ptr
36814A:  VLDR            S17, =-360.0
36814E:  LDR             R0, [R0]; g_numTris
368150:  STR             R0, [SP,#0x1F8+var_154]
368152:  LDR.W           R0, =(g_pMatrix_ptr - 0x36815A)
368156:  ADD             R0, PC; g_pMatrix_ptr
368158:  LDR             R0, [R0]; g_pMatrix
36815A:  STR             R0, [SP,#0x1F8+var_158]
36815C:  LDR             R0, [R1]; g_numTris
36815E:  STR             R0, [SP,#0x1F8+var_15C]
368160:  LDR             R0, [R2]; g_numVertices
368162:  STR             R0, [SP,#0x1F8+var_160]
368164:  LDR             R0, [R3]; g_pVertex3d
368166:  STR             R0, [SP,#0x1F8+var_164]
368168:  LDR.W           R0, [R12]; TempVertexBuffer
36816C:  STR             R0, [SP,#0x1F8+var_168]
36816E:  LDR             R0, [R5]; g_pRaster
368170:  STR             R0, [SP,#0x1F8+var_16C]
368172:  LDR             R0, [R4]; g_rwFlags
368174:  STR             R0, [SP,#0x1F8+var_170]
368176:  LDR.W           R0, =(g_rwFlags_ptr - 0x368182)
36817A:  LDR.W           R1, =(g_pMatrix_ptr - 0x368188)
36817E:  ADD             R0, PC; g_rwFlags_ptr
368180:  LDR.W           R2, =(g_numTris_ptr - 0x368190)
368184:  ADD             R1, PC; g_pMatrix_ptr
368186:  LDR.W           R3, =(TempVertexBuffer_ptr - 0x368194)
36818A:  LDR             R0, [R0]; g_rwFlags
36818C:  ADD             R2, PC; g_numTris_ptr
36818E:  STR             R0, [SP,#0x1F8+var_17C]
368190:  ADD             R3, PC; TempVertexBuffer_ptr
368192:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x36819C)
368196:  LDR             R1, [R1]; g_pMatrix
368198:  ADD             R0, PC; TempVertexBuffer_ptr
36819A:  STR             R1, [SP,#0x1F8+var_180]
36819C:  LDR.W           R1, =(g_pVertex3d_ptr - 0x3681A8)
3681A0:  LDR             R0, [R0]; TempVertexBuffer
3681A2:  STR             R0, [SP,#0x1F8+var_184]
3681A4:  ADD             R1, PC; g_pVertex3d_ptr
3681A6:  LDR.W           R0, =(g_numVertices_ptr - 0x3681AE)
3681AA:  ADD             R0, PC; g_numVertices_ptr
3681AC:  LDR             R0, [R0]; g_numVertices
3681AE:  STR             R0, [SP,#0x1F8+var_188]
3681B0:  LDR             R0, [R1]; g_pVertex3d
3681B2:  STR             R0, [SP,#0x1F8+var_18C]
3681B4:  LDR             R0, [R2]; g_numTris
3681B6:  STR             R0, [SP,#0x1F8+var_190]
3681B8:  LDR             R0, [R3]; TempVertexBuffer
3681BA:  STR             R0, [SP,#0x1F8+var_194]
3681BC:  LDR.W           R0, =(g_fxMan_ptr - 0x3681C4)
3681C0:  ADD             R0, PC; g_fxMan_ptr
3681C2:  LDR             R0, [R0]; g_fxMan
3681C4:  STR             R0, [SP,#0x1F8+var_174]
3681C6:  MOVS            R0, #0
3681C8:  STR             R0, [SP,#0x1F8+var_13C]
3681CA:  LDRB.W          R0, [R10,#0x37]
3681CE:  STR             R6, [SP,#0x1F8+var_138]
3681D0:  CBZ             R0, loc_3681FE
3681D2:  LDR             R6, [SP,#0x1F8+var_174]
3681D4:  MOV             R0, R6; this
3681D6:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
3681DA:  MOV             R5, R0
3681DC:  LDR.W           R0, [R10,#0x28]
3681E0:  MOV             R1, R5
3681E2:  BLX             j__ZN10FxSystem_c18GetCompositeMatrixEP11RwMatrixTag; FxSystem_c::GetCompositeMatrix(RwMatrixTag *)
3681E6:  ADD.W           R1, R10, #0x10
3681EA:  ADD             R0, SP, #0x1F8+var_80
3681EC:  MOVS            R2, #1
3681EE:  MOV             R3, R5
3681F0:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
3681F4:  MOV             R0, R6
3681F6:  MOV             R1, R5
3681F8:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
3681FC:  B               loc_36820C
3681FE:  VLDR            D16, [R10,#0x10]
368202:  LDR.W           R0, [R10,#0x18]
368206:  STR             R0, [SP,#0x1F8+var_78]
368208:  VSTR            D16, [SP,#0x1F8+var_80]
36820C:  VLDR            S0, [R10,#8]
368210:  VLDR            S2, [R10,#0xC]
368214:  LDR.W           R0, [R10,#0x28]
368218:  VDIV.F32        S0, S2, S0
36821C:  LDR             R3, [R0,#8]
36821E:  LDR             R1, [R0,#0x58]; int
368220:  ADD             R0, SP, #0x1F8+var_128
368222:  VMOV            R2, S0; int
368226:  VLDR            S0, [R3,#0xC]
36822A:  STR.W           R8, [SP,#0x1F8+var_1F4]; float
36822E:  MOVS            R3, #0; int
368230:  STR             R0, [SP,#0x1F8+var_1F0]; float
368232:  LDR             R0, [SP,#0x1F8+var_144]; int
368234:  VSTR            S0, [SP,#0x1F8+var_1F8]
368238:  BLX             j__ZN15FxInfoManager_c17ProcessRenderInfoEffffhP12RenderInfo_t; FxInfoManager_c::ProcessRenderInfo(float,float,float,float,uchar,RenderInfo_t *)
36823C:  LDR             R0, [SP,#0x1F8+var_148]; this
36823E:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
368242:  MOV             R9, R0
368244:  MOV.W           R0, #0x3F800000
368248:  STRD.W          R8, R8, [R9,#4]
36824C:  MOVS            R1, #:lower16:(elf_hash_chain+0xFE9B)
36824E:  STR.W           R0, [R9]
368252:  MOV             R5, R9
368254:  STRD.W          R0, R8, [R9,#0x14]
368258:  MOVT            R1, #:upper16:(elf_hash_chain+0xFE9B)
36825C:  STRD.W          R8, R8, [R9,#0x20]
368260:  STR.W           R0, [R9,#0x28]
368264:  STRD.W          R8, R8, [R9,#0x30]
368268:  STR.W           R8, [R9,#0x38]
36826C:  LDR.W           R0, [R9,#0xC]
368270:  ORRS            R0, R1
368272:  STR.W           R0, [R9,#0xC]
368276:  STR.W           R8, [R5,#0x10]!
36827A:  LDRB.W          R0, [SP,#0x1F8+var_AF]
36827E:  CBZ             R0, loc_368296
368280:  LDRB.W          R0, [SP,#0x1F8+var_AE]
368284:  CBZ             R0, loc_3682E4
368286:  VLDR            D16, [R10,#0x1C]
36828A:  LDR.W           R0, [R10,#0x24]
36828E:  STR             R0, [SP,#0x1F8+var_68]
368290:  VSTR            D16, [SP,#0x1F8+var_70]
368294:  B               loc_3682EC
368296:  LDRB.W          R0, [SP,#0x1F8+var_B0]
36829A:  CMP             R0, #0
36829C:  BEQ.W           loc_368614
3682A0:  LDR             R2, [SP,#0x1F8+var_198]
3682A2:  ADD.W           R1, R2, #0x20 ; ' '
3682A6:  MOV             R0, R2
3682A8:  VLD1.32         {D18-D19}, [R1]
3682AC:  VLD1.32         {D16-D17}, [R0]!
3682B0:  VLD1.32         {D20-D21}, [R0]
3682B4:  ADD.W           R0, R2, #0x30 ; '0'
3682B8:  VLD1.32         {D22-D23}, [R0]
3682BC:  ADD.W           R0, R9, #0x30 ; '0'
3682C0:  VST1.32         {D22-D23}, [R0]
3682C4:  ADD.W           R0, R9, #0x20 ; ' '
3682C8:  VST1.32         {D18-D19}, [R0]
3682CC:  MOV             R0, R9
3682CE:  VST1.32         {D16-D17}, [R0]!
3682D2:  VST1.32         {D20-D21}, [R0]
3682D6:  VLDR            S0, [SP,#0x1F8+var_D0]
3682DA:  VLDR            S2, [SP,#0x1F8+var_CC]
3682DE:  VLDR            S4, [SP,#0x1F8+var_C8]
3682E2:  B               loc_3683B2
3682E4:  ADD             R2, SP, #0x1F8+var_AC
3682E6:  ADD             R3, SP, #0x1F8+var_70
3682E8:  LDM             R2, {R0-R2}
3682EA:  STM             R3!, {R0-R2}
3682EC:  ADD             R0, SP, #0x1F8+var_70
3682EE:  MOV             R1, R0
3682F0:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
3682F4:  LDR             R0, [SP,#0x1F8+var_150]
3682F6:  VLDR            S0, [SP,#0x1F8+var_80]
3682FA:  VLDR            S2, [SP,#0x1F8+var_80+4]
3682FE:  VLDR            S6, [R0,#0x40]
368302:  VLDR            S4, [SP,#0x1F8+var_78]
368306:  VSUB.F32        S0, S0, S6
36830A:  VSTR            S0, [SP,#0x1F8+var_134]
36830E:  VLDR            S0, [R0,#0x44]
368312:  VSUB.F32        S0, S2, S0
368316:  VSTR            S0, [SP,#0x1F8+var_130]
36831A:  VLDR            S0, [R0,#0x48]
36831E:  ADD             R0, SP, #0x1F8+var_134
368320:  VSUB.F32        S0, S4, S0
368324:  MOV             R1, R0
368326:  VSTR            S0, [SP,#0x1F8+var_12C]
36832A:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36832E:  VLDR            S0, [SP,#0x1F8+var_134]
368332:  VLDR            S8, [SP,#0x1F8+var_70+4]
368336:  VLDR            S4, [SP,#0x1F8+var_12C]
36833A:  VLDR            S2, [SP,#0x1F8+var_130]
36833E:  VMUL.F32        S12, S8, S0
368342:  VLDR            S6, [SP,#0x1F8+var_70]
368346:  VMUL.F32        S1, S8, S4
36834A:  VLDR            S10, [SP,#0x1F8+var_68]
36834E:  VMUL.F32        S14, S2, S6
368352:  VMUL.F32        S2, S10, S2
368356:  VMUL.F32        S4, S4, S6
36835A:  VMUL.F32        S0, S10, S0
36835E:  VSUB.F32        S12, S14, S12
368362:  VSUB.F32        S14, S1, S2
368366:  VSUB.F32        S1, S0, S4
36836A:  VMUL.F32        S0, S6, S12
36836E:  VMUL.F32        S2, S10, S14
368372:  VSTR            S14, [R9]
368376:  VMUL.F32        S4, S10, S1
36837A:  VSTR            S1, [R9,#4]
36837E:  VMUL.F32        S10, S8, S12
368382:  VSTR            S12, [R9,#8]
368386:  VMUL.F32        S8, S8, S14
36838A:  VLDR            D16, [SP,#0x1F8+var_70]
36838E:  VMUL.F32        S6, S6, S1
368392:  LDR             R0, [SP,#0x1F8+var_68]
368394:  STR             R0, [R5,#8]
368396:  VSUB.F32        S2, S2, S0
36839A:  VSTR            D16, [R5]
36839E:  VSUB.F32        S0, S10, S4
3683A2:  VSUB.F32        S4, S6, S8
3683A6:  VSTR            S0, [R9,#0x20]
3683AA:  VSTR            S2, [R9,#0x24]
3683AE:  VSTR            S4, [R9,#0x28]
3683B2:  LDRB.W          R0, [R10,#0x36]
3683B6:  CMP             R0, #0xFF
3683B8:  BEQ             loc_3683EC
3683BA:  VMOV            S6, R0
3683BE:  ADD.W           R0, R10, #0x38 ; '8'
3683C2:  VCVT.F32.U32    S6, S6
3683C6:  VADD.F32        S6, S6, S6
3683CA:  VSTR            S6, [R10,#0x38]
3683CE:  B               loc_368410
3683D0:  DCFS 360.0
3683D4:  DCFS 255.0
3683D8:  DCFS -360.0
3683DC:  DCFS 0.017453
3683E0:  DCFS 256.0
3683E4:  DCFS 6.2832
3683E8:  DCFS 64.0
3683EC:  VLDR            S6, [R10,#0x38]
3683F0:  ADD.W           R0, R10, #0x38 ; '8'
3683F4:  VCMPE.F32       S6, #0.0
3683F8:  VMRS            APSR_nzcv, FPSCR
3683FC:  BGE             loc_368410
3683FE:  VADD.F32        S6, S6, S16
368402:  VCMPE.F32       S6, #0.0
368406:  VMRS            APSR_nzcv, FPSCR
36840A:  BLT             loc_3683FE
36840C:  VSTR            S6, [R0]
368410:  VCMPE.F32       S6, S16
368414:  VMRS            APSR_nzcv, FPSCR
368418:  BLT             loc_36842C
36841A:  VADD.F32        S6, S6, S17
36841E:  VCMPE.F32       S6, S16
368422:  VMRS            APSR_nzcv, FPSCR
368426:  BGE             loc_36841A
368428:  VSTR            S6, [R0]
36842C:  VCMPE.F32       S6, #0.0
368430:  VMRS            APSR_nzcv, FPSCR
368434:  BLE.W           loc_368554
368438:  VLDR            S8, =0.017453
36843C:  VMOV.F32        S10, #1.0
368440:  VMUL.F32        S6, S6, S8
368444:  VLDR            S8, =256.0
368448:  VMUL.F32        S6, S6, S8
36844C:  VLDR            S8, =6.2832
368450:  VDIV.F32        S6, S6, S8
368454:  VLDR            S8, =64.0
368458:  VADD.F32        S8, S6, S8
36845C:  VCVT.U32.F32    S8, S8
368460:  LDR             R1, [SP,#0x1F8+var_178]
368462:  VMOV            R0, S8
368466:  UXTB            R0, R0
368468:  ADD.W           R0, R1, R0,LSL#2
36846C:  VLDR            S8, [R0]
368470:  VCVT.U32.F32    S6, S6
368474:  VLDR            S18, [R9]
368478:  VSUB.F32        S10, S10, S8
36847C:  VLDR            S20, [R9,#4]
368480:  VLDR            S22, [R9,#8]
368484:  VMOV            R0, S6
368488:  VMUL.F32        S6, S0, S10
36848C:  VMUL.F32        S12, S2, S10
368490:  VMUL.F32        S10, S4, S10
368494:  VMUL.F32        S7, S4, S6
368498:  VMUL.F32        S3, S4, S12
36849C:  VMUL.F32        S12, S2, S12
3684A0:  VMUL.F32        S9, S2, S6
3684A4:  VMUL.F32        S6, S0, S6
3684A8:  VMUL.F32        S10, S4, S10
3684AC:  VADD.F32        S12, S8, S12
3684B0:  UXTB            R0, R0
3684B2:  VADD.F32        S6, S8, S6
3684B6:  ADD.W           R0, R1, R0,LSL#2
3684BA:  VADD.F32        S8, S8, S10
3684BE:  VLDR            S14, [R0]
3684C2:  VMUL.F32        S1, S0, S14
3684C6:  VMUL.F32        S5, S2, S14
3684CA:  VMUL.F32        S14, S4, S14
3684CE:  VMUL.F32        S6, S18, S6
3684D2:  VMUL.F32        S12, S20, S12
3684D6:  VMUL.F32        S8, S8, S22
3684DA:  VADD.F32        S11, S1, S3
3684DE:  VSUB.F32        S13, S7, S5
3684E2:  VSUB.F32        S15, S9, S14
3684E6:  VADD.F32        S14, S14, S9
3684EA:  VSUB.F32        S1, S3, S1
3684EE:  VADD.F32        S5, S5, S7
3684F2:  VMUL.F32        S10, S20, S11
3684F6:  VMUL.F32        S9, S18, S13
3684FA:  VMUL.F32        S7, S20, S15
3684FE:  VMUL.F32        S14, S18, S14
368502:  VMUL.F32        S1, S1, S22
368506:  VMUL.F32        S3, S5, S22
36850A:  VADD.F32        S10, S9, S10
36850E:  VADD.F32        S6, S6, S7
368512:  VADD.F32        S12, S14, S12
368516:  VADD.F32        S19, S8, S10
36851A:  VADD.F32        S23, S3, S6
36851E:  VADD.F32        S21, S1, S12
368522:  VMUL.F32        S6, S0, S19
368526:  VMUL.F32        S8, S4, S23
36852A:  VMUL.F32        S10, S2, S19
36852E:  VMUL.F32        S4, S4, S21
368532:  VMUL.F32        S2, S2, S23
368536:  VMUL.F32        S0, S0, S21
36853A:  VSUB.F32        S6, S8, S6
36853E:  VSUB.F32        S4, S10, S4
368542:  VSUB.F32        S0, S0, S2
368546:  VSTR            S6, [SP,#0x1F8+var_70+4]
36854A:  VSTR            S4, [SP,#0x1F8+var_70]
36854E:  VSTR            S0, [SP,#0x1F8+var_68]
368552:  B               loc_36856C
368554:  VLDR            S23, [R9]
368558:  VLDR            S21, [R9,#4]
36855C:  VLDR            S19, [R9,#8]
368560:  VLDR            D16, [R5]
368564:  LDR             R0, [R5,#8]
368566:  STR             R0, [SP,#0x1F8+var_68]
368568:  VSTR            D16, [SP,#0x1F8+var_70]
36856C:  LDR             R0, [SP,#0x1F8+var_14C]
36856E:  MOV             R1, R9
368570:  MOV             R5, R11
368572:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
368576:  LDRB.W          R0, [R10,#0x32]
36857A:  VMOV            S0, R0
36857E:  VCVT.F32.U32    S0, S0
368582:  VLDR            S6, [SP,#0x1F8+var_114]
368586:  VLDR            S2, [SP,#0x1F8+var_11C]
36858A:  VLDR            S4, [SP,#0x1F8+var_118]
36858E:  VLDR            S8, [SP,#0x1F8+var_110]
368592:  VDIV.F32        S0, S0, S28
368596:  VADD.F32        S0, S0, S30
36859A:  VMUL.F32        S0, S6, S0
36859E:  VADD.F32        S0, S2, S0
3685A2:  VSTR            S0, [SP,#0x1F8+var_11C]
3685A6:  LDRB.W          R0, [R10,#0x33]
3685AA:  VMOV            S2, R0
3685AE:  VCVT.F32.U32    S2, S2
3685B2:  VDIV.F32        S2, S2, S28
3685B6:  VADD.F32        S2, S2, S30
3685BA:  VMUL.F32        S2, S8, S2
3685BE:  VADD.F32        S2, S4, S2
3685C2:  VSTR            S2, [SP,#0x1F8+var_118]
3685C6:  LDRB.W          R0, [R10,#0x30]
3685CA:  CMP             R0, #0xFF
3685CC:  BEQ             loc_3685EA
3685CE:  VMOV            S4, R0
3685D2:  VCVT.F32.U32    S4, S4
3685D6:  VDIV.F32        S4, S4, S28
3685DA:  VMUL.F32        S2, S2, S4
3685DE:  VMUL.F32        S0, S4, S0
3685E2:  VSTR            S2, [SP,#0x1F8+var_118]
3685E6:  VSTR            S0, [SP,#0x1F8+var_11C]
3685EA:  LDRB.W          R0, [SP,#0x1F8+var_F4]
3685EE:  LDR             R2, [SP,#0x1F8+var_140]
3685F0:  LDR             R3, [SP,#0x1F8+var_138]
3685F2:  CMP             R0, #0
3685F4:  STRB.W          R8, [SP,#0x1F8+var_128+2]
3685F8:  STRH.W          R8, [SP,#0x1F8+var_128]
3685FC:  BEQ             loc_368610; jumptable 00368608 case 1
3685FE:  LDRB.W          R0, [SP,#0x1F8+var_F3]
368602:  SUBS            R0, #1; switch 4 cases
368604:  CMP             R0, #3
368606:  BHI             def_368608; jumptable 00368608 default case
368608:  TBB.W           [PC,R0]; switch jump
36860C:  DCB 2; jump table for switch statement
36860D:  DCB 0x27
36860E:  DCB 0x29
36860F:  DCB 0x2B
368610:  LDR             R0, [R2,#0xC]; jumptable 00368608 case 1
368612:  B               loc_36866A
368614:  LDR             R2, [SP,#0x1F8+var_19C]
368616:  ADD.W           R1, R2, #0x20 ; ' '
36861A:  MOV             R0, R2
36861C:  VLD1.32         {D18-D19}, [R1]
368620:  VLD1.32         {D16-D17}, [R0]!
368624:  VLD1.32         {D20-D21}, [R0]
368628:  ADD.W           R0, R2, #0x30 ; '0'
36862C:  VLD1.32         {D22-D23}, [R0]
368630:  ADD.W           R0, R9, #0x30 ; '0'
368634:  VST1.32         {D22-D23}, [R0]
368638:  ADD.W           R0, R9, #0x20 ; ' '
36863C:  VST1.32         {D18-D19}, [R0]
368640:  MOV             R0, R9
368642:  VST1.32         {D16-D17}, [R0]!
368646:  VST1.32         {D20-D21}, [R0]
36864A:  LDR             R0, [SP,#0x1F8+var_150]
36864C:  VLDR            S0, [R0,#0x30]
368650:  VLDR            S2, [R0,#0x34]
368654:  VLDR            S4, [R0,#0x38]
368658:  B               loc_3683B2
36865A:  LDR             R0, [R2,#0x10]; jumptable 00368608 case 2
36865C:  B               loc_368664
36865E:  LDR             R0, [R2,#0x14]; jumptable 00368608 case 3
368660:  B               loc_368664
368662:  LDR             R0, [R2,#0x18]; jumptable 00368608 case 4
368664:  CMP             R0, #0
368666:  IT EQ
368668:  LDREQ           R0, [R2,#0xC]
36866A:  LDR             R1, [R0]
36866C:  MOV             R0, R1
36866E:  MOV             R5, R1
368670:  STR             R0, [SP,#0x1F8+var_13C]
368672:  CMP             R3, R5; jumptable 00368608 default case
368674:  BEQ             loc_368700
368676:  LDR             R0, [SP,#0x1F8+var_154]
368678:  LDR             R4, [SP,#0x1F8+var_13C]
36867A:  LDR             R0, [R0]
36867C:  CBZ             R0, loc_3686AE
36867E:  LDR             R1, [SP,#0x1F8+var_17C]
368680:  LDR             R3, [R1]
368682:  LDR             R1, [SP,#0x1F8+var_180]
368684:  LDR             R2, [R1]
368686:  ADD.W           R1, R0, R0,LSL#1
36868A:  LDR             R0, [SP,#0x1F8+var_184]
36868C:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
368690:  CBZ             R0, loc_36869C
368692:  MOVS            R0, #3
368694:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
368698:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
36869C:  LDR             R0, [SP,#0x1F8+var_188]
36869E:  LDR             R1, [SP,#0x1F8+var_194]
3686A0:  STR.W           R8, [R0]
3686A4:  LDR             R0, [SP,#0x1F8+var_190]
3686A6:  STR.W           R8, [R0]
3686AA:  LDR             R0, [SP,#0x1F8+var_18C]
3686AC:  STR             R1, [R0]
3686AE:  LDR             R0, [SP,#0x1F8+var_158]
3686B0:  MOVS            R1, #1
3686B2:  STR.W           R8, [R0]
3686B6:  LDR             R0, [SP,#0x1F8+var_16C]
3686B8:  STR             R4, [R0]
3686BA:  LDR             R0, [SP,#0x1F8+var_170]
3686BC:  STR             R1, [R0]
3686BE:  LDR             R0, [SP,#0x1F8+var_15C]
3686C0:  STR.W           R8, [R0]
3686C4:  LDR             R0, [SP,#0x1F8+var_160]
3686C6:  STR.W           R8, [R0]
3686CA:  LDRD.W          R1, R0, [SP,#0x1F8+var_168]
3686CE:  STR             R1, [R0]
3686D0:  ADD             R1, SP, #0x1F8+var_134
3686D2:  MOVS            R0, #1
3686D4:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
3686D8:  LDR             R0, [SP,#0x1F8+var_134]
3686DA:  CMP             R0, R4
3686DC:  ITTT NE
3686DE:  MOVNE           R0, #1
3686E0:  MOVNE           R1, R4
3686E2:  BLXNE           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
3686E6:  LDRB.W          R4, [SP,#0x1F8+var_128]
3686EA:  MOV             R11, R5
3686EC:  LDRB.W          R12, [SP,#0x1F8+var_128+1]
3686F0:  LDRB.W          R6, [SP,#0x1F8+var_128+2]
3686F4:  VLDR            S0, [SP,#0x1F8+var_11C]
3686F8:  VLDR            S2, [SP,#0x1F8+var_118]
3686FC:  STR             R5, [SP,#0x1F8+var_138]
3686FE:  B               loc_36870A
368700:  MOV             R11, R5
368702:  MOVS            R6, #0
368704:  MOV.W           R12, #0
368708:  MOVS            R4, #0
36870A:  VLDR            S4, [SP,#0x1F8+var_108]
36870E:  MOV.W           R9, #0x3F800000
368712:  VLDR            S6, [SP,#0x1F8+var_10C]
368716:  VMUL.F32        S4, S2, S4
36871A:  VLDR            S8, [SP,#0x1F8+var_70]
36871E:  VMUL.F32        S2, S2, S6
368722:  VLDR            S6, [SP,#0x1F8+var_100]
368726:  VLDR            S10, [SP,#0x1F8+var_70+4]
36872A:  VLDR            S12, [SP,#0x1F8+var_68]
36872E:  VMUL.F32        S6, S0, S6
368732:  VLDR            S14, [SP,#0x1F8+var_104]
368736:  VLDR            S1, [SP,#0x1F8+var_78]
36873A:  VMUL.F32        S0, S0, S14
36873E:  VLDR            S14, [SP,#0x1F8+var_80+4]
368742:  VMUL.F32        S22, S8, S4
368746:  LDRB.W          R5, [SP,#0x1F8+var_128+3]
36874A:  VMUL.F32        S20, S8, S2
36874E:  VLDR            S8, [SP,#0x1F8+var_80]
368752:  VMUL.F32        S25, S10, S2
368756:  VMUL.F32        S29, S2, S12
36875A:  STRD.W          R6, R5, [SP,#0x1F8+var_1A4]; int
36875E:  VMUL.F32        S18, S23, S6
368762:  STRD.W          R6, R5, [SP,#0x1F8+var_1C4]; int
368766:  VMUL.F32        S24, S12, S4
36876A:  STRD.W          R4, R12, [SP,#0x1F8+var_1BC]; char
36876E:  VMUL.F32        S27, S21, S0
368772:  STRD.W          R6, R5, [SP,#0x1F8+var_1B4]; int
368776:  VADD.F32        S2, S22, S8
36877A:  STRD.W          R4, R12, [SP,#0x1F8+var_1AC]; char
36877E:  VMUL.F32        S31, S19, S0
368782:  STRD.W          R8, R8, [SP,#0x1F8+var_1E4]; float
368786:  VMUL.F32        S23, S23, S0
36878A:  STRD.W          R9, R9, [SP,#0x1F8+var_1DC]; float
36878E:  VADD.F32        S8, S20, S8
368792:  STRD.W          R9, R8, [SP,#0x1F8+var_1D4]; float
368796:  VADD.F32        S3, S25, S14
36879A:  STRD.W          R4, R12, [SP,#0x1F8+var_1CC]; char
36879E:  VADD.F32        S0, S29, S1
3687A2:  VMUL.F32        S26, S10, S4
3687A6:  VADD.F32        S2, S2, S18
3687AA:  VMUL.F32        S19, S19, S6
3687AE:  VMUL.F32        S21, S21, S6
3687B2:  VADD.F32        S4, S23, S8
3687B6:  VADD.F32        S6, S27, S3
3687BA:  VADD.F32        S10, S31, S0
3687BE:  VADD.F32        S8, S8, S18
3687C2:  VMOV            R3, S2; float
3687C6:  VADD.F32        S2, S24, S1
3687CA:  VADD.F32        S0, S19, S0
3687CE:  VMOV            R0, S4; float
3687D2:  VMOV            R1, S6; float
3687D6:  VMOV            R2, S10; float
3687DA:  VADD.F32        S4, S26, S14
3687DE:  VADD.F32        S6, S21, S3
3687E2:  VADD.F32        S2, S19, S2
3687E6:  VADD.F32        S4, S21, S4
3687EA:  VSTR            S4, [SP,#0x1F8+var_1F8]
3687EE:  VSTR            S2, [SP,#0x1F8+var_1F4]
3687F2:  VSTR            S8, [SP,#0x1F8+var_1F0]
3687F6:  VSTR            S6, [SP,#0x1F8+var_1EC]
3687FA:  VSTR            S0, [SP,#0x1F8+var_1E8]
3687FE:  BLX             j__Z12RenderAddTrifffffffffffffffiiiiiiiiiiii; RenderAddTri(float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,int,int,int,int,int,int)
368802:  VLDR            S0, [SP,#0x1F8+var_80]
368806:  ADD.W           R12, SP, #0x1F8+var_1C4
36880A:  VLDR            S2, [SP,#0x1F8+var_80+4]
36880E:  VLDR            S4, [SP,#0x1F8+var_78]
368812:  VADD.F32        S6, S22, S0
368816:  VADD.F32        S8, S26, S2
36881A:  LDRB.W          R6, [SP,#0x1F8+var_128]
36881E:  VADD.F32        S0, S20, S0
368822:  LDRB.W          R2, [SP,#0x1F8+var_128+2]
368826:  VADD.F32        S10, S24, S4
36882A:  LDRB.W          R3, [SP,#0x1F8+var_128+3]
36882E:  LDRB.W          R5, [SP,#0x1F8+var_128+1]
368832:  VADD.F32        S2, S25, S2
368836:  STRD.W          R2, R3, [SP,#0x1F8+var_1A4]; int
36883A:  VADD.F32        S12, S18, S6
36883E:  STM.W           R12, {R2,R3,R6}
368842:  VADD.F32        S14, S21, S8
368846:  VADD.F32        S0, S23, S0
36884A:  STRD.W          R5, R2, [SP,#0x1F8+var_1B8]; int
36884E:  VADD.F32        S1, S19, S10
368852:  STRD.W          R3, R6, [SP,#0x1F8+var_1B0]; int
368856:  VADD.F32        S8, S27, S8
36885A:  STR             R5, [SP,#0x1F8+var_1A8]; int
36885C:  VADD.F32        S6, S23, S6
368860:  STRD.W          R9, R9, [SP,#0x1F8+var_1E4]; float
368864:  VADD.F32        S2, S27, S2
368868:  STRD.W          R8, R8, [SP,#0x1F8+var_1DC]; float
36886C:  VMOV            R0, S12; float
368870:  STRD.W          R8, R9, [SP,#0x1F8+var_1D4]; float
368874:  VMOV            R1, S14; float
368878:  STRD.W          R6, R5, [SP,#0x1F8+var_1CC]; char
36887C:  VMOV            R3, S0; float
368880:  VMOV            R2, S1; float
368884:  VADD.F32        S0, S29, S4
368888:  VADD.F32        S4, S31, S10
36888C:  VSTR            S2, [SP,#0x1F8+var_1F8]
368890:  VADD.F32        S0, S31, S0
368894:  VSTR            S0, [SP,#0x1F8+var_1F4]
368898:  VSTR            S6, [SP,#0x1F8+var_1F0]
36889C:  VSTR            S8, [SP,#0x1F8+var_1EC]
3688A0:  VSTR            S4, [SP,#0x1F8+var_1E8]
3688A4:  BLX             j__Z12RenderAddTrifffffffffffffffiiiiiiiiiiii; RenderAddTri(float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int,int,int,int,int,int,int,int,int,int,int,int)
3688A8:  LDR.W           R10, [R10,#4]
3688AC:  LDR             R6, [SP,#0x1F8+var_138]
3688AE:  CMP.W           R10, #0
3688B2:  BNE.W           loc_3681CA
3688B6:  LDR             R0, =(g_numTris_ptr - 0x3688BC)
3688B8:  ADD             R0, PC; g_numTris_ptr
3688BA:  LDR             R0, [R0]; g_numTris
3688BC:  LDR             R1, [R0]
3688BE:  CBZ             R1, loc_36890A
3688C0:  LDR             R0, =(g_rwFlags_ptr - 0x3688CC)
3688C2:  ADD.W           R1, R1, R1,LSL#1
3688C6:  LDR             R2, =(g_pMatrix_ptr - 0x3688D0)
3688C8:  ADD             R0, PC; g_rwFlags_ptr
3688CA:  LDR             R6, =(TempVertexBuffer_ptr - 0x3688D4)
3688CC:  ADD             R2, PC; g_pMatrix_ptr
3688CE:  LDR             R0, [R0]; g_rwFlags
3688D0:  ADD             R6, PC; TempVertexBuffer_ptr
3688D2:  LDR             R2, [R2]; g_pMatrix
3688D4:  LDR             R3, [R0]
3688D6:  LDR             R2, [R2]
3688D8:  LDR             R0, [R6]; TempVertexBuffer
3688DA:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
3688DE:  CBZ             R0, loc_3688EA
3688E0:  MOVS            R0, #3
3688E2:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
3688E6:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
3688EA:  LDR             R0, =(g_numVertices_ptr - 0x3688F6)
3688EC:  MOVS            R6, #0
3688EE:  LDR             R1, =(g_pVertex3d_ptr - 0x3688F8)
3688F0:  LDR             R2, =(g_numTris_ptr - 0x3688FC)
3688F2:  ADD             R0, PC; g_numVertices_ptr
3688F4:  ADD             R1, PC; g_pVertex3d_ptr
3688F6:  LDR             R3, =(TempVertexBuffer_ptr - 0x368900)
3688F8:  ADD             R2, PC; g_numTris_ptr
3688FA:  LDR             R0, [R0]; g_numVertices
3688FC:  ADD             R3, PC; TempVertexBuffer_ptr
3688FE:  LDR             R1, [R1]; g_pVertex3d
368900:  LDR             R2, [R2]; g_numTris
368902:  LDR             R3, [R3]; TempVertexBuffer
368904:  STR             R6, [R0]
368906:  STR             R6, [R2]
368908:  STR             R3, [R1]
36890A:  ADD             SP, SP, #0x198
36890C:  VPOP            {D8-D15}
368910:  ADD             SP, SP, #4
368912:  POP.W           {R8-R11}
368916:  POP             {R4-R7,PC}
