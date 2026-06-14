; =========================================================
; Game Engine Function: _ZN11CWaterLevel38RenderHighDetailWaterTriangle_OneLayerEii7CRenPariiS0_iiS0_iiii
; Address            : 0x598F3C - 0x5995FC
; =========================================================

598F3C:  PUSH            {R4-R7,LR}
598F3E:  ADD             R7, SP, #0xC
598F40:  PUSH.W          {R8-R11}
598F44:  SUB             SP, SP, #4
598F46:  VPUSH           {D8-D15}
598F4A:  SUB             SP, SP, #0xE8
598F4C:  STR             R0, [SP,#0x148+var_B4]
598F4E:  MOV             R10, R1
598F50:  LDR.W           R0, =(TempColourBufferIndex_ptr - 0x598F60)
598F54:  MOV.W           R8, #0
598F58:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x598F66)
598F5C:  ADD             R0, PC; TempColourBufferIndex_ptr
598F5E:  LDRD.W          R9, R12, [R7,#arg_18]
598F62:  ADD             R1, PC; TempBufferVerticesStored_ptr
598F64:  LDRD.W          LR, R5, [R7,#arg_10]
598F68:  LDR             R0, [R0]; TempColourBufferIndex
598F6A:  LDR             R1, [R1]; TempBufferVerticesStored
598F6C:  LDR             R6, [R7,#arg_4]
598F6E:  STR.W           R8, [R0]
598F72:  ADD             R0, SP, #0x148+var_6C
598F74:  LDR             R4, [R7,#arg_0]
598F76:  STM             R0!, {R3,R4,R6}
598F78:  LDR             R0, [R1]
598F7A:  LDR             R6, [R7,#arg_20]
598F7C:  CMP             R0, #0
598F7E:  STR             R2, [SP,#0x148+var_70]
598F80:  STRD.W          R9, R12, [SP,#0x148+var_78]
598F84:  STRD.W          LR, R5, [SP,#0x148+var_80]
598F88:  BEQ             loc_598FC6
598F8A:  BLX.W           j__Z10LittleTestv; LittleTest(void)
598F8E:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x598F9C)
598F92:  MOVS            R3, #1
598F94:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x598F9E)
598F98:  ADD             R0, PC; TempBufferVerticesStored_ptr
598F9A:  ADD             R1, PC; TempVertexBuffer_ptr
598F9C:  LDR             R2, [R0]; TempBufferVerticesStored
598F9E:  LDR             R0, [R1]; TempVertexBuffer
598FA0:  LDR             R1, [R2]
598FA2:  MOVS            R2, #0
598FA4:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
598FA8:  CBZ             R0, loc_598FC6
598FAA:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x598FB6)
598FAE:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x598FB8)
598FB2:  ADD             R0, PC; TempBufferIndicesStored_ptr
598FB4:  ADD             R1, PC; TempBufferRenderIndexList_ptr
598FB6:  LDR             R0, [R0]; TempBufferIndicesStored
598FB8:  LDR             R1, [R1]; TempBufferRenderIndexList
598FBA:  LDR             R2, [R0]
598FBC:  MOVS            R0, #3
598FBE:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
598FC2:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
598FC6:  LDR             R0, [R7,#arg_44]
598FC8:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x598FDA)
598FCC:  LDR             R5, [R7,#arg_24]
598FCE:  VMOV            S0, R0
598FD2:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x598FDE)
598FD6:  ADD             R1, PC; TempBufferVerticesStored_ptr
598FD8:  LDR             R3, [R7,#arg_8]
598FDA:  ADD             R0, PC; TempBufferIndicesStored_ptr
598FDC:  VCVT.F32.S32    S16, S0
598FE0:  LDR             R1, [R1]; TempBufferVerticesStored
598FE2:  LDR             R0, [R0]; TempBufferIndicesStored
598FE4:  STR.W           R8, [R1]
598FE8:  STR.W           R8, [R0]
598FEC:  LDR             R0, [SP,#0x148+var_B4]
598FEE:  CMP             R0, R6
598FF0:  BNE             loc_598FFA
598FF2:  SUBS            R0, R3, R0
598FF4:  ADD             R1, SP, #0x148+var_70
598FF6:  ADD             R2, SP, #0x148+var_80
598FF8:  B               loc_599006
598FFA:  LDR.W           R10, [R7,#arg_C]
598FFE:  SUBS            R0, R0, R3
599000:  ADD             R1, SP, #0x148+var_80
599002:  ADD             R2, SP, #0x148+var_70
599004:  STR             R3, [SP,#0x148+var_B4]
599006:  VLDR            S0, [R1,#4]
59900A:  LDR             R4, [R7,#arg_44]
59900C:  VSTR            S0, [SP,#0x148+var_B8]
599010:  VLDR            S0, [R1,#8]
599014:  VLDR            S20, [R1]
599018:  MOV             R1, R4
59901A:  VSTR            S0, [SP,#0x148+var_BC]
59901E:  VLDR            S18, [R2,#4]
599022:  VLDR            S24, [R2,#8]
599026:  VLDR            S28, [R2]
59902A:  BLX.W           __aeabi_idiv
59902E:  STR             R0, [SP,#0x148+var_90]
599030:  SUB.W           R0, R5, R10
599034:  MOV             R1, R4
599036:  BLX.W           __aeabi_idiv
59903A:  LDR.W           LR, [R7,#arg_38]
59903E:  STR             R0, [SP,#0x148+var_11C]
599040:  CMP.W           LR, #1
599044:  BEQ             loc_599078
599046:  CMP.W           LR, #0
59904A:  VSTR            S0, [SP,#0x148+var_114]
59904E:  BNE             loc_5990E0
599050:  LDR.W           R0, =(TextureShiftV_ptr - 0x59905C)
599054:  LDR.W           R2, =(TextureShiftU_ptr - 0x599062)
599058:  ADD             R0, PC; TextureShiftV_ptr
59905A:  VLDR            S0, =0.08
59905E:  ADD             R2, PC; TextureShiftU_ptr
599060:  B               loc_599088
599062:  ALIGN 4
599064:  DCFS 0.08
599068:  DCFS 0.04
59906C:  DCFS 0.0
599070:  DCFS 0.577
599074:  DCFS 255.0
599078:  LDR.W           R0, =(TextureShiftSecondV_ptr - 0x599084)
59907C:  LDR.W           R2, =(TextureShiftSecondU_ptr - 0x59908A)
599080:  ADD             R0, PC; TextureShiftSecondV_ptr
599082:  VLDR            S0, =0.04
599086:  ADD             R2, PC; TextureShiftSecondU_ptr
599088:  LDR             R1, [R0]
59908A:  LDR             R0, [R2]
59908C:  LDR             R2, [SP,#0x148+var_B4]
59908E:  VMOV            S2, R2
599092:  VCVT.F32.S32    S2, S2
599096:  VLDR            S4, [R0]
59909A:  VMUL.F32        S2, S0, S2
59909E:  VADD.F32        S22, S2, S4
5990A2:  VMOV            S2, R10
5990A6:  VCVT.F32.S32    S2, S2
5990AA:  VMOV            R0, S22; x
5990AE:  VMUL.F32        S0, S0, S2
5990B2:  VLDR            S2, [R1]
5990B6:  VADD.F32        S26, S0, S2
5990BA:  BLX.W           floorf
5990BE:  MOV             R11, R0
5990C0:  VMOV            R0, S26; x
5990C4:  BLX.W           floorf
5990C8:  VMOV            S0, R0
5990CC:  LDR.W           LR, [R7,#arg_38]
5990D0:  VMOV            S2, R11
5990D4:  VSUB.F32        S0, S26, S0
5990D8:  VSUB.F32        S22, S22, S2
5990DC:  VSTR            S0, [SP,#0x148+var_114]
5990E0:  LDR.W           R0, =(TheCamera_ptr - 0x5990EC)
5990E4:  STR.W           R10, [SP,#0x148+var_118]
5990E8:  ADD             R0, PC; TheCamera_ptr
5990EA:  LDR             R1, [R0]; TheCamera
5990EC:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
5990EE:  ADD.W           R0, R2, #0x30 ; '0'
5990F2:  CMP             R2, #0
5990F4:  IT EQ
5990F6:  ADDEQ           R0, R1, #4
5990F8:  LDR             R1, [R7,#arg_44]
5990FA:  LDR.W           R12, [SP,#0x148+var_B4]
5990FE:  CMP             R1, #0
599100:  BLT.W           loc_5995EE
599104:  VMOV.F32        S26, #1.0
599108:  LDRD.W          R3, R2, [R7,#arg_28]
59910C:  VMOV            S0, R2
599110:  VLDR            S12, [SP,#0x148+var_B8]
599114:  LDR             R1, [R7,#arg_30]
599116:  VMOV.F32        S29, #0.75
59911A:  VSUB.F32        S0, S0, S12
59911E:  VLDR            S10, [SP,#0x148+var_BC]
599122:  VSUB.F32        S12, S18, S12
599126:  LDR.W           R2, =(TempBufferRenderIndexList_ptr - 0x59913A)
59912A:  VMOV            S2, R1
59912E:  LDR.W           R6, =(TempColourBufferB_ptr - 0x599148)
599132:  VMOV            S4, R3
599136:  ADD             R2, PC; TempBufferRenderIndexList_ptr
599138:  VDIV.F32        S6, S26, S16
59913C:  LDR.W           R3, =(TempColourBufferIndex_ptr - 0x59914A)
599140:  LDR.W           R5, =(TempColourBufferR_ptr - 0x59914E)
599144:  ADD             R6, PC; TempColourBufferB_ptr
599146:  ADD             R3, PC; TempColourBufferIndex_ptr
599148:  MOVS            R1, #0
59914A:  ADD             R5, PC; TempColourBufferR_ptr
59914C:  MOV.W           R8, #0
599150:  VSUB.F32        S2, S2, S10
599154:  VLDR            S17, =0.0
599158:  VMUL.F32        S0, S6, S0
59915C:  VLDR            S27, =0.577
599160:  VSUB.F32        S8, S24, S10
599164:  VSUB.F32        S4, S4, S20
599168:  VSUB.F32        S10, S28, S20
59916C:  VMUL.F32        S2, S6, S2
599170:  VSTR            S0, [SP,#0x148+var_124]
599174:  VMUL.F32        S0, S6, S12
599178:  VMUL.F32        S23, S6, S10
59917C:  VSTR            S2, [SP,#0x148+var_120]
599180:  VMUL.F32        S2, S6, S8
599184:  VSTR            S0, [SP,#0x148+var_C4]
599188:  VMUL.F32        S0, S6, S4
59918C:  VSTR            S2, [SP,#0x148+var_C0]
599190:  VSTR            S0, [SP,#0x148+var_128]
599194:  VLDR            S25, [R0]
599198:  VLDR            S0, [R0,#4]
59919C:  LDR             R0, [R7,#arg_44]
59919E:  VSTR            S0, [SP,#0x148+var_12C]
5991A2:  ADD.W           R10, R0, #1
5991A6:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5991B2)
5991AA:  VLDR            S0, =255.0
5991AE:  ADD             R0, PC; TempBufferIndicesStored_ptr
5991B0:  VMUL.F32        S0, S0, S0
5991B4:  LDR             R0, [R0]; TempBufferIndicesStored
5991B6:  STR             R0, [SP,#0x148+var_130]
5991B8:  LDR             R0, [R2]; TempBufferRenderIndexList
5991BA:  STR             R0, [SP,#0x148+var_134]
5991BC:  LDR.W           R0, =(DETAILEDWATERDIST_ptr - 0x5991C8)
5991C0:  LDR.W           R2, =(TextureShiftHighLightV_ptr - 0x5991CE)
5991C4:  ADD             R0, PC; DETAILEDWATERDIST_ptr
5991C6:  VSTR            S0, [SP,#0x148+var_D0]
5991CA:  ADD             R2, PC; TextureShiftHighLightV_ptr
5991CC:  LDR             R0, [R0]; DETAILEDWATERDIST
5991CE:  STR             R0, [SP,#0x148+var_94]
5991D0:  LDR.W           R0, =(TextureShiftHighLightU_ptr - 0x5991D8)
5991D4:  ADD             R0, PC; TextureShiftHighLightU_ptr
5991D6:  LDR             R0, [R0]; TextureShiftHighLightU
5991D8:  STR             R0, [SP,#0x148+var_C8]
5991DA:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x5991E2)
5991DE:  ADD             R0, PC; TempVertexBuffer_ptr
5991E0:  LDR             R0, [R0]; TempVertexBuffer
5991E2:  STR             R0, [SP,#0x148+var_CC]
5991E4:  LDR             R0, [R2]; TextureShiftHighLightV
5991E6:  STR             R0, [SP,#0x148+var_D4]
5991E8:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5991F4)
5991EC:  LDR.W           R2, =(TempBufferRenderIndexList_ptr - 0x5991F6)
5991F0:  ADD             R0, PC; TempBufferIndicesStored_ptr
5991F2:  ADD             R2, PC; TempBufferRenderIndexList_ptr
5991F4:  LDR             R0, [R0]; TempBufferIndicesStored
5991F6:  STR             R0, [SP,#0x148+var_A4]
5991F8:  LDR             R0, [R2]; TempBufferRenderIndexList
5991FA:  STR             R0, [SP,#0x148+var_A8]
5991FC:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x599208)
599200:  LDR.W           R2, =(TempColourBufferG_ptr - 0x59920A)
599204:  ADD             R0, PC; TempBufferVerticesStored_ptr
599206:  ADD             R2, PC; TempColourBufferG_ptr
599208:  LDR.W           R11, [R0]; TempBufferVerticesStored
59920C:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x599214)
599210:  ADD             R0, PC; TempVertexBuffer_ptr
599212:  LDR             R0, [R0]; TempVertexBuffer
599214:  STR             R0, [SP,#0x148+var_D8]
599216:  LDR             R0, [R2]; TempColourBufferG
599218:  STR             R0, [SP,#0x148+var_DC]
59921A:  LDR             R0, [R3]; TempColourBufferIndex
59921C:  STR             R0, [SP,#0x148+var_E0]
59921E:  LDR             R0, [R6]; TempColourBufferB
599220:  STR             R0, [SP,#0x148+var_E4]
599222:  LDR             R0, [R5]; TempColourBufferR
599224:  STR             R0, [SP,#0x148+var_E8]
599226:  LDR.W           R0, =(VecForWaterNormalCalculation_ptr - 0x599232)
59922A:  LDR.W           R2, =(WaterColor_ptr - 0x599234)
59922E:  ADD             R0, PC; VecForWaterNormalCalculation_ptr
599230:  ADD             R2, PC; WaterColor_ptr
599232:  LDR             R0, [R0]; VecForWaterNormalCalculation
599234:  STR             R0, [SP,#0x148+var_EC]
599236:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x59923E)
59923A:  ADD             R0, PC; TempBufferVerticesStored_ptr
59923C:  LDR             R0, [R0]; TempBufferVerticesStored
59923E:  STR             R0, [SP,#0x148+var_F0]
599240:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x599248)
599244:  ADD             R0, PC; TempVertexBuffer_ptr
599246:  LDR             R0, [R0]; TempVertexBuffer
599248:  STR             R0, [SP,#0x148+var_F4]
59924A:  LDR             R0, [R2]; WaterColor
59924C:  STR             R0, [SP,#0x148+var_F8]
59924E:  LDR.W           R0, =(TempColourBufferB_ptr - 0x599256)
599252:  ADD             R0, PC; TempColourBufferB_ptr
599254:  LDR             R0, [R0]; TempColourBufferB
599256:  STR             R0, [SP,#0x148+var_FC]
599258:  LDR.W           R0, =(TempColourBufferG_ptr - 0x599260)
59925C:  ADD             R0, PC; TempColourBufferG_ptr
59925E:  LDR             R0, [R0]; TempColourBufferG
599260:  STR             R0, [SP,#0x148+var_100]
599262:  LDR.W           R0, =(TempColourBufferR_ptr - 0x59926A)
599266:  ADD             R0, PC; TempColourBufferR_ptr
599268:  LDR             R0, [R0]; TempColourBufferR
59926A:  STR             R0, [SP,#0x148+var_104]
59926C:  LDR.W           R0, =(TempColourBufferIndex_ptr - 0x599274)
599270:  ADD             R0, PC; TempColourBufferIndex_ptr
599272:  LDR             R0, [R0]; TempColourBufferIndex
599274:  STR             R0, [SP,#0x148+var_108]
599276:  MOV             R0, R10
599278:  STR             R0, [SP,#0x148+var_110]
59927A:  LDR             R0, [R7,#arg_44]
59927C:  SUB.W           R3, R0, R8
599280:  STR             R3, [SP,#0x148+var_10C]
599282:  CMP             R3, #0
599284:  BLT.W           loc_5995AA
599288:  LDRD.W          R2, R0, [SP,#0x148+var_11C]
59928C:  VMOV            S2, R8
599290:  VLDR            S6, =0.04
599294:  MOVS            R5, #0
599296:  VLDR            S8, =0.08
59929A:  MOV.W           R9, #0
59929E:  MLA.W           R4, R8, R2, R0
5992A2:  MUL.W           R0, R8, R2
5992A6:  STR             R4, [SP,#0x148+var_AC]
5992A8:  VMOV            S0, R4
5992AC:  VCVT.F32.S32    S31, S0
5992B0:  VMOV            S0, R0
5992B4:  MOVW            R0, #0xFFFE
5992B8:  SUBS            R0, R0, R3
5992BA:  VCVT.F32.S32    S0, S0
5992BE:  VCVT.F32.S32    S2, S2
5992C2:  VLDR            S10, [SP,#0x148+var_124]
5992C6:  VLDR            S4, [SP,#0x148+var_12C]
5992CA:  STR             R0, [SP,#0x148+var_98]
5992CC:  ADDS            R0, R3, #3
5992CE:  VSUB.F32        S4, S4, S31
5992D2:  STR             R0, [SP,#0x148+var_9C]
5992D4:  STR.W           R10, [SP,#0x148+var_A0]
5992D8:  VMUL.F32        S6, S0, S6
5992DC:  VMUL.F32        S10, S10, S2
5992E0:  VMUL.F32        S8, S0, S8
5992E4:  VMUL.F32        S19, S4, S4
5992E8:  VSTR            S10, [SP,#0x148+var_B0]
5992EC:  VLDR            S10, [SP,#0x148+var_120]
5992F0:  VMUL.F32        S16, S10, S2
5992F4:  VLDR            S10, [SP,#0x148+var_128]
5992F8:  VMUL.F32        S18, S10, S2
5992FC:  VLDR            S2, =0.1
599300:  VMUL.F32        S30, S0, S2
599304:  VLDR            S0, [SP,#0x148+var_114]
599308:  VADD.F32        S21, S0, S6
59930C:  VADD.F32        S28, S0, S8
599310:  ADD.W           R0, R12, R5
599314:  VMOV            S0, R0; this
599318:  VCVT.F32.S32    S24, S0
59931C:  LDR             R2, [SP,#0x148+var_94]
59931E:  VLDR            S4, [R2]
599322:  VSUB.F32        S0, S25, S24
599326:  VMUL.F32        S0, S0, S0
59932A:  VADD.F32        S0, S19, S0
59932E:  VSQRT.F32       S2, S0
599332:  VMOV            S0, R9
599336:  VCVT.F32.S32    S0, S0
59933A:  VCVT.F32.S32    S4, S4
59933E:  VMUL.F32        S8, S23, S0
599342:  VDIV.F32        S6, S2, S4
599346:  VADD.F32        S2, S20, S8
59934A:  VCMPE.F32       S6, S26
59934E:  VMRS            APSR_nzcv, FPSCR
599352:  VADD.F32        S4, S18, S2
599356:  VMOV.F32        S2, S17
59935A:  VSTR            S4, [SP,#0x148+var_84]
59935E:  BGT             loc_59937A
599360:  VCMPE.F32       S6, S29
599364:  VMRS            APSR_nzcv, FPSCR
599368:  VMOV.F32        S2, S26
59936C:  ITTT GT
59936E:  VSUBGT.F32      S2, S26, S6
599372:  VMOVGT.F32      S6, #4.0
599376:  VMULGT.F32      S2, S2, S6
59937A:  CMP.W           LR, #2
59937E:  BEQ.W           loc_5994A0
599382:  CMP.W           LR, #1
599386:  BEQ.W           loc_599506
59938A:  CMP.W           LR, #0
59938E:  BNE.W           loc_599560
599392:  VLDR            S4, [SP,#0x148+var_C4]
599396:  ADD             R1, SP, #0x148+var_84
599398:  VLDR            S6, [SP,#0x148+var_C0]
59939C:  VMUL.F32        S4, S4, S0
5993A0:  STR             R1, [SP,#0x148+var_148]; float
5993A2:  VMUL.F32        S0, S6, S0
5993A6:  VLDR            S6, [SP,#0x148+var_B8]
5993AA:  ADD             R1, SP, #0x148+var_88
5993AC:  STR             R1, [SP,#0x148+var_144]; float *
5993AE:  ADD             R1, SP, #0x148+var_8C
5993B0:  STR             R1, [SP,#0x148+var_140]; float *
5993B2:  LDR             R1, [SP,#0x148+var_EC]
5993B4:  STR             R1, [SP,#0x148+var_13C]; CVector *
5993B6:  LDR             R1, [SP,#0x148+var_AC]; int
5993B8:  VADD.F32        S4, S6, S4
5993BC:  VLDR            S6, [SP,#0x148+var_BC]
5993C0:  VADD.F32        S0, S6, S0
5993C4:  VLDR            S6, [SP,#0x148+var_B0]
5993C8:  VADD.F32        S4, S6, S4
5993CC:  VADD.F32        S0, S16, S0
5993D0:  VMUL.F32        S4, S4, S2
5993D4:  VMUL.F32        S0, S0, S2
5993D8:  VMOV            R2, S4; int
5993DC:  VMOV            R3, S0; float
5993E0:  BLX.W           j__ZN11CWaterLevel27CalculateWavesForCoordinateEiiffPfS0_S0_P7CVector; CWaterLevel::CalculateWavesForCoordinate(int,int,float,float,float *,float *,float *,CVector *)
5993E4:  VMOV            S0, R5
5993E8:  LDR.W           R12, [SP,#0x148+var_B4]
5993EC:  VLDR            S2, =0.08
5993F0:  VCVT.F32.S32    S0, S0
5993F4:  LDR             R0, [SP,#0x148+var_F0]
5993F6:  LDR             R2, [SP,#0x148+var_F4]
5993F8:  LDR             R4, [SP,#0x148+var_F8]
5993FA:  LDR             R1, [R0]
5993FC:  MOV             R0, #0x3F13B646
599404:  LDR.W           LR, [R7,#arg_38]
599408:  STR             R0, [SP,#0x148+var_88]
59940A:  ADD.W           R0, R1, R1,LSL#3
59940E:  LDRB            R3, [R4,#1]
599410:  VMUL.F32        S0, S0, S2
599414:  ADD.W           R0, R2, R0,LSL#2
599418:  LDR             R2, [SP,#0x148+var_84]
59941A:  VADD.F32        S0, S22, S0
59941E:  VSTR            S0, [R0,#0x1C]
599422:  VMOV            S0, R3
599426:  VSTR            S28, [R0,#0x20]
59942A:  VSTR            S24, [R0]
59942E:  VSTR            S31, [R0,#4]
599432:  STR             R2, [R0,#8]
599434:  LDRB            R2, [R4]
599436:  LDRB            R4, [R4,#2]
599438:  VCVT.F32.U32    S0, S0
59943C:  VMOV            S2, R2
599440:  LDR             R2, =(dword_6B15B8 - 0x59944E)
599442:  VMOV            S4, R4
599446:  VCVT.F32.U32    S2, S2
59944A:  ADD             R2, PC; dword_6B15B8
59944C:  VCVT.F32.U32    S4, S4
599450:  LDR             R2, [R2]
599452:  VMUL.F32        S0, S0, S27
599456:  VMUL.F32        S2, S2, S27
59945A:  VMUL.F32        S4, S4, S27
59945E:  VCVT.U32.F32    S0, S0
599462:  VCVT.U32.F32    S2, S2
599466:  VCVT.U32.F32    S4, S4
59946A:  LDR             R3, [SP,#0x148+var_108]
59946C:  VMOV            R4, S0
599470:  VMOV            R10, S2
599474:  VMOV            R6, S4
599478:  ORR.W           R2, R10, R2,LSL#24
59947C:  ORR.W           R2, R2, R4,LSL#8
599480:  ORR.W           R2, R2, R6,LSL#16
599484:  STR             R2, [R0,#0x18]
599486:  LDR             R0, [R3]
599488:  LDR             R2, [SP,#0x148+var_104]
59948A:  STRB.W          R10, [R2,R0]
59948E:  LDR             R2, [SP,#0x148+var_100]
599490:  LDR.W           R10, [SP,#0x148+var_A0]
599494:  STRB            R4, [R2,R0]
599496:  LDR             R2, [SP,#0x148+var_FC]
599498:  STRB            R6, [R2,R0]
59949A:  ADDS            R0, #1
59949C:  STR             R0, [R3]
59949E:  B               loc_599560
5994A0:  VMOV            S0, R5
5994A4:  VLDR            S2, =0.1
5994A8:  VCVT.F32.S32    S0, S0
5994AC:  LDR             R0, [SP,#0x148+var_C8]
5994AE:  VMOV.F32        S6, S2
5994B2:  LDR             R2, [SP,#0x148+var_CC]
5994B4:  VLDR            S2, [R0]
5994B8:  ADD.W           R0, R1, R1,LSL#3
5994BC:  ADD.W           R0, R2, R0,LSL#2
5994C0:  LDR             R2, [SP,#0x148+var_D4]
5994C2:  VMUL.F32        S0, S0, S6
5994C6:  VADD.F32        S0, S0, S2
5994CA:  VADD.F32        S2, S4, S6
5994CE:  VLDR            S4, [SP,#0x148+var_D0]
5994D2:  VSTR            S0, [R0,#0x1C]
5994D6:  VLDR            S0, [R2]
5994DA:  VCVT.U32.F32    S4, S4
5994DE:  VSTR            S24, [R0]
5994E2:  VADD.F32        S0, S30, S0
5994E6:  VSTR            S31, [R0,#4]
5994EA:  VSTR            S2, [R0,#8]
5994EE:  VMOV            R2, S4
5994F2:  ORR.W           R3, R2, R2,LSL#8
5994F6:  ORR.W           R2, R3, R2,LSL#16
5994FA:  ORR.W           R2, R2, #0xFF000000
5994FE:  STR             R2, [R0,#0x18]
599500:  VSTR            S0, [R0,#0x20]
599504:  B               loc_599560
599506:  VMOV            S0, R5
59950A:  VLDR            S2, =0.04
59950E:  MOV             R10, R12
599510:  MOV             R12, R11
599512:  VCVT.F32.S32    S0, S0
599516:  LDR.W           R11, [SP,#0x148+var_E0]
59951A:  ADD.W           R0, R1, R1,LSL#3
59951E:  LDR             R2, [SP,#0x148+var_D8]
599520:  LDR             R4, [SP,#0x148+var_E4]
599522:  ADD.W           R0, R2, R0,LSL#2
599526:  LDR.W           R2, [R11]
59952A:  LDR             R3, [SP,#0x148+var_DC]
59952C:  LDRB            R6, [R4,R2]
59952E:  VMUL.F32        S0, S0, S2
599532:  LDR             R4, [SP,#0x148+var_E8]
599534:  LDRB            R3, [R3,R2]
599536:  LDRB            R4, [R4,R2]
599538:  ORR.W           R3, R4, R3,LSL#8
59953C:  VADD.F32        S0, S22, S0
599540:  ORR.W           R3, R3, R6,LSL#16
599544:  ORR.W           R3, R3, #0x5A000000
599548:  VSTR            S0, [R0,#0x1C]
59954C:  VSTR            S21, [R0,#0x20]
599550:  STR             R3, [R0,#0x18]
599552:  ADDS            R0, R2, #1
599554:  STR.W           R0, [R11]
599558:  MOV             R11, R12
59955A:  MOV             R12, R10
59955C:  LDR.W           R10, [SP,#0x148+var_A0]
599560:  CMP.W           R8, #0
599564:  IT NE
599566:  CMPNE.W         R9, #0
59956A:  BEQ             loc_599596
59956C:  LDR             R4, [SP,#0x148+var_A4]
59956E:  MOVW            R3, #0xFFFF
599572:  LDR             R2, [SP,#0x148+var_A8]
599574:  ADD             R3, R1
599576:  LDR             R6, [SP,#0x148+var_98]
599578:  LDR             R0, [R4]
59957A:  ADD             R6, R1
59957C:  STRH.W          R1, [R2,R0,LSL#1]
599580:  ADD.W           R2, R2, R0,LSL#1
599584:  ADDS            R0, #6
599586:  STRH            R3, [R2,#2]
599588:  LDR             R3, [SP,#0x148+var_9C]
59958A:  STR             R0, [R4]
59958C:  SUBS            R3, R1, R3
59958E:  STRH            R3, [R2,#4]
599590:  STRH            R1, [R2,#6]
599592:  STRH            R6, [R2,#8]
599594:  STRH            R3, [R2,#0xA]
599596:  LDR             R0, [SP,#0x148+var_90]
599598:  ADDS            R1, #1
59959A:  ADD.W           R9, R9, #1
59959E:  STR.W           R1, [R11]
5995A2:  ADD             R5, R0
5995A4:  CMP             R10, R9
5995A6:  BNE.W           loc_599310
5995AA:  CMP.W           R8, #0
5995AE:  BEQ             loc_5995DE
5995B0:  LDR             R4, [SP,#0x148+var_130]
5995B2:  MOVW            R2, #0xFFFF
5995B6:  LDR             R3, [SP,#0x148+var_134]
5995B8:  ADD             R2, R1
5995BA:  LDR             R5, [SP,#0x148+var_10C]
5995BC:  LDR             R0, [R4]
5995BE:  STRH.W          R2, [R3,R0,LSL#1]
5995C2:  ADD.W           R2, R3, R0,LSL#1
5995C6:  MOVW            R3, #0xFFFE
5995CA:  SUBS            R3, R3, R5
5995CC:  ADDS            R0, #3
5995CE:  ADD             R3, R1
5995D0:  STRH            R3, [R2,#2]
5995D2:  MOVW            R3, #0xFFFD
5995D6:  STR             R0, [R4]
5995D8:  SUBS            R3, R3, R5
5995DA:  ADD             R3, R1
5995DC:  STRH            R3, [R2,#4]
5995DE:  LDR             R0, [SP,#0x148+var_110]
5995E0:  ADD.W           R8, R8, #1
5995E4:  SUB.W           R10, R10, #1
5995E8:  CMP             R8, R0
5995EA:  BNE.W           loc_59927A
5995EE:  ADD             SP, SP, #0xE8
5995F0:  VPOP            {D8-D15}
5995F4:  ADD             SP, SP, #4
5995F6:  POP.W           {R8-R11}
5995FA:  POP             {R4-R7,PC}
