; =========================================================
; Game Engine Function: sub_8AD6C
; Address            : 0x8AD6C - 0x8AE22
; =========================================================

8AD6C:  PUSH            {R4-R7,LR}
8AD6E:  ADD             R7, SP, #0xC
8AD70:  PUSH.W          {R8}
8AD74:  MOV             R4, R0
8AD76:  LDR.W           R0, [R0,#0xDC]
8AD7A:  LDR             R5, =(dword_1ACF68 - 0x8AD84)
8AD7C:  LDR             R6, =(dword_1ACF70 - 0x8AD86)
8AD7E:  LDR             R1, =(off_11724C - 0x8AD88)
8AD80:  ADD             R5, PC; dword_1ACF68
8AD82:  ADD             R6, PC; dword_1ACF70
8AD84:  ADD             R1, PC; off_11724C
8AD86:  MOV             R8, R1
8AD88:  CBZ             R0, loc_8ADA2
8AD8A:  LDR             R1, [R5]
8AD8C:  CMP             R1, #0
8AD8E:  ITTT NE
8AD90:  LDRNE.W         R2, [R1,#0x370]
8AD94:  SUBNE           R2, #1
8AD96:  STRNE.W         R2, [R1,#0x370]
8AD9A:  LDR             R1, [R6]
8AD9C:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ADA0:  BLX             R2; j_opus_decoder_destroy_0
8ADA2:  LDR.W           R0, [R4,#0xD0]
8ADA6:  CBZ             R0, loc_8ADC0
8ADA8:  LDR             R1, [R5]
8ADAA:  CMP             R1, #0
8ADAC:  ITTT NE
8ADAE:  LDRNE.W         R2, [R1,#0x370]
8ADB2:  SUBNE           R2, #1
8ADB4:  STRNE.W         R2, [R1,#0x370]
8ADB8:  LDR             R1, [R6]
8ADBA:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ADBE:  BLX             R2; j_opus_decoder_destroy_0
8ADC0:  LDR.W           R0, [R4,#0xC4]
8ADC4:  CBZ             R0, loc_8ADDE
8ADC6:  LDR             R1, [R5]
8ADC8:  CMP             R1, #0
8ADCA:  ITTT NE
8ADCC:  LDRNE.W         R2, [R1,#0x370]
8ADD0:  SUBNE           R2, #1
8ADD2:  STRNE.W         R2, [R1,#0x370]
8ADD6:  LDR             R1, [R6]
8ADD8:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ADDC:  BLX             R2; j_opus_decoder_destroy_0
8ADDE:  LDR.W           R0, [R4,#0xB8]
8ADE2:  CBZ             R0, loc_8ADFC
8ADE4:  LDR             R1, [R5]
8ADE6:  CMP             R1, #0
8ADE8:  ITTT NE
8ADEA:  LDRNE.W         R2, [R1,#0x370]
8ADEE:  SUBNE           R2, #1
8ADF0:  STRNE.W         R2, [R1,#0x370]
8ADF4:  LDR             R1, [R6]
8ADF6:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8ADFA:  BLX             R2; j_opus_decoder_destroy_0
8ADFC:  LDR.W           R0, [R4,#0x8C]
8AE00:  CBZ             R0, loc_8AE1A
8AE02:  LDR             R1, [R5]
8AE04:  CMP             R1, #0
8AE06:  ITTT NE
8AE08:  LDRNE.W         R2, [R1,#0x370]
8AE0C:  SUBNE           R2, #1
8AE0E:  STRNE.W         R2, [R1,#0x370]
8AE12:  LDR             R1, [R6]
8AE14:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
8AE18:  BLX             R2; j_opus_decoder_destroy_0
8AE1A:  MOV             R0, R4
8AE1C:  POP.W           {R8}
8AE20:  POP             {R4-R7,PC}
