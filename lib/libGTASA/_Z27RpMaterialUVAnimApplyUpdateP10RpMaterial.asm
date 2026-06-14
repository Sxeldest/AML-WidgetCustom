; =========================================================
; Game Engine Function: _Z27RpMaterialUVAnimApplyUpdateP10RpMaterial
; Address            : 0x1CAA0C - 0x1CABEA
; =========================================================

1CAA0C:  PUSH            {R4-R7,LR}
1CAA0E:  ADD             R7, SP, #0xC
1CAA10:  PUSH.W          {R8-R11}
1CAA14:  SUB             SP, SP, #4
1CAA16:  VPUSH           {D8-D9}
1CAA1A:  SUB             SP, SP, #0x70
1CAA1C:  LDR             R1, =(RpUVAnimMaterialGlobals_ptr - 0x1CAA24)
1CAA1E:  STR             R0, [SP,#0xA0+var_A0]
1CAA20:  ADD             R1, PC; RpUVAnimMaterialGlobals_ptr
1CAA22:  LDR             R1, [R1]; RpUVAnimMaterialGlobals
1CAA24:  LDR             R1, [R1]
1CAA26:  ADDS            R2, R0, R1
1CAA28:  STR             R2, [SP,#0xA0+var_84]
1CAA2A:  LDR             R1, [R0,R1]
1CAA2C:  MOVS            R0, #0x20003
1CAA32:  CBZ             R1, loc_1CAA5A
1CAA34:  MOV.W           R2, #0x3F800000
1CAA38:  MOVS            R6, #0
1CAA3A:  STR             R2, [R1,#0x14]
1CAA3C:  LDR             R3, [R1,#0xC]
1CAA3E:  STR             R6, [R1,#0x10]
1CAA40:  STR             R6, [R1,#8]
1CAA42:  STRD.W          R2, R6, [R1]
1CAA46:  STR             R6, [R1,#0x18]
1CAA48:  STRD.W          R6, R6, [R1,#0x20]
1CAA4C:  STR             R2, [R1,#0x28]
1CAA4E:  ORR.W           R2, R3, R0
1CAA52:  STRD.W          R6, R6, [R1,#0x30]
1CAA56:  STR             R6, [R1,#0x38]
1CAA58:  STR             R2, [R1,#0xC]
1CAA5A:  LDR             R1, [SP,#0xA0+var_84]
1CAA5C:  LDR             R1, [R1,#4]
1CAA5E:  CBZ             R1, loc_1CAA84
1CAA60:  MOV.W           R2, #0x3F800000
1CAA64:  MOVS            R6, #0
1CAA66:  STR             R2, [R1,#0x14]
1CAA68:  LDR             R3, [R1,#0xC]
1CAA6A:  STR             R6, [R1,#0x10]
1CAA6C:  STR             R6, [R1,#8]
1CAA6E:  ORRS            R0, R3
1CAA70:  STRD.W          R2, R6, [R1]
1CAA74:  STR             R6, [R1,#0x18]
1CAA76:  STRD.W          R6, R6, [R1,#0x20]
1CAA7A:  STR             R2, [R1,#0x28]
1CAA7C:  STRD.W          R6, R6, [R1,#0x30]
1CAA80:  STR             R6, [R1,#0x38]
1CAA82:  STR             R0, [R1,#0xC]
1CAA84:  LDR             R0, [SP,#0xA0+var_84]
1CAA86:  ADD             R2, SP, #0xA0+var_70
1CAA88:  VLDR            S16, =3.1416
1CAA8C:  MOV.W           R11, #0
1CAA90:  ADDS            R0, #8
1CAA92:  STR             R0, [SP,#0xA0+var_94]
1CAA94:  LDR             R0, =(_Z27RpUVAnimLinearKeyFrameApplyPvS__ptr - 0x1CAA9E)
1CAA96:  VLDR            S18, =180.0
1CAA9A:  ADD             R0, PC; _Z27RpUVAnimLinearKeyFrameApplyPvS__ptr
1CAA9C:  LDR             R0, [R0]; RpUVAnimLinearKeyFrameApply(void *,void *)
1CAA9E:  STR             R0, [SP,#0xA0+var_8C]
1CAAA0:  LDR             R0, =(_Z26RpUVAnimParamKeyFrameApplyPvS__ptr - 0x1CAAA6)
1CAAA2:  ADD             R0, PC; _Z26RpUVAnimParamKeyFrameApplyPvS__ptr
1CAAA4:  LDR             R0, [R0]; RpUVAnimParamKeyFrameApply(void *,void *)
1CAAA6:  STR             R0, [SP,#0xA0+var_90]
1CAAA8:  LDR             R0, =(rpUVAnimPivot_ptr - 0x1CAAAE)
1CAAAA:  ADD             R0, PC; rpUVAnimPivot_ptr
1CAAAC:  LDR             R0, [R0]; rpUVAnimPivot
1CAAAE:  STR             R0, [SP,#0xA0+var_98]
1CAAB0:  LDR             R0, =(rpUVAnimInvPivot_ptr - 0x1CAAB6)
1CAAB2:  ADD             R0, PC; rpUVAnimInvPivot_ptr
1CAAB4:  LDR             R0, [R0]; rpUVAnimInvPivot
1CAAB6:  STR             R0, [SP,#0xA0+var_9C]
1CAAB8:  LDR             R0, [SP,#0xA0+var_94]
1CAABA:  LDR.W           R9, [R0,R11,LSL#2]
1CAABE:  CMP.W           R9, #0
1CAAC2:  BEQ             loc_1CABC0
1CAAC4:  LDR.W           R0, [R9,#0x2C]
1CAAC8:  CMP             R0, #1
1CAACA:  BLT             loc_1CABC0
1CAACC:  LDR.W           R1, [R9]
1CAAD0:  ADD.W           R6, R9, #0x4C ; 'L'
1CAAD4:  LDR.W           R3, [R9,#0x24]
1CAAD8:  MOV.W           R10, #0
1CAADC:  STR             R3, [SP,#0xA0+var_88]
1CAADE:  LDR             R1, [R1,#0x14]
1CAAE0:  LDR.W           R8, [R9,#0x3C]
1CAAE4:  ADD.W           R5, R1, #0x20 ; ' '
1CAAE8:  LDR.W           R1, [R5,R10,LSL#2]
1CAAEC:  CMP             R1, #1
1CAAEE:  BHI             loc_1CABB8
1CAAF0:  LDR             R0, [SP,#0xA0+var_84]
1CAAF2:  LDR.W           R4, [R0,R1,LSL#2]
1CAAF6:  CMP             R4, #0
1CAAF8:  BEQ             loc_1CABB4
1CAAFA:  LDR             R0, [SP,#0xA0+var_8C]
1CAAFC:  CMP             R8, R0
1CAAFE:  BEQ             loc_1CAB0E
1CAB00:  LDR             R0, [SP,#0xA0+var_90]
1CAB02:  CMP             R8, R0
1CAB04:  BEQ             loc_1CAB3C
1CAB06:  MOV             R0, R2
1CAB08:  MOV             R1, R6
1CAB0A:  BLX             R8
1CAB0C:  B               loc_1CABA4
1CAB0E:  LDR             R0, [R6,#8]
1CAB10:  MOVS            R1, #0
1CAB12:  STR             R0, [SP,#0xA0+var_70]
1CAB14:  LDR             R0, [R6,#0xC]
1CAB16:  STRD.W          R0, R1, [SP,#0xA0+var_6C]
1CAB1A:  LDR             R0, [R6,#0x10]
1CAB1C:  STR             R0, [SP,#0xA0+var_60]
1CAB1E:  LDR             R0, [R6,#0x14]
1CAB20:  STRD.W          R0, R1, [SP,#0xA0+var_5C]
1CAB24:  STRD.W          R1, R1, [SP,#0xA0+var_50]
1CAB28:  STR             R1, [SP,#0xA0+var_48]
1CAB2A:  LDR             R0, [R6,#0x18]
1CAB2C:  STR             R0, [SP,#0xA0+var_40]
1CAB2E:  LDR             R0, [R6,#0x1C]
1CAB30:  STRD.W          R0, R1, [SP,#0xA0+var_3C]
1CAB34:  MOV             R0, R2
1CAB36:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
1CAB3A:  B               loc_1CABA4
1CAB3C:  LDR             R0, =(unk_5EA788 - 0x1CAB44)
1CAB3E:  MOVS            R1, #0
1CAB40:  ADD             R0, PC; unk_5EA788
1CAB42:  VLDR            D16, [R0]
1CAB46:  LDR             R0, [R0,#(dword_5EA790 - 0x5EA788)]
1CAB48:  STR             R0, [SP,#0xA0+var_78]
1CAB4A:  VSTR            D16, [SP,#0xA0+var_80]
1CAB4E:  LDR             R0, [R6,#0xC]
1CAB50:  STR             R0, [SP,#0xA0+var_70]
1CAB52:  LDR             R0, [R6,#0x14]
1CAB54:  STRD.W          R0, R1, [SP,#0xA0+var_6C]
1CAB58:  STR             R1, [SP,#0xA0+var_60]
1CAB5A:  LDR             R0, [R6,#0x10]
1CAB5C:  STRD.W          R0, R1, [SP,#0xA0+var_5C]
1CAB60:  STRD.W          R1, R1, [SP,#0xA0+var_50]
1CAB64:  STR             R1, [SP,#0xA0+var_48]
1CAB66:  LDR             R0, [R6,#0x18]
1CAB68:  STR             R0, [SP,#0xA0+var_40]
1CAB6A:  LDR             R0, [R6,#0x1C]
1CAB6C:  STRD.W          R0, R1, [SP,#0xA0+var_3C]
1CAB70:  MOV             R0, R2
1CAB72:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
1CAB76:  LDR             R1, [SP,#0xA0+var_98]
1CAB78:  ADD             R0, SP, #0xA0+var_70
1CAB7A:  MOVS            R2, #2
1CAB7C:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
1CAB80:  VLDR            S0, [R6,#8]
1CAB84:  ADD             R0, SP, #0xA0+var_70
1CAB86:  ADD             R1, SP, #0xA0+var_80
1CAB88:  MOVS            R3, #2
1CAB8A:  VDIV.F32        S0, S0, S16
1CAB8E:  VMUL.F32        S0, S0, S18
1CAB92:  VMOV            R2, S0
1CAB96:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
1CAB9A:  LDR             R1, [SP,#0xA0+var_9C]
1CAB9C:  ADD             R0, SP, #0xA0+var_70
1CAB9E:  MOVS            R2, #2
1CABA0:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
1CABA4:  ADD             R1, SP, #0xA0+var_70
1CABA6:  MOV             R0, R4
1CABA8:  MOVS            R2, #1
1CABAA:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
1CABAE:  LDR             R0, [SP,#0xA0+var_88]
1CABB0:  ADD             R2, SP, #0xA0+var_70
1CABB2:  ADD             R6, R0
1CABB4:  LDR.W           R0, [R9,#0x2C]
1CABB8:  ADD.W           R10, R10, #1
1CABBC:  CMP             R10, R0
1CABBE:  BLT             loc_1CAAE8
1CABC0:  ADD.W           R11, R11, #1
1CABC4:  CMP.W           R11, #8
1CABC8:  BNE.W           loc_1CAAB8
1CABCC:  LDR             R0, [SP,#0xA0+var_84]
1CABCE:  LDRD.W          R1, R2, [R0]
1CABD2:  LDR             R4, [SP,#0xA0+var_A0]
1CABD4:  MOV             R0, R4
1CABD6:  BLX             j__Z37RpMatFXMaterialSetUVTransformMatricesP10RpMaterialP11RwMatrixTagS2_; RpMatFXMaterialSetUVTransformMatrices(RpMaterial *,RwMatrixTag *,RwMatrixTag *)
1CABDA:  MOV             R0, R4
1CABDC:  ADD             SP, SP, #0x70 ; 'p'
1CABDE:  VPOP            {D8-D9}
1CABE2:  ADD             SP, SP, #4
1CABE4:  POP.W           {R8-R11}
1CABE8:  POP             {R4-R7,PC}
