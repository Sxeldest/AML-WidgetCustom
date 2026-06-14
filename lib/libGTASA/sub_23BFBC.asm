; =========================================================
; Game Engine Function: sub_23BFBC
; Address            : 0x23BFBC - 0x23C25A
; =========================================================

23BFBC:  PUSH            {R4-R7,LR}
23BFBE:  ADD             R7, SP, #0xC
23BFC0:  PUSH.W          {R8-R11}
23BFC4:  SUB             SP, SP, #0x34
23BFC6:  MOV             R4, R0
23BFC8:  MOVW            R0, #0xB2F4
23BFCC:  MOV             R6, R1
23BFCE:  LDRB            R1, [R4,R0]
23BFD0:  MOV             R11, R2
23BFD2:  LSLS            R1, R1, #0x1D
23BFD4:  BMI.W           loc_23C1BC
23BFD8:  CMP.W           R11, #1
23BFDC:  BLT.W           loc_23C1DE
23BFE0:  ADD.W           R9, R4, R0
23BFE4:  MOVW            R0, #0xB478
23BFE8:  ADD             R0, R4
23BFEA:  STR             R0, [SP,#0x50+var_44]
23BFEC:  MOVW            R0, #0xB530
23BFF0:  ADD             R0, R4
23BFF2:  STR             R0, [SP,#0x50+var_3C]
23BFF4:  MOVW            R0, #0xB2E0
23BFF8:  ADD             R0, R4
23BFFA:  STR             R0, [SP,#0x50+var_40]
23BFFC:  MOVW            R0, #0xB33C
23C000:  ADD             R0, R4
23C002:  STR             R0, [SP,#0x50+var_30]
23C004:  MOVW            R0, #0xB534
23C008:  ADD             R0, R4
23C00A:  STR             R0, [SP,#0x50+var_38]
23C00C:  MOVW            R0, #0xB2E8
23C010:  ADD.W           R8, R4, R0
23C014:  MOVW            R0, #0xB2FC
23C018:  ADD.W           R10, R4, R0
23C01C:  MOVW            R0, #0xB538
23C020:  LDR             R2, [R4,R0]
23C022:  ADD             R0, R4
23C024:  STR             R0, [SP,#0x50+var_28]
23C026:  LDR             R0, =(off_677664 - 0x23C030)
23C028:  STR.W           R11, [SP,#0x50+var_34]
23C02C:  ADD             R0, PC; off_677664
23C02E:  STR             R6, [SP,#0x50+var_2C]
23C030:  LDR             R0, [R0]
23C032:  STR             R0, [SP,#0x50+var_48]
23C034:  MOVS            R0, #0
23C036:  B               loc_23C170
23C038:  CMP             R5, #1
23C03A:  BLT.W           loc_23C210
23C03E:  ADD             R6, R0
23C040:  MOV.W           R11, #0
23C044:  STR             R0, [SP,#0x50+var_24]
23C046:  LDR.W           R3, [R10]
23C04A:  ADD.W           R1, R6, R11
23C04E:  SUB.W           R2, R5, R11
23C052:  MOV             R0, R4
23C054:  BLX             R3
23C056:  CMP             R0, #0
23C058:  BLT.W           loc_23C1E2
23C05C:  BEQ             loc_23C076
23C05E:  LDRB.W          R1, [R9]
23C062:  ADD             R11, R0
23C064:  LSLS            R1, R1, #0x1C
23C066:  ITTT PL
23C068:  LDRPL.W         R1, [R8]
23C06C:  ADDPL           R1, R0
23C06E:  STRPL.W         R1, [R8]
23C072:  CMP             R11, R5
23C074:  BLT             loc_23C046
23C076:  CMP.W           R11, #0xFFFFFFFF
23C07A:  BLE.W           loc_23C1E2
23C07E:  CMP.W           R11, #0
23C082:  BEQ.W           loc_23C22E
23C086:  LDR             R0, [SP,#0x50+var_28]
23C088:  MOV             R1, R0
23C08A:  LDR             R0, [R1]
23C08C:  SUB.W           R2, R0, R11
23C090:  STR             R2, [R1]
23C092:  LDR             R0, [SP,#0x50+var_24]
23C094:  LDR             R6, [SP,#0x50+var_2C]
23C096:  ADD             R0, R11
23C098:  LDR.W           R11, [SP,#0x50+var_34]
23C09C:  CMP             R0, R11
23C09E:  BLT             loc_23C170
23C0A0:  B               loc_23C210
23C0A2:  STR             R0, [SP,#0x50+var_24]
23C0A4:  SUB.W           R1, R7, #-var_1D
23C0A8:  LDR.W           R3, [R10]
23C0AC:  MOV             R0, R4
23C0AE:  MOVS            R2, #1
23C0B0:  BLX             R3
23C0B2:  CMP.W           R0, #0xFFFFFFFF
23C0B6:  BLE.W           loc_23C232
23C0BA:  CMP             R0, #0
23C0BC:  BEQ.W           loc_23C22E
23C0C0:  LDRB.W          R1, [R9]
23C0C4:  LSLS            R1, R1, #0x1C
23C0C6:  ITTT PL
23C0C8:  LDRPL.W         R1, [R8]
23C0CC:  ADDPL           R0, R1
23C0CE:  STRPL.W         R0, [R8]
23C0D2:  LDRB.W          R0, [R7,#var_1D]
23C0D6:  CBZ             R0, loc_23C14E
23C0D8:  LSLS            R5, R0, #4
23C0DA:  ORR.W           R0, R5, #1; byte_count
23C0DE:  BLX             malloc
23C0E2:  CBZ             R0, loc_23C13A
23C0E4:  STR             R0, [SP,#0x50+var_4C]
23C0E6:  ADDS            R6, R0, R5
23C0E8:  LDR.W           R3, [R10]
23C0EC:  SUBS            R1, R6, R5
23C0EE:  MOV             R0, R4
23C0F0:  MOV             R2, R5
23C0F2:  BLX             R3
23C0F4:  CMP             R0, #0
23C0F6:  BLE.W           loc_23C204
23C0FA:  SUBS            R5, R5, R0
23C0FC:  CMP             R5, #1
23C0FE:  BGE             loc_23C0E8
23C100:  LDR.W           R1, [R9]
23C104:  MOVS            R2, #0
23C106:  STRB            R2, [R6]
23C108:  TST.W           R1, #8
23C10C:  ITTT EQ
23C10E:  LDREQ.W         R1, [R8]
23C112:  ADDEQ           R0, R1
23C114:  STREQ.W         R0, [R8]
23C118:  LDR             R0, [SP,#0x50+var_3C]
23C11A:  LDR             R6, [SP,#0x50+var_2C]
23C11C:  LDR             R0, [R0]; p
23C11E:  CMP             R0, #0
23C120:  IT NE
23C122:  BLXNE           free
23C126:  LDR             R0, [SP,#0x50+var_3C]
23C128:  LDR             R1, [SP,#0x50+var_4C]
23C12A:  STR             R1, [R0]
23C12C:  LDR             R0, [SP,#0x50+var_44]
23C12E:  MOV             R1, R0
23C130:  LDR             R0, [R1]
23C132:  ORR.W           R0, R0, #4
23C136:  STR             R0, [R1]
23C138:  B               loc_23C14E
23C13A:  LDR             R0, [SP,#0x50+var_30]
23C13C:  LDRB            R0, [R0]
23C13E:  LSLS            R0, R0, #0x1A
23C140:  BPL             loc_23C15E
23C142:  LDR             R0, [SP,#0x50+var_40]
23C144:  MOV             R1, R5
23C146:  LDR             R0, [R0]
23C148:  LDR             R2, [R0,#0x14]
23C14A:  MOV             R0, R4
23C14C:  BLX             R2
23C14E:  LDR             R0, [SP,#0x50+var_38]
23C150:  LDR             R2, [R0]
23C152:  LDR             R0, [SP,#0x50+var_28]
23C154:  STR             R2, [R0]
23C156:  LDR             R0, [SP,#0x50+var_24]
23C158:  CMP             R0, R11
23C15A:  BLT             loc_23C170
23C15C:  B               loc_23C210
23C15E:  LDR             R0, [SP,#0x50+var_48]
23C160:  MOVS            R2, #0xB7
23C162:  LDR             R1, =(aCProjectsOswra_61 - 0x23C16C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C164:  MOV             R3, R5
23C166:  LDR             R0, [R0]; stream
23C168:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C16A:  BLX             fprintf
23C16E:  B               loc_23C142
23C170:  SUB.W           R5, R11, R0
23C174:  CMP             R2, R5
23C176:  BGE.W           loc_23C038
23C17A:  CMP             R2, #1
23C17C:  BLT             loc_23C0A2
23C17E:  LDR.W           R3, [R10]
23C182:  ADDS            R1, R6, R0
23C184:  STR             R0, [SP,#0x50+var_24]
23C186:  MOV             R0, R4
23C188:  BLX             R3
23C18A:  CMP             R0, #0
23C18C:  BLE             loc_23C218
23C18E:  LDRB.W          R1, [R9]
23C192:  LSLS            R1, R1, #0x1C
23C194:  ITTT PL
23C196:  LDRPL.W         R1, [R8]
23C19A:  ADDPL           R1, R0
23C19C:  STRPL.W         R1, [R8]
23C1A0:  LDR             R1, [SP,#0x50+var_28]
23C1A2:  MOV             R3, R1
23C1A4:  LDR             R1, [R3]
23C1A6:  SUBS            R2, R1, R0
23C1A8:  STR             R2, [R3]
23C1AA:  LDR             R1, [SP,#0x50+var_24]
23C1AC:  CMP             R2, #0
23C1AE:  ADD             R1, R0
23C1B0:  MOV             R0, R1
23C1B2:  BLE.W           loc_23C0A2
23C1B6:  CMP             R0, R11
23C1B8:  BLT             loc_23C170
23C1BA:  B               loc_23C210
23C1BC:  MOVW            R0, #0xB33C
23C1C0:  LDRB            R0, [R4,R0]
23C1C2:  LSLS            R0, R0, #0x1A
23C1C4:  BMI             loc_23C20C
23C1C6:  LDR             R0, =(off_677664 - 0x23C1D0)
23C1C8:  MOVS            R2, #0x68 ; 'h'
23C1CA:  LDR             R1, =(aCProjectsOswra_62 - 0x23C1D2); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C1CC:  ADD             R0, PC; off_677664
23C1CE:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C1D0:  LDR             R0, [R0]
23C1D2:  LDR             R0, [R0]; stream
23C1D4:  BLX             fprintf
23C1D8:  MOV.W           R0, #0xFFFFFFFF
23C1DC:  B               loc_23C210
23C1DE:  MOVS            R0, #0
23C1E0:  B               loc_23C210
23C1E2:  LDR             R0, [SP,#0x50+var_30]
23C1E4:  LDRB            R0, [R0]
23C1E6:  LSLS            R0, R0, #0x1A
23C1E8:  BMI             loc_23C20C
23C1EA:  LDR             R0, =(off_677664 - 0x23C1F6)
23C1EC:  MOVS            R2, #0xC0
23C1EE:  LDR             R1, =(aCProjectsOswra_63 - 0x23C1F8); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C1F0:  MOV             R3, R5
23C1F2:  ADD             R0, PC; off_677664
23C1F4:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C1F6:  LDR             R0, [R0]
23C1F8:  LDR             R0, [R0]; stream
23C1FA:  BLX             fprintf
23C1FE:  MOV.W           R0, #0xFFFFFFFF
23C202:  B               loc_23C210
23C204:  LDR             R0, [SP,#0x50+var_30]
23C206:  LDRB            R0, [R0]
23C208:  LSLS            R0, R0, #0x1A
23C20A:  BPL             loc_23C246
23C20C:  MOV.W           R0, #0xFFFFFFFF
23C210:  ADD             SP, SP, #0x34 ; '4'
23C212:  POP.W           {R8-R11}
23C216:  POP             {R4-R7,PC}
23C218:  BEQ             loc_23C22E
23C21A:  LDR             R0, [SP,#0x50+var_30]
23C21C:  LDRB            R0, [R0]
23C21E:  LSLS            R0, R0, #0x1A
23C220:  BMI             loc_23C20C
23C222:  LDR             R0, =(off_677664 - 0x23C22C)
23C224:  MOVS            R2, #0x85
23C226:  LDR             R1, =(aCProjectsOswra_64 - 0x23C22E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C228:  ADD             R0, PC; off_677664
23C22A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C22C:  B               loc_23C250
23C22E:  LDR             R0, [SP,#0x50+var_24]
23C230:  B               loc_23C210
23C232:  LDR             R0, [SP,#0x50+var_30]
23C234:  LDRB            R0, [R0]
23C236:  LSLS            R0, R0, #0x1A
23C238:  BMI             loc_23C20C
23C23A:  LDR             R0, =(off_677664 - 0x23C244)
23C23C:  MOVS            R2, #0x98
23C23E:  LDR             R1, =(aCProjectsOswra_65 - 0x23C246); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C240:  ADD             R0, PC; off_677664
23C242:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C244:  B               loc_23C250
23C246:  LDR             R0, =(off_677664 - 0x23C250)
23C248:  MOVS            R2, #0xAA
23C24A:  LDR             R1, =(aCProjectsOswra_66 - 0x23C252); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C24C:  ADD             R0, PC; off_677664
23C24E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23C250:  LDR             R0, [R0]
23C252:  LDR             R0, [R0]; stream
23C254:  BLX             fprintf
23C258:  B               loc_23C20C
