; =========================================================
; Game Engine Function: _Z21jpeg_start_decompressP22jpeg_decompress_struct
; Address            : 0x47BA78 - 0x47BB2A
; =========================================================

47BA78:  PUSH            {R4-R7,LR}
47BA7A:  ADD             R7, SP, #0xC
47BA7C:  PUSH.W          {R11}
47BA80:  MOV             R4, R0
47BA82:  LDR             R0, [R4,#0x14]
47BA84:  CMP             R0, #0xCA
47BA86:  BEQ             loc_47BA96
47BA88:  CMP             R0, #0xCB
47BA8A:  BEQ             loc_47BAC0
47BA8C:  CMP             R0, #0xCC
47BA8E:  BNE             loc_47BAA6
47BA90:  ADD.W           R5, R4, #0x180
47BA94:  B               loc_47BAF8
47BA96:  MOV             R0, R4
47BA98:  BLX             j__Z23jinit_master_decompressP22jpeg_decompress_struct; jinit_master_decompress(jpeg_decompress_struct *)
47BA9C:  LDRB.W          R0, [R4,#0x40]
47BAA0:  CBZ             R0, loc_47BABC
47BAA2:  MOVS            R0, #0xCF
47BAA4:  B               loc_47BB20
47BAA6:  LDR             R0, [R4]
47BAA8:  MOVS            R1, #0x14
47BAAA:  STR             R1, [R0,#0x14]
47BAAC:  LDR             R0, [R4]
47BAAE:  LDR             R1, [R4,#0x14]
47BAB0:  STR             R1, [R0,#0x18]
47BAB2:  LDR             R0, [R4]
47BAB4:  LDR             R1, [R0]
47BAB6:  MOV             R0, R4
47BAB8:  BLX             R1
47BABA:  B               loc_47BADC
47BABC:  MOVS            R0, #0xCB
47BABE:  STR             R0, [R4,#0x14]
47BAC0:  LDR.W           R0, [R4,#0x190]
47BAC4:  LDRB            R0, [R0,#0x10]
47BAC6:  CBZ             R0, loc_47BAD6
47BAC8:  LDR             R0, [R4]
47BACA:  MOVS            R1, #0x30 ; '0'
47BACC:  STR             R1, [R0,#0x14]
47BACE:  LDR             R0, [R4]
47BAD0:  LDR             R1, [R0]
47BAD2:  MOV             R0, R4
47BAD4:  BLX             R1
47BAD6:  LDR             R0, [R4,#0x7C]
47BAD8:  STR.W           R0, [R4,#0x84]
47BADC:  LDR             R0, [R4,#0x14]
47BADE:  ADD.W           R5, R4, #0x180
47BAE2:  CMP             R0, #0xCC
47BAE4:  BEQ             loc_47BAF8
47BAE6:  LDR.W           R0, [R4,#0x180]
47BAEA:  LDR             R1, [R0]
47BAEC:  MOV             R0, R4
47BAEE:  BLX             R1
47BAF0:  MOVS            R0, #0xCC
47BAF2:  STR             R0, [R4,#0x14]
47BAF4:  MOVS            R0, #0
47BAF6:  STR             R0, [R4,#0x78]
47BAF8:  LDR             R0, [R5]
47BAFA:  LDRB            R0, [R0,#8]
47BAFC:  CBZ             R0, loc_47BB14
47BAFE:  MOVS            R6, #0x30 ; '0'
47BB00:  LDR             R0, [R4]
47BB02:  STR             R6, [R0,#0x14]
47BB04:  LDR             R0, [R4]
47BB06:  LDR             R1, [R0]
47BB08:  MOV             R0, R4
47BB0A:  BLX             R1
47BB0C:  LDR             R0, [R5]
47BB0E:  LDRB            R0, [R0,#8]
47BB10:  CMP             R0, #0
47BB12:  BNE             loc_47BB00
47BB14:  LDRB.W          R1, [R4,#0x41]
47BB18:  MOVS            R0, #0xCD
47BB1A:  CMP             R1, #0
47BB1C:  IT NE
47BB1E:  MOVNE           R0, #0xCE
47BB20:  STR             R0, [R4,#0x14]
47BB22:  MOVS            R0, #1
47BB24:  POP.W           {R11}
47BB28:  POP             {R4-R7,PC}
