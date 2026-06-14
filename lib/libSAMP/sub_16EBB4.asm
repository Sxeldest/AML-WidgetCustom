; =========================================================
; Game Engine Function: sub_16EBB4
; Address            : 0x16EBB4 - 0x16EC96
; =========================================================

16EBB4:  PUSH            {R4-R7,LR}
16EBB6:  ADD             R7, SP, #0xC
16EBB8:  PUSH.W          {R8-R11}
16EBBC:  SUB             SP, SP, #0x1C
16EBBE:  LDR             R4, =(dword_381B58 - 0x16EBCE)
16EBC0:  MOVW            R5, #0x15C4
16EBC4:  MOVW            R3, #0x1A78
16EBC8:  MOV             R9, R1
16EBCA:  ADD             R4, PC; dword_381B58
16EBCC:  ADD.W           R11, SP, #0x38+var_30
16EBD0:  STR             R0, [SP,#0x38+var_30]
16EBD2:  LDR             R2, [R4]
16EBD4:  ADD.W           R6, R2, R0,LSL#4
16EBD8:  ADD.W           R10, R6, R5
16EBDC:  ADDS            R5, R2, R3
16EBDE:  LDR             R1, [R2,R3]
16EBE0:  ADD.W           R6, R11, #4
16EBE4:  LDR             R3, [R5,#4]
16EBE6:  VLD1.32         {D16-D17}, [R10]
16EBEA:  CMP             R1, R3
16EBEC:  VST1.32         {D16-D17}, [R6]
16EBF0:  BNE             loc_16EC68
16EBF2:  CMP             R1, #0
16EBF4:  ADD.W           R6, R1, #1
16EBF8:  ITTE NE
16EBFA:  ADDNE.W         R0, R1, R1,LSR#31
16EBFE:  ADDNE.W         R0, R1, R0,ASR#1
16EC02:  MOVEQ           R0, #8
16EC04:  CMP             R0, R6
16EC06:  IT GT
16EC08:  MOVGT           R6, R0
16EC0A:  CMP             R1, R6
16EC0C:  BGE             loc_16EC68
16EC0E:  LDR             R0, =(off_2390AC - 0x16EC16)
16EC10:  LDR             R1, =(dword_381B60 - 0x16EC1C)
16EC12:  ADD             R0, PC; off_2390AC
16EC14:  LDR.W           R3, [R2,#0x370]
16EC18:  ADD             R1, PC; dword_381B60
16EC1A:  STR             R1, [SP,#0x38+var_34]
16EC1C:  LDR.W           R12, [R0]; sub_171190
16EC20:  ADDS            R0, R3, #1
16EC22:  STR.W           R0, [R2,#0x370]
16EC26:  ADD.W           R0, R6, R6,LSL#2
16EC2A:  LDR             R1, [R1]
16EC2C:  LSLS            R0, R0, #2
16EC2E:  BLX             R12; sub_171190
16EC30:  LDR             R1, [R5,#8]; src
16EC32:  MOV             R8, R0
16EC34:  CBZ             R1, loc_16EC62
16EC36:  LDR             R0, [R5]
16EC38:  ADD.W           R0, R0, R0,LSL#2
16EC3C:  LSLS            R2, R0, #2; n
16EC3E:  MOV             R0, R8; dest
16EC40:  BLX             j_memcpy
16EC44:  LDR             R0, [R5,#8]
16EC46:  CBZ             R0, loc_16EC56
16EC48:  LDR             R1, [R4]
16EC4A:  CBZ             R1, loc_16EC56
16EC4C:  LDR.W           R2, [R1,#0x370]
16EC50:  SUBS            R2, #1
16EC52:  STR.W           R2, [R1,#0x370]
16EC56:  LDR             R2, =(off_2390B0 - 0x16EC5E)
16EC58:  LDR             R1, [SP,#0x38+var_34]
16EC5A:  ADD             R2, PC; off_2390B0
16EC5C:  LDR             R1, [R1]
16EC5E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16EC60:  BLX             R2; j_opus_decoder_destroy_0
16EC62:  LDR             R1, [R5]
16EC64:  STRD.W          R6, R8, [R5,#4]
16EC68:  LDR             R0, [R5,#8]
16EC6A:  ADD.W           R1, R1, R1,LSL#2
16EC6E:  VLD1.8          {D16-D17}, [R11]!
16EC72:  ADD.W           R0, R0, R1,LSL#2
16EC76:  VST1.8          {D16-D17}, [R0]!
16EC7A:  LDR.W           R2, [R11]
16EC7E:  STR             R2, [R0]
16EC80:  LDR             R0, [R5]
16EC82:  ADDS            R0, #1
16EC84:  STR             R0, [R5]
16EC86:  VLD1.32         {D16-D17}, [R9]
16EC8A:  VST1.32         {D16-D17}, [R10]
16EC8E:  ADD             SP, SP, #0x1C
16EC90:  POP.W           {R8-R11}
16EC94:  POP             {R4-R7,PC}
