; =========================================================
; Game Engine Function: sub_16DCC0
; Address            : 0x16DCC0 - 0x16DDD0
; =========================================================

16DCC0:  PUSH            {R4-R7,LR}
16DCC2:  ADD             R7, SP, #0xC
16DCC4:  PUSH.W          {R8-R11}
16DCC8:  SUB             SP, SP, #4
16DCCA:  MOV             R4, R0
16DCCC:  LDRD.W          R6, R0, [R0]
16DCD0:  LDR             R2, [R4,#0xC]
16DCD2:  ADDS            R5, R2, R6
16DCD4:  CMP             R0, R5
16DCD6:  MOV             R9, R5
16DCD8:  BGE             loc_16DD4E
16DCDA:  CMP             R0, #0
16DCDC:  ITTE NE
16DCDE:  ADDNE.W         R1, R0, R0,LSR#31
16DCE2:  ADDNE.W         R1, R0, R1,ASR#1
16DCE6:  MOVEQ           R1, #8
16DCE8:  CMP             R1, R5
16DCEA:  IT GT
16DCEC:  MOVGT           R5, R1
16DCEE:  CMP             R0, R5
16DCF0:  BGE             loc_16DD4E
16DCF2:  LDR             R0, =(dword_381B58 - 0x16DCF8)
16DCF4:  ADD             R0, PC; dword_381B58
16DCF6:  LDR             R1, [R0]
16DCF8:  MOV             R10, R0
16DCFA:  LSLS            R0, R5, #2
16DCFC:  CBZ             R1, loc_16DD08
16DCFE:  LDR.W           R2, [R1,#0x370]
16DD02:  ADDS            R2, #1
16DD04:  STR.W           R2, [R1,#0x370]
16DD08:  LDR             R1, =(dword_381B60 - 0x16DD10)
16DD0A:  LDR             R2, =(off_2390AC - 0x16DD12)
16DD0C:  ADD             R1, PC; dword_381B60
16DD0E:  ADD             R2, PC; off_2390AC
16DD10:  MOV             R11, R1
16DD12:  LDR             R1, [R1]
16DD14:  LDR             R2, [R2]; sub_171190
16DD16:  BLX             R2; sub_171190
16DD18:  LDR             R1, [R4,#8]; src
16DD1A:  MOV             R8, R0
16DD1C:  CBZ             R1, loc_16DD48
16DD1E:  LDR             R0, [R4]
16DD20:  LSLS            R2, R0, #2; n
16DD22:  MOV             R0, R8; dest
16DD24:  BLX             j_memcpy
16DD28:  LDR             R0, [R4,#8]
16DD2A:  CBZ             R0, loc_16DD3C
16DD2C:  LDR.W           R1, [R10]
16DD30:  CBZ             R1, loc_16DD3C
16DD32:  LDR.W           R2, [R1,#0x370]
16DD36:  SUBS            R2, #1
16DD38:  STR.W           R2, [R1,#0x370]
16DD3C:  LDR             R2, =(off_2390B0 - 0x16DD46)
16DD3E:  LDR.W           R1, [R11]
16DD42:  ADD             R2, PC; off_2390B0
16DD44:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16DD46:  BLX             R2; j_opus_decoder_destroy_0
16DD48:  LDR             R2, [R4,#0xC]
16DD4A:  STRD.W          R5, R8, [R4,#4]
16DD4E:  STR.W           R9, [R4]
16DD52:  CBZ             R2, loc_16DDC8
16DD54:  LDR             R0, [R4,#8]
16DD56:  LSLS            R2, R2, #2; n
16DD58:  LDR             R1, [R4,#0x14]; src
16DD5A:  ADD.W           R0, R0, R6,LSL#2; dest
16DD5E:  BLX             j_memcpy
16DD62:  LDR             R0, [R4,#0x10]
16DD64:  CMP.W           R0, #0xFFFFFFFF
16DD68:  BGT             loc_16DDC4
16DD6A:  LDR             R0, =(dword_381B58 - 0x16DD70)
16DD6C:  ADD             R0, PC; dword_381B58
16DD6E:  MOV             R9, R0
16DD70:  LDR             R0, [R0]
16DD72:  CBZ             R0, loc_16DD7E
16DD74:  LDR.W           R1, [R0,#0x370]
16DD78:  ADDS            R1, #1
16DD7A:  STR.W           R1, [R0,#0x370]
16DD7E:  LDR             R6, =(dword_381B60 - 0x16DD8A)
16DD80:  MOV.W           R8, #0
16DD84:  LDR             R0, =(off_2390AC - 0x16DD8C)
16DD86:  ADD             R6, PC; dword_381B60
16DD88:  ADD             R0, PC; off_2390AC
16DD8A:  LDR             R1, [R6]
16DD8C:  LDR             R2, [R0]; sub_171190
16DD8E:  MOVS            R0, #0
16DD90:  BLX             R2; sub_171190
16DD92:  LDR             R1, [R4,#0x14]; src
16DD94:  MOV             R5, R0
16DD96:  CBZ             R1, loc_16DDC0
16DD98:  LDR             R0, [R4,#0xC]
16DD9A:  LSLS            R2, R0, #2; n
16DD9C:  MOV             R0, R5; dest
16DD9E:  BLX             j_memcpy
16DDA2:  LDR             R0, [R4,#0x14]
16DDA4:  CBZ             R0, loc_16DDB6
16DDA6:  LDR.W           R1, [R9]
16DDAA:  CBZ             R1, loc_16DDB6
16DDAC:  LDR.W           R2, [R1,#0x370]
16DDB0:  SUBS            R2, #1
16DDB2:  STR.W           R2, [R1,#0x370]
16DDB6:  LDR             R2, =(off_2390B0 - 0x16DDBE)
16DDB8:  LDR             R1, [R6]
16DDBA:  ADD             R2, PC; off_2390B0
16DDBC:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16DDBE:  BLX             R2; j_opus_decoder_destroy_0
16DDC0:  STRD.W          R8, R5, [R4,#0x10]
16DDC4:  MOVS            R0, #0
16DDC6:  STR             R0, [R4,#0xC]
16DDC8:  ADD             SP, SP, #4
16DDCA:  POP.W           {R8-R11}
16DDCE:  POP             {R4-R7,PC}
