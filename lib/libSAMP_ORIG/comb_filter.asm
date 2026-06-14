; =========================================================
; Game Engine Function: comb_filter
; Address            : 0xBB91C - 0xBBC98
; =========================================================

BB91C:  PUSH            {R4-R7,LR}
BB91E:  ADD             R7, SP, #0xC
BB920:  PUSH.W          {R8-R11}
BB924:  SUB             SP, SP, #0x6C
BB926:  STR             R0, [SP,#0x88+var_40]
BB928:  LDR             R5, [R7,#arg_8]
BB92A:  LDRD.W          R4, R6, [R7,#arg_0]
BB92E:  ORRS.W          R0, R5, R6
BB932:  BEQ.W           loc_BBC60
BB936:  LDRD.W          R9, R12, [R7,#arg_C]
BB93A:  LDR.W           LR, =(unk_5B0F8 - 0xBB94C)
BB93E:  ADD.W           R4, R12, R12,LSL#1
BB942:  LDR.W           R8, [R7,#arg_18]
BB946:  CMP             R9, R12
BB948:  ADD             LR, PC; unk_5B0F8
BB94A:  MOV             R12, R5
BB94C:  ADD.W           R0, LR, R4,LSL#1
BB950:  LDRSH.W         R4, [LR,R4,LSL#1]
BB954:  MOV             R9, R8
BB956:  LDRSH.W         R11, [R0,#2]
BB95A:  IT EQ
BB95C:  MOVEQ.W         R9, #0
BB960:  LDRSH.W         R0, [R0,#4]
BB964:  CMP             R6, R5
BB966:  MOV.W           R6, #0x4000
BB96A:  IT NE
BB96C:  MOVNE           R9, R8
BB96E:  SMLABB.W        R11, R11, R12, R6
BB972:  CMP             R3, #0xF
BB974:  SMLABB.W        R0, R0, R5, R6
BB978:  MOV.W           R5, #0xF
BB97C:  SMLABB.W        R6, R4, R12, R6
BB980:  IT LE
BB982:  MOVLE           R3, R5
BB984:  CMP             R2, #0xF
BB986:  IT GT
BB988:  MOVGT           R5, R2
BB98A:  MOV             R2, #0xFFFFFFFE
BB98E:  CMP             R5, R3
BB990:  SUB.W           R12, R2, R3
BB994:  IT NE
BB996:  MOVNE           R9, R8
BB998:  LSRS            R4, R0, #0xF
BB99A:  MOV.W           LR, R11,LSR#15
BB99E:  MOV.W           R11, R6,LSR#15
BB9A2:  RSB.W           R6, R3, #1
BB9A6:  NEGS            R0, R3
BB9A8:  MOV             R8, R9
BB9AA:  MVNS            R2, R3
BB9AC:  CMP.W           R8, #1
BB9B0:  STRD.W          R4, R3, [SP,#0x88+var_70]
BB9B4:  STRD.W          R11, LR, [SP,#0x88+var_78]
BB9B8:  STRD.W          R2, R0, [SP,#0x88+var_80]
BB9BC:  BLT.W           loc_BBC6C
BB9C0:  STR             R6, [SP,#0x88+var_88]
BB9C2:  LDR.W           R0, [R1,R0,LSL#2]
BB9C6:  LDR.W           R10, [R1,R6,LSL#2]
BB9CA:  STR             R0, [SP,#0x88+var_20]
BB9CC:  LDR.W           R0, [R1,R2,LSL#2]
BB9D0:  MOV             R6, LR
BB9D2:  STR             R0, [SP,#0x88+var_24]
BB9D4:  MOVS            R0, #8
BB9D6:  SUB.W           R9, R0, R5,LSL#2
BB9DA:  SUB.W           R0, R0, R3,LSL#2
BB9DE:  STR.W           R12, [SP,#0x88+var_84]
BB9E2:  ADD             R0, R1
BB9E4:  LDR.W           LR, [R1,R12,LSL#2]
BB9E8:  STR             R0, [SP,#0x88+var_50]
BB9EA:  LDR             R0, [R7,#arg_C]
BB9EC:  MOVS            R2, #4
BB9EE:  LDR.W           R12, =(unk_5B0F8 - 0xBBA02)
BB9F2:  SUB.W           R2, R2, R5,LSL#2
BB9F6:  ADD             R2, R1
BB9F8:  STR             R2, [SP,#0x88+var_4C]
BB9FA:  ADD.W           R0, R0, R0,LSL#1
BB9FE:  ADD             R12, PC; unk_5B0F8
BBA00:  LDR             R2, [R7,#arg_4]
BBA02:  ADD.W           R3, R12, R0,LSL#1
BBA06:  LDRSH.W         R0, [R12,R0,LSL#1]
BBA0A:  STR             R1, [SP,#0x88+var_44]
BBA0C:  LDRSH.W         R5, [R3,#2]
BBA10:  LSLS            R2, R2, #1
BBA12:  LDRSH.W         R3, [R3,#4]
BBA16:  MULS            R0, R2
BBA18:  LDR             R1, [SP,#0x88+var_20]
BBA1A:  STR.W           R8, [SP,#0x88+var_48]
BBA1E:  MULS            R3, R2
BBA20:  ADD.W           R0, R0, #0x8000
BBA24:  ADD.W           R3, R3, #0x8000
BBA28:  ASRS            R0, R0, #0x10
BBA2A:  LSLS            R0, R0, #1
BBA2C:  ASRS            R3, R3, #0x10
BBA2E:  STR             R0, [SP,#0x88+var_5C]
BBA30:  LSLS            R3, R3, #1
BBA32:  LSLS            R0, R4, #0x10
BBA34:  STR             R3, [SP,#0x88+var_54]
BBA36:  MUL.W           R3, R2, R5
BBA3A:  ASRS            R0, R0, #0xF
BBA3C:  LSLS            R2, R6, #0x10
BBA3E:  LDR             R4, [SP,#0x88+var_24]
BBA40:  STR             R0, [SP,#0x88+var_60]
BBA42:  ASRS            R0, R2, #0xF
BBA44:  MOVS            R5, #0
BBA46:  STR             R0, [SP,#0x88+var_64]
BBA48:  ADD.W           R3, R3, #0x8000
BBA4C:  ASRS            R3, R3, #0x10
BBA4E:  LSLS            R3, R3, #1
BBA50:  STR             R3, [SP,#0x88+var_58]
BBA52:  MOV.W           R3, R11,LSL#16
BBA56:  ASRS            R0, R3, #0xF
BBA58:  STR             R0, [SP,#0x88+var_68]
BBA5A:  LDR             R0, [R7,#arg_14]
BBA5C:  ADD.W           R8, R4, R10
BBA60:  STRD.W          R4, R1, [SP,#0x88+var_24]
BBA64:  MOV             R12, R9
BBA66:  STR.W           R10, [SP,#0x88+var_2C]
BBA6A:  LDRSH.W         R3, [R0,R5,LSL#1]
BBA6E:  SMULBB.W        R3, R3, R3
BBA72:  SBFX.W          R0, R3, #0xF, #0x10
BBA76:  LDR             R2, [SP,#0x88+var_64]
BBA78:  LSLS            R3, R3, #1
BBA7A:  MUL.W           R6, R2, R0
BBA7E:  LDR             R2, [SP,#0x88+var_68]
BBA80:  MULS            R2, R0
BBA82:  STR             R6, [SP,#0x88+var_38]
BBA84:  SMULTT.W        R4, R6, R8
BBA88:  STR             R2, [SP,#0x88+var_30]
BBA8A:  SMLATT.W        R4, R2, R1, R4
BBA8E:  LDR             R2, [SP,#0x88+var_60]
BBA90:  LDR             R1, [SP,#0x88+var_4C]
BBA92:  MUL.W           R10, R2, R0
BBA96:  LDR             R0, [SP,#0x88+var_50]
BBA98:  LDR.W           R0, [R0,R5,LSL#2]
BBA9C:  STR             R0, [SP,#0x88+var_28]
BBA9E:  ADD             R0, LR
BBAA0:  LDR.W           R1, [R1,R5,LSL#2]
BBAA4:  SMLATT.W        R2, R10, R0, R4
BBAA8:  LDR             R4, [SP,#0x88+var_44]
BBAAA:  ADD.W           R9, R4, R12
BBAAE:  LDR.W           R6, [R9,#-0x10]
BBAB2:  STR             R6, [SP,#0x88+var_34]
BBAB4:  LDRD.W          R11, R6, [R9,#-0xC]
BBAB8:  ADD             R11, R1
BBABA:  MOVW            R1, #0x7FFF
BBABE:  SUB.W           R3, R1, R3,ASR#16
BBAC2:  LDR             R1, [SP,#0x88+var_58]
BBAC4:  STR             R6, [SP,#0x88+var_3C]
BBAC6:  SXTH            R3, R3
BBAC8:  LDR.W           LR, [R4,R12]
BBACC:  MUL.W           R9, R1, R3
BBAD0:  LDR             R1, [SP,#0x88+var_5C]
BBAD2:  ADD.W           R12, R12, #4
BBAD6:  MULS            R1, R3
BBAD8:  SMLATT.W        R2, R9, R11, R2
BBADC:  SMLATT.W        R2, R1, R6, R2
BBAE0:  LDR             R6, [SP,#0x88+var_34]
BBAE2:  ASRS            R1, R1, #0x10
BBAE4:  ADD             LR, R6
BBAE6:  LDR             R6, [SP,#0x88+var_54]
BBAE8:  MULS            R3, R6
BBAEA:  UXTH.W          R6, R8
BBAEE:  LDR.W           R8, [SP,#0x88+var_48]
BBAF2:  SMLATT.W        R2, R3, LR, R2
BBAF6:  ASRS            R3, R3, #0x10
BBAF8:  STR             R2, [SP,#0x88+var_34]
BBAFA:  LDR             R2, [SP,#0x88+var_38]
BBAFC:  LDR.W           R4, [R4,R5,LSL#2]
BBB00:  ASRS            R2, R2, #0x10
BBB02:  MULS            R2, R6
BBB04:  UXTH            R6, R0
BBB06:  MOV.W           R0, R10,ASR#16
BBB0A:  MULS            R0, R6
BBB0C:  LDR.W           R10, [SP,#0x88+var_20]
BBB10:  MOV.W           R6, R9,ASR#16
BBB14:  MOV             R9, R12
BBB16:  ADD.W           R0, R4, R0,ASR#15
BBB1A:  UXTH.W          R4, R10
BBB1E:  ADD.W           R0, R0, R2,ASR#15
BBB22:  LDR             R2, [SP,#0x88+var_30]
BBB24:  ASRS            R2, R2, #0x10
BBB26:  MULS            R2, R4
BBB28:  MOV             R4, #0xEE1E5D00
BBB30:  ADD.W           R0, R0, R2,ASR#15
BBB34:  LDR             R2, [SP,#0x88+var_3C]
BBB36:  UXTH            R2, R2
BBB38:  MULS            R1, R2
BBB3A:  UXTH.W          R2, R11
BBB3E:  MULS            R2, R6
BBB40:  UXTH.W          R6, LR
BBB44:  MOV             LR, R4
BBB46:  MULS            R3, R6
BBB48:  MOV             R4, #0x11E1A300
BBB50:  ADD.W           R0, R0, R3,ASR#15
BBB54:  ADD.W           R0, R0, R2,ASR#15
BBB58:  ADD.W           R0, R0, R1,ASR#15
BBB5C:  LDR             R1, [SP,#0x88+var_34]
BBB5E:  ADD.W           R0, R0, R1,LSL#1
BBB62:  CMP             R0, LR
BBB64:  IT LE
BBB66:  MOVLE           R0, LR
BBB68:  CMP             R0, R4
BBB6A:  IT GE
BBB6C:  MOVGE           R0, R4
BBB6E:  LDR             R1, [SP,#0x88+var_40]
BBB70:  MOV             R4, R10
BBB72:  STR.W           R0, [R1,R5,LSL#2]
BBB76:  ADDS            R5, #1
BBB78:  CMP             R8, R5
BBB7A:  LDR.W           LR, [SP,#0x88+var_24]
BBB7E:  LDRD.W          R1, R10, [SP,#0x88+var_2C]
BBB82:  BNE.W           loc_BBA5A
BBB86:  LDR             R1, [SP,#0x88+var_44]
BBB88:  MOV             R2, R8
BBB8A:  LDR             R3, [R7,#arg_0]
BBB8C:  LDR             R0, [R7,#arg_8]
BBB8E:  LDRD.W          R6, R12, [SP,#0x88+var_88]
BBB92:  CMP             R0, #0
BBB94:  BEQ             loc_BBC76
BBB96:  SUB.W           R8, R3, R2
BBB9A:  CMP.W           R8, #1
BBB9E:  BLT             loc_BBC90
BBBA0:  LDR             R0, [SP,#0x88+var_40]
BBBA2:  ADD.W           R4, R1, R2,LSL#2
BBBA6:  ADD.W           R1, R0, R2,LSL#2
BBBAA:  LDR             R0, [SP,#0x88+var_80]
BBBAC:  LDR.W           R2, [R4,R12,LSL#2]
BBBB0:  MOV.W           R12, #0
BBBB4:  LDR.W           R10, [R4,R6,LSL#2]
BBBB8:  LDR.W           R9, [R4,R0,LSL#2]
BBBBC:  LDR             R0, [SP,#0x88+var_7C]
BBBBE:  LDR.W           R3, [R4,R0,LSL#2]
BBBC2:  ADDS            R4, #8
BBBC4:  LDR             R0, [SP,#0x88+var_6C]
BBBC6:  SUB.W           R0, R12, R0,LSL#2
BBBCA:  STR             R0, [SP,#0x88+var_28]
BBBCC:  LDR             R0, [SP,#0x88+var_70]
BBBCE:  SXTH            R0, R0
BBBD0:  STR             R0, [SP,#0x88+var_2C]
BBBD2:  LDR             R0, [SP,#0x88+var_74]
BBBD4:  LDR.W           R11, [SP,#0x88+var_2C]
BBBD8:  SXTH            R0, R0
BBBDA:  STR             R0, [SP,#0x88+var_30]
BBBDC:  LDR             R0, [SP,#0x88+var_78]
BBBDE:  SXTH            R0, R0
BBBE0:  STR             R0, [SP,#0x88+var_34]
BBBE2:  LDR             R0, [SP,#0x88+var_28]
BBBE4:  ADD.W           R12, R10, R9
BBBE8:  LDR             R5, [SP,#0x88+var_34]
BBBEA:  UXTH.W          LR, R12
BBBEE:  LDR             R0, [R4,R0]
BBBF0:  STR             R0, [SP,#0x88+var_20]
BBBF2:  ADD             R2, R0
BBBF4:  UXTH            R6, R2
BBBF6:  MUL.W           R0, R6, R11
BBBFA:  UXTH            R6, R3
BBBFC:  MULS            R6, R5
BBBFE:  STR             R0, [SP,#0x88+var_24]
BBC00:  LDR             R0, [SP,#0x88+var_30]
BBC02:  MUL.W           LR, LR, R0
BBC06:  SMULTB.W        R0, R12, R0
BBC0A:  SMLATB.W        R0, R3, R5, R0
BBC0E:  LDR.W           R5, [R4,#-8]
BBC12:  SMLATB.W        R0, R2, R11, R0
BBC16:  ADDS            R4, #4
BBC18:  ADD.W           R2, R5, R6,ASR#15
BBC1C:  MOV             R6, #0xEE1E5D00
BBC24:  ADD.W           R2, R2, LR,ASR#15
BBC28:  MOV             R5, R6
BBC2A:  MOV             R6, #0x11E1A300
BBC32:  MOV             R12, R6
BBC34:  LDR             R6, [SP,#0x88+var_24]
BBC36:  ADD.W           R2, R2, R6,ASR#15
BBC3A:  ADD.W           R0, R2, R0,LSL#1
BBC3E:  MOV             R2, R9
BBC40:  CMP             R0, R5
BBC42:  MOV             R9, R3
BBC44:  IT LE
BBC46:  MOVLE           R0, R5
BBC48:  MOV             R3, R10
BBC4A:  CMP             R0, R12
BBC4C:  IT GE
BBC4E:  MOVGE           R0, R12
BBC50:  SUBS.W          R8, R8, #1
BBC54:  STR.W           R0, [R1],#4
BBC58:  LDR.W           R10, [SP,#0x88+var_20]
BBC5C:  BNE             loc_BBBE2
BBC5E:  B               loc_BBC90
BBC60:  LDR             R0, [SP,#0x88+var_40]
BBC62:  CMP             R1, R0
BBC64:  BEQ             loc_BBC90
BBC66:  LDR             R0, [SP,#0x88+var_40]
BBC68:  LSLS            R2, R4, #2
BBC6A:  B               loc_BBC8C
BBC6C:  MOVS            R2, #0
BBC6E:  LDR             R3, [R7,#arg_0]
BBC70:  LDR             R0, [R7,#arg_8]
BBC72:  CMP             R0, #0
BBC74:  BNE             loc_BBB96
BBC76:  LDR             R0, [SP,#0x88+var_40]
BBC78:  CMP             R1, R0
BBC7A:  BEQ             loc_BBC90
BBC7C:  LDR             R0, [SP,#0x88+var_40]
BBC7E:  SUB.W           R2, R3, R8
BBC82:  ADD.W           R1, R1, R8,LSL#2; src
BBC86:  ADD.W           R0, R0, R8,LSL#2; dest
BBC8A:  LSLS            R2, R2, #2; n
BBC8C:  BLX             j_memmove
BBC90:  ADD             SP, SP, #0x6C ; 'l'
BBC92:  POP.W           {R8-R11}
BBC96:  POP             {R4-R7,PC}
