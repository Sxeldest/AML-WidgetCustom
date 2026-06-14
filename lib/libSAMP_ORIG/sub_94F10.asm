; =========================================================
; Game Engine Function: sub_94F10
; Address            : 0x94F10 - 0x9500C
; =========================================================

94F10:  PUSH            {R4-R7,LR}
94F12:  ADD             R7, SP, #0xC
94F14:  PUSH.W          {R8-R10}
94F18:  SUB             SP, SP, #8
94F1A:  MOV             R9, R0
94F1C:  MOV             R4, R1
94F1E:  LDR             R0, [R0]
94F20:  LDR.W           R1, [R9,#4]
94F24:  STR             R4, [SP,#0x20+var_1C]
94F26:  CMP             R0, R1
94F28:  BNE             loc_94FAC
94F2A:  CMP             R0, #0
94F2C:  ADD.W           R6, R0, #1
94F30:  ITTE NE
94F32:  ADDNE.W         R1, R0, R0,LSR#31
94F36:  ADDNE.W         R1, R0, R1,ASR#1
94F3A:  MOVEQ           R1, #8
94F3C:  CMP             R1, R6
94F3E:  IT GT
94F40:  MOVGT           R6, R1
94F42:  CMP             R0, R6
94F44:  BGE             loc_94FAC
94F46:  LDR             R5, =(dword_1ACF68 - 0x94F4E)
94F48:  LSLS            R0, R6, #2
94F4A:  ADD             R5, PC; dword_1ACF68
94F4C:  LDR             R1, [R5]
94F4E:  CMP             R1, #0
94F50:  ITTT NE
94F52:  LDRNE.W         R2, [R1,#0x370]
94F56:  ADDNE           R2, #1
94F58:  STRNE.W         R2, [R1,#0x370]
94F5C:  LDR             R1, =(dword_1ACF70 - 0x94F64)
94F5E:  LDR             R2, =(off_117248 - 0x94F66)
94F60:  ADD             R1, PC; dword_1ACF70
94F62:  ADD             R2, PC; off_117248
94F64:  MOV             R10, R1
94F66:  LDR             R1, [R1]
94F68:  LDR             R2, [R2]; sub_9A720
94F6A:  BLX             R2; sub_9A720
94F6C:  LDR.W           R1, [R9,#8]; src
94F70:  MOV             R8, R0
94F72:  CBZ             R1, loc_94FA4
94F74:  LDR.W           R0, [R9]
94F78:  LSLS            R2, R0, #2; n
94F7A:  MOV             R0, R8; dest
94F7C:  BLX             j_memcpy
94F80:  LDR.W           R0, [R9,#8]
94F84:  CMP             R0, #0
94F86:  ITTTT NE
94F88:  LDRNE           R1, [R5]
94F8A:  CMPNE           R1, #0
94F8C:  LDRNE.W         R2, [R1,#0x370]
94F90:  SUBNE           R2, #1
94F92:  IT NE
94F94:  STRNE.W         R2, [R1,#0x370]
94F98:  LDR             R2, =(off_11724C - 0x94FA2)
94F9A:  LDR.W           R1, [R10]
94F9E:  ADD             R2, PC; off_11724C
94FA0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
94FA2:  BLX             R2; j_opus_decoder_destroy_0
94FA4:  LDR.W           R0, [R9]
94FA8:  STRD.W          R6, R8, [R9,#4]
94FAC:  LDR.W           R1, [R9,#8]
94FB0:  LDR             R2, [SP,#0x20+var_1C]
94FB2:  STR.W           R2, [R1,R0,LSL#2]
94FB6:  LDRB.W          R1, [R4,#0x7A]
94FBA:  LDR.W           R0, [R9]
94FBE:  ADD.W           R0, R0, #1
94FC2:  STR.W           R0, [R9]
94FC6:  CBZ             R1, loc_95004
94FC8:  LDR.W           R6, [R4,#0x14C]
94FCC:  CMP             R6, #2
94FCE:  BLT             loc_94FE2
94FD0:  LDR             R3, =(sub_9AD0C+1 - 0x94FDE)
94FD2:  MOV             R1, R6; nmemb
94FD4:  LDR.W           R0, [R4,#0x154]; base
94FD8:  MOVS            R2, #4; size
94FDA:  ADD             R3, PC; sub_9AD0C ; compar
94FDC:  BLX             qsort
94FE0:  B               loc_94FE6
94FE2:  CMP             R6, #1
94FE4:  BNE             loc_95004
94FE6:  MOVS            R5, #0
94FE8:  LDR.W           R0, [R4,#0x154]
94FEC:  LDR.W           R1, [R0,R5,LSL#2]
94FF0:  LDRB.W          R0, [R1,#0x7A]
94FF4:  CMP             R0, #0
94FF6:  ITT NE
94FF8:  MOVNE           R0, R9
94FFA:  BLNE            sub_94F10
94FFE:  ADDS            R5, #1
95000:  CMP             R6, R5
95002:  BNE             loc_94FE8
95004:  ADD             SP, SP, #8
95006:  POP.W           {R8-R10}
9500A:  POP             {R4-R7,PC}
