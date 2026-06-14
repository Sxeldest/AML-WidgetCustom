; =========================================================
; Game Engine Function: silk_biquad_alt_stride2_c
; Address            : 0xCD9AC - 0xCDB8C
; =========================================================

CD9AC:  PUSH            {R4-R7,LR}
CD9AE:  ADD             R7, SP, #0xC
CD9B0:  PUSH.W          {R8-R11}
CD9B4:  SUB             SP, SP, #0x34
CD9B6:  LDR             R4, [R7,#arg_4]
CD9B8:  MOV             R12, R1
CD9BA:  STR             R3, [SP,#0x50+var_40]
CD9BC:  CMP             R4, #1
CD9BE:  BLT.W           loc_CDB84
CD9C2:  LDRD.W          R1, R2, [R2]
CD9C6:  NEGS            R6, R2
CD9C8:  LDR.W           LR, [R7,#arg_0]
CD9CC:  ADD.W           R10, R0, #2
CD9D0:  MOV             R2, R6
CD9D2:  NEGS            R1, R1
CD9D4:  BFC.W           R2, #0xE, #0x12
CD9D8:  STR             R2, [SP,#0x50+var_44]
CD9DA:  MOV             R2, R1
CD9DC:  ADD.W           R5, LR, #2
CD9E0:  BFC.W           R2, #0xE, #0x12
CD9E4:  STR             R2, [SP,#0x50+var_48]
CD9E6:  LDR             R2, [SP,#0x50+var_40]
CD9E8:  LDR             R3, [R2]
CD9EA:  STR             R3, [SP,#0x50+var_20]
CD9EC:  LDRD.W          R3, R11, [R2,#4]
CD9F0:  LDR.W           R8, [R2,#0xC]
CD9F4:  SBFX.W          R0, R6, #0xE, #0x10
CD9F8:  STR             R0, [SP,#0x50+var_4C]
CD9FA:  SBFX.W          R0, R1, #0xE, #0x10
CD9FE:  STR             R0, [SP,#0x50+var_50]
CDA00:  STRD.W          R3, R8, [SP,#0x50+var_3C]
CDA04:  MOVS            R3, #1
CDA06:  STRD.W          R5, R4, [SP,#0x50+var_28]
CDA0A:  LDR.W           R2, [R12]
CDA0E:  LDRSH.W         R8, [R10]
CDA12:  LDR.W           LR, [SP,#0x50+var_44]
CDA16:  UXTH            R6, R2
CDA18:  LDR.W           R9, [SP,#0x50+var_4C]
CDA1C:  MUL.W           R0, R6, R8
CDA20:  SMLABT.W        R1, R8, R2, R11
CDA24:  ADD.W           R0, R1, R0,ASR#16
CDA28:  STR             R0, [SP,#0x50+var_2C]
CDA2A:  LSLS            R4, R0, #2
CDA2C:  UXTH            R0, R4
CDA2E:  MUL.W           R5, R0, LR
CDA32:  MUL.W           R1, R0, R9
CDA36:  LSRS            R5, R5, #0x10
CDA38:  SMLATB.W        R5, R4, LR, R5
CDA3C:  ASRS            R1, R1, #0x10
CDA3E:  SMLATB.W        R11, R4, R9, R1
CDA42:  MOVS            R1, #1
CDA44:  ADD.W           R5, R1, R5,ASR#13
CDA48:  ADD.W           R1, R11, R5,ASR#1
CDA4C:  STR             R1, [SP,#0x50+var_34]
CDA4E:  LDRSH.W         R1, [R10,#-2]
CDA52:  LDR             R5, [SP,#0x50+var_20]
CDA54:  LDR.W           R11, [SP,#0x50+var_50]
CDA58:  MULS            R6, R1
CDA5A:  SMLABT.W        R2, R1, R2, R5
CDA5E:  ADD.W           R2, R2, R6,ASR#16
CDA62:  STR             R2, [SP,#0x50+var_30]
CDA64:  LSLS            R2, R2, #2
CDA66:  UXTH            R5, R2
CDA68:  MUL.W           R6, R5, R9
CDA6C:  ASRS            R6, R6, #0x10
CDA6E:  SMLATB.W        R9, R2, R9, R6
CDA72:  MUL.W           R6, R5, LR
CDA76:  LSRS            R6, R6, #0x10
CDA78:  SMLATB.W        R6, R2, LR, R6
CDA7C:  LDR.W           LR, [SP,#0x50+var_48]
CDA80:  ADD.W           R6, R3, R6,ASR#13
CDA84:  ADD.W           R9, R9, R6,ASR#1
CDA88:  MUL.W           R6, R5, LR
CDA8C:  MUL.W           R5, R5, R11
CDA90:  LSRS            R6, R6, #0x10
CDA92:  SMLATB.W        R6, R2, LR, R6
CDA96:  ADD.W           R6, R3, R6,ASR#13
CDA9A:  LDR             R3, [SP,#0x50+var_3C]
CDA9C:  ADD.W           R6, R3, R6,ASR#1
CDAA0:  MOVS            R3, #1
CDAA2:  SMLABT.W        R2, R11, R2, R6
CDAA6:  LDR             R6, [SP,#0x50+var_40]
CDAA8:  ADD.W           R2, R2, R5,ASR#16
CDAAC:  MUL.W           R5, R0, LR
CDAB0:  MUL.W           R0, R0, R11
CDAB4:  LSRS            R5, R5, #0x10
CDAB6:  SMLATB.W        R5, R4, LR, R5
CDABA:  MOVW            LR, #0x3FFF
CDABE:  ADD.W           R5, R3, R5,ASR#13
CDAC2:  LDR             R3, [SP,#0x50+var_38]
CDAC4:  ADD.W           R5, R3, R5,ASR#1
CDAC8:  SMLABT.W        R4, R11, R4, R5
CDACC:  ADD.W           R0, R4, R0,ASR#16
CDAD0:  STR             R0, [R6,#8]
CDAD2:  STR             R2, [R6]
CDAD4:  LDR.W           R4, [R12,#4]
CDAD8:  SMLABT.W        R2, R1, R4, R2
CDADC:  UXTH            R4, R4
CDADE:  MULS            R1, R4
CDAE0:  LDR             R4, [SP,#0x50+var_24]
CDAE2:  ADD.W           R2, R2, R1,ASR#16
CDAE6:  MOV             R1, R2
CDAE8:  STR             R1, [SP,#0x50+var_20]
CDAEA:  STR             R2, [R6]
CDAEC:  LDR.W           R1, [R12,#4]
CDAF0:  LDR             R5, [SP,#0x50+var_28]
CDAF2:  STR.W           R9, [R6,#4]
CDAF6:  SMLABT.W        R0, R8, R1, R0
CDAFA:  UXTH            R1, R1
CDAFC:  MUL.W           R1, R1, R8
CDB00:  LDR             R2, [SP,#0x50+var_34]
CDB02:  ADD.W           R11, R0, R1,ASR#16
CDB06:  STRD.W          R11, R2, [R6,#8]
CDB0A:  LDR.W           R0, [R12,#8]
CDB0E:  LDRSH.W         R1, [R10,#-2]
CDB12:  SMLABT.W        R3, R1, R0, R9
CDB16:  UXTH            R0, R0
CDB18:  MULS            R0, R1
CDB1A:  ADD.W           R3, R3, R0,ASR#16
CDB1E:  STR             R3, [R6,#4]
CDB20:  LDRSH.W         R1, [R10]
CDB24:  ADD.W           R10, R10, #4
CDB28:  LDR.W           R0, [R12,#8]
CDB2C:  SMLABT.W        R2, R1, R0, R2
CDB30:  UXTH            R0, R0
CDB32:  MULS            R0, R1
CDB34:  ADD.W           R8, R2, R0,ASR#16
CDB38:  STR.W           R8, [R6,#0xC]
CDB3C:  LDR             R0, [SP,#0x50+var_2C]
CDB3E:  MOV             R2, #0xFFFF8000
CDB46:  MOVW            R6, #0x7FFF
CDB4A:  ADD.W           R0, LR, R0,LSL#2
CDB4E:  ASRS            R1, R0, #0xE
CDB50:  CMP             R1, R2
CDB52:  MOV             R1, R2
CDB54:  IT GT
CDB56:  ASRGT           R1, R0, #0xE
CDB58:  CMP             R1, R6
CDB5A:  IT GE
CDB5C:  MOVGE           R1, R6
CDB5E:  STRH            R1, [R5]
CDB60:  LDR             R0, [SP,#0x50+var_30]
CDB62:  ADD.W           R0, LR, R0,LSL#2
CDB66:  ASRS            R1, R0, #0xE
CDB68:  CMP             R1, R2
CDB6A:  MOV             R1, R2
CDB6C:  IT GT
CDB6E:  ASRGT           R1, R0, #0xE
CDB70:  CMP             R1, R6
CDB72:  IT GE
CDB74:  MOVGE           R1, R6
CDB76:  SUBS            R4, #1
CDB78:  STRH.W          R1, [R5,#-2]
CDB7C:  ADD.W           R5, R5, #4
CDB80:  BNE.W           loc_CDA00
CDB84:  ADD             SP, SP, #0x34 ; '4'
CDB86:  POP.W           {R8-R11}
CDB8A:  POP             {R4-R7,PC}
