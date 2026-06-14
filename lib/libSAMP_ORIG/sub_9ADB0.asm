; =========================================================
; Game Engine Function: sub_9ADB0
; Address            : 0x9ADB0 - 0x9AE50
; =========================================================

9ADB0:  PUSH            {R4-R7,LR}
9ADB2:  ADD             R7, SP, #0xC
9ADB4:  PUSH.W          {R8,R9,R11}
9ADB8:  MOV             R4, R0
9ADBA:  LDR             R0, [R0]
9ADBC:  MOV             R5, R1
9ADBE:  CBZ             R0, loc_9ADD0
9ADC0:  LDR             R1, [R4,#8]
9ADC2:  MOV             R0, R4
9ADC4:  MOV             R2, R5
9ADC6:  BL              sub_9AE60
9ADCA:  POP.W           {R8,R9,R11}
9ADCE:  POP             {R4-R7,PC}
9ADD0:  LDR             R0, [R4,#4]
9ADD2:  CBZ             R0, loc_9ADDA
9ADD4:  LDR             R6, [R4,#8]
9ADD6:  MOVS            R0, #0
9ADD8:  B               loc_9AE3E
9ADDA:  LDR             R0, =(dword_1ACF68 - 0x9ADE0)
9ADDC:  ADD             R0, PC; dword_1ACF68
9ADDE:  MOV             R8, R0
9ADE0:  LDR             R0, [R0]
9ADE2:  CMP             R0, #0
9ADE4:  ITTT NE
9ADE6:  LDRNE.W         R1, [R0,#0x370]
9ADEA:  ADDNE           R1, #1
9ADEC:  STRNE.W         R1, [R0,#0x370]
9ADF0:  LDR             R1, =(dword_1ACF70 - 0x9ADF8)
9ADF2:  LDR             R0, =(off_117248 - 0x9ADFA)
9ADF4:  ADD             R1, PC; dword_1ACF70
9ADF6:  ADD             R0, PC; off_117248
9ADF8:  MOV             R9, R1
9ADFA:  LDR             R1, [R1]
9ADFC:  LDR             R2, [R0]; sub_9A720
9ADFE:  MOVS            R0, #0x20 ; ' '
9AE00:  BLX             R2; sub_9A720
9AE02:  LDR             R1, [R4,#8]; src
9AE04:  MOV             R6, R0
9AE06:  CBZ             R1, loc_9AE36
9AE08:  LDR             R0, [R4]
9AE0A:  LSLS            R2, R0, #2; n
9AE0C:  MOV             R0, R6; dest
9AE0E:  BLX             j_memcpy
9AE12:  LDR             R0, [R4,#8]
9AE14:  CMP             R0, #0
9AE16:  ITTTT NE
9AE18:  LDRNE.W         R1, [R8]
9AE1C:  CMPNE           R1, #0
9AE1E:  LDRNE.W         R2, [R1,#0x370]
9AE22:  SUBNE           R2, #1
9AE24:  IT NE
9AE26:  STRNE.W         R2, [R1,#0x370]
9AE2A:  LDR             R2, =(off_11724C - 0x9AE34)
9AE2C:  LDR.W           R1, [R9]
9AE30:  ADD             R2, PC; off_11724C
9AE32:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AE34:  BLX             R2; j_opus_decoder_destroy_0
9AE36:  LDR             R0, [R4]
9AE38:  MOVS            R1, #8
9AE3A:  STRD.W          R1, R6, [R4,#4]
9AE3E:  LDR             R1, [R5]
9AE40:  STR.W           R1, [R6,R0,LSL#2]
9AE44:  LDR             R0, [R4]
9AE46:  ADDS            R0, #1
9AE48:  STR             R0, [R4]
9AE4A:  POP.W           {R8,R9,R11}
9AE4E:  POP             {R4-R7,PC}
