; =========================================================
; Game Engine Function: _Z20RpUVAnimKeyFrameInitPK15RtAnimAnimationP16RpUVAnimKeyFrameS3_fPK11RwMatrixTag
; Address            : 0x1CAFE0 - 0x1CB030
; =========================================================

1CAFE0:  PUSH            {R4-R7,LR}
1CAFE2:  ADD             R7, SP, #0xC
1CAFE4:  PUSH.W          {R11}
1CAFE8:  MOV             R6, R0
1CAFEA:  LDR             R0, =(_rpUVAnimLinearInterpolatorInfo_ptr - 0x1CAFF4)
1CAFEC:  MOV             R4, R1
1CAFEE:  LDR             R5, [R7,#arg_0]
1CAFF0:  ADD             R0, PC; _rpUVAnimLinearInterpolatorInfo_ptr
1CAFF2:  STRD.W          R2, R3, [R4]
1CAFF6:  LDR             R1, [R6]
1CAFF8:  LDR             R2, [R0]; _rpUVAnimLinearInterpolatorInfo
1CAFFA:  LDR             R0, [R1]
1CAFFC:  LDR             R1, [R2]
1CAFFE:  CMP             R0, R1
1CB000:  BNE             loc_1CB012
1CB002:  ADD.W           R0, R4, #8
1CB006:  MOV             R1, R5
1CB008:  BLX             j__Z40RpUVAnimLinearKeyFrameDataInitFromMatrixP26RpUVAnimLinearKeyFrameDataPK11RwMatrixTag; RpUVAnimLinearKeyFrameDataInitFromMatrix(RpUVAnimLinearKeyFrameData *,RwMatrixTag const*)
1CB00C:  CBNZ            R0, loc_1CB028
1CB00E:  LDR             R0, [R6]
1CB010:  LDR             R0, [R0]
1CB012:  LDR             R1, =(_rpUVAnimParamInterpolatorInfo_ptr - 0x1CB018)
1CB014:  ADD             R1, PC; _rpUVAnimParamInterpolatorInfo_ptr
1CB016:  LDR             R1, [R1]; _rpUVAnimParamInterpolatorInfo
1CB018:  LDR             R1, [R1]
1CB01A:  CMP             R0, R1
1CB01C:  BNE             loc_1CB028
1CB01E:  ADD.W           R0, R4, #8
1CB022:  MOV             R1, R5
1CB024:  BLX             j__Z39RpUVAnimParamKeyFrameDataInitFromMatrixP25RpUVAnimParamKeyFrameDataPK11RwMatrixTag; RpUVAnimParamKeyFrameDataInitFromMatrix(RpUVAnimParamKeyFrameData *,RwMatrixTag const*)
1CB028:  MOVS            R0, #0
1CB02A:  POP.W           {R11}
1CB02E:  POP             {R4-R7,PC}
