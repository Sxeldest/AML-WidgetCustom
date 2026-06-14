; =========================================================
; Game Engine Function: INT123_decode_update
; Address            : 0x22FF48 - 0x230120
; =========================================================

22FF48:  PUSH            {R4-R7,LR}
22FF4A:  ADD             R7, SP, #0xC
22FF4C:  PUSH.W          {R8}
22FF50:  MOV             R4, R0
22FF52:  MOVW            R0, #0x9314
22FF56:  LDR             R0, [R4,R0]
22FF58:  CMP.W           R0, #0xFFFFFFFF
22FF5C:  BLE             loc_22FF92
22FF5E:  MOVW            R5, #0x92E8
22FF62:  MOV             R0, R4
22FF64:  LDR             R6, [R4,R5]
22FF66:  BLX             j_INT123_frame_output_format
22FF6A:  CMP             R0, #0
22FF6C:  BLT.W           loc_230108
22FF70:  LDR             R1, =(unk_5F11C0 - 0x22FF7E)
22FF72:  CMP             R0, #1
22FF74:  ITT EQ
22FF76:  MOVEQ           R0, #1
22FF78:  STREQ           R0, [R4,#4]
22FF7A:  ADD             R1, PC; unk_5F11C0
22FF7C:  LDR.W           R1, [R1,R6,LSL#2]
22FF80:  MOVW            R6, #0xB2BC
22FF84:  LDR             R2, [R4,R6]
22FF86:  CMP             R2, R1
22FF88:  BNE             loc_22FFA6
22FF8A:  MOVW            R1, #0x92D0
22FF8E:  MOVS            R0, #0
22FF90:  B               loc_22FFC4
22FF92:  MOVW            R0, #0xB33C
22FF96:  LDRB            R0, [R4,R0]
22FF98:  LSLS            R0, R0, #0x1A
22FF9A:  BPL             loc_230080
22FF9C:  MOVW            R0, #0xB468
22FFA0:  MOVS            R1, #0x25 ; '%'
22FFA2:  STR             R1, [R4,R0]
22FFA4:  B               loc_230108
22FFA6:  CMP.W           R2, R1,ASR#1
22FFAA:  BNE             loc_22FFB4
22FFAC:  MOVW            R1, #0x92D0
22FFB0:  MOVS            R0, #1
22FFB2:  B               loc_22FFC4
22FFB4:  CMP.W           R2, R1,ASR#2
22FFB8:  MOV.W           R0, #3
22FFBC:  IT EQ
22FFBE:  MOVEQ           R0, #2
22FFC0:  MOVW            R1, #0x92D0
22FFC4:  CMP             R0, #3
22FFC6:  STR             R0, [R4,R1]
22FFC8:  BNE             loc_22FFFA
22FFCA:  MOV             R0, R4
22FFCC:  BLX             j_INT123_synth_ntom_set_step
22FFD0:  CMP             R0, #0
22FFD2:  BNE.W           loc_230108
22FFD6:  ADDS            R0, R4, R5
22FFD8:  LDR             R2, =(unk_5F11C0 - 0x22FFE2)
22FFDA:  ADDS            R1, R4, R6
22FFDC:  LDR             R0, [R0]
22FFDE:  ADD             R2, PC; unk_5F11C0
22FFE0:  LDR             R6, [R1]
22FFE2:  LDR.W           R8, [R2,R0,LSL#2]
22FFE6:  CMP             R8, R6
22FFE8:  BLE             loc_230038
22FFEA:  LSLS            R0, R6, #5
22FFEC:  MOV             R1, R8
22FFEE:  BLX             __aeabi_idiv
22FFF2:  MOVW            R1, #0x92C4
22FFF6:  STR             R0, [R4,R1]
22FFF8:  B               loc_230040
22FFFA:  MOVW            R1, #0x92D8
22FFFE:  MOVS            R2, #0x20 ; ' '
230000:  LDR             R1, [R4,R1]
230002:  LSRS            R2, R0
230004:  MOVW            R3, #0x92C4
230008:  CMP             R1, #1
23000A:  STR             R2, [R4,R3]
23000C:  BEQ             loc_23001C
23000E:  CMP             R1, #2
230010:  BNE             loc_230026
230012:  MOV.W           R1, #0x480
230016:  LSR.W           R0, R1, R0
23001A:  B               loc_2300BA
23001C:  MOV.W           R1, #0x180
230020:  LSR.W           R0, R1, R0
230024:  B               loc_2300BA
230026:  MOVW            R1, #0x92C8
23002A:  LDR             R1, [R4,R1]
23002C:  CBZ             R1, loc_230054
23002E:  MOV.W           R1, #0x240
230032:  LSR.W           R0, R1, R0
230036:  B               loc_2300BA
230038:  MOVW            R0, #0x92C4
23003C:  MOVS            R1, #0x20 ; ' '
23003E:  STR             R1, [R4,R0]
230040:  MOVW            R0, #0x92D8
230044:  LDR             R0, [R4,R0]
230046:  CMP             R0, #1
230048:  BEQ             loc_23006C
23004A:  CMP             R0, #2
23004C:  BNE             loc_230072
23004E:  MOV.W           R5, #0x480
230052:  B               loc_2300A8
230054:  MOVW            R1, #0x92CC
230058:  LDR             R2, [R4,R1]
23005A:  MOV.W           R1, #0x480
23005E:  CMP             R2, #0
230060:  IT NE
230062:  MOVNE.W         R1, #0x240
230066:  LSR.W           R0, R1, R0
23006A:  B               loc_2300BA
23006C:  MOV.W           R5, #0x180
230070:  B               loc_2300A8
230072:  MOVW            R0, #0x92C8
230076:  LDR             R0, [R4,R0]
230078:  CBZ             R0, loc_230096
23007A:  MOV.W           R5, #0x240
23007E:  B               loc_2300A8
230080:  LDR             R0, =(off_677664 - 0x23008C)
230082:  MOVW            R2, #0x1FF
230086:  LDR             R1, =(aCProjectsOswra_36 - 0x23008E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230088:  ADD             R0, PC; off_677664
23008A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23008C:  LDR             R0, [R0]
23008E:  LDR             R0, [R0]; stream
230090:  BLX             fprintf
230094:  B               loc_22FF9C
230096:  MOVW            R0, #0x92CC
23009A:  MOV.W           R5, #0x480
23009E:  LDR             R0, [R4,R0]
2300A0:  CMP             R0, #0
2300A2:  IT NE
2300A4:  MOVNE.W         R5, #0x240
2300A8:  LSLS            R0, R6, #0xF
2300AA:  MOV             R1, R8
2300AC:  BLX             __aeabi_uidiv
2300B0:  MOVW            R1, #0x7FFF
2300B4:  MLA.W           R0, R0, R5, R1
2300B8:  LSRS            R0, R0, #0xF
2300BA:  MOVW            R1, #0xB2B1
2300BE:  LDRB            R1, [R4,R1]
2300C0:  LSLS            R1, R1, #0x19
2300C2:  BMI             loc_2300CE
2300C4:  MOVW            R1, #0xB2B4
2300C8:  LDR             R1, [R4,R1]
2300CA:  MULS            R1, R0
2300CC:  B               loc_2300D0
2300CE:  LSLS            R1, R0, #2
2300D0:  MOVW            R0, #0xB2B8
2300D4:  MOVW            R3, #0xB2C4
2300D8:  LDR             R2, [R4,R0]
2300DA:  MULS            R1, R2
2300DC:  MOVW            R2, #0xB33C
2300E0:  LDR             R2, [R4,R2]
2300E2:  STR             R1, [R4,R3]
2300E4:  ANDS.W          R1, R2, #7
2300E8:  BEQ             loc_2300EE
2300EA:  SUBS            R0, R1, #1
2300EC:  B               loc_2300FA
2300EE:  LDR             R1, [R4,R0]
2300F0:  MOV.W           R0, #0xFFFFFFFF
2300F4:  CMP             R1, #1
2300F6:  IT EQ
2300F8:  MOVEQ           R0, #3
2300FA:  MOVW            R1, #0x92BC
2300FE:  STR             R0, [R4,R1]
230100:  MOV             R0, R4
230102:  BLX             j_INT123_set_synth_functions
230106:  CBZ             R0, loc_230112
230108:  MOV.W           R0, #0xFFFFFFFF
23010C:  POP.W           {R8}
230110:  POP             {R4-R7,PC}
230112:  MOV             R0, R4
230114:  BLX             j_INT123_do_rva
230118:  MOVS            R0, #0
23011A:  POP.W           {R8}
23011E:  POP             {R4-R7,PC}
