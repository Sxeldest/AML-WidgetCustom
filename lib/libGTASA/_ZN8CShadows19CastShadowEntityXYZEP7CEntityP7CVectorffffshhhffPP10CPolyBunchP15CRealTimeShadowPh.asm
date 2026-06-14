; =========================================================
; Game Engine Function: _ZN8CShadows19CastShadowEntityXYZEP7CEntityP7CVectorffffshhhffPP10CPolyBunchP15CRealTimeShadowPh
; Address            : 0x5BE010 - 0x5BE6E0
; =========================================================

5BE010:  PUSH            {R4-R7,LR}
5BE012:  ADD             R7, SP, #0xC
5BE014:  PUSH.W          {R8-R11}
5BE018:  SUB             SP, SP, #4
5BE01A:  VPUSH           {D8-D13}
5BE01E:  SUB.W           SP, SP, #0x2A0
5BE022:  MOV             R8, R0
5BE024:  LDR             R0, [R7,#arg_24]; this
5BE026:  MOV             R11, R3
5BE028:  MOV             R6, R2
5BE02A:  MOV             R5, R1
5BE02C:  CMP             R0, #0
5BE02E:  BEQ.W           loc_5BE6D0
5BE032:  BLX.W           j__ZN15CRealTimeShadow15GetShadowCameraEv; CRealTimeShadow::GetShadowCamera(void)
5BE036:  MOV             R9, R0
5BE038:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5BE044)
5BE03C:  LDRSH.W         R1, [R8,#0x26]; CColModel *
5BE040:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5BE042:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5BE044:  LDR.W           R0, [R0,R1,LSL#2]
5BE048:  LDR             R0, [R0,#0x2C]; this
5BE04A:  LDR             R4, [R0,#0x2C]
5BE04C:  CMP             R4, #0
5BE04E:  BEQ.W           loc_5BE6D0
5BE052:  STR             R5, [SP,#0x2F0+var_284]
5BE054:  BLX.W           j__ZN10CCollision23CalculateTrianglePlanesEP9CColModel; CCollision::CalculateTrianglePlanes(CColModel *)
5BE058:  LDR.W           R0, [R9]
5BE05C:  ADD             R5, SP, #0x2F0+var_108
5BE05E:  ADD.W           R10, R5, #0x20 ; ' '
5BE062:  LDR             R0, [R0,#4]
5BE064:  ADD.W           R1, R0, #0x10
5BE068:  VLD1.32         {D16-D17}, [R1]
5BE06C:  ADD.W           R1, R0, #0x20 ; ' '
5BE070:  VLD1.32         {D18-D19}, [R1]
5BE074:  ADD.W           R1, R0, #0x30 ; '0'
5BE078:  ADDS            R0, #0x40 ; '@'
5BE07A:  VLD1.32         {D22-D23}, [R0]
5BE07E:  MOV             R0, R5
5BE080:  VLD1.32         {D20-D21}, [R1]
5BE084:  STR.W           R9, [SP,#0x2F0+var_288]
5BE088:  ADD.W           R9, R5, #0x30 ; '0'
5BE08C:  VST1.64         {D22-D23}, [R9]
5BE090:  VST1.64         {D20-D21}, [R10]
5BE094:  VST1.64         {D16-D17}, [R0]!
5BE098:  VST1.64         {D18-D19}, [R0]
5BE09C:  VLDR            D16, [SP,#0x2F0+var_E8]
5BE0A0:  LDR             R0, [SP,#0x2F0+var_E0]
5BE0A2:  STR             R0, [SP,#0x2F0+var_198]
5BE0A4:  VSTR            D16, [SP,#0x2F0+var_1A0]
5BE0A8:  LDR.W           R0, [R8,#0x14]
5BE0AC:  CBNZ            R0, loc_5BE0C4
5BE0AE:  MOV             R0, R8; this
5BE0B0:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BE0B4:  LDR.W           R1, [R8,#0x14]; CMatrix *
5BE0B8:  ADD.W           R0, R8, #4; this
5BE0BC:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BE0C0:  LDR.W           R0, [R8,#0x14]
5BE0C4:  VMOV            S18, R6
5BE0C8:  ADD             R6, SP, #0x2F0+var_1A0
5BE0CA:  ADD.W           R1, R6, #0x58 ; 'X'
5BE0CE:  VMOV            S20, R11
5BE0D2:  STR             R1, [SP,#0x2F0+var_28C]
5BE0D4:  BLX.W           j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
5BE0D8:  MOV             R0, R5
5BE0DA:  VLD1.64         {D18-D19}, [R9]
5BE0DE:  MOV             R1, R5
5BE0E0:  ADD.W           R5, R6, #0xC
5BE0E4:  VLD1.64         {D16-D17}, [R0]!
5BE0E8:  VLD1.64         {D22-D23}, [R0]
5BE0EC:  ADD.W           R0, R6, #0x3C ; '<'
5BE0F0:  VST1.32         {D18-D19}, [R0]
5BE0F4:  ADD.W           R0, R6, #0x2C ; ','
5BE0F8:  VLD1.64         {D20-D21}, [R10]
5BE0FC:  VST1.32         {D20-D21}, [R0]
5BE100:  ADD.W           R0, R6, #0x1C
5BE104:  VST1.32         {D16-D17}, [R5]
5BE108:  VST1.32         {D22-D23}, [R0]
5BE10C:  MOV             R0, R5
5BE10E:  BLX.W           j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
5BE112:  LDR             R0, [SP,#0x2F0+var_288]
5BE114:  VMOV.F32        S22, #-0.5
5BE118:  VMOV.F32        S16, #1.0
5BE11C:  ADD             R1, SP, #0x2F0+var_1AC
5BE11E:  MOVS            R2, #2
5BE120:  LDR             R0, [R0]
5BE122:  VLDR            S0, [R0,#0x68]
5BE126:  MOV             R0, R5
5BE128:  VDIV.F32        S2, S22, S0
5BE12C:  VDIV.F32        S0, S16, S0
5BE130:  VSTR            S2, [SP,#0x2F0+var_1AC]
5BE134:  VSTR            S2, [SP,#0x2F0+var_1A8]
5BE138:  VSTR            S0, [SP,#0x2F0+var_1A4]
5BE13C:  BLX.W           j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
5BE140:  MOV.W           R0, #0x3F000000
5BE144:  ADD             R1, SP, #0x2F0+var_1B8
5BE146:  STRD.W          R0, R0, [SP,#0x2F0+var_1B8]
5BE14A:  MOV.W           R9, #0
5BE14E:  MOV             R0, R5
5BE150:  MOVS            R2, #2
5BE152:  STR.W           R9, [SP,#0x2F0+var_1B0]
5BE156:  STR             R5, [SP,#0x2F0+var_294]
5BE158:  BLX.W           j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
5BE15C:  LDR             R0, [R7,#arg_8]
5BE15E:  STR.W           R9, [SP,#0x2F0+var_150]
5BE162:  STRB.W          R0, [SP,#0x2F0+var_154]
5BE166:  LDR.W           R0, [R8,#0x14]
5BE16A:  CBNZ            R0, loc_5BE182
5BE16C:  MOV             R0, R8; this
5BE16E:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5BE172:  LDR.W           R1, [R8,#0x14]; CMatrix *
5BE176:  ADD.W           R0, R8, #4; this
5BE17A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5BE17E:  LDR.W           R0, [R8,#0x14]
5BE182:  ADD             R6, SP, #0x2F0+var_1F8
5BE184:  MOV             R1, R6
5BE186:  BLX.W           j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
5BE18A:  ADD             R5, SP, #0x2F0+var_238
5BE18C:  MOV             R1, R6
5BE18E:  MOV             R0, R5
5BE190:  BLX.W           j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
5BE194:  VNEG.F32        S0, S20
5BE198:  ADD             R0, SP, #0x2F0+var_78; this
5BE19A:  VNEG.F32        S2, S18
5BE19E:  STR.W           R9, [SP,#0x2F0+var_70]
5BE1A2:  VSTR            S0, [SP,#0x2F0+var_78+4]
5BE1A6:  VSTR            S2, [SP,#0x2F0+var_78]
5BE1AA:  BLX.W           j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
5BE1AE:  LDR             R1, [SP,#0x2F0+var_284]
5BE1B0:  VMOV            S20, R0
5BE1B4:  VLDR            S2, [SP,#0x2F0+var_78]
5BE1B8:  ADD             R0, SP, #0x2F0+var_248
5BE1BA:  VLDR            S4, [SP,#0x2F0+var_78+4]
5BE1BE:  MOVS            R2, #1
5BE1C0:  VLDR            D16, [R1]
5BE1C4:  MOV             R3, R5
5BE1C6:  LDR             R1, [R1,#8]
5BE1C8:  STR             R1, [SP,#0x2F0+var_98]
5BE1CA:  LDR             R1, [R7,#arg_24]
5BE1CC:  VSTR            D16, [SP,#0x2F0+var_A0]
5BE1D0:  VLDR            S6, [SP,#0x2F0+var_70]
5BE1D4:  VLDR            S18, [R1,#0x3C]
5BE1D8:  ADD             R1, SP, #0x2F0+var_A0
5BE1DA:  VLDR            S8, [SP,#0x2F0+var_A0+4]
5BE1DE:  VMUL.F32        S0, S18, S22
5BE1E2:  VLDR            S10, [SP,#0x2F0+var_98]
5BE1E6:  VADD.F32        S0, S20, S0
5BE1EA:  VMUL.F32        S4, S4, S0
5BE1EE:  VMUL.F32        S6, S0, S6
5BE1F2:  VMUL.F32        S0, S2, S0
5BE1F6:  VLDR            S2, [SP,#0x2F0+var_A0]
5BE1FA:  VADD.F32        S4, S4, S8
5BE1FE:  VADD.F32        S6, S6, S10
5BE202:  VADD.F32        S0, S0, S2
5BE206:  VSTR            S4, [SP,#0x2F0+var_A0+4]
5BE20A:  VSTR            S6, [SP,#0x2F0+var_98]
5BE20E:  VSTR            S0, [SP,#0x2F0+var_A0]
5BE212:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5BE216:  VADD.F32        S0, S20, S18
5BE21A:  VLDR            S2, =1.15
5BE21E:  ADD             R2, SP, #0x2F0+var_78; CVector *
5BE220:  MOVS            R3, #0; unsigned __int8
5BE222:  VMUL.F32        S0, S0, S2
5BE226:  VMOV            R1, S0; float
5BE22A:  VSTR            S0, [SP,#0x2F0+var_23C]
5BE22E:  LDR             R0, [SP,#0x2F0+var_240]
5BE230:  VLDR            D16, [SP,#0x2F0+var_248]
5BE234:  STR             R0, [SP,#0x2F0+var_70]
5BE236:  MOVS            R0, #0xFF
5BE238:  VSTR            D16, [SP,#0x2F0+var_78]
5BE23C:  STRD.W          R9, R0, [SP,#0x2F0+var_2F0]; unsigned __int8
5BE240:  ADD             R0, SP, #0x2F0+var_25C; this
5BE242:  BLX.W           j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5BE246:  LDRSH.W         R0, [R4,#4]
5BE24A:  CMP             R0, #1
5BE24C:  BLT.W           loc_5BE6D0
5BE250:  ADD             R0, SP, #0x2F0+var_C4
5BE252:  ADD             R6, SP, #0x2F0+var_280
5BE254:  ADDS            R0, #0x10
5BE256:  STR             R0, [SP,#0x2F0+var_298]
5BE258:  ADD             R0, SP, #0x2F0+var_78
5BE25A:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x5BE27C)
5BE25E:  ADDS            R0, #0x10
5BE260:  STR             R0, [SP,#0x2F0+var_29C]
5BE262:  ADD.W           R0, R6, #0x10
5BE266:  STR             R0, [SP,#0x2F0+var_290]
5BE268:  ADD.W           R0, R6, #0x18
5BE26C:  STR             R0, [SP,#0x2F0+var_284]
5BE26E:  ADD.W           R0, R6, #0xC
5BE272:  STR             R0, [SP,#0x2F0+var_288]
5BE274:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5BE286)
5BE278:  ADD             R1, PC; TempVertexBuffer_ptr
5BE27A:  LDR.W           R2, =(_ZN12RenderBuffer18VerticesToBeStoredE_ptr - 0x5BE28C)
5BE27E:  MOV.W           R8, #0
5BE282:  ADD             R0, PC; TempBufferIndicesStored_ptr
5BE284:  LDR.W           R3, =(TempBufferIndicesStored_ptr - 0x5BE294)
5BE288:  ADD             R2, PC; _ZN12RenderBuffer18VerticesToBeStoredE_ptr
5BE28A:  VLDR            S18, =0.028
5BE28E:  LDR             R0, [R0]; TempBufferIndicesStored
5BE290:  ADD             R3, PC; TempBufferIndicesStored_ptr
5BE292:  STR             R0, [SP,#0x2F0+var_2A0]
5BE294:  MOVS            R5, #0
5BE296:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5BE2A6)
5BE29A:  MOV.W           R9, #0
5BE29E:  VLDR            S20, =-0.028
5BE2A2:  ADD             R0, PC; TempBufferVerticesStored_ptr
5BE2A4:  LDR             R0, [R0]; TempBufferVerticesStored
5BE2A6:  STR             R0, [SP,#0x2F0+var_2A4]
5BE2A8:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5BE2B0)
5BE2AC:  ADD             R0, PC; TempBufferVerticesStored_ptr
5BE2AE:  LDR             R0, [R0]; TempBufferVerticesStored
5BE2B0:  STR             R0, [SP,#0x2F0+var_2CC]
5BE2B2:  LDR.W           R0, =(_ZN12RenderBuffer17IndicesToBeStoredE_ptr - 0x5BE2BA)
5BE2B6:  ADD             R0, PC; _ZN12RenderBuffer17IndicesToBeStoredE_ptr
5BE2B8:  LDR             R0, [R0]; RenderBuffer::IndicesToBeStored ...
5BE2BA:  STR             R0, [SP,#0x2F0+var_2A8]
5BE2BC:  LDR             R0, [R1]; TempVertexBuffer
5BE2BE:  STR             R0, [SP,#0x2F0+var_2AC]
5BE2C0:  LDR             R0, [R2]; RenderBuffer::VerticesToBeStored ...
5BE2C2:  STR             R0, [SP,#0x2F0+var_2B0]
5BE2C4:  LDR             R0, [R3]; TempBufferIndicesStored
5BE2C6:  STR             R0, [SP,#0x2F0+var_2B4]
5BE2C8:  LDR.W           R0, =(TempBufferRenderIndexList_ptr - 0x5BE2D4)
5BE2CC:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5BE2DA)
5BE2D0:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5BE2D2:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x5BE2DE)
5BE2D6:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5BE2D8:  LDR             R0, [R0]; TempBufferRenderIndexList
5BE2DA:  ADD             R2, PC; TempBufferVerticesStored_ptr
5BE2DC:  STR             R0, [SP,#0x2F0+var_2B8]
5BE2DE:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x5BE2E6)
5BE2E2:  ADD             R0, PC; TempVertexBuffer_ptr
5BE2E4:  LDR             R0, [R0]; TempVertexBuffer
5BE2E6:  STR             R0, [SP,#0x2F0+var_2D0]
5BE2E8:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5BE2F0)
5BE2EC:  ADD             R0, PC; TempBufferIndicesStored_ptr
5BE2EE:  LDR             R0, [R0]; TempBufferIndicesStored
5BE2F0:  STR             R0, [SP,#0x2F0+var_2BC]
5BE2F2:  LDR             R0, [R1]; TempBufferRenderIndexList
5BE2F4:  STR             R0, [SP,#0x2F0+var_2C0]
5BE2F6:  LDR             R0, [R2]; TempBufferVerticesStored
5BE2F8:  STR             R0, [SP,#0x2F0+var_2C4]
5BE2FA:  LDR.W           R0, =(TempVertexBuffer_ptr - 0x5BE302)
5BE2FE:  ADD             R0, PC; TempVertexBuffer_ptr
5BE300:  LDR             R0, [R0]; TempVertexBuffer
5BE302:  STR             R0, [SP,#0x2F0+var_2C8]
5BE304:  LDR             R0, [R4,#0x18]
5BE306:  MOV             R1, R6; CVector *
5BE308:  LDRH            R2, [R0,R5]; int
5BE30A:  ADD             R0, R5
5BE30C:  LDRH.W          R10, [R0,#8]
5BE310:  LDRH.W          R11, [R0,#4]
5BE314:  MOV             R0, R4; this
5BE316:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BE31A:  LDR             R1, [SP,#0x2F0+var_288]; CVector *
5BE31C:  MOV             R0, R4; this
5BE31E:  MOV             R2, R11; int
5BE320:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BE324:  LDR             R1, [SP,#0x2F0+var_284]; CVector *
5BE326:  MOV             R0, R4; this
5BE328:  MOV             R2, R10; int
5BE32A:  BLX.W           j__ZNK14CCollisionData16GetTrianglePointER7CVectori; CCollisionData::GetTrianglePoint(CVector &,int)
5BE32E:  LDRD.W          R1, R0, [R4,#0x14]
5BE332:  ADDS            R2, R0, R5
5BE334:  LDR             R3, [R4,#0x1C]
5BE336:  ADD             R0, SP, #0x2F0+var_25C
5BE338:  ADD             R3, R8
5BE33A:  BLX.W           j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
5BE33E:  CMP             R0, #1
5BE340:  BNE.W           loc_5BE6BC
5BE344:  LDR             R0, [R4,#0x1C]
5BE346:  MOV             R1, R6
5BE348:  VLD1.32         {D16-D17}, [R6]
5BE34C:  MOVS            R2, #3
5BE34E:  ADD             R0, R8
5BE350:  LDR             R3, [SP,#0x2F0+var_28C]
5BE352:  VLDR            S26, [R0,#8]
5BE356:  VLDR            S24, [R0,#4]
5BE35A:  VMUL.F32        S2, S26, S18
5BE35E:  VLDR            S22, [R0]
5BE362:  VMUL.F32        S1, S24, S18
5BE366:  LDR             R0, [SP,#0x2F0+var_290]
5BE368:  VMUL.F32        S0, S22, S18
5BE36C:  VMOV.F32        S3, S0
5BE370:  VMOV.F32        S4, S1
5BE374:  VMOV.F32        S5, S2
5BE378:  VMOV.F32        S6, S0
5BE37C:  VMOV.F32        S7, S1
5BE380:  VADD.F32        Q8, Q0, Q8
5BE384:  VST1.32         {D16-D17}, [R6]
5BE388:  VLD1.32         {D16-D17}, [R0]
5BE38C:  VADD.F32        Q8, Q1, Q8
5BE390:  VST1.32         {D16-D17}, [R0]
5BE394:  ADD             R0, SP, #0x2F0+var_78
5BE396:  VLDR            S4, [SP,#0x2F0+var_260]
5BE39A:  VADD.F32        S0, S2, S4
5BE39E:  VSTR            S0, [SP,#0x2F0+var_260]
5BE3A2:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5BE3A6:  VLDR            S0, [SP,#0x2F0+var_1A0]
5BE3AA:  VLDR            S2, [SP,#0x2F0+var_1A0+4]
5BE3AE:  VMUL.F32        S0, S22, S0
5BE3B2:  VLDR            S4, [SP,#0x2F0+var_198]
5BE3B6:  VMUL.F32        S2, S24, S2
5BE3BA:  VMUL.F32        S4, S26, S4
5BE3BE:  VADD.F32        S0, S0, S2
5BE3C2:  VADD.F32        S0, S0, S4
5BE3C6:  VCMPE.F32       S0, #0.0
5BE3CA:  VMRS            APSR_nzcv, FPSCR
5BE3CE:  BGT.W           loc_5BE6BC
5BE3D2:  VMUL.F32        S2, S26, S20
5BE3D6:  ADD             R0, SP, #0x2F0+var_78
5BE3D8:  VMUL.F32        S1, S24, S20
5BE3DC:  VLD1.32         {D16-D17}, [R0]
5BE3E0:  VMUL.F32        S0, S22, S20
5BE3E4:  ADD             R1, SP, #0x2F0+var_C4
5BE3E6:  LDR             R0, [SP,#0x2F0+var_29C]
5BE3E8:  MOVS            R2, #3
5BE3EA:  LDR             R3, [SP,#0x2F0+var_294]
5BE3EC:  VMOV.F32        S3, S0
5BE3F0:  VMOV.F32        S4, S1
5BE3F4:  VMOV.F32        S5, S2
5BE3F8:  VMOV.F32        S6, S0
5BE3FC:  VMOV.F32        S7, S1
5BE400:  VADD.F32        Q8, Q0, Q8
5BE404:  VST1.32         {D16-D17}, [R1]
5BE408:  VLD1.32         {D16-D17}, [R0]
5BE40C:  VADD.F32        Q8, Q1, Q8
5BE410:  VLDR            S4, [SP,#0x2F0+var_58]
5BE414:  LDR             R0, [SP,#0x2F0+var_298]
5BE416:  VADD.F32        S0, S2, S4
5BE41A:  VST1.32         {D16-D17}, [R0]
5BE41E:  ADD             R0, SP, #0x2F0+var_A0
5BE420:  VSTR            S0, [SP,#0x2F0+var_A4]
5BE424:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5BE428:  VLDR            S0, [SP,#0x2F0+var_98]
5BE42C:  VCMPE.F32       S0, #0.0
5BE430:  VMRS            APSR_nzcv, FPSCR
5BE434:  ITTT LT
5BE436:  VLDRLT          S0, [SP,#0x2F0+var_8C]
5BE43A:  VCMPELT.F32     S0, #0.0
5BE43E:  VMRSLT          APSR_nzcv, FPSCR
5BE442:  BGE             loc_5BE454
5BE444:  VLDR            S0, [SP,#0x2F0+var_80]
5BE448:  VCMPE.F32       S0, #0.0
5BE44C:  VMRS            APSR_nzcv, FPSCR
5BE450:  BLT.W           loc_5BE6BC
5BE454:  VLDR            S4, [SP,#0x2F0+var_A0]
5BE458:  VLDR            S2, [SP,#0x2F0+var_94]
5BE45C:  VCMPE.F32       S4, #0.0
5BE460:  VLDR            S0, [SP,#0x2F0+var_88]
5BE464:  VMRS            APSR_nzcv, FPSCR
5BE468:  ITT LT
5BE46A:  VCMPELT.F32     S2, #0.0
5BE46E:  VMRSLT          APSR_nzcv, FPSCR
5BE472:  BGE             loc_5BE480
5BE474:  VCMPE.F32       S0, #0.0
5BE478:  VMRS            APSR_nzcv, FPSCR
5BE47C:  BLT.W           loc_5BE6BC
5BE480:  VCMPE.F32       S4, S16
5BE484:  VMRS            APSR_nzcv, FPSCR
5BE488:  ITT GT
5BE48A:  VCMPEGT.F32     S2, S16
5BE48E:  VMRSGT          APSR_nzcv, FPSCR
5BE492:  BLE             loc_5BE4A0
5BE494:  VCMPE.F32       S0, S16
5BE498:  VMRS            APSR_nzcv, FPSCR
5BE49C:  BGT.W           loc_5BE6BC
5BE4A0:  VLDR            S4, [SP,#0x2F0+var_A0+4]
5BE4A4:  VLDR            S2, [SP,#0x2F0+var_90]
5BE4A8:  VCMPE.F32       S4, #0.0
5BE4AC:  VLDR            S0, [SP,#0x2F0+var_84]
5BE4B0:  VMRS            APSR_nzcv, FPSCR
5BE4B4:  ITT LT
5BE4B6:  VCMPELT.F32     S2, #0.0
5BE4BA:  VMRSLT          APSR_nzcv, FPSCR
5BE4BE:  BGE             loc_5BE4CC
5BE4C0:  VCMPE.F32       S0, #0.0
5BE4C4:  VMRS            APSR_nzcv, FPSCR
5BE4C8:  BLT.W           loc_5BE6BC
5BE4CC:  VCMPE.F32       S4, S16
5BE4D0:  VMRS            APSR_nzcv, FPSCR
5BE4D4:  ITT GT
5BE4D6:  VCMPEGT.F32     S2, S16
5BE4DA:  VMRSGT          APSR_nzcv, FPSCR
5BE4DE:  BLE             loc_5BE4EC
5BE4E0:  VCMPE.F32       S0, S16
5BE4E4:  VMRS            APSR_nzcv, FPSCR
5BE4E8:  BGT.W           loc_5BE6BC
5BE4EC:  LDR             R0, [SP,#0x2F0+var_2A0]
5BE4EE:  MOVW            R1, #0xFFD
5BE4F2:  LDR             R0, [R0]; this
5BE4F4:  CMP             R0, R1
5BE4F6:  IT GE
5BE4F8:  BLXGE.W         j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BE4FC:  LDR             R0, [SP,#0x2F0+var_2A4]
5BE4FE:  LDR             R3, [R0]
5BE500:  MOVW            R0, #(elf_hash_bucket+0x701); this
5BE504:  CMP             R3, R0
5BE506:  BLT             loc_5BE510
5BE508:  BLX.W           j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BE50C:  LDR             R0, [SP,#0x2F0+var_2CC]
5BE50E:  LDR             R3, [R0]
5BE510:  LDRD.W          R1, R0, [SP,#0x2F0+var_78]
5BE514:  MOV.W           R12, #3
5BE518:  LDR             R2, [SP,#0x2F0+var_2A8]
5BE51A:  ADD.W           R10, R3, R3,LSL#3
5BE51E:  LDR.W           LR, [SP,#0x2F0+var_70]
5BE522:  STR.W           R12, [R2]
5BE526:  LDR             R2, [SP,#0x2F0+var_2B0]
5BE528:  STR.W           R12, [R2]
5BE52C:  LDR             R2, [SP,#0x2F0+var_2B4]
5BE52E:  LDR             R2, [R2]
5BE530:  STRD.W          R2, R3, [SP,#0x2F0+var_2D8]
5BE534:  LDR             R2, [SP,#0x2F0+var_2AC]
5BE536:  STR.W           R1, [R2,R10,LSL#2]
5BE53A:  ADD.W           R2, R2, R10,LSL#2
5BE53E:  STRD.W          R0, LR, [R2,#4]
5BE542:  LDRD.W          R12, LR, [SP,#0x2F0+var_6C]
5BE546:  LDRD.W          R3, R0, [SP,#0x2F0+var_64]
5BE54A:  LDR.W           R11, [SP,#0x2F0+var_A0]
5BE54E:  STR             R0, [SP,#0x2F0+var_2DC]
5BE550:  LDR             R0, [SP,#0x2F0+var_5C]
5BE552:  STR             R0, [SP,#0x2F0+var_2E0]
5BE554:  LDR             R0, [SP,#0x2F0+var_58]
5BE556:  STR             R0, [SP,#0x2F0+var_2E4]
5BE558:  LDR             R0, [SP,#0x2F0+var_88]
5BE55A:  STR             R0, [SP,#0x2F0+var_2E8]
5BE55C:  LDR             R0, [SP,#0x2F0+var_A0+4]
5BE55E:  LDR             R1, [SP,#0x2F0+var_94]
5BE560:  STRD.W          R11, R0, [R2,#0x1C]
5BE564:  STRD.W          R12, LR, [R2,#0x24]
5BE568:  LDR             R0, [SP,#0x2F0+var_90]
5BE56A:  STR             R3, [R2,#0x2C]
5BE56C:  STRD.W          R1, R0, [R2,#0x40]
5BE570:  LDR             R0, [SP,#0x2F0+var_2DC]
5BE572:  STR             R0, [R2,#0x48]
5BE574:  LDR             R0, [SP,#0x2F0+var_2E0]
5BE576:  STR             R0, [R2,#0x4C]
5BE578:  LDR             R0, [SP,#0x2F0+var_2E4]
5BE57A:  LDR             R1, [SP,#0x2F0+var_2E8]
5BE57C:  LDR.W           R11, [SP,#0x2F0+var_2D8]
5BE580:  STR             R0, [R2,#0x50]
5BE582:  STR             R1, [R2,#0x64]
5BE584:  LDR             R0, [SP,#0x2F0+var_84]
5BE586:  LDR             R1, [SP,#0x2F0+var_2B8]
5BE588:  STR             R0, [R2,#0x68]
5BE58A:  LDR             R0, [SP,#0x2F0+var_150]
5BE58C:  ADD.W           R12, R1, R11,LSL#1
5BE590:  CBZ             R0, loc_5BE5AC
5BE592:  VLDR            S0, [SP,#0x2F0+var_98]
5BE596:  VMUL.F32        S0, S0, S0
5BE59A:  VSUB.F32        S0, S16, S0
5BE59E:  VCMPE.F32       S0, #0.0
5BE5A2:  VMRS            APSR_nzcv, FPSCR
5BE5A6:  BGE             loc_5BE5DC
5BE5A8:  MOVS            R1, #0
5BE5AA:  B               loc_5BE5F4
5BE5AC:  LDRB.W          R0, [SP,#0x2F0+var_154]
5BE5B0:  LDR             R1, [SP,#0x2F0+var_2D0]
5BE5B2:  LDR.W           LR, [SP,#0x2F0+var_2D4]
5BE5B6:  ORR.W           R3, R0, R0,LSL#16
5BE5BA:  ADD.W           R1, R1, R10,LSL#2
5BE5BE:  ORR.W           R3, R3, R0,LSL#24
5BE5C2:  ORR.W           R0, R3, R0,LSL#8
5BE5C6:  STR             R0, [R1,#0x18]
5BE5C8:  STR             R0, [R2,#0x60]
5BE5CA:  STR             R0, [R2,#0x3C]
5BE5CC:  B               loc_5BE68C
5BE5CE:  ALIGN 0x10
5BE5D0:  DCFS 1.15
5BE5D4:  DCFS 0.028
5BE5D8:  DCFS -0.028
5BE5DC:  LDRB.W          R0, [SP,#0x2F0+var_154]
5BE5E0:  VMOV            S2, R0
5BE5E4:  VCVT.F32.U32    S2, S2
5BE5E8:  VMUL.F32        S0, S0, S2
5BE5EC:  VCVT.U32.F32    S0, S0
5BE5F0:  VMOV            R1, S0
5BE5F4:  VLDR            S0, [SP,#0x2F0+var_8C]
5BE5F8:  ORR.W           R3, R1, R1,LSL#16
5BE5FC:  LDR             R0, [SP,#0x2F0+var_2C8]
5BE5FE:  ORR.W           R3, R3, R1,LSL#24
5BE602:  VMUL.F32        S0, S0, S0
5BE606:  LDR.W           LR, [SP,#0x2F0+var_2D4]
5BE60A:  ADD.W           R0, R0, R10,LSL#2
5BE60E:  ORR.W           R1, R3, R1,LSL#8
5BE612:  STR             R1, [R0,#0x18]
5BE614:  VSUB.F32        S0, S16, S0
5BE618:  VCMPE.F32       S0, #0.0
5BE61C:  VMRS            APSR_nzcv, FPSCR
5BE620:  BGE             loc_5BE626
5BE622:  MOVS            R1, #0
5BE624:  B               loc_5BE63E
5BE626:  LDRB.W          R0, [SP,#0x2F0+var_154]
5BE62A:  VMOV            S2, R0
5BE62E:  VCVT.F32.U32    S2, S2
5BE632:  VMUL.F32        S0, S0, S2
5BE636:  VCVT.U32.F32    S0, S0
5BE63A:  VMOV            R1, S0
5BE63E:  VLDR            S0, [SP,#0x2F0+var_80]
5BE642:  ORR.W           R0, R1, R1,LSL#16
5BE646:  ORR.W           R0, R0, R1,LSL#24
5BE64A:  VMUL.F32        S0, S0, S0
5BE64E:  ORR.W           R0, R0, R1,LSL#8
5BE652:  STR             R0, [R2,#0x3C]
5BE654:  VSUB.F32        S0, S16, S0
5BE658:  VCMPE.F32       S0, #0.0
5BE65C:  VMRS            APSR_nzcv, FPSCR
5BE660:  BGE             loc_5BE666
5BE662:  MOVS            R1, #0
5BE664:  B               loc_5BE67E
5BE666:  LDRB.W          R0, [SP,#0x2F0+var_154]
5BE66A:  VMOV            S2, R0
5BE66E:  VCVT.F32.U32    S2, S2
5BE672:  VMUL.F32        S0, S0, S2
5BE676:  VCVT.U32.F32    S0, S0
5BE67A:  VMOV            R1, S0
5BE67E:  ORR.W           R0, R1, R1,LSL#16
5BE682:  ORR.W           R0, R0, R1,LSL#24
5BE686:  ORR.W           R0, R0, R1,LSL#8
5BE68A:  STR             R0, [R2,#0x60]
5BE68C:  MOVS            R0, #:lower16:(elf_hash_chain+0xFE99)
5BE68E:  ADD.W           R1, LR, #1
5BE692:  MOVT            R0, #:upper16:(elf_hash_chain+0xFE99)
5BE696:  STR.W           R0, [R12,#2]
5BE69A:  LDR             R0, [SP,#0x2F0+var_2C0]
5BE69C:  STRH.W          LR, [R0,R11,LSL#1]
5BE6A0:  ADD.W           R0, R0, R11,LSL#1
5BE6A4:  STRH            R1, [R0,#2]
5BE6A6:  ADD.W           R1, LR, #2
5BE6AA:  STRH            R1, [R0,#4]
5BE6AC:  ADD.W           R0, LR, #3
5BE6B0:  LDR             R1, [SP,#0x2F0+var_2C4]
5BE6B2:  STR             R0, [R1]
5BE6B4:  ADD.W           R0, R11, #3
5BE6B8:  LDR             R1, [SP,#0x2F0+var_2BC]
5BE6BA:  STR             R0, [R1]
5BE6BC:  LDRSH.W         R0, [R4,#4]
5BE6C0:  ADD.W           R9, R9, #1
5BE6C4:  ADD.W           R8, R8, #0x14
5BE6C8:  ADDS            R5, #0x10
5BE6CA:  CMP             R9, R0
5BE6CC:  BLT.W           loc_5BE304
5BE6D0:  ADD.W           SP, SP, #0x2A0
5BE6D4:  VPOP            {D8-D13}
5BE6D8:  ADD             SP, SP, #4
5BE6DA:  POP.W           {R8-R11}
5BE6DE:  POP             {R4-R7,PC}
