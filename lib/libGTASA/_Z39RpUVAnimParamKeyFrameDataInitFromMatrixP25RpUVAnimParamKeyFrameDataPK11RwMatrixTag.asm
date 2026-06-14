; =========================================================
; Game Engine Function: _Z39RpUVAnimParamKeyFrameDataInitFromMatrixP25RpUVAnimParamKeyFrameDataPK11RwMatrixTag
; Address            : 0x1CA204 - 0x1CA2B6
; =========================================================

1CA204:  PUSH            {R4,R5,R7,LR}
1CA206:  ADD             R7, SP, #8
1CA208:  SUB             SP, SP, #0x50
1CA20A:  MOV             R4, R0
1CA20C:  MOV             R0, R1
1CA20E:  ADD.W           R2, R1, #0x20 ; ' '
1CA212:  ADDS            R1, #0x30 ; '0'
1CA214:  ADD             R5, SP, #0x58+x
1CA216:  VLD1.32         {D22-D23}, [R1]
1CA21A:  ADD.W           R1, R5, #0x30 ; '0'
1CA21E:  VLD1.32         {D16-D17}, [R0]!
1CA222:  VLD1.32         {D18-D19}, [R0]
1CA226:  VLD1.32         {D20-D21}, [R2]
1CA22A:  VST1.64         {D22-D23}, [R1]
1CA22E:  ADD.W           R1, R5, #0x20 ; ' '
1CA232:  LDR             R0, =(unk_5EA760 - 0x1CA23E)
1CA234:  VST1.64         {D20-D21}, [R1]
1CA238:  MOV             R1, R5
1CA23A:  ADD             R0, PC; unk_5EA760
1CA23C:  VST1.64         {D16-D17}, [R1]!
1CA240:  VST1.64         {D18-D19}, [R1]
1CA244:  VLDR            D16, [R0]
1CA248:  LDR             R2, [R1]
1CA24A:  LDR             R0, [R0,#(dword_5EA768 - 0x5EA760)]
1CA24C:  LDR             R1, [SP,#0x58+x]; x
1CA24E:  VSTR            D16, [SP,#0x58+var_58]
1CA252:  STR             R0, [SP,#0x58+var_50]
1CA254:  EOR.W           R0, R2, #0x80000000; y
1CA258:  BLX             atan2f
1CA25C:  LDR             R1, =(rpUVAnimPivot_ptr - 0x1CA268)
1CA25E:  MOVS            R2, #2
1CA260:  STR             R0, [R4]
1CA262:  MOV             R0, R5
1CA264:  ADD             R1, PC; rpUVAnimPivot_ptr
1CA266:  LDR             R1, [R1]; rpUVAnimPivot
1CA268:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
1CA26C:  VLDR            S0, =3.1416
1CA270:  MOV             R1, SP
1CA272:  VLDR            S2, [R4]
1CA276:  MOV             R0, R5
1CA278:  MOVS            R3, #2
1CA27A:  VDIV.F32        S0, S2, S0
1CA27E:  VLDR            S2, =-180.0
1CA282:  VMUL.F32        S0, S0, S2
1CA286:  VMOV            R2, S0
1CA28A:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
1CA28E:  LDR             R0, =(rpUVAnimInvPivot_ptr - 0x1CA296)
1CA290:  MOVS            R2, #2
1CA292:  ADD             R0, PC; rpUVAnimInvPivot_ptr
1CA294:  LDR             R1, [R0]; rpUVAnimInvPivot
1CA296:  MOV             R0, R5
1CA298:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
1CA29C:  LDRD.W          R0, R1, [SP,#0x58+x]
1CA2A0:  LDR             R2, [SP,#0x58+var_34]
1CA2A2:  LDRD.W          R3, R5, [SP,#0x58+var_18]
1CA2A6:  STRD.W          R0, R2, [R4,#4]
1CA2AA:  ADD.W           R0, R4, #0xC
1CA2AE:  STM             R0!, {R1,R3,R5}
1CA2B0:  MOV             R0, R4
1CA2B2:  ADD             SP, SP, #0x50 ; 'P'
1CA2B4:  POP             {R4,R5,R7,PC}
