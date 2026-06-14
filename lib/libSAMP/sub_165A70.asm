; =========================================================
; Game Engine Function: sub_165A70
; Address            : 0x165A70 - 0x165BCE
; =========================================================

165A70:  PUSH            {R4-R7,LR}
165A72:  ADD             R7, SP, #0xC
165A74:  PUSH.W          {R8-R11}
165A78:  SUB             SP, SP, #0x14
165A7A:  MOV             R8, R1
165A7C:  MOV             R6, R0
165A7E:  MOV             R3, R2; arg
165A80:  STRD.W          R2, R2, [SP,#0x30+arg]
165A84:  MOVS            R0, #0; s
165A86:  MOVS            R1, #0; maxlen
165A88:  MOV             R2, R8; format
165A8A:  BLX             vsnprintf
165A8E:  CMP             R0, #1
165A90:  BLT.W           loc_165BC6
165A94:  MOV             R9, R0
165A96:  LDRD.W          R10, R0, [R6]
165A9A:  CMP.W           R10, #0
165A9E:  IT EQ
165AA0:  MOVEQ.W         R10, #1
165AA4:  ADD.W           R5, R10, R9
165AA8:  CMP             R5, R0
165AAA:  MOV             R2, R5
165AAC:  BLT             loc_165B16
165AAE:  CMP.W           R5, R0,LSL#1
165AB2:  MOV             R4, R5
165AB4:  IT LE
165AB6:  LSLLE           R4, R0, #1
165AB8:  CMP             R0, R4
165ABA:  BGE             loc_165B16
165ABC:  STR             R2, [SP,#0x30+var_28]
165ABE:  LDR             R0, =(dword_381B58 - 0x165AC4)
165AC0:  ADD             R0, PC; dword_381B58
165AC2:  STR             R0, [SP,#0x30+var_2C]
165AC4:  LDR             R0, [R0]
165AC6:  CBZ             R0, loc_165AD2
165AC8:  LDR.W           R1, [R0,#0x370]
165ACC:  ADDS            R1, #1
165ACE:  STR.W           R1, [R0,#0x370]
165AD2:  LDR             R1, =(dword_381B60 - 0x165ADA)
165AD4:  LDR             R0, =(off_2390AC - 0x165ADC)
165AD6:  ADD             R1, PC; dword_381B60
165AD8:  ADD             R0, PC; off_2390AC
165ADA:  MOV             R11, R1
165ADC:  LDR             R1, [R1]
165ADE:  LDR             R2, [R0]; sub_171190
165AE0:  MOV             R0, R4
165AE2:  BLX             R2; sub_171190
165AE4:  LDR             R1, [R6,#8]; src
165AE6:  MOV             R5, R0
165AE8:  CBZ             R1, loc_165B12
165AEA:  LDR             R2, [R6]; n
165AEC:  MOV             R0, R5; dest
165AEE:  BLX             j_memcpy
165AF2:  LDR             R0, [R6,#8]
165AF4:  CBZ             R0, loc_165B06
165AF6:  LDR             R1, [SP,#0x30+var_2C]
165AF8:  LDR             R1, [R1]
165AFA:  CBZ             R1, loc_165B06
165AFC:  LDR.W           R2, [R1,#0x370]
165B00:  SUBS            R2, #1
165B02:  STR.W           R2, [R1,#0x370]
165B06:  LDR             R2, =(off_2390B0 - 0x165B10)
165B08:  LDR.W           R1, [R11]
165B0C:  ADD             R2, PC; off_2390B0
165B0E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
165B10:  BLX             R2; j_opus_decoder_destroy_0
165B12:  STR             R5, [R6,#8]
165B14:  B               loc_165B8C
165B16:  CMP             R0, R5
165B18:  BGE             loc_165B90
165B1A:  CMP             R0, #0
165B1C:  ITTE NE
165B1E:  ADDNE.W         R1, R0, R0,LSR#31
165B22:  ADDNE.W         R1, R0, R1,ASR#1
165B26:  MOVEQ           R1, #8
165B28:  CMP             R1, R5
165B2A:  IT GT
165B2C:  MOVGT           R5, R1
165B2E:  CMP             R0, R5
165B30:  BGE             loc_165B90
165B32:  STR             R2, [SP,#0x30+var_28]
165B34:  LDR             R0, =(dword_381B58 - 0x165B3A)
165B36:  ADD             R0, PC; dword_381B58
165B38:  STR             R0, [SP,#0x30+var_2C]
165B3A:  LDR             R0, [R0]
165B3C:  CBZ             R0, loc_165B48
165B3E:  LDR.W           R1, [R0,#0x370]
165B42:  ADDS            R1, #1
165B44:  STR.W           R1, [R0,#0x370]
165B48:  LDR             R1, =(dword_381B60 - 0x165B50)
165B4A:  LDR             R0, =(off_2390AC - 0x165B52)
165B4C:  ADD             R1, PC; dword_381B60
165B4E:  ADD             R0, PC; off_2390AC
165B50:  MOV             R11, R1
165B52:  LDR             R1, [R1]
165B54:  LDR             R2, [R0]; sub_171190
165B56:  MOV             R0, R5
165B58:  BLX             R2; sub_171190
165B5A:  LDR             R1, [R6,#8]; src
165B5C:  MOV             R4, R0
165B5E:  CBZ             R1, loc_165B88
165B60:  LDR             R2, [R6]; n
165B62:  MOV             R0, R4; dest
165B64:  BLX             j_memcpy
165B68:  LDR             R0, [R6,#8]
165B6A:  CBZ             R0, loc_165B7C
165B6C:  LDR             R1, [SP,#0x30+var_2C]
165B6E:  LDR             R1, [R1]
165B70:  CBZ             R1, loc_165B7C
165B72:  LDR.W           R2, [R1,#0x370]
165B76:  SUBS            R2, #1
165B78:  STR.W           R2, [R1,#0x370]
165B7C:  LDR             R2, =(off_2390B0 - 0x165B86)
165B7E:  LDR.W           R1, [R11]
165B82:  ADD             R2, PC; off_2390B0
165B84:  LDR             R2, [R2]; j_opus_decoder_destroy_0
165B86:  BLX             R2; j_opus_decoder_destroy_0
165B88:  STR             R4, [R6,#8]
165B8A:  MOV             R4, R5
165B8C:  LDR             R2, [SP,#0x30+var_28]
165B8E:  STR             R4, [R6,#4]
165B90:  LDR.W           R11, [R6,#8]
165B94:  ADD.W           R5, R9, #1
165B98:  LDR             R3, [SP,#0x30+arg]; arg
165B9A:  ADD.W           R0, R10, R11
165B9E:  STR             R2, [R6]
165BA0:  SUBS            R4, R0, #1
165BA2:  MOV             R1, R5; maxlen
165BA4:  MOV             R2, R8; format
165BA6:  MOV             R0, R4; s
165BA8:  BLX             vsnprintf
165BAC:  CMP.W           R11, #0
165BB0:  BEQ             loc_165BC6
165BB2:  CMP             R0, R5
165BB4:  MOV             R1, R9
165BB6:  IT LT
165BB8:  MOVLT           R1, R0
165BBA:  ADDS            R0, #1
165BBC:  MOV.W           R0, #0
165BC0:  IT EQ
165BC2:  MOVEQ           R1, R9
165BC4:  STRB            R0, [R4,R1]
165BC6:  ADD             SP, SP, #0x14
165BC8:  POP.W           {R8-R11}
165BCC:  POP             {R4-R7,PC}
