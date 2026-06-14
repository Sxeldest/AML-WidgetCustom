; =========================================================
; Game Engine Function: sub_9AC0C
; Address            : 0x9AC0C - 0x9ACF8
; =========================================================

9AC0C:  PUSH            {R4-R7,LR}
9AC0E:  ADD             R7, SP, #0xC
9AC10:  PUSH.W          {R8-R11}
9AC14:  SUB             SP, SP, #4
9AC16:  MOV             R4, R0
9AC18:  LDR             R0, [R0,#0xC]
9AC1A:  CMP             R0, #1
9AC1C:  LDR             R0, =(dword_1ACF68 - 0x9AC22)
9AC1E:  ADD             R0, PC; dword_1ACF68
9AC20:  MOV             R11, R0
9AC22:  LDR             R0, =(dword_1ACF70 - 0x9AC28)
9AC24:  ADD             R0, PC; dword_1ACF70
9AC26:  MOV             R9, R0
9AC28:  LDR             R0, =(off_11724C - 0x9AC2E)
9AC2A:  ADD             R0, PC; off_11724C
9AC2C:  MOV             R10, R0
9AC2E:  BLT             loc_9AC9A
9AC30:  MOVS            R6, #0
9AC32:  MOV.W           R8, #0x74 ; 't'
9AC36:  B               loc_9AC40
9AC38:  LDR             R0, [R4,#0xC]
9AC3A:  ADDS            R6, #1
9AC3C:  CMP             R6, R0
9AC3E:  BGE             loc_9AC9A
9AC40:  LDR             R0, [R4,#0x14]
9AC42:  ADD.W           R0, R0, R6,LSL#3
9AC46:  LDR             R0, [R0,#4]
9AC48:  ADDS            R1, R0, #1
9AC4A:  BEQ             loc_9AC38
9AC4C:  LDR             R1, [R4,#8]
9AC4E:  MLA.W           R5, R0, R8, R1
9AC52:  LDR             R0, [R5,#0x70]
9AC54:  CBZ             R0, loc_9AC74
9AC56:  MOV             R1, R11
9AC58:  LDR.W           R1, [R11]
9AC5C:  CMP             R1, #0
9AC5E:  ITTT NE
9AC60:  LDRNE.W         R2, [R1,#0x370]
9AC64:  SUBNE           R2, #1
9AC66:  STRNE.W         R2, [R1,#0x370]
9AC6A:  LDR.W           R1, [R9]
9AC6E:  LDR.W           R2, [R10]; j_opus_decoder_destroy_0
9AC72:  BLX             R2; j_opus_decoder_destroy_0
9AC74:  LDR             R0, [R5,#8]
9AC76:  CMP             R0, #0
9AC78:  BEQ             loc_9AC38
9AC7A:  MOV             R1, R11
9AC7C:  LDR.W           R1, [R11]
9AC80:  CMP             R1, #0
9AC82:  ITTT NE
9AC84:  LDRNE.W         R2, [R1,#0x370]
9AC88:  SUBNE           R2, #1
9AC8A:  STRNE.W         R2, [R1,#0x370]
9AC8E:  LDR.W           R1, [R9]
9AC92:  LDR.W           R2, [R10]; j_opus_decoder_destroy_0
9AC96:  BLX             R2; j_opus_decoder_destroy_0
9AC98:  B               loc_9AC38
9AC9A:  LDR             R0, [R4,#0x14]
9AC9C:  CBZ             R0, loc_9ACC4
9AC9E:  MOV             R1, R11
9ACA0:  MOVS            R5, #0
9ACA2:  LDR.W           R1, [R11]
9ACA6:  STRD.W          R5, R5, [R4,#0xC]
9ACAA:  CMP             R1, #0
9ACAC:  ITTT NE
9ACAE:  LDRNE.W         R2, [R1,#0x370]
9ACB2:  SUBNE           R2, #1
9ACB4:  STRNE.W         R2, [R1,#0x370]
9ACB8:  LDR.W           R1, [R9]
9ACBC:  LDR.W           R2, [R10]; j_opus_decoder_destroy_0
9ACC0:  BLX             R2; j_opus_decoder_destroy_0
9ACC2:  STR             R5, [R4,#0x14]
9ACC4:  LDR             R0, [R4,#8]
9ACC6:  CBZ             R0, loc_9ACEC
9ACC8:  MOVS            R5, #0
9ACCA:  LDR.W           R1, [R11]
9ACCE:  STRD.W          R5, R5, [R4]
9ACD2:  CMP             R1, #0
9ACD4:  ITTT NE
9ACD6:  LDRNE.W         R2, [R1,#0x370]
9ACDA:  SUBNE           R2, #1
9ACDC:  STRNE.W         R2, [R1,#0x370]
9ACE0:  LDR.W           R1, [R9]
9ACE4:  LDR.W           R2, [R10]; j_opus_decoder_destroy_0
9ACE8:  BLX             R2; j_opus_decoder_destroy_0
9ACEA:  STR             R5, [R4,#8]
9ACEC:  MOVS            R0, #0
9ACEE:  STR             R0, [R4,#0x18]
9ACF0:  ADD             SP, SP, #4
9ACF2:  POP.W           {R8-R11}
9ACF6:  POP             {R4-R7,PC}
