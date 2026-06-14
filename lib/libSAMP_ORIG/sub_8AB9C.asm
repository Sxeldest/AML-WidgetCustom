; =========================================================
; Game Engine Function: sub_8AB9C
; Address            : 0x8AB9C - 0x8AC84
; =========================================================

8AB9C:  PUSH            {R4-R7,LR}
8AB9E:  ADD             R7, SP, #0xC
8ABA0:  PUSH.W          {R8}
8ABA4:  MOV             R4, R0
8ABA6:  BL              sub_9BC18
8ABAA:  LDR             R0, [R4,#0x74]
8ABAC:  LDR             R5, =(dword_1ACF68 - 0x8ABB6)
8ABAE:  LDR             R6, =(dword_1ACF70 - 0x8ABB8)
8ABB0:  LDR             R1, =(off_11724C - 0x8ABBA)
8ABB2:  ADD             R5, PC; dword_1ACF68
8ABB4:  ADD             R6, PC; dword_1ACF70
8ABB6:  ADD             R1, PC; off_11724C
8ABB8:  MOV             R8, R1
8ABBA:  CBZ             R0, loc_8ABD4
8ABBC:  LDR             R1, [R5]
8ABBE:  CMP             R1, #0
8ABC0:  ITTT NE
8ABC2:  LDRNE.W         R2, [R1,#0x370]
8ABC6:  SUBNE           R2, #1
8ABC8:  STRNE.W         R2, [R1,#0x370]
8ABCC:  LDR             R1, [R6]
8ABCE:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ABD2:  BLX             R2; j_opus_decoder_destroy_0
8ABD4:  LDR             R0, [R4,#0x60]
8ABD6:  CBZ             R0, loc_8ABF0
8ABD8:  LDR             R1, [R5]
8ABDA:  CMP             R1, #0
8ABDC:  ITTT NE
8ABDE:  LDRNE.W         R2, [R1,#0x370]
8ABE2:  SUBNE           R2, #1
8ABE4:  STRNE.W         R2, [R1,#0x370]
8ABE8:  LDR             R1, [R6]
8ABEA:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ABEE:  BLX             R2; j_opus_decoder_destroy_0
8ABF0:  LDR             R0, [R4,#0x54]
8ABF2:  CBZ             R0, loc_8AC0C
8ABF4:  LDR             R1, [R5]
8ABF6:  CMP             R1, #0
8ABF8:  ITTT NE
8ABFA:  LDRNE.W         R2, [R1,#0x370]
8ABFE:  SUBNE           R2, #1
8AC00:  STRNE.W         R2, [R1,#0x370]
8AC04:  LDR             R1, [R6]
8AC06:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AC0A:  BLX             R2; j_opus_decoder_destroy_0
8AC0C:  LDR             R0, [R4,#0x48]
8AC0E:  CBZ             R0, loc_8AC28
8AC10:  LDR             R1, [R5]
8AC12:  CMP             R1, #0
8AC14:  ITTT NE
8AC16:  LDRNE.W         R2, [R1,#0x370]
8AC1A:  SUBNE           R2, #1
8AC1C:  STRNE.W         R2, [R1,#0x370]
8AC20:  LDR             R1, [R6]
8AC22:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AC26:  BLX             R2; j_opus_decoder_destroy_0
8AC28:  LDR             R0, [R4,#0x20]
8AC2A:  CBZ             R0, loc_8AC44
8AC2C:  LDR             R1, [R5]
8AC2E:  CMP             R1, #0
8AC30:  ITTT NE
8AC32:  LDRNE.W         R2, [R1,#0x370]
8AC36:  SUBNE           R2, #1
8AC38:  STRNE.W         R2, [R1,#0x370]
8AC3C:  LDR             R1, [R6]
8AC3E:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AC42:  BLX             R2; j_opus_decoder_destroy_0
8AC44:  LDR             R0, [R4,#0x14]
8AC46:  CBZ             R0, loc_8AC60
8AC48:  LDR             R1, [R5]
8AC4A:  CMP             R1, #0
8AC4C:  ITTT NE
8AC4E:  LDRNE.W         R2, [R1,#0x370]
8AC52:  SUBNE           R2, #1
8AC54:  STRNE.W         R2, [R1,#0x370]
8AC58:  LDR             R1, [R6]
8AC5A:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AC5E:  BLX             R2; j_opus_decoder_destroy_0
8AC60:  LDR             R0, [R4,#8]
8AC62:  CBZ             R0, loc_8AC7C
8AC64:  LDR             R1, [R5]
8AC66:  CMP             R1, #0
8AC68:  ITTT NE
8AC6A:  LDRNE.W         R2, [R1,#0x370]
8AC6E:  SUBNE           R2, #1
8AC70:  STRNE.W         R2, [R1,#0x370]
8AC74:  LDR             R1, [R6]
8AC76:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AC7A:  BLX             R2; j_opus_decoder_destroy_0
8AC7C:  MOV             R0, R4
8AC7E:  POP.W           {R8}
8AC82:  POP             {R4-R7,PC}
