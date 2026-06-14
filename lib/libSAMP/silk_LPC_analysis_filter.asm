; =========================================================
; Game Engine Function: silk_LPC_analysis_filter
; Address            : 0x192A5A - 0x192BE2
; =========================================================

192A5A:  PUSH            {R4-R7,LR}
192A5C:  ADD             R7, SP, #0xC
192A5E:  PUSH.W          {R8-R11}
192A62:  SUB             SP, SP, #0xC
192A64:  LDR.W           R12, [R7,#arg_0]
192A68:  STR             R0, [SP,#0x28+var_24]
192A6A:  CMP             R12, R3
192A6C:  STR             R3, [SP,#0x28+var_20]
192A6E:  BGE.W           loc_192BD0
192A72:  CMP.W           R12, #6
192A76:  BLE             loc_192B3C
192A78:  ADD.W           R4, R1, R12,LSL#1
192A7C:  MOV             R11, R12
192A7E:  SUB.W           R10, R4, #0x10
192A82:  STR             R1, [SP,#0x28+var_28]
192A84:  ADD.W           R9, R1, R11,LSL#1
192A88:  LDRSH.W         R5, [R2,#2]
192A8C:  LDRSH.W         R4, [R2]
192A90:  LDRSH.W         R0, [R9,#-4]
192A94:  LDRSH.W         LR, [R9,#-2]
192A98:  LDRSH.W         R6, [R2,#4]
192A9C:  SMULBB.W        R0, R5, R0
192AA0:  LDRSH.W         R5, [R9,#-8]
192AA4:  SMLABB.W        R3, R4, LR, R0
192AA8:  LDRSH.W         LR, [R9,#-0xC]
192AAC:  LDRSH.W         R4, [R9,#-0xA]
192AB0:  LDRSH.W         R9, [R9,#-6]
192AB4:  LDRSH.W         R8, [R2,#6]
192AB8:  LDRSH.W         R0, [R2,#8]
192ABC:  SMLABB.W        R3, R6, R9, R3
192AC0:  LDRSH.W         R1, [R2,#0xA]
192AC4:  SMLABB.W        R3, R8, R5, R3
192AC8:  MOV             R5, R10
192ACA:  SMLABB.W        R0, R0, R4, R3
192ACE:  MOVS            R4, #0
192AD0:  SMLABB.W        R6, R1, LR, R0
192AD4:  ADD.W           R3, R2, R4,LSL#1
192AD8:  LDRSH.W         R1, [R5,#2]
192ADC:  LDRSH.W         LR, [R5]
192AE0:  SUBS            R5, #4
192AE2:  LDRSH.W         R0, [R3,#0xC]
192AE6:  LDRSH.W         R3, [R3,#0xE]
192AEA:  SMLABB.W        R0, R0, R1, R6
192AEE:  SMLABB.W        R6, R3, LR, R0
192AF2:  ADD.W           R0, R4, #8
192AF6:  ADDS            R4, #2
192AF8:  CMP             R0, R12
192AFA:  BLT             loc_192AD4
192AFC:  LDR             R1, [SP,#0x28+var_28]
192AFE:  MOVS            R3, #1
192B00:  ADD.W           R10, R10, #2
192B04:  LDRSH.W         R0, [R1,R11,LSL#1]
192B08:  RSB.W           R0, R6, R0,LSL#12
192B0C:  ADD.W           R0, R3, R0,ASR#11
192B10:  MOV             R3, #0xFFFF8000
192B18:  ASRS            R6, R0, #1
192B1A:  CMP             R6, R3
192B1C:  IT GT
192B1E:  ASRGT           R3, R0, #1
192B20:  MOVW            R0, #0x7FFF
192B24:  CMP             R3, R0
192B26:  IT GE
192B28:  MOVGE           R3, R0
192B2A:  LDR             R0, [SP,#0x28+var_24]
192B2C:  STRH.W          R3, [R0,R11,LSL#1]
192B30:  ADD.W           R11, R11, #1
192B34:  LDR             R0, [SP,#0x28+var_20]
192B36:  CMP             R11, R0
192B38:  BNE             loc_192A84
192B3A:  B               loc_192BD0
192B3C:  LDR             R0, [SP,#0x28+var_20]
192B3E:  ADD.W           R1, R1, R12,LSL#1
192B42:  SUBS            R6, R1, #6
192B44:  SUB.W           R3, R0, R12
192B48:  LDR             R0, [SP,#0x28+var_24]
192B4A:  MOV             R1, R6
192B4C:  ADD.W           R4, R0, R12,LSL#1
192B50:  LDRSH.W         R0, [R2,#6]
192B54:  LDRSH.W         R11, [R2]
192B58:  LDRSH.W         R5, [R2,#2]
192B5C:  LDRSH.W         R9, [R2,#4]
192B60:  STR             R0, [SP,#0x28+var_20]
192B62:  LDRSH.W         R0, [R1,#2]!
192B66:  LDRSH.W         LR, [R6,#4]
192B6A:  LDRSH.W         R8, [R2,#8]
192B6E:  SMULBB.W        R0, R5, R0
192B72:  LDRSH.W         R5, [R6]
192B76:  SMLABB.W        R0, R11, LR, R0
192B7A:  LDRSH.W         R11, [R6,#-4]
192B7E:  LDRSH.W         R10, [R2,#0xA]
192B82:  SMLABB.W        R9, R9, R5, R0
192B86:  LDRSH.W         R0, [R6,#-2]
192B8A:  LDR             R5, [SP,#0x28+var_20]
192B8C:  LDRSH.W         LR, [R6,#-6]
192B90:  LDRSH.W         R6, [R6,#6]
192B94:  SMLABB.W        R0, R5, R0, R9
192B98:  MOVW            R5, #0x8000
192B9C:  SMLABB.W        R0, R8, R11, R0
192BA0:  MOVT            R5, #0xFFFF
192BA4:  SMLABB.W        R0, R10, LR, R0
192BA8:  RSB.W           R0, R0, R6,LSL#12
192BAC:  MOVS            R6, #1
192BAE:  ADD.W           R0, R6, R0,ASR#11
192BB2:  ASRS            R6, R0, #1
192BB4:  CMP             R6, R5
192BB6:  MOV             R6, R5
192BB8:  IT GT
192BBA:  ASRGT           R6, R0, #1
192BBC:  MOVW            R0, #0x7FFF
192BC0:  CMP             R6, R0
192BC2:  IT GE
192BC4:  MOVGE           R6, R0
192BC6:  SUBS            R3, #1
192BC8:  STRH.W          R6, [R4],#2
192BCC:  MOV             R6, R1
192BCE:  BNE             loc_192B50
192BD0:  LDR             R0, [SP,#0x28+var_24]; int
192BD2:  MOV.W           R1, R12,LSL#1; n
192BD6:  BLX             sub_22178C
192BDA:  ADD             SP, SP, #0xC
192BDC:  POP.W           {R8-R11}
192BE0:  POP             {R4-R7,PC}
