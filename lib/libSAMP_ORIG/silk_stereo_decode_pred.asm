; =========================================================
; Game Engine Function: silk_stereo_decode_pred
; Address            : 0xB5E20 - 0xB5F0A
; =========================================================

B5E20:  PUSH            {R4-R7,LR}
B5E22:  ADD             R7, SP, #0xC
B5E24:  PUSH.W          {R8-R11}
B5E28:  SUB             SP, SP, #0xC
B5E2A:  MOV             R5, R0
B5E2C:  LDR             R0, =(silk_stereo_pred_joint_iCDF_ptr - 0xB5E36)
B5E2E:  STR             R1, [SP,#0x28+var_20]
B5E30:  MOVS            R2, #8
B5E32:  ADD             R0, PC; silk_stereo_pred_joint_iCDF_ptr
B5E34:  LDR             R1, [R0]; silk_stereo_pred_joint_iCDF
B5E36:  MOV             R0, R5
B5E38:  BLX             j_ec_dec_icdf
B5E3C:  MOVW            R2, #0x6667
B5E40:  LDR             R1, =(silk_uniform5_iCDF_ptr - 0xB5E50)
B5E42:  MOVT            R2, #0x6666
B5E46:  LDR             R3, =(silk_uniform3_iCDF_ptr - 0xB5E52)
B5E48:  SMMUL.W         R2, R0, R2
B5E4C:  ADD             R1, PC; silk_uniform5_iCDF_ptr
B5E4E:  ADD             R3, PC; silk_uniform3_iCDF_ptr
B5E50:  LDR.W           R11, [R1]; silk_uniform5_iCDF
B5E54:  LDR             R4, [R3]; silk_uniform3_iCDF
B5E56:  ASRS            R1, R2, #1
B5E58:  ADD.W           R6, R1, R2,LSR#31
B5E5C:  MOVS            R2, #8
B5E5E:  ADD.W           R1, R6, R6,LSL#2
B5E62:  NEGS            R1, R1
B5E64:  ADD             R0, R1
B5E66:  MOV             R1, R4
B5E68:  ADD.W           R8, R0, R0,LSL#1
B5E6C:  MOV             R0, R5
B5E6E:  BLX             j_ec_dec_icdf
B5E72:  MOV             R10, R0
B5E74:  MOV             R0, R5
B5E76:  MOV             R1, R11
B5E78:  MOVS            R2, #8
B5E7A:  BLX             j_ec_dec_icdf
B5E7E:  STR             R0, [SP,#0x28+var_24]
B5E80:  MOV             R0, R5
B5E82:  MOV             R1, R4
B5E84:  MOVS            R2, #8
B5E86:  BLX             j_ec_dec_icdf
B5E8A:  LDR             R1, =(silk_stereo_pred_quant_Q13_ptr - 0xB5E98)
B5E8C:  ADD             R0, R8
B5E8E:  MOVW            R12, #0x199A
B5E92:  MOVS            R3, #0
B5E94:  ADD             R1, PC; silk_stereo_pred_quant_Q13_ptr
B5E96:  MOVT            R3, #0x199A
B5E9A:  LDR             R1, [R1]; silk_stereo_pred_quant_Q13
B5E9C:  LDRSH.W         R9, [R1,R0,LSL#1]
B5EA0:  ADD.W           R0, R1, R0,LSL#1
B5EA4:  LDRSH.W         R0, [R0,#2]
B5EA8:  SUB.W           R0, R0, R9
B5EAC:  UXTH            R2, R0
B5EAE:  ASRS            R0, R0, #0x10
B5EB0:  MUL.W           R2, R2, R12
B5EB4:  MLA.W           R8, R0, R3, R2
B5EB8:  ADD.W           R0, R6, R6,LSL#1
B5EBC:  ADD             R0, R10
B5EBE:  MOVS            R2, #8
B5EC0:  LDRSH.W         R6, [R1,R0,LSL#1]
B5EC4:  ADD.W           R0, R1, R0,LSL#1
B5EC8:  LDRSH.W         R0, [R0,#2]
B5ECC:  SUBS            R0, R0, R6
B5ECE:  UXTH            R1, R0
B5ED0:  ASRS            R0, R0, #0x10
B5ED2:  MUL.W           R1, R1, R12
B5ED6:  MLA.W           R4, R0, R3, R1
B5EDA:  MOV             R0, R5
B5EDC:  MOV             R1, R11
B5EDE:  BLX             j_ec_dec_icdf
B5EE2:  LDR             R1, [SP,#0x28+var_24]
B5EE4:  LSLS            R0, R0, #0x11
B5EE6:  MOVS            R2, #1
B5EE8:  ORR.W           R0, R2, R0,ASR#16
B5EEC:  LSLS            R1, R1, #0x11
B5EEE:  SMLABT.W        R0, R0, R8, R9
B5EF2:  ORR.W           R1, R2, R1,ASR#16
B5EF6:  LDR             R2, [SP,#0x28+var_20]
B5EF8:  SMLABT.W        R1, R1, R4, R6
B5EFC:  SUBS            R1, R1, R0
B5EFE:  STRD.W          R1, R0, [R2]
B5F02:  ADD             SP, SP, #0xC
B5F04:  POP.W           {R8-R11}
B5F08:  POP             {R4-R7,PC}
