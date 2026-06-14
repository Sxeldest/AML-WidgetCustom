; =========================================================
; Game Engine Function: sub_170E70
; Address            : 0x170E70 - 0x170FB0
; =========================================================

170E70:  PUSH            {R4-R7,LR}
170E72:  ADD             R7, SP, #0xC
170E74:  PUSH.W          {R8-R11}
170E78:  SUB             SP, SP, #4
170E7A:  LDR             R6, =(dword_381B58 - 0x170E8A)
170E7C:  MOV             R8, R0
170E7E:  MOV.W           R0, #0x2D00
170E82:  MOVW            R2, #0x2CF8
170E86:  ADD             R6, PC; dword_381B58
170E88:  MOVS            R1, #0
170E8A:  LDR.W           R10, [R6]
170E8E:  LDR.W           R0, [R10,R0]
170E92:  STR.W           R1, [R10,R2]
170E96:  MOVW            R2, #0x2CFC
170E9A:  ADD.W           R5, R10, R2
170E9E:  CMP.W           R0, #0xFFFFFFFF
170EA2:  BLE             loc_170EB2
170EA4:  STR             R1, [R5]
170EA6:  STRB.W          R1, [R7,#var_1D]
170EAA:  CBZ             R0, loc_170F08
170EAC:  LDR             R4, [R5,#8]
170EAE:  MOVS            R0, #0
170EB0:  B               loc_170F5E
170EB2:  LDR             R0, =(off_2390AC - 0x170EBE)
170EB4:  MOV.W           R9, #0
170EB8:  LDR             R1, =(dword_381B60 - 0x170EC4)
170EBA:  ADD             R0, PC; off_2390AC
170EBC:  LDR.W           R2, [R10,#0x370]
170EC0:  ADD             R1, PC; dword_381B60
170EC2:  LDR             R3, [R0]; sub_171190
170EC4:  ADDS            R0, R2, #1
170EC6:  MOV             R11, R1
170EC8:  LDR             R1, [R1]
170ECA:  STR.W           R0, [R10,#0x370]
170ECE:  MOVS            R0, #0
170ED0:  BLX             R3; sub_171190
170ED2:  LDR             R1, [R5,#8]; src
170ED4:  MOV             R4, R0
170ED6:  CBZ             R1, loc_170EFE
170ED8:  LDR             R2, [R5]; n
170EDA:  MOV             R0, R4; dest
170EDC:  BLX             j_memcpy
170EE0:  LDR             R0, [R5,#8]
170EE2:  CBZ             R0, loc_170EF2
170EE4:  LDR             R1, [R6]
170EE6:  CBZ             R1, loc_170EF2
170EE8:  LDR.W           R2, [R1,#0x370]
170EEC:  SUBS            R2, #1
170EEE:  STR.W           R2, [R1,#0x370]
170EF2:  LDR             R2, =(off_2390B0 - 0x170EFC)
170EF4:  LDR.W           R1, [R11]
170EF8:  ADD             R2, PC; off_2390B0
170EFA:  LDR             R2, [R2]; j_opus_decoder_destroy_0
170EFC:  BLX             R2; j_opus_decoder_destroy_0
170EFE:  STRD.W          R9, R9, [R5]
170F02:  STR             R4, [R5,#8]
170F04:  STRB.W          R9, [R7,#var_1D]
170F08:  LDR             R0, [R6]
170F0A:  CBZ             R0, loc_170F16
170F0C:  LDR.W           R1, [R0,#0x370]
170F10:  ADDS            R1, #1
170F12:  STR.W           R1, [R0,#0x370]
170F16:  LDR             R1, =(dword_381B60 - 0x170F22)
170F18:  MOV.W           R9, #8
170F1C:  LDR             R0, =(off_2390AC - 0x170F24)
170F1E:  ADD             R1, PC; dword_381B60
170F20:  ADD             R0, PC; off_2390AC
170F22:  MOV             R11, R1
170F24:  LDR             R1, [R1]
170F26:  LDR             R2, [R0]; sub_171190
170F28:  MOVS            R0, #8
170F2A:  BLX             R2; sub_171190
170F2C:  LDR             R1, [R5,#8]; src
170F2E:  MOV             R4, R0
170F30:  CBZ             R1, loc_170F58
170F32:  LDR             R2, [R5]; n
170F34:  MOV             R0, R4; dest
170F36:  BLX             j_memcpy
170F3A:  LDR             R0, [R5,#8]
170F3C:  CBZ             R0, loc_170F4C
170F3E:  LDR             R1, [R6]
170F40:  CBZ             R1, loc_170F4C
170F42:  LDR.W           R2, [R1,#0x370]
170F46:  SUBS            R2, #1
170F48:  STR.W           R2, [R1,#0x370]
170F4C:  LDR             R2, =(off_2390B0 - 0x170F56)
170F4E:  LDR.W           R1, [R11]
170F52:  ADD             R2, PC; off_2390B0
170F54:  LDR             R2, [R2]; j_opus_decoder_destroy_0
170F56:  BLX             R2; j_opus_decoder_destroy_0
170F58:  LDR             R0, [R5]
170F5A:  STRD.W          R9, R4, [R5,#4]
170F5E:  LDRB.W          R1, [R7,#var_1D]
170F62:  STRB            R1, [R4,R0]
170F64:  LDR             R0, [R5]
170F66:  ADDS            R0, #1
170F68:  STR             R0, [R5]
170F6A:  LDR             R0, [R5,#0xC]
170F6C:  CMP             R0, #1
170F6E:  BLT             loc_170F8A
170F70:  MOVS            R4, #0
170F72:  MOVS            R6, #0
170F74:  LDR             R0, [R5,#0x14]
170F76:  MOV             R2, R5
170F78:  ADDS            R1, R0, R4
170F7A:  MOV             R0, R10
170F7C:  LDR             R3, [R1,#0x10]
170F7E:  BLX             R3
170F80:  LDR             R0, [R5,#0xC]
170F82:  ADDS            R6, #1
170F84:  ADDS            R4, #0x18
170F86:  CMP             R6, R0
170F88:  BLT             loc_170F74
170F8A:  CMP.W           R8, #0
170F8E:  BEQ             loc_170F9C
170F90:  LDR             R0, [R5]
170F92:  CMP             R0, #0
170F94:  IT NE
170F96:  SUBNE           R0, #1
170F98:  STR.W           R0, [R8]
170F9C:  LDR             R1, [R5,#8]
170F9E:  LDR             R0, =(unk_381B5C - 0x170FA6)
170FA0:  CMP             R1, #0
170FA2:  ADD             R0, PC; unk_381B5C
170FA4:  IT NE
170FA6:  MOVNE           R0, R1
170FA8:  ADD             SP, SP, #4
170FAA:  POP.W           {R8-R11}
170FAE:  POP             {R4-R7,PC}
