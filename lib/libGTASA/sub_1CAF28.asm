; =========================================================
; Game Engine Function: sub_1CAF28
; Address            : 0x1CAF28 - 0x1CAFD4
; =========================================================

1CAF28:  PUSH            {R4-R7,LR}
1CAF2A:  ADD             R7, SP, #0xC
1CAF2C:  PUSH.W          {R8}
1CAF30:  SUB             SP, SP, #0x48
1CAF32:  MOV             R8, R0
1CAF34:  LDR             R0, =(_rpUVAnimLinearInterpolatorInfo_ptr - 0x1CAF3E)
1CAF36:  MOVS            R1, #2; int
1CAF38:  MOVS            R2, #0; int
1CAF3A:  ADD             R0, PC; _rpUVAnimLinearInterpolatorInfo_ptr
1CAF3C:  MOV.W           R3, #0x3F800000; float
1CAF40:  MOVS            R5, #0
1CAF42:  LDR             R0, [R0]; _rpUVAnimLinearInterpolatorInfo
1CAF44:  LDR             R0, [R0]; int
1CAF46:  BLX             j__Z21RtAnimAnimationCreateiiif; RtAnimAnimationCreate(int,int,int,float)
1CAF4A:  MOV             R4, R0
1CAF4C:  CBZ             R4, loc_1CAFCA
1CAF4E:  LDR             R0, =(RwEngineInstance_ptr - 0x1CAF56)
1CAF50:  LDR             R1, =(dword_6B8AE8 - 0x1CAF58)
1CAF52:  ADD             R0, PC; RwEngineInstance_ptr
1CAF54:  ADD             R1, PC; dword_6B8AE8
1CAF56:  LDR             R0, [R0]; RwEngineInstance
1CAF58:  LDR             R2, [R0]
1CAF5A:  LDR             R0, [R1]
1CAF5C:  LDR.W           R1, [R2,#0x13C]
1CAF60:  BLX             R1
1CAF62:  MOV             R6, R0
1CAF64:  MOVS            R5, #0
1CAF66:  CBZ             R6, loc_1CAFCA
1CAF68:  MOV             R0, R6; char *
1CAF6A:  MOV             R1, R8; char *
1CAF6C:  MOVS            R2, #0x20 ; ' '; size_t
1CAF6E:  BLX             strncpy
1CAF72:  MOVS            R0, #1
1CAF74:  STRB            R5, [R6,#0x1F]
1CAF76:  STR             R5, [R6,#0x20]
1CAF78:  MOVS            R2, #0
1CAF7A:  STR             R0, [R6,#0x40]
1CAF7C:  MOVS            R3, #0
1CAF7E:  LDR             R0, [R4]
1CAF80:  LDR.W           R8, [R4,#0x10]
1CAF84:  STR             R6, [R4,#0x14]
1CAF86:  LDR             R6, [R0,#8]
1CAF88:  MOV.W           R0, #0x3F800000
1CAF8C:  STR             R0, [SP,#0x58+var_28]
1CAF8E:  MOV             R1, R8
1CAF90:  STRD.W          R5, R0, [SP,#0x58+var_40]
1CAF94:  STR             R5, [SP,#0x58+var_48]
1CAF96:  STRD.W          R0, R5, [SP,#0x58+var_50]
1CAF9A:  MOV.W           R0, #0xFFFFFFFF
1CAF9E:  STR             R5, [SP,#0x58+var_38]
1CAFA0:  STRD.W          R5, R5, [SP,#0x58+var_30]
1CAFA4:  STRD.W          R5, R5, [SP,#0x58+var_1C]
1CAFA8:  STR             R0, [SP,#0x58+var_44]
1CAFAA:  MOV             R0, R4
1CAFAC:  STR             R5, [SP,#0x58+var_20]
1CAFAE:  ADD             R5, SP, #0x58+var_50
1CAFB0:  STR             R5, [SP,#0x58+var_58]
1CAFB2:  BLX             j__Z20RpUVAnimKeyFrameInitPK15RtAnimAnimationP16RpUVAnimKeyFrameS3_fPK11RwMatrixTag; RpUVAnimKeyFrameInit(RtAnimAnimation const*,RpUVAnimKeyFrame *,RpUVAnimKeyFrame *,float,RwMatrixTag const*)
1CAFB6:  ADD.W           R1, R8, R6
1CAFBA:  MOV             R0, R4
1CAFBC:  MOV             R2, R8
1CAFBE:  MOV.W           R3, #0x3F800000
1CAFC2:  STR             R5, [SP,#0x58+var_58]
1CAFC4:  BLX             j__Z20RpUVAnimKeyFrameInitPK15RtAnimAnimationP16RpUVAnimKeyFrameS3_fPK11RwMatrixTag; RpUVAnimKeyFrameInit(RtAnimAnimation const*,RpUVAnimKeyFrame *,RpUVAnimKeyFrame *,float,RwMatrixTag const*)
1CAFC8:  MOV             R5, R4
1CAFCA:  MOV             R0, R5
1CAFCC:  ADD             SP, SP, #0x48 ; 'H'
1CAFCE:  POP.W           {R8}
1CAFD2:  POP             {R4-R7,PC}
