; =========================================================
; Game Engine Function: clt_mdct_backward_c
; Address            : 0x1A1A4C - 0x1A1CE6
; =========================================================

1A1A4C:  PUSH            {R4-R7,LR}
1A1A4E:  ADD             R7, SP, #0xC
1A1A50:  PUSH.W          {R8-R11}
1A1A54:  SUB             SP, SP, #0x2C
1A1A56:  MOV             R9, R1
1A1A58:  LDR             R1, [R0]
1A1A5A:  LDR             R5, [R0,#0x18]
1A1A5C:  LDRD.W          R12, R4, [R7,#arg_0]
1A1A60:  CMP             R4, #1
1A1A62:  MOV.W           R6, R1,ASR#1
1A1A66:  STR             R3, [SP,#0x48+var_44]
1A1A68:  BLT             loc_1A1A7A
1A1A6A:  MOV             R3, R4
1A1A6C:  MOV             R1, R6
1A1A6E:  SUBS            R3, #1
1A1A70:  ADD.W           R5, R5, R1,LSL#1
1A1A74:  MOV.W           R6, R1,ASR#1
1A1A78:  BNE             loc_1A1A6C
1A1A7A:  MOV.W           R3, R12,ASR#1
1A1A7E:  ADD.W           R0, R0, R4,LSL#2
1A1A82:  STR             R6, [SP,#0x48+var_40]
1A1A84:  ADD.W           R11, R2, R3,LSL#2
1A1A88:  STR             R5, [SP,#0x48+var_2C]
1A1A8A:  STR             R2, [SP,#0x48+var_3C]
1A1A8C:  STR             R3, [SP,#0x48+var_48]
1A1A8E:  LDR             R0, [R0,#8]
1A1A90:  STR             R0, [SP,#0x48+var_38]
1A1A92:  ASRS            R0, R1, #2
1A1A94:  CMP             R0, #1
1A1A96:  STR             R0, [SP,#0x48+var_28]
1A1A98:  BLT             loc_1A1B46
1A1A9A:  LDR             R1, [SP,#0x48+var_40]
1A1A9C:  MOVS            R3, #0
1A1A9E:  LDR             R0, [R7,#arg_8]
1A1AA0:  SUBS            R2, R1, #1
1A1AA2:  MULS            R2, R0
1A1AA4:  SUB.W           R1, R3, R0,LSL#3
1A1AA8:  STR             R1, [SP,#0x48+var_30]
1A1AAA:  LDR             R1, [SP,#0x48+var_38]
1A1AAC:  LSLS            R0, R0, #3
1A1AAE:  LDR.W           LR, [R1,#0x30]
1A1AB2:  STR             R0, [SP,#0x48+var_34]
1A1AB4:  ADD.W           R2, R9, R2,LSL#2
1A1AB8:  LDRD.W          R4, R8, [SP,#0x48+var_2C]
1A1ABC:  STR.W           R9, [SP,#0x48+var_20]
1A1AC0:  SUBS.W          R8, R8, #1
1A1AC4:  LDR.W           R12, [R9]
1A1AC8:  LDR             R0, [SP,#0x48+var_28]
1A1ACA:  UXTH.W          R1, R12
1A1ACE:  LDRSH.W         R0, [R4,R0,LSL#1]
1A1AD2:  STR             R1, [SP,#0x48+var_24]
1A1AD4:  LDR             R6, [R2]
1A1AD6:  LDRSH.W         R5, [R4]
1A1ADA:  ADD.W           R4, R4, #2
1A1ADE:  MUL.W           R9, R1, R0
1A1AE2:  MOV             R1, R11
1A1AE4:  UXTH.W          R10, R6
1A1AE8:  MUL.W           R11, R10, R5
1A1AEC:  SMULTB.W        R3, R12, R0
1A1AF0:  SMLATB.W        R3, R6, R5, R3
1A1AF4:  MOV.W           R6, R6,ASR#16
1A1AF8:  MOV.W           R9, R9,ASR#15
1A1AFC:  ADD.W           R9, R9, R11,ASR#15
1A1B00:  MOV             R11, R1
1A1B02:  MOV.W           R1, #4
1A1B06:  ADD.W           R9, R9, R3,LSL#1
1A1B0A:  LDRSH.W         R3, [LR],#2
1A1B0E:  ORR.W           R1, R1, R3,LSL#3
1A1B12:  STR.W           R9, [R11,R1]
1A1B16:  SMULTB.W        R1, R12, R5
1A1B1A:  MLS.W           R1, R6, R0, R1
1A1B1E:  LDR             R6, [SP,#0x48+var_24]
1A1B20:  LDR.W           R9, [SP,#0x48+var_20]
1A1B24:  MUL.W           R0, R10, R0
1A1B28:  MUL.W           R6, R5, R6
1A1B2C:  MOV.W           R6, R6,ASR#15
1A1B30:  SUB.W           R0, R6, R0,ASR#15
1A1B34:  ADD.W           R0, R0, R1,LSL#1
1A1B38:  STR.W           R0, [R11,R3,LSL#3]
1A1B3C:  LDR             R0, [SP,#0x48+var_30]
1A1B3E:  ADD             R2, R0
1A1B40:  LDR             R0, [SP,#0x48+var_34]
1A1B42:  ADD             R9, R0
1A1B44:  BNE             loc_1A1ABC
1A1B46:  LDR             R0, [SP,#0x48+var_38]
1A1B48:  MOV             R1, R11
1A1B4A:  BLX             j_opus_fft_impl
1A1B4E:  LDR             R0, [SP,#0x48+var_28]
1A1B50:  LDR.W           LR, [SP,#0x48+var_2C]
1A1B54:  ADDS            R0, #1
1A1B56:  ASRS            R0, R0, #1
1A1B58:  CMP             R0, #1
1A1B5A:  BLT             loc_1A1C5A
1A1B5C:  LDR             R1, [SP,#0x48+var_28]
1A1B5E:  ADD.W           R11, R11, #4
1A1B62:  LDR             R2, [SP,#0x48+var_40]
1A1B64:  MOV.W           R10, #0
1A1B68:  MOV.W           R12, #0
1A1B6C:  NEGS            R0, R0
1A1B6E:  ADD.W           R1, LR, R1,LSL#1
1A1B72:  STR             R1, [SP,#0x48+var_28]
1A1B74:  SUBS            R1, #2
1A1B76:  STR             R1, [SP,#0x48+var_30]
1A1B78:  ADD.W           R1, LR, R2,LSL#1
1A1B7C:  STR             R0, [SP,#0x48+var_38]
1A1B7E:  SUBS            R1, #2
1A1B80:  STR             R1, [SP,#0x48+var_34]
1A1B82:  LDR             R1, [SP,#0x48+var_48]
1A1B84:  ADD             R1, R2
1A1B86:  LDR             R2, [SP,#0x48+var_3C]
1A1B88:  ADD.W           R1, R2, R1,LSL#2
1A1B8C:  SUBS            R6, R1, #4
1A1B8E:  LDR             R1, [SP,#0x48+var_28]
1A1B90:  LDR.W           R5, [R11,#-4]
1A1B94:  LDRSH.W         R2, [LR,R10]
1A1B98:  LDRSH.W         R4, [R1,R10]
1A1B9C:  LDR.W           R1, [R11]
1A1BA0:  ADD.W           R10, R10, #2
1A1BA4:  SMULTB.W        R3, R5, R4
1A1BA8:  SMLATB.W        R0, R1, R2, R3
1A1BAC:  UXTH.W          R8, R1
1A1BB0:  MUL.W           R9, R8, R2
1A1BB4:  STR             R0, [SP,#0x48+var_20]
1A1BB6:  UXTH            R0, R5
1A1BB8:  MUL.W           LR, R0, R4
1A1BBC:  STR             R0, [SP,#0x48+var_24]
1A1BBE:  LDR             R0, [SP,#0x48+var_20]
1A1BC0:  SMULTB.W        R1, R1, R4
1A1BC4:  ASRS            R5, R5, #0x10
1A1BC6:  MLS.W           R1, R5, R2, R1
1A1BCA:  MOV.W           LR, LR,ASR#15
1A1BCE:  ADD.W           R3, LR, R9,ASR#15
1A1BD2:  ADD.W           LR, R3, R0,LSL#1
1A1BD6:  LDR.W           R9, [R6,#-4]
1A1BDA:  LDR             R3, [R6]
1A1BDC:  MUL.W           R5, R8, R4
1A1BE0:  STR.W           LR, [R11,#-4]
1A1BE4:  LDR             R0, [SP,#0x48+var_24]
1A1BE6:  UXTH.W          R8, R9
1A1BEA:  MULS            R2, R0
1A1BEC:  ASRS            R5, R5, #0xF
1A1BEE:  SUB.W           R2, R5, R2,ASR#15
1A1BF2:  ADD.W           R1, R2, R1,LSL#1
1A1BF6:  STR             R1, [R6]
1A1BF8:  LDR             R2, [SP,#0x48+var_34]
1A1BFA:  LDR             R1, [SP,#0x48+var_30]
1A1BFC:  LDRSH.W         R2, [R2,R12,LSL#1]
1A1C00:  LDRSH.W         R1, [R1,R12,LSL#1]
1A1C04:  SUB.W           R12, R12, #1
1A1C08:  SMULTB.W        R5, R9, R2
1A1C0C:  SMLATB.W        R0, R3, R1, R5
1A1C10:  MUL.W           R5, R8, R2
1A1C14:  MOV.W           LR, R5,ASR#15
1A1C18:  UXTH            R5, R3
1A1C1A:  MUL.W           R4, R5, R1
1A1C1E:  SMULTB.W        R3, R3, R2
1A1C22:  MULS            R2, R5
1A1C24:  ADD.W           R4, LR, R4,ASR#15
1A1C28:  ADD.W           R0, R4, R0,LSL#1
1A1C2C:  MOV.W           R4, R9,ASR#16
1A1C30:  MLS.W           R3, R4, R1, R3
1A1C34:  STR.W           R0, [R6,#-4]
1A1C38:  ASRS            R2, R2, #0xF
1A1C3A:  MUL.W           R1, R8, R1
1A1C3E:  LDR.W           LR, [SP,#0x48+var_2C]
1A1C42:  SUBS            R6, #8
1A1C44:  SUB.W           R1, R2, R1,ASR#15
1A1C48:  ADD.W           R1, R1, R3,LSL#1
1A1C4C:  STR.W           R1, [R11]
1A1C50:  LDR             R1, [SP,#0x48+var_38]
1A1C52:  ADD.W           R11, R11, #8
1A1C56:  CMP             R1, R12
1A1C58:  BNE             loc_1A1B8E
1A1C5A:  LDR             R1, [R7,#arg_0]
1A1C5C:  LDR.W           R12, [SP,#0x48+var_44]
1A1C60:  LDR.W           LR, [SP,#0x48+var_3C]
1A1C64:  CMP             R1, #2
1A1C66:  BLT             loc_1A1CDE
1A1C68:  ADD.W           R0, R1, R1,LSR#31
1A1C6C:  SUBS            R1, #1
1A1C6E:  MOVS            R3, #0
1A1C70:  ADD.W           R8, LR, R1,LSL#2
1A1C74:  ASRS            R2, R0, #1
1A1C76:  ADD.W           R0, R12, R1,LSL#1
1A1C7A:  STR             R0, [SP,#0x48+var_20]
1A1C7C:  NEGS            R0, R2
1A1C7E:  STR             R0, [SP,#0x48+var_24]
1A1C80:  LDR             R0, [SP,#0x48+var_20]
1A1C82:  LDR.W           R4, [LR]
1A1C86:  LDRSH.W         R5, [R12],#2
1A1C8A:  LDRSH.W         R6, [R0,R3,LSL#1]
1A1C8E:  LDR.W           R0, [R8,R3,LSL#2]
1A1C92:  UXTH.W          R11, R4
1A1C96:  SMULTB.W        R2, R4, R6
1A1C9A:  ASRS            R1, R0, #0x10
1A1C9C:  MLS.W           R9, R1, R5, R2
1A1CA0:  MUL.W           R1, R11, R6
1A1CA4:  MOV.W           R10, R1,ASR#15
1A1CA8:  UXTH            R1, R0
1A1CAA:  MUL.W           R2, R1, R5
1A1CAE:  SMULTB.W        R0, R0, R6
1A1CB2:  MULS            R1, R6
1A1CB4:  SMLATB.W        R0, R4, R5, R0
1A1CB8:  MUL.W           R4, R11, R5
1A1CBC:  SUB.W           R2, R10, R2,ASR#15
1A1CC0:  ADD.W           R2, R2, R9,LSL#1
1A1CC4:  STR.W           R2, [LR],#4
1A1CC8:  ASRS            R1, R1, #0xF
1A1CCA:  ADD.W           R1, R1, R4,ASR#15
1A1CCE:  ADD.W           R0, R1, R0,LSL#1
1A1CD2:  STR.W           R0, [R8,R3,LSL#2]
1A1CD6:  SUBS            R3, #1
1A1CD8:  LDR             R0, [SP,#0x48+var_24]
1A1CDA:  CMP             R0, R3
1A1CDC:  BNE             loc_1A1C80
1A1CDE:  ADD             SP, SP, #0x2C ; ','
1A1CE0:  POP.W           {R8-R11}
1A1CE4:  POP             {R4-R7,PC}
