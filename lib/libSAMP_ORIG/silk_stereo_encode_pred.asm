; =========================================================
; Game Engine Function: silk_stereo_encode_pred
; Address            : 0xCACAC - 0xCAD22
; =========================================================

CACAC:  PUSH            {R4-R7,LR}
CACAE:  ADD             R7, SP, #0xC
CACB0:  PUSH.W          {R8}
CACB4:  MOV             R5, R1
CACB6:  MOV             R4, R0
CACB8:  LDR             R0, =(silk_stereo_pred_joint_iCDF_ptr - 0xCACC2)
CACBA:  LDRSB.W         R1, [R5,#2]
CACBE:  ADD             R0, PC; silk_stereo_pred_joint_iCDF_ptr
CACC0:  LDRSB.W         R3, [R5,#5]
CACC4:  LDR             R2, [R0]; silk_stereo_pred_joint_iCDF
CACC6:  ADD.W           R0, R1, R1,LSL#2
CACCA:  ADDS            R1, R0, R3
CACCC:  MOV             R0, R4
CACCE:  MOVS            R3, #8
CACD0:  BLX             j_ec_enc_icdf
CACD4:  LDR             R0, =(silk_uniform3_iCDF_ptr - 0xCACE0)
CACD6:  MOVS            R3, #8
CACD8:  LDRSB.W         R1, [R5]
CACDC:  ADD             R0, PC; silk_uniform3_iCDF_ptr
CACDE:  LDR.W           R8, [R0]; silk_uniform3_iCDF
CACE2:  MOV             R0, R4
CACE4:  MOV             R2, R8
CACE6:  BLX             j_ec_enc_icdf
CACEA:  LDR             R0, =(silk_uniform5_iCDF_ptr - 0xCACF6)
CACEC:  MOVS            R3, #8
CACEE:  LDRSB.W         R1, [R5,#1]
CACF2:  ADD             R0, PC; silk_uniform5_iCDF_ptr
CACF4:  LDR             R6, [R0]; silk_uniform5_iCDF
CACF6:  MOV             R0, R4
CACF8:  MOV             R2, R6
CACFA:  BLX             j_ec_enc_icdf
CACFE:  LDRSB.W         R1, [R5,#3]
CAD02:  MOV             R0, R4
CAD04:  MOV             R2, R8
CAD06:  MOVS            R3, #8
CAD08:  BLX             j_ec_enc_icdf
CAD0C:  LDRSB.W         R1, [R5,#4]
CAD10:  MOV             R0, R4
CAD12:  MOV             R2, R6
CAD14:  MOVS            R3, #8
CAD16:  POP.W           {R8}
CAD1A:  POP.W           {R4-R7,LR}
CAD1E:  B.W             sub_10C1D0
