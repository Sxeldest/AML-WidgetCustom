; =========================================================
; Game Engine Function: silk_stereo_decode_pred
; Address            : 0x194044 - 0x19412E
; =========================================================

194044:  PUSH            {R4-R7,LR}
194046:  ADD             R7, SP, #0xC
194048:  PUSH.W          {R8-R11}
19404C:  SUB             SP, SP, #0xC
19404E:  MOV             R5, R0
194050:  LDR             R0, =(silk_stereo_pred_joint_iCDF_ptr - 0x19405A)
194052:  STR             R1, [SP,#0x28+var_20]
194054:  MOVS            R2, #8
194056:  ADD             R0, PC; silk_stereo_pred_joint_iCDF_ptr
194058:  LDR             R1, [R0]; silk_stereo_pred_joint_iCDF
19405A:  MOV             R0, R5
19405C:  BLX             j_ec_dec_icdf
194060:  MOVW            R2, #0x6667
194064:  LDR             R1, =(silk_uniform5_iCDF_ptr - 0x194074)
194066:  MOVT            R2, #0x6666
19406A:  LDR             R3, =(silk_uniform3_iCDF_ptr - 0x194076)
19406C:  SMMUL.W         R2, R0, R2
194070:  ADD             R1, PC; silk_uniform5_iCDF_ptr
194072:  ADD             R3, PC; silk_uniform3_iCDF_ptr
194074:  LDR.W           R11, [R1]; silk_uniform5_iCDF
194078:  LDR             R4, [R3]; silk_uniform3_iCDF
19407A:  ASRS            R1, R2, #1
19407C:  ADD.W           R6, R1, R2,LSR#31
194080:  MOVS            R2, #8
194082:  ADD.W           R1, R6, R6,LSL#2
194086:  NEGS            R1, R1
194088:  ADD             R0, R1
19408A:  MOV             R1, R4
19408C:  ADD.W           R8, R0, R0,LSL#1
194090:  MOV             R0, R5
194092:  BLX             j_ec_dec_icdf
194096:  MOV             R10, R0
194098:  MOV             R0, R5
19409A:  MOV             R1, R11
19409C:  MOVS            R2, #8
19409E:  BLX             j_ec_dec_icdf
1940A2:  STR             R0, [SP,#0x28+var_24]
1940A4:  MOV             R0, R5
1940A6:  MOV             R1, R4
1940A8:  MOVS            R2, #8
1940AA:  BLX             j_ec_dec_icdf
1940AE:  LDR             R1, =(silk_stereo_pred_quant_Q13_ptr - 0x1940BC)
1940B0:  ADD             R0, R8
1940B2:  MOVW            R12, #0x199A
1940B6:  MOVS            R3, #0
1940B8:  ADD             R1, PC; silk_stereo_pred_quant_Q13_ptr
1940BA:  MOVT            R3, #0x199A
1940BE:  LDR             R1, [R1]; silk_stereo_pred_quant_Q13
1940C0:  LDRSH.W         R9, [R1,R0,LSL#1]
1940C4:  ADD.W           R0, R1, R0,LSL#1
1940C8:  LDRSH.W         R0, [R0,#2]
1940CC:  SUB.W           R0, R0, R9
1940D0:  UXTH            R2, R0
1940D2:  ASRS            R0, R0, #0x10
1940D4:  MUL.W           R2, R2, R12
1940D8:  MLA.W           R8, R0, R3, R2
1940DC:  ADD.W           R0, R6, R6,LSL#1
1940E0:  ADD             R0, R10
1940E2:  MOVS            R2, #8
1940E4:  LDRSH.W         R6, [R1,R0,LSL#1]
1940E8:  ADD.W           R0, R1, R0,LSL#1
1940EC:  LDRSH.W         R0, [R0,#2]
1940F0:  SUBS            R0, R0, R6
1940F2:  UXTH            R1, R0
1940F4:  ASRS            R0, R0, #0x10
1940F6:  MUL.W           R1, R1, R12
1940FA:  MLA.W           R4, R0, R3, R1
1940FE:  MOV             R0, R5
194100:  MOV             R1, R11
194102:  BLX             j_ec_dec_icdf
194106:  LDR             R1, [SP,#0x28+var_24]
194108:  LSLS            R0, R0, #0x11
19410A:  MOVS            R2, #1
19410C:  ORR.W           R0, R2, R0,ASR#16
194110:  LSLS            R1, R1, #0x11
194112:  SMLABT.W        R0, R0, R8, R9
194116:  ORR.W           R1, R2, R1,ASR#16
19411A:  LDR             R2, [SP,#0x28+var_20]
19411C:  SMLABT.W        R1, R1, R4, R6
194120:  SUBS            R1, R1, R0
194122:  STRD.W          R1, R0, [R2]
194126:  ADD             SP, SP, #0xC
194128:  POP.W           {R8-R11}
19412C:  POP             {R4-R7,PC}
