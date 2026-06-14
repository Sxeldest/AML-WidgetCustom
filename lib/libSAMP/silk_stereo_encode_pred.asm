; =========================================================
; Game Engine Function: silk_stereo_encode_pred
; Address            : 0x1A8A6C - 0x1A8AE2
; =========================================================

1A8A6C:  PUSH            {R4-R7,LR}
1A8A6E:  ADD             R7, SP, #0xC
1A8A70:  PUSH.W          {R8}
1A8A74:  MOV             R5, R1
1A8A76:  MOV             R4, R0
1A8A78:  LDR             R0, =(silk_stereo_pred_joint_iCDF_ptr - 0x1A8A82)
1A8A7A:  LDRSB.W         R1, [R5,#2]
1A8A7E:  ADD             R0, PC; silk_stereo_pred_joint_iCDF_ptr
1A8A80:  LDRSB.W         R3, [R5,#5]
1A8A84:  LDR             R2, [R0]; silk_stereo_pred_joint_iCDF
1A8A86:  ADD.W           R0, R1, R1,LSL#2
1A8A8A:  ADDS            R1, R0, R3
1A8A8C:  MOV             R0, R4
1A8A8E:  MOVS            R3, #8
1A8A90:  BLX             j_ec_enc_icdf
1A8A94:  LDR             R0, =(silk_uniform3_iCDF_ptr - 0x1A8AA0)
1A8A96:  MOVS            R3, #8
1A8A98:  LDRSB.W         R1, [R5]
1A8A9C:  ADD             R0, PC; silk_uniform3_iCDF_ptr
1A8A9E:  LDR.W           R8, [R0]; silk_uniform3_iCDF
1A8AA2:  MOV             R0, R4
1A8AA4:  MOV             R2, R8
1A8AA6:  BLX             j_ec_enc_icdf
1A8AAA:  LDR             R0, =(silk_uniform5_iCDF_ptr - 0x1A8AB6)
1A8AAC:  MOVS            R3, #8
1A8AAE:  LDRSB.W         R1, [R5,#1]
1A8AB2:  ADD             R0, PC; silk_uniform5_iCDF_ptr
1A8AB4:  LDR             R6, [R0]; silk_uniform5_iCDF
1A8AB6:  MOV             R0, R4
1A8AB8:  MOV             R2, R6
1A8ABA:  BLX             j_ec_enc_icdf
1A8ABE:  LDRSB.W         R1, [R5,#3]
1A8AC2:  MOV             R0, R4
1A8AC4:  MOV             R2, R8
1A8AC6:  MOVS            R3, #8
1A8AC8:  BLX             j_ec_enc_icdf
1A8ACC:  LDRSB.W         R1, [R5,#4]
1A8AD0:  MOV             R0, R4
1A8AD2:  MOV             R2, R6
1A8AD4:  MOVS            R3, #8
1A8AD6:  POP.W           {R8}
1A8ADA:  POP.W           {R4-R7,LR}
1A8ADE:  B.W             sub_224400
