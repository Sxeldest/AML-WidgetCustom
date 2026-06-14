; =========================================================
; Game Engine Function: sub_167E3C
; Address            : 0x167E3C - 0x167F2A
; =========================================================

167E3C:  PUSH            {R4-R7,LR}
167E3E:  ADD             R7, SP, #0xC
167E40:  PUSH.W          {R8-R10}
167E44:  SUB             SP, SP, #0x18
167E46:  MOV             R9, R0
167E48:  LDR             R0, =(aWindow - 0x167E52); "Window" ...
167E4A:  MOVS            R1, #0
167E4C:  MOVS            R2, #0
167E4E:  ADD             R0, PC; "Window"
167E50:  STR             R1, [SP,#0x30+var_1C]
167E52:  MOVS            R1, #0
167E54:  STR             R0, [SP,#0x30+var_30]
167E56:  BL              sub_16560C
167E5A:  MOVW            R6, #0x2D08
167E5E:  LDR             R2, =(sub_16DA94+1 - 0x167E68)
167E60:  LDR             R3, =(sub_16D9EC+1 - 0x167E74)
167E62:  LDR             R5, =(sub_16D9A8+1 - 0x167E70)
167E64:  ADD             R2, PC; sub_16DA94
167E66:  LDR.W           R1, [R9,R6]
167E6A:  ADD             R6, R9
167E6C:  ADD             R5, PC; sub_16D9A8
167E6E:  LDR             R4, [R6,#4]
167E70:  ADD             R3, PC; sub_16D9EC
167E72:  STRD.W          R3, R2, [SP,#0x30+var_24]
167E76:  CMP             R1, R4
167E78:  STRD.W          R0, R5, [SP,#0x30+var_2C]
167E7C:  BNE             loc_167EFA
167E7E:  CMP             R1, #0
167E80:  ADD.W           R5, R1, #1
167E84:  ITTE NE
167E86:  ADDNE.W         R0, R1, R1,LSR#31
167E8A:  ADDNE.W         R0, R1, R0,ASR#1
167E8E:  MOVEQ           R0, #8
167E90:  CMP             R0, R5
167E92:  IT GT
167E94:  MOVGT           R5, R0
167E96:  CMP             R1, R5
167E98:  BGE             loc_167EFA
167E9A:  LDR             R4, =(dword_381B58 - 0x167EA4)
167E9C:  ADD.W           R0, R5, R5,LSL#1
167EA0:  ADD             R4, PC; dword_381B58
167EA2:  LSLS            R0, R0, #3
167EA4:  LDR             R1, [R4]
167EA6:  CBZ             R1, loc_167EB2
167EA8:  LDR.W           R2, [R1,#0x370]
167EAC:  ADDS            R2, #1
167EAE:  STR.W           R2, [R1,#0x370]
167EB2:  LDR             R1, =(dword_381B60 - 0x167EBA)
167EB4:  LDR             R2, =(off_2390AC - 0x167EBC)
167EB6:  ADD             R1, PC; dword_381B60
167EB8:  ADD             R2, PC; off_2390AC
167EBA:  MOV             R10, R1
167EBC:  LDR             R1, [R1]
167EBE:  LDR             R2, [R2]; sub_171190
167EC0:  BLX             R2; sub_171190
167EC2:  LDR             R1, [R6,#8]; src
167EC4:  MOV             R8, R0
167EC6:  CBZ             R1, loc_167EF4
167EC8:  LDR             R0, [R6]
167ECA:  ADD.W           R0, R0, R0,LSL#1
167ECE:  LSLS            R2, R0, #3; n
167ED0:  MOV             R0, R8; dest
167ED2:  BLX             j_memcpy
167ED6:  LDR             R0, [R6,#8]
167ED8:  CBZ             R0, loc_167EE8
167EDA:  LDR             R1, [R4]
167EDC:  CBZ             R1, loc_167EE8
167EDE:  LDR.W           R2, [R1,#0x370]
167EE2:  SUBS            R2, #1
167EE4:  STR.W           R2, [R1,#0x370]
167EE8:  LDR             R2, =(off_2390B0 - 0x167EF2)
167EEA:  LDR.W           R1, [R10]
167EEE:  ADD             R2, PC; off_2390B0
167EF0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
167EF2:  BLX             R2; j_opus_decoder_destroy_0
167EF4:  LDR             R1, [R6]
167EF6:  STRD.W          R5, R8, [R6,#4]
167EFA:  MOV             R0, SP
167EFC:  LDR             R2, [R6,#8]
167EFE:  VLD1.8          {D16-D17}, [R0,#0x30+var_30]!
167F02:  ADD.W           R1, R1, R1,LSL#1
167F06:  VLDR            D18, [R0]
167F0A:  ADD.W           R0, R2, R1,LSL#3
167F0E:  VST1.8          {D16-D17}, [R0]!
167F12:  VST1.8          {D18}, [R0]
167F16:  MOVS            R0, #1
167F18:  LDR             R1, [R6]
167F1A:  STRB.W          R0, [R9]
167F1E:  ADDS            R0, R1, #1
167F20:  STR             R0, [R6]
167F22:  ADD             SP, SP, #0x18
167F24:  POP.W           {R8-R10}
167F28:  POP             {R4-R7,PC}
