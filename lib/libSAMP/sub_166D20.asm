; =========================================================
; Game Engine Function: sub_166D20
; Address            : 0x166D20 - 0x166DCC
; =========================================================

166D20:  PUSH            {R4-R7,LR}
166D22:  ADD             R7, SP, #0xC
166D24:  PUSH.W          {R8}
166D28:  MOV             R4, R0
166D2A:  LDR.W           R0, [R0,#0xDC]
166D2E:  LDR             R5, =(dword_381B58 - 0x166D38)
166D30:  LDR             R6, =(dword_381B60 - 0x166D3A)
166D32:  LDR             R1, =(off_2390B0 - 0x166D3C)
166D34:  ADD             R5, PC; dword_381B58
166D36:  ADD             R6, PC; dword_381B60
166D38:  ADD             R1, PC; off_2390B0
166D3A:  MOV             R8, R1
166D3C:  CBZ             R0, loc_166D54
166D3E:  LDR             R1, [R5]
166D40:  CBZ             R1, loc_166D4C
166D42:  LDR.W           R2, [R1,#0x370]
166D46:  SUBS            R2, #1
166D48:  STR.W           R2, [R1,#0x370]
166D4C:  LDR             R1, [R6]
166D4E:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166D52:  BLX             R2; j_opus_decoder_destroy_0
166D54:  LDR.W           R0, [R4,#0xD0]
166D58:  CBZ             R0, loc_166D70
166D5A:  LDR             R1, [R5]
166D5C:  CBZ             R1, loc_166D68
166D5E:  LDR.W           R2, [R1,#0x370]
166D62:  SUBS            R2, #1
166D64:  STR.W           R2, [R1,#0x370]
166D68:  LDR             R1, [R6]
166D6A:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166D6E:  BLX             R2; j_opus_decoder_destroy_0
166D70:  LDR.W           R0, [R4,#0xC4]
166D74:  CBZ             R0, loc_166D8C
166D76:  LDR             R1, [R5]
166D78:  CBZ             R1, loc_166D84
166D7A:  LDR.W           R2, [R1,#0x370]
166D7E:  SUBS            R2, #1
166D80:  STR.W           R2, [R1,#0x370]
166D84:  LDR             R1, [R6]
166D86:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166D8A:  BLX             R2; j_opus_decoder_destroy_0
166D8C:  LDR.W           R0, [R4,#0xB8]
166D90:  CBZ             R0, loc_166DA8
166D92:  LDR             R1, [R5]
166D94:  CBZ             R1, loc_166DA0
166D96:  LDR.W           R2, [R1,#0x370]
166D9A:  SUBS            R2, #1
166D9C:  STR.W           R2, [R1,#0x370]
166DA0:  LDR             R1, [R6]
166DA2:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166DA6:  BLX             R2; j_opus_decoder_destroy_0
166DA8:  LDR.W           R0, [R4,#0x8C]
166DAC:  CBZ             R0, loc_166DC4
166DAE:  LDR             R1, [R5]
166DB0:  CBZ             R1, loc_166DBC
166DB2:  LDR.W           R2, [R1,#0x370]
166DB6:  SUBS            R2, #1
166DB8:  STR.W           R2, [R1,#0x370]
166DBC:  LDR             R1, [R6]
166DBE:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166DC2:  BLX             R2; j_opus_decoder_destroy_0
166DC4:  MOV             R0, R4
166DC6:  POP.W           {R8}
166DCA:  POP             {R4-R7,PC}
