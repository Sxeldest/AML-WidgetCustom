; =========================================================
; Game Engine Function: sub_88E34
; Address            : 0x88E34 - 0x88F0A
; =========================================================

88E34:  PUSH            {R4-R7,LR}
88E36:  ADD             R7, SP, #0xC
88E38:  PUSH.W          {R8-R11}
88E3C:  SUB             SP, SP, #4
88E3E:  MOV             R4, R0
88E40:  MOV             R8, R2
88E42:  LDR             R6, [R4,#8]
88E44:  LDRD.W          R2, R0, [R0]
88E48:  SUBS            R1, R1, R6
88E4A:  CMP             R2, R0
88E4C:  MOV.W           R5, R1,ASR#3
88E50:  BNE             loc_88ED2
88E52:  CMP             R2, #0
88E54:  ADD.W           R9, R2, #1
88E58:  ITTE NE
88E5A:  ADDNE.W         R0, R2, R2,LSR#31
88E5E:  ADDNE.W         R0, R2, R0,ASR#1
88E62:  MOVEQ           R0, #8
88E64:  CMP             R0, R9
88E66:  IT GT
88E68:  MOVGT           R9, R0
88E6A:  CMP             R2, R9
88E6C:  BGE             loc_88ED2
88E6E:  LDR             R0, =(dword_1ACF68 - 0x88E74)
88E70:  ADD             R0, PC; dword_1ACF68
88E72:  LDR             R1, [R0]
88E74:  MOV             R10, R0
88E76:  MOV.W           R0, R9,LSL#3
88E7A:  CMP             R1, #0
88E7C:  ITTT NE
88E7E:  LDRNE.W         R2, [R1,#0x370]
88E82:  ADDNE           R2, #1
88E84:  STRNE.W         R2, [R1,#0x370]
88E88:  LDR             R1, =(dword_1ACF70 - 0x88E90)
88E8A:  LDR             R2, =(off_117248 - 0x88E92)
88E8C:  ADD             R1, PC; dword_1ACF70
88E8E:  ADD             R2, PC; off_117248
88E90:  MOV             R11, R1
88E92:  LDR             R1, [R1]
88E94:  LDR             R2, [R2]; sub_9A720
88E96:  BLX             R2; sub_9A720
88E98:  LDR             R1, [R4,#8]; src
88E9A:  MOV             R6, R0
88E9C:  CBZ             R1, loc_88ECC
88E9E:  LDR             R0, [R4]
88EA0:  LSLS            R2, R0, #3; n
88EA2:  MOV             R0, R6; dest
88EA4:  BLX             j_memcpy
88EA8:  LDR             R0, [R4,#8]
88EAA:  CMP             R0, #0
88EAC:  ITTTT NE
88EAE:  LDRNE.W         R1, [R10]
88EB2:  CMPNE           R1, #0
88EB4:  LDRNE.W         R2, [R1,#0x370]
88EB8:  SUBNE           R2, #1
88EBA:  IT NE
88EBC:  STRNE.W         R2, [R1,#0x370]
88EC0:  LDR             R2, =(off_11724C - 0x88ECA)
88EC2:  LDR.W           R1, [R11]
88EC6:  ADD             R2, PC; off_11724C
88EC8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
88ECA:  BLX             R2; j_opus_decoder_destroy_0
88ECC:  LDR             R2, [R4]
88ECE:  STRD.W          R9, R6, [R4,#4]
88ED2:  CMP             R2, R5
88ED4:  BLE             loc_88EE8
88ED6:  SUBS            R2, R2, R5
88ED8:  ADD.W           R1, R6, R5,LSL#3; src
88EDC:  ADD.W           R0, R1, #8; dest
88EE0:  LSLS            R2, R2, #3; n
88EE2:  BLX             j_memmove
88EE6:  LDR             R6, [R4,#8]
88EE8:  LDRD.W          R0, R1, [R8]
88EEC:  STR.W           R0, [R6,R5,LSL#3]
88EF0:  ADD.W           R0, R6, R5,LSL#3
88EF4:  STR             R1, [R0,#4]
88EF6:  LDR             R0, [R4]
88EF8:  LDR             R1, [R4,#8]
88EFA:  ADDS            R0, #1
88EFC:  STR             R0, [R4]
88EFE:  ADD.W           R0, R1, R5,LSL#3
88F02:  ADD             SP, SP, #4
88F04:  POP.W           {R8-R11}
88F08:  POP             {R4-R7,PC}
