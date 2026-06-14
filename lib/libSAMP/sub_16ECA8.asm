; =========================================================
; Game Engine Function: sub_16ECA8
; Address            : 0x16ECA8 - 0x16EDAE
; =========================================================

16ECA8:  PUSH            {R4-R7,LR}
16ECAA:  ADD             R7, SP, #0xC
16ECAC:  PUSH.W          {R8-R11}
16ECB0:  SUB             SP, SP, #0x14
16ECB2:  MOV             R9, R1
16ECB4:  MOV             R1, #0x606432
16ECBC:  LSRS            R1, R0
16ECBE:  LSLS            R1, R1, #0x1F
16ECC0:  BEQ             loc_16EDA6
16ECC2:  LDR             R5, =(dword_381B58 - 0x16ECD2)
16ECC4:  ADD.W           R3, R0, R0,LSL#1
16ECC8:  LDR             R1, =(unk_BB85C - 0x16ECD8)
16ECCA:  MOVW            R12, #0x1A84
16ECCE:  ADD             R5, PC; dword_381B58
16ECD0:  MOVW            R6, #0x1518
16ECD4:  ADD             R1, PC; unk_BB85C
16ECD6:  ADD.W           R1, R1, R3,LSL#2
16ECDA:  LDR             R2, [R5]
16ECDC:  LDR             R3, [R1,#8]
16ECDE:  ADD.W           R11, R2, R12
16ECE2:  LDR.W           R1, [R2,R12]
16ECE6:  ADD             R3, R2
16ECE8:  ADD.W           R10, R3, R6
16ECEC:  LDR             R4, [R3,R6]
16ECEE:  LDR.W           R6, [R11,#4]
16ECF2:  LDR.W           R3, [R10,#4]
16ECF6:  CMP             R1, R6
16ECF8:  STR             R3, [SP,#0x30+var_20]
16ECFA:  STRD.W          R0, R4, [SP,#0x30+var_28]
16ECFE:  BNE             loc_16ED7C
16ED00:  CMP             R1, #0
16ED02:  ADD.W           R4, R1, #1
16ED06:  ITTE NE
16ED08:  ADDNE.W         R0, R1, R1,LSR#31
16ED0C:  ADDNE.W         R0, R1, R0,ASR#1
16ED10:  MOVEQ           R0, #8
16ED12:  CMP             R0, R4
16ED14:  IT GT
16ED16:  MOVGT           R4, R0
16ED18:  CMP             R1, R4
16ED1A:  BGE             loc_16ED7C
16ED1C:  LDR             R0, =(off_2390AC - 0x16ED24)
16ED1E:  LDR             R1, =(dword_381B60 - 0x16ED2A)
16ED20:  ADD             R0, PC; off_2390AC
16ED22:  LDR.W           R3, [R2,#0x370]
16ED26:  ADD             R1, PC; dword_381B60
16ED28:  STR             R1, [SP,#0x30+var_2C]
16ED2A:  LDR             R6, [R0]; sub_171190
16ED2C:  ADDS            R0, R3, #1
16ED2E:  STR.W           R0, [R2,#0x370]
16ED32:  ADD.W           R0, R4, R4,LSL#1
16ED36:  LDR             R1, [R1]
16ED38:  LSLS            R0, R0, #2
16ED3A:  BLX             R6; sub_171190
16ED3C:  LDR.W           R1, [R11,#8]; src
16ED40:  MOV             R8, R0
16ED42:  CBZ             R1, loc_16ED74
16ED44:  LDR.W           R0, [R11]
16ED48:  ADD.W           R0, R0, R0,LSL#1
16ED4C:  LSLS            R2, R0, #2; n
16ED4E:  MOV             R0, R8; dest
16ED50:  BLX             j_memcpy
16ED54:  LDR.W           R0, [R11,#8]
16ED58:  CBZ             R0, loc_16ED68
16ED5A:  LDR             R1, [R5]
16ED5C:  CBZ             R1, loc_16ED68
16ED5E:  LDR.W           R2, [R1,#0x370]
16ED62:  SUBS            R2, #1
16ED64:  STR.W           R2, [R1,#0x370]
16ED68:  LDR             R2, =(off_2390B0 - 0x16ED70)
16ED6A:  LDR             R1, [SP,#0x30+var_2C]
16ED6C:  ADD             R2, PC; off_2390B0
16ED6E:  LDR             R1, [R1]
16ED70:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16ED72:  BLX             R2; j_opus_decoder_destroy_0
16ED74:  LDR.W           R1, [R11]
16ED78:  STRD.W          R4, R8, [R11,#4]
16ED7C:  LDR.W           R2, [R11,#8]
16ED80:  ADD.W           R1, R1, R1,LSL#1
16ED84:  VLDR            D16, [SP,#0x30+var_28]
16ED88:  ADD.W           R1, R2, R1,LSL#2
16ED8C:  LDR             R0, [SP,#0x30+var_20]
16ED8E:  VST1.8          {D16}, [R1]
16ED92:  STR             R0, [R1,#8]
16ED94:  LDR.W           R0, [R11]
16ED98:  ADDS            R0, #1
16ED9A:  STR.W           R0, [R11]
16ED9E:  LDRD.W          R0, R1, [R9]
16EDA2:  STRD.W          R0, R1, [R10]
16EDA6:  ADD             SP, SP, #0x14
16EDA8:  POP.W           {R8-R11}
16EDAC:  POP             {R4-R7,PC}
