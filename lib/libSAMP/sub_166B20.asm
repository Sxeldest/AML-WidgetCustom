; =========================================================
; Game Engine Function: sub_166B20
; Address            : 0x166B20 - 0x166BFA
; =========================================================

166B20:  PUSH            {R4-R7,LR}
166B22:  ADD             R7, SP, #0xC
166B24:  PUSH.W          {R8}
166B28:  MOV             R4, R0
166B2A:  BL              sub_1728D8
166B2E:  LDR             R0, [R4,#0x74]
166B30:  LDR             R5, =(dword_381B58 - 0x166B3A)
166B32:  LDR             R6, =(dword_381B60 - 0x166B3C)
166B34:  LDR             R1, =(off_2390B0 - 0x166B3E)
166B36:  ADD             R5, PC; dword_381B58
166B38:  ADD             R6, PC; dword_381B60
166B3A:  ADD             R1, PC; off_2390B0
166B3C:  MOV             R8, R1
166B3E:  CBZ             R0, loc_166B56
166B40:  LDR             R1, [R5]
166B42:  CBZ             R1, loc_166B4E
166B44:  LDR.W           R2, [R1,#0x370]
166B48:  SUBS            R2, #1
166B4A:  STR.W           R2, [R1,#0x370]
166B4E:  LDR             R1, [R6]
166B50:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166B54:  BLX             R2; j_opus_decoder_destroy_0
166B56:  LDR             R0, [R4,#0x60]
166B58:  CBZ             R0, loc_166B70
166B5A:  LDR             R1, [R5]
166B5C:  CBZ             R1, loc_166B68
166B5E:  LDR.W           R2, [R1,#0x370]
166B62:  SUBS            R2, #1
166B64:  STR.W           R2, [R1,#0x370]
166B68:  LDR             R1, [R6]
166B6A:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166B6E:  BLX             R2; j_opus_decoder_destroy_0
166B70:  LDR             R0, [R4,#0x54]
166B72:  CBZ             R0, loc_166B8A
166B74:  LDR             R1, [R5]
166B76:  CBZ             R1, loc_166B82
166B78:  LDR.W           R2, [R1,#0x370]
166B7C:  SUBS            R2, #1
166B7E:  STR.W           R2, [R1,#0x370]
166B82:  LDR             R1, [R6]
166B84:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166B88:  BLX             R2; j_opus_decoder_destroy_0
166B8A:  LDR             R0, [R4,#0x48]
166B8C:  CBZ             R0, loc_166BA4
166B8E:  LDR             R1, [R5]
166B90:  CBZ             R1, loc_166B9C
166B92:  LDR.W           R2, [R1,#0x370]
166B96:  SUBS            R2, #1
166B98:  STR.W           R2, [R1,#0x370]
166B9C:  LDR             R1, [R6]
166B9E:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166BA2:  BLX             R2; j_opus_decoder_destroy_0
166BA4:  LDR             R0, [R4,#0x20]
166BA6:  CBZ             R0, loc_166BBE
166BA8:  LDR             R1, [R5]
166BAA:  CBZ             R1, loc_166BB6
166BAC:  LDR.W           R2, [R1,#0x370]
166BB0:  SUBS            R2, #1
166BB2:  STR.W           R2, [R1,#0x370]
166BB6:  LDR             R1, [R6]
166BB8:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166BBC:  BLX             R2; j_opus_decoder_destroy_0
166BBE:  LDR             R0, [R4,#0x14]
166BC0:  CBZ             R0, loc_166BD8
166BC2:  LDR             R1, [R5]
166BC4:  CBZ             R1, loc_166BD0
166BC6:  LDR.W           R2, [R1,#0x370]
166BCA:  SUBS            R2, #1
166BCC:  STR.W           R2, [R1,#0x370]
166BD0:  LDR             R1, [R6]
166BD2:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166BD6:  BLX             R2; j_opus_decoder_destroy_0
166BD8:  LDR             R0, [R4,#8]
166BDA:  CBZ             R0, loc_166BF2
166BDC:  LDR             R1, [R5]
166BDE:  CBZ             R1, loc_166BEA
166BE0:  LDR.W           R2, [R1,#0x370]
166BE4:  SUBS            R2, #1
166BE6:  STR.W           R2, [R1,#0x370]
166BEA:  LDR             R1, [R6]
166BEC:  LDR.W           R2, [R8]; j_opus_decoder_destroy_0
166BF0:  BLX             R2; j_opus_decoder_destroy_0
166BF2:  MOV             R0, R4
166BF4:  POP.W           {R8}
166BF8:  POP             {R4-R7,PC}
