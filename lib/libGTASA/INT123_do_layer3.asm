; =========================================================
; Game Engine Function: INT123_do_layer3
; Address            : 0x22BEE8 - 0x22D1C6
; =========================================================

22BEE8:  PUSH            {R4-R7,LR}
22BEEA:  ADD             R7, SP, #0xC
22BEEC:  PUSH.W          {R8-R11}
22BEF0:  SUB             SP, SP, #4
22BEF2:  VPUSH           {D8-D15}
22BEF6:  SUB.W           SP, SP, #0x350
22BEFA:  MOVW            R1, #0x92B4
22BEFE:  MOV.W           R8, #0
22BF02:  LDR             R3, [R0,R1]
22BF04:  MOVW            R1, #0x92E8
22BF08:  LDR             R1, [R0,R1]
22BF0A:  STR             R1, [SP,#0x3B0+var_37C]
22BF0C:  MOVW            R1, #0x92BC
22BF10:  CMP             R3, #1
22BF12:  LDR             R2, [R0,R1]
22BF14:  MOVW            R1, #0x92F4
22BF18:  LDR             R1, [R0,R1]
22BF1A:  MOV             R10, R2
22BF1C:  IT EQ
22BF1E:  MOVEQ.W         R10, #0
22BF22:  ADDS            R2, #1
22BF24:  MOV.W           R2, #1
22BF28:  IT EQ
22BF2A:  MOVEQ           R2, #2
22BF2C:  CMP             R3, #1
22BF2E:  STR             R3, [SP,#0x3B0+var_36C]
22BF30:  IT EQ
22BF32:  MOVEQ           R2, R3
22BF34:  CMP             R1, #1
22BF36:  MOV.W           R1, #0
22BF3A:  STR             R1, [SP,#0x3B0+var_398]
22BF3C:  MOV.W           R1, #0
22BF40:  STR             R2, [SP,#0x3B0+var_34C]
22BF42:  STR             R1, [SP,#0x3B0+var_370]
22BF44:  BNE             loc_22BF58
22BF46:  MOVW            R1, #0x92F8
22BF4A:  LDR             R1, [R0,R1]
22BF4C:  AND.W           R2, R1, #1
22BF50:  STR             R2, [SP,#0x3B0+var_398]
22BF52:  UBFX.W          R1, R1, #1, #1
22BF56:  STR             R1, [SP,#0x3B0+var_370]
22BF58:  MOVW            R9, #0x9334
22BF5C:  MOVW            LR, #0x9330
22BF60:  LDR.W           R3, [R0,R9]
22BF64:  CMP.W           R10, #3
22BF68:  LDR.W           R4, [R0,LR]
22BF6C:  ADD.W           R11, R0, LR
22BF70:  LDRB            R1, [R3]
22BF72:  LDRB            R2, [R3,#1]
22BF74:  LDRB            R6, [R3,#2]
22BF76:  ORR.W           R1, R2, R1,LSL#8
22BF7A:  MOVW            R2, #0x92C8
22BF7E:  LDR             R5, [R0,R2]
22BF80:  LDR.W           R2, =(unk_5F26A8 - 0x22BF94)
22BF84:  ORR.W           R1, R6, R1,LSL#8
22BF88:  STR.W           R10, [SP,#0x3B0+var_380]
22BF8C:  ADD.W           R6, R5, R5,LSL#2
22BF90:  ADD             R2, PC; unk_5F26A8
22BF92:  STR             R6, [SP,#0x3B0+var_320]
22BF94:  LSL.W           R1, R1, R4
22BF98:  ADD.W           R2, R2, R6,LSL#2
22BF9C:  BIC.W           R1, R1, #0xFF000000
22BFA0:  STR             R2, [SP,#0x3B0+var_340]
22BFA2:  IT EQ
22BFA4:  MOVEQ.W         R8, #4
22BFA8:  LDR             R6, [R2,#4]
22BFAA:  CMP             R5, #0
22BFAC:  STR.W           R8, [SP,#0x3B0+var_344]
22BFB0:  ADD.W           R8, R0, R9
22BFB4:  RSB.W           R12, R6, #0x18
22BFB8:  LSR.W           R2, R1, R12
22BFBC:  ADD.W           R1, R4, R6
22BFC0:  ADD.W           R3, R3, R1,ASR#3
22BFC4:  AND.W           R1, R1, #7
22BFC8:  STR.W           R1, [R0,LR]
22BFCC:  STR             R3, [SP,#0x3B0+var_31C]
22BFCE:  STR.W           R3, [R0,R9]
22BFD2:  MOVW            R3, #0x92C8
22BFD6:  ADD             R3, R0
22BFD8:  STR             R3, [SP,#0x3B0+var_368]
22BFDA:  MOV.W           R3, #2
22BFDE:  IT NE
22BFE0:  MOVNE           R3, #1
22BFE2:  STR             R2, [SP,#0x3B0+var_310]
22BFE4:  STR             R3, [SP,#0x3B0+var_38C]
22BFE6:  MOVW            R3, #0x9384
22BFEA:  ADDS            R4, R0, R3
22BFEC:  STR             R4, [SP,#0x3B0+var_314]
22BFEE:  MOV             R9, R0
22BFF0:  LDR.W           R10, [R9,R3]
22BFF4:  STR.W           R9, [SP,#0x3B0+var_360]
22BFF8:  CMP             R2, R10
22BFFA:  STR             R5, [SP,#0x3B0+var_318]
22BFFC:  BLS             loc_22C048
22BFFE:  STRD.W          R12, R6, [SP,#0x3B0+var_328]
22C002:  MOVW            R3, #0xB2CC
22C006:  LDR.W           R3, [R9,R3]
22C00A:  CBNZ            R3, loc_22C026
22C00C:  MOVW            R3, #0xB33C
22C010:  LDRB.W          R3, [R9,R3]
22C014:  LSLS            R3, R3, #0x1A
22C016:  BMI             loc_22C026
22C018:  MOVW            R3, #0xB338
22C01C:  LDR.W           R3, [R9,R3]
22C020:  CMP             R3, #2
22C022:  BGE.W           loc_22D17E
22C026:  MOV             R2, R5
22C028:  LDR             R0, [SP,#0x3B0+var_324]
22C02A:  LDR             R6, [SP,#0x3B0+var_31C]
22C02C:  SUBS            R1, R1, R0
22C02E:  CMP             R2, #0
22C030:  ADD.W           R0, R6, R1,ASR#3
22C034:  STR.W           R0, [R8]
22C038:  AND.W           R1, R1, #7
22C03C:  STR.W           R1, [R11]
22C040:  BEQ             loc_22C056
22C042:  MOVS            R1, #0
22C044:  LDR             R2, [SP,#0x3B0+var_314]
22C046:  B               loc_22C06E
22C048:  MOVW            R3, #0x9380
22C04C:  ADD.W           R6, R9, R3
22C050:  MOV             LR, R5
22C052:  LDR             R4, [SP,#0x3B0+var_31C]
22C054:  B               loc_22C0D8
22C056:  MOV.W           R1, R10,LSR#1
22C05A:  STRB            R1, [R0]
22C05C:  LDR             R0, [SP,#0x3B0+var_314]
22C05E:  MOV             R2, R0
22C060:  LDR.W           R0, [R8]
22C064:  LDR             R1, [R2]
22C066:  LSLS            R1, R1, #7
22C068:  UXTB.W          R10, R1
22C06C:  MOVS            R1, #1
22C06E:  STRB.W          R10, [R0,R1]
22C072:  MOVW            R0, #0x9380
22C076:  MOV             R10, R2
22C078:  LDR.W           R9, [SP,#0x3B0+var_360]
22C07C:  LDR.W           R2, [R8]
22C080:  LDR.W           R0, [R9,R0]
22C084:  SUBS            R1, R0, #2
22C086:  ADDS            R0, R2, #2
22C088:  BLX             j___aeabi_memclr8_1
22C08C:  LDR.W           R1, [R8]
22C090:  LDR.W           R2, [R11]
22C094:  LDR             R0, [SP,#0x3B0+var_324]
22C096:  LDRB.W          R12, [R1]
22C09A:  ADDS            R3, R2, R0
22C09C:  LDRB            R6, [R1,#1]
22C09E:  LDRB            R5, [R1,#2]
22C0A0:  ADD.W           R4, R1, R3,ASR#3
22C0A4:  AND.W           R1, R3, #7
22C0A8:  ORR.W           R3, R6, R12,LSL#8
22C0AC:  STR.W           R4, [R8]
22C0B0:  STR.W           R1, [R11]
22C0B4:  ORR.W           R3, R5, R3,LSL#8
22C0B8:  LDR             R0, [SP,#0x3B0+var_328]
22C0BA:  LSL.W           R2, R3, R2
22C0BE:  BIC.W           R2, R2, #0xFF000000
22C0C2:  LSRS            R2, R0
22C0C4:  LDR             R0, [SP,#0x3B0+var_368]
22C0C6:  STR             R2, [SP,#0x3B0+var_310]
22C0C8:  LDR.W           R10, [R10]
22C0CC:  LDR.W           LR, [R0]
22C0D0:  MOVW            R0, #0x9380
22C0D4:  ADD.W           R6, R9, R0
22C0D8:  MOVW            R5, #0x9308
22C0DC:  MOVW            R3, #0x92E0
22C0E0:  LDR.W           R5, [R9,R5]
22C0E4:  LDR             R0, [R6]
22C0E6:  LDR.W           R3, [R9,R3]
22C0EA:  ADD             R5, R10
22C0EC:  SUBS            R5, R5, R0
22C0EE:  CMP             R3, #0
22C0F0:  STR             R0, [SP,#0x3B0+var_31C]
22C0F2:  IT NE
22C0F4:  SUBNE           R5, #2
22C0F6:  MOVS            R3, #0xFF
22C0F8:  CMP.W           LR, #0
22C0FC:  LDR.W           R6, =(unk_5F26A8 - 0x22C10C)
22C100:  IT EQ
22C102:  MOVWEQ          R3, #0x1FF
22C106:  CMP             R5, R3
22C108:  ADD             R6, PC; unk_5F26A8
22C10A:  IT LS
22C10C:  MOVLS           R3, R5
22C10E:  LDR             R0, [SP,#0x3B0+var_314]
22C110:  STR             R3, [R0]
22C112:  MOVS            R3, #0xC
22C114:  LDR.W           R12, [SP,#0x3B0+var_36C]
22C118:  CMP.W           R12, #1
22C11C:  IT EQ
22C11E:  MOVEQ           R3, #8
22C120:  LDR             R0, [SP,#0x3B0+var_320]
22C122:  LDRB            R5, [R4]
22C124:  CMP.W           R12, #1
22C128:  ADD.W           R6, R6, R0,LSL#2
22C12C:  LDR             R3, [R6,R3]
22C12E:  LSL.W           R6, R5, R1
22C132:  MOVW            R5, #0x9338
22C136:  UXTB            R6, R6
22C138:  ADD.W           R10, R9, R5
22C13C:  STR.W           R6, [R9,R5]
22C140:  LDRB            R0, [R4,#1]
22C142:  LSL.W           R0, R0, R1
22C146:  ADD             R1, R3
22C148:  ORR.W           R0, R6, R0,LSR#8
22C14C:  LSL.W           R0, R0, R3
22C150:  MOV.W           R6, R0,LSR#8
22C154:  ADD.W           R0, R4, R1,ASR#3
22C158:  AND.W           R1, R1, #7
22C15C:  STR.W           R6, [R9,R5]
22C160:  STR.W           R0, [R8]
22C164:  STR.W           R1, [R11]
22C168:  STR             R6, [SP,#0x3B0+var_30C]
22C16A:  BLT             loc_22C1BC
22C16C:  CMP.W           LR, #0
22C170:  BNE             loc_22C1BC
22C172:  ADD             R3, SP, #0x3B0+var_310
22C174:  LDR             R6, [SP,#0x3B0+var_36C]
22C176:  ADDS            R3, #0x64 ; 'd'
22C178:  MOV.W           LR, #0xFFFFFFFF
22C17C:  STR.W           LR, [R3,#-0x5C]
22C180:  SUBS            R6, #1
22C182:  LDRB            R4, [R0]
22C184:  LSL.W           R4, R4, R1
22C188:  UXTB            R4, R4
22C18A:  STR.W           R4, [R10]
22C18E:  LDRB            R5, [R0,#1]
22C190:  LSL.W           R5, R5, R1
22C194:  ADD.W           R1, R1, #4
22C198:  ORR.W           R4, R4, R5,LSR#8
22C19C:  ADD.W           R0, R0, R1,LSR#3
22C1A0:  AND.W           R1, R1, #7
22C1A4:  MOV.W           R4, R4,LSR#4
22C1A8:  STR.W           R4, [R10]
22C1AC:  STR.W           R0, [R8]
22C1B0:  STR.W           R1, [R11]
22C1B4:  STR             R4, [R3]
22C1B6:  ADD.W           R3, R3, #0xB8
22C1BA:  BNE             loc_22C17C
22C1BC:  LDR             R3, [SP,#0x3B0+var_318]
22C1BE:  CMP             R3, #1
22C1C0:  BHI.W           loc_22C6F8
22C1C4:  LDR.W           R3, =(unk_5F0C60 - 0x22C1D0)
22C1C8:  MOVS            R2, #0x6E ; 'n'
22C1CA:  LDR             R4, [SP,#0x3B0+var_37C]
22C1CC:  ADD             R3, PC; unk_5F0C60
22C1CE:  LDR             R5, [SP,#0x3B0+var_360]
22C1D0:  LDR.W           R6, =(unk_5F26A8 - 0x22C1E0)
22C1D4:  MLA.W           R3, R4, R2, R3
22C1D8:  LDR.W           R12, [SP,#0x3B0+var_344]
22C1DC:  ADD             R6, PC; unk_5F26A8
22C1DE:  ADDS            R3, #0x2C ; ','
22C1E0:  STR             R3, [SP,#0x3B0+var_330]
22C1E2:  MOVW            R3, #0x92CC
22C1E6:  ADD             R3, R5
22C1E8:  STR             R3, [SP,#0x3B0+var_328]
22C1EA:  MOVW            R3, #0x933C
22C1EE:  ADD             R3, R5
22C1F0:  STR             R3, [SP,#0x3B0+var_318]
22C1F2:  MOVW            R3, #0x57B8
22C1F6:  ADD             R3, R5
22C1F8:  STR             R3, [SP,#0x3B0+var_31C]
22C1FA:  MOVW            R3, #0xB33C
22C1FE:  ADD.W           LR, R5, R3
22C202:  LDR             R3, [SP,#0x3B0+var_320]
22C204:  ADD.W           R3, R6, R3,LSL#2
22C208:  ADDS            R3, #0x10
22C20A:  STR             R3, [SP,#0x3B0+var_320]
22C20C:  ADD             R3, SP, #0x3B0+var_310
22C20E:  ADD.W           R9, R3, #0x40 ; '@'
22C212:  LDR.W           R3, =(off_677664 - 0x22C21A)
22C216:  ADD             R3, PC; off_677664
22C218:  LDR             R3, [R3]
22C21A:  STR             R3, [SP,#0x3B0+var_348]
22C21C:  LDR.W           R3, =(unk_5F0C60 - 0x22C224)
22C220:  ADD             R3, PC; unk_5F0C60
22C222:  MLA.W           R3, R4, R2, R3
22C226:  STR             R3, [SP,#0x3B0+var_334]
22C228:  LDR.W           R3, =(unk_5F0C60 - 0x22C230)
22C22C:  ADD             R3, PC; unk_5F0C60
22C22E:  MLA.W           R3, R4, R2, R3
22C232:  STR             R3, [SP,#0x3B0+var_324]
22C234:  LDR.W           R3, =(unk_5F0C60 - 0x22C23C)
22C238:  ADD             R3, PC; unk_5F0C60
22C23A:  MLA.W           R2, R4, R2, R3
22C23E:  MOVS            R3, #0
22C240:  STR             R2, [SP,#0x3B0+var_32C]
22C242:  LDR             R2, [SP,#0x3B0+var_36C]
22C244:  STR             R3, [SP,#0x3B0+var_33C]
22C246:  CMP             R2, #1
22C248:  STR.W           R9, [SP,#0x3B0+var_338]
22C24C:  BLT.W           loc_22C6D6
22C250:  MOVS            R3, #0
22C252:  B               loc_22C2BE
22C254:  CBZ             R6, loc_22C266
22C256:  CMP             R3, #2
22C258:  ITT EQ
22C25A:  LDREQ.W         R3, [R9,#-0x24]
22C25E:  CMPEQ           R3, #0
22C260:  BEQ             loc_22C27C
22C262:  MOVS            R3, #8
22C264:  B               loc_22C27E
22C266:  MOVS            R3, #0x1B
22C268:  STR.W           R3, [R9]
22C26C:  MOV.W           R3, #0x120
22C270:  STR.W           R3, [R9,#4]
22C274:  CMP             R2, #0
22C276:  BNE.W           loc_22C682
22C27A:  B               loc_22C662
22C27C:  MOVS            R3, #6
22C27E:  LDR             R4, [SP,#0x3B0+var_334]
22C280:  LDRH.W          R3, [R4,R3,LSL#1]
22C284:  LDR             R4, [SP,#0x3B0+var_330]
22C286:  LDRH            R6, [R4]
22C288:  LSRS            R3, R3, #1
22C28A:  LSRS            R6, R6, #1
22C28C:  STRD.W          R3, R6, [R9]
22C290:  LDR             R4, [SP,#0x3B0+var_318]
22C292:  CMP             R2, #0
22C294:  BNE.W           loc_22C682
22C298:  B               loc_22C662
22C29A:  LDR             R0, [SP,#0x3B0+var_348]
22C29C:  MOVW            R2, #0x1CF
22C2A0:  LDR.W           R1, =(aCProjectsOswra_28 - 0x22C2AC); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22C2A4:  MOV             R4, LR
22C2A6:  LDR             R0, [R0]; stream
22C2A8:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22C2AA:  BLX             fprintf
22C2AE:  LDR.W           R12, [SP,#0x3B0+var_344]
22C2B2:  MOV             LR, R4
22C2B4:  LDR.W           R0, [R11]
22C2B8:  LDR.W           R1, [R8]
22C2BC:  B               loc_22C32A
22C2BE:  STR             R3, [SP,#0x3B0+var_314]
22C2C0:  ADD.W           R4, R1, #0xC
22C2C4:  LDRB            R2, [R0]
22C2C6:  LDRB            R3, [R0,#1]
22C2C8:  ADD.W           R5, R0, R4,ASR#3
22C2CC:  LDRB            R6, [R0,#2]
22C2CE:  ORR.W           R2, R3, R2,LSL#8
22C2D2:  STR.W           R5, [R8]
22C2D6:  AND.W           R3, R4, #7
22C2DA:  STR.W           R3, [R11]
22C2DE:  ORR.W           R2, R6, R2,LSL#8
22C2E2:  LSL.W           R1, R2, R1
22C2E6:  UBFX.W          R1, R1, #0xC, #0xC
22C2EA:  STR.W           R1, [R9,#-0x34]
22C2EE:  ASRS            R1, R4, #3
22C2F0:  LDRB            R6, [R5,#1]
22C2F2:  LDRB            R2, [R0,R1]
22C2F4:  ADD.W           R0, R3, #9
22C2F8:  LDRB            R4, [R5,#2]
22C2FA:  ADD.W           R1, R5, R0,LSR#3
22C2FE:  STR.W           R1, [R8]
22C302:  ORR.W           R2, R6, R2,LSL#8
22C306:  AND.W           R0, R0, #7
22C30A:  STR.W           R0, [R11]
22C30E:  ORR.W           R2, R4, R2,LSL#8
22C312:  LSLS            R2, R3
22C314:  UBFX.W          R2, R2, #0xF, #9
22C318:  STR.W           R2, [R9,#-0x30]
22C31C:  CMP.W           R2, #0x120
22C320:  BLS             loc_22C332
22C322:  LDRB.W          R2, [LR]
22C326:  LSLS            R2, R2, #0x1A
22C328:  BPL             loc_22C29A
22C32A:  MOV.W           R2, #0x120
22C32E:  STR.W           R2, [R9,#-0x30]
22C332:  LDRB            R2, [R1]
22C334:  LDR             R4, [SP,#0x3B0+var_318]
22C336:  LSLS            R2, R0
22C338:  UXTB            R2, R2
22C33A:  STR.W           R2, [R10]
22C33E:  LDRB            R3, [R1,#1]
22C340:  LSLS            R3, R0
22C342:  ORR.W           R2, R3, R2,LSL#8
22C346:  ADD.W           R3, R0, #8
22C34A:  LSRS            R2, R2, #8
22C34C:  STR.W           R2, [R10]
22C350:  ADD.W           R6, R1, R3,ASR#3
22C354:  STR.W           R6, [R8]
22C358:  LDR             R0, [SP,#0x3B0+var_31C]
22C35A:  SUB.W           R0, R0, R2,LSL#3
22C35E:  LDR             R2, [SP,#0x3B0+var_370]
22C360:  ADD.W           R0, R0, R12,LSL#3
22C364:  CMP             R2, #0
22C366:  MOV.W           R2, R3,ASR#3
22C36A:  IT NE
22C36C:  ADDNE           R0, #0x10
22C36E:  AND.W           R3, R3, #7
22C372:  STR.W           R3, [R11]
22C376:  STR.W           R0, [R9,#0x20]
22C37A:  LDRB            R1, [R1,R2]
22C37C:  LDRB            R2, [R6,#1]
22C37E:  LDRB            R5, [R6,#2]
22C380:  ORR.W           R1, R2, R1,LSL#8
22C384:  LDR             R2, [SP,#0x3B0+var_320]
22C386:  ORR.W           R1, R5, R1,LSL#8
22C38A:  LDR             R2, [R2]
22C38C:  LSLS            R1, R3
22C38E:  RSB.W           R5, R2, #0x18
22C392:  BIC.W           R1, R1, #0xFF000000
22C396:  ADD             R2, R3
22C398:  LSRS            R1, R5
22C39A:  AND.W           R5, R2, #7
22C39E:  ADD.W           R3, R6, R2,ASR#3
22C3A2:  STR.W           R3, [R8]
22C3A6:  STR.W           R5, [R11]
22C3AA:  STR.W           R1, [R9,#-0x2C]
22C3AE:  ASRS            R1, R2, #3
22C3B0:  LDRB            R1, [R6,R1]
22C3B2:  LSL.W           R6, R1, R5
22C3B6:  ADDS            R5, #1
22C3B8:  STRB            R6, [R4]
22C3BA:  AND.W           R2, R5, #7
22C3BE:  ADD.W           R1, R3, R5,LSR#3
22C3C2:  STR.W           R1, [R8]
22C3C6:  STR.W           R2, [R11]
22C3CA:  LSRS            R5, R5, #3
22C3CC:  LDRB            R3, [R3,R5]
22C3CE:  SXTB            R6, R6
22C3D0:  CMP             R6, #0
22C3D2:  LSL.W           R3, R3, R2
22C3D6:  UXTB            R3, R3
22C3D8:  STR.W           R3, [R10]
22C3DC:  LDRB            R5, [R1,#1]
22C3DE:  LSL.W           R5, R5, R2
22C3E2:  ORR.W           R3, R3, R5,LSR#8
22C3E6:  BLT             loc_22C4DE
22C3E8:  ADDS            R2, #5
22C3EA:  LSRS            R0, R3, #3
22C3EC:  STR.W           R0, [R10]
22C3F0:  AND.W           R6, R2, #7
22C3F4:  ADD.W           R3, R1, R2,LSR#3
22C3F8:  STR.W           R3, [R8]
22C3FC:  STR.W           R6, [R11]
22C400:  MOVS            R5, #1
22C402:  STR.W           R0, [R9,#-0x20]
22C406:  LSRS            R0, R2, #3
22C408:  LDRB            R0, [R1,R0]
22C40A:  LSLS            R0, R6
22C40C:  UXTB            R0, R0
22C40E:  STR.W           R0, [R10]
22C412:  LDRB            R1, [R3,#1]
22C414:  LSLS            R1, R6
22C416:  ORR.W           R0, R0, R1,LSR#8
22C41A:  ADDS            R1, R6, #5
22C41C:  AND.W           R6, R1, #7
22C420:  LSRS            R0, R0, #3
22C422:  ADD.W           R2, R3, R1,LSR#3
22C426:  STR.W           R0, [R10]
22C42A:  STR.W           R2, [R8]
22C42E:  STR.W           R6, [R11]
22C432:  STR.W           R0, [R9,#-0x1C]
22C436:  LSRS            R0, R1, #3
22C438:  LDRB            R0, [R3,R0]
22C43A:  LSLS            R0, R6
22C43C:  UXTB            R0, R0
22C43E:  STR.W           R0, [R10]
22C442:  LDRB            R1, [R2,#1]
22C444:  LSLS            R1, R6
22C446:  ORR.W           R0, R0, R1,LSR#8
22C44A:  ADDS            R1, R6, #5
22C44C:  AND.W           R6, R1, #7
22C450:  LSRS            R0, R0, #3
22C452:  ADD.W           R3, R2, R1,LSR#3
22C456:  STR.W           R0, [R10]
22C45A:  STR.W           R3, [R8]
22C45E:  STR.W           R6, [R11]
22C462:  STR.W           R0, [R9,#-0x18]
22C466:  LSRS            R0, R1, #3
22C468:  LDRB            R0, [R2,R0]
22C46A:  LSLS            R0, R6
22C46C:  UXTB            R0, R0
22C46E:  STR.W           R0, [R10]
22C472:  LDRB            R1, [R3,#1]
22C474:  LSLS            R1, R6
22C476:  ORR.W           R0, R0, R1,LSR#8
22C47A:  LSRS            R1, R0, #4
22C47C:  STR.W           R1, [R10]
22C480:  ADDS            R1, R6, #4
22C482:  ADD.W           R2, R3, R1,LSR#3
22C486:  LSRS            R6, R1, #3
22C488:  AND.W           R1, R1, #7
22C48C:  STR.W           R2, [R8]
22C490:  STR.W           R1, [R11]
22C494:  LDRB            R3, [R3,R6]
22C496:  LSLS            R3, R1
22C498:  UXTB            R3, R3
22C49A:  STR.W           R3, [R10]
22C49E:  LDRB            R6, [R2,#1]
22C4A0:  LSLS            R6, R1
22C4A2:  ADDS            R1, #3
22C4A4:  ORR.W           R3, R3, R6,LSR#8
22C4A8:  LSRS            R6, R3, #5
22C4AA:  STR.W           R6, [R10]
22C4AE:  ADD.W           R6, R5, R0,LSR#4
22C4B2:  LDR             R0, [SP,#0x3B0+var_324]
22C4B4:  LDRH.W          R5, [R0,R6,LSL#1]
22C4B8:  ADD.W           R0, R2, R1,LSR#3
22C4BC:  STR.W           R0, [R8]
22C4C0:  AND.W           R1, R1, #7
22C4C4:  STR.W           R1, [R11]
22C4C8:  LSRS            R2, R5, #1
22C4CA:  STR.W           R2, [R9]
22C4CE:  ADD.W           R2, R6, R3,LSR#5
22C4D2:  CMP             R2, #0x15
22C4D4:  BLS.W           loc_22C648
22C4D8:  MOV.W           R2, #0x120
22C4DC:  B               loc_22C652
22C4DE:  ADDS            R2, #2
22C4E0:  LSRS            R3, R3, #6
22C4E2:  STR.W           R3, [R10]
22C4E6:  AND.W           R5, R2, #7
22C4EA:  ADD.W           R6, R1, R2,LSR#3
22C4EE:  STR.W           R6, [R8]
22C4F2:  STR.W           R5, [R11]
22C4F6:  LSRS            R2, R2, #3
22C4F8:  STR.W           R3, [R9,#-0x28]
22C4FC:  LDRB            R1, [R1,R2]
22C4FE:  ADDS            R2, R5, #1
22C500:  ADD.W           R3, R6, R2,LSR#3
22C504:  LSLS            R1, R5
22C506:  AND.W           R5, R2, #7
22C50A:  STRB            R1, [R4]
22C50C:  UBFX.W          R1, R1, #7, #1
22C510:  STR.W           R3, [R8]
22C514:  STR.W           R5, [R11]
22C518:  STR.W           R1, [R9,#-0x24]
22C51C:  LSRS            R1, R2, #3
22C51E:  LDRB            R1, [R6,R1]
22C520:  LSLS            R1, R5
22C522:  UXTB            R1, R1
22C524:  STR.W           R1, [R10]
22C528:  LDRB            R2, [R3,#1]
22C52A:  LSLS            R2, R5
22C52C:  ORR.W           R1, R1, R2,LSR#8
22C530:  ADDS            R2, R5, #5
22C532:  AND.W           R5, R2, #7
22C536:  LSRS            R1, R1, #3
22C538:  ADD.W           R6, R3, R2,LSR#3
22C53C:  STR.W           R1, [R10]
22C540:  STR.W           R6, [R8]
22C544:  STR.W           R5, [R11]
22C548:  STR.W           R1, [R9,#-0x20]
22C54C:  LSRS            R1, R2, #3
22C54E:  LDRB            R1, [R3,R1]
22C550:  LSLS            R1, R5
22C552:  UXTB            R1, R1
22C554:  STR.W           R1, [R10]
22C558:  LDRB            R2, [R6,#1]
22C55A:  LSLS            R2, R5
22C55C:  ORR.W           R1, R1, R2,LSR#8
22C560:  ADDS            R2, R5, #5
22C562:  AND.W           R5, R2, #7
22C566:  LSRS            R1, R1, #3
22C568:  ADD.W           R3, R6, R2,LSR#3
22C56C:  STR.W           R1, [R10]
22C570:  STR.W           R3, [R8]
22C574:  STR.W           R5, [R11]
22C578:  STR.W           R1, [R9,#-0x1C]
22C57C:  MOVS            R1, #0
22C57E:  STR.W           R1, [R9,#-0x18]
22C582:  LSRS            R1, R2, #3
22C584:  LDRB            R1, [R6,R1]
22C586:  LSLS            R1, R5
22C588:  UXTB            R1, R1
22C58A:  STR.W           R1, [R10]
22C58E:  LDRB            R2, [R3,#1]
22C590:  LSLS            R2, R5
22C592:  ORR.W           R1, R1, R2,LSR#8
22C596:  ADDS            R2, R5, #3
22C598:  AND.W           R5, R2, #7
22C59C:  LSRS            R1, R1, #5
22C59E:  ADD.W           R6, R3, R2,LSR#3
22C5A2:  STR.W           R1, [R10]
22C5A6:  ADD.W           R1, R0, R1,LSL#6
22C5AA:  STR.W           R6, [R8]
22C5AE:  STR.W           R5, [R11]
22C5B2:  STR.W           R1, [R9,#0x14]
22C5B6:  LSRS            R1, R2, #3
22C5B8:  LDRB            R1, [R3,R1]
22C5BA:  LSLS            R1, R5
22C5BC:  UXTB            R1, R1
22C5BE:  STR.W           R1, [R10]
22C5C2:  LDRB            R2, [R6,#1]
22C5C4:  LSLS            R2, R5
22C5C6:  ORR.W           R1, R1, R2,LSR#8
22C5CA:  LSRS            R1, R1, #5
22C5CC:  STR.W           R1, [R10]
22C5D0:  ADD.W           R0, R0, R1,LSL#6
22C5D4:  ADDS            R1, R5, #3
22C5D6:  AND.W           R3, R1, #7
22C5DA:  ADD.W           R2, R6, R1,LSR#3
22C5DE:  STR.W           R2, [R8]
22C5E2:  STR.W           R3, [R11]
22C5E6:  STR.W           R0, [R9,#0x18]
22C5EA:  LSRS            R0, R1, #3
22C5EC:  LDRB            R0, [R6,R0]
22C5EE:  LDR.W           R6, [R9,#0x20]
22C5F2:  LSLS            R0, R3
22C5F4:  UXTB            R0, R0
22C5F6:  STR.W           R0, [R10]
22C5FA:  LDRB            R1, [R2,#1]
22C5FC:  LSLS            R1, R3
22C5FE:  ORR.W           R0, R0, R1,LSR#8
22C602:  ADDS            R1, R3, #3
22C604:  LSRS            R5, R0, #5
22C606:  ADD.W           R0, R2, R1,LSR#3
22C60A:  STR.W           R5, [R10]
22C60E:  AND.W           R1, R1, #7
22C612:  STR.W           R0, [R8]
22C616:  ADD.W           R2, R6, R5,LSL#6
22C61A:  STR.W           R1, [R11]
22C61E:  LDR.W           R3, [R9,#-0x28]
22C622:  STR.W           R2, [R9,#0x1C]
22C626:  CMP             R3, #0
22C628:  BEQ.W           loc_22D0E8
22C62C:  LDR             R2, [SP,#0x3B0+var_328]
22C62E:  CMP             R3, #2
22C630:  LDR             R6, [R2]
22C632:  LDR             R2, [SP,#0x3B0+var_368]
22C634:  LDR             R2, [R2]
22C636:  IT NE
22C638:  CMPNE           R2, #0
22C63A:  BNE.W           loc_22C254
22C63E:  CMP             R6, #0
22C640:  BNE.W           loc_22C256
22C644:  MOVS            R3, #0x12
22C646:  B               loc_22C268
22C648:  LDR             R3, [SP,#0x3B0+var_32C]
22C64A:  ADD.W           R2, R3, R2,LSL#1
22C64E:  LDRH            R2, [R2,#2]
22C650:  LSRS            R2, R2, #1
22C652:  STR.W           R2, [R9,#4]
22C656:  MOVS            R2, #0
22C658:  STRD.W          R2, R2, [R9,#-0x28]
22C65C:  LDR             R2, [SP,#0x3B0+var_368]
22C65E:  LDR             R2, [R2]
22C660:  CBNZ            R2, loc_22C682
22C662:  LDRB            R2, [R0]
22C664:  LSLS            R2, R1
22C666:  ADDS            R1, #1
22C668:  STRB            R2, [R4]
22C66A:  ADD.W           R0, R0, R1,LSR#3
22C66E:  AND.W           R1, R1, #7
22C672:  STR.W           R0, [R8]
22C676:  STR.W           R1, [R11]
22C67A:  UBFX.W          R2, R2, #7, #1
22C67E:  STR.W           R2, [R9,#8]
22C682:  LDRB            R2, [R0]
22C684:  LSLS            R2, R1
22C686:  ADDS            R1, #1
22C688:  STRB            R2, [R4]
22C68A:  AND.W           R6, R1, #7
22C68E:  ADD.W           R3, R0, R1,ASR#3
22C692:  STR.W           R3, [R8]
22C696:  UBFX.W          R2, R2, #7, #1
22C69A:  STR.W           R6, [R11]
22C69E:  STR.W           R2, [R9,#0xC]
22C6A2:  ASRS            R1, R1, #3
22C6A4:  LDRB            R0, [R0,R1]
22C6A6:  ADDS            R1, R6, #1
22C6A8:  LSL.W           R2, R0, R6
22C6AC:  ADD.W           R0, R3, R1,LSR#3
22C6B0:  STRB            R2, [R4]
22C6B2:  AND.W           R1, R1, #7
22C6B6:  STR.W           R0, [R8]
22C6BA:  STR.W           R1, [R11]
22C6BE:  UBFX.W          R2, R2, #7, #1
22C6C2:  LDR             R3, [SP,#0x3B0+var_314]
22C6C4:  STR.W           R2, [R9,#0x10]
22C6C8:  ADD.W           R9, R9, #0xB8
22C6CC:  LDR             R2, [SP,#0x3B0+var_36C]
22C6CE:  ADDS            R3, #1
22C6D0:  CMP             R3, R2
22C6D2:  BLT.W           loc_22C2BE
22C6D6:  LDR             R2, [SP,#0x3B0+var_340]
22C6D8:  LDR.W           R9, [SP,#0x3B0+var_338]
22C6DC:  LDR             R3, [SP,#0x3B0+var_33C]
22C6DE:  LDR             R2, [R2]
22C6E0:  ADD.W           R9, R9, #0x5C ; '\'
22C6E4:  ADDS            R3, #1
22C6E6:  CMP             R3, R2
22C6E8:  BLT.W           loc_22C242
22C6EC:  LDR             R1, [SP,#0x3B0+var_360]
22C6EE:  MOVW            R0, #0x9380
22C6F2:  LDR             R2, [SP,#0x3B0+var_310]; size_t
22C6F4:  LDR             R0, [R1,R0]
22C6F6:  STR             R0, [SP,#0x3B0+var_31C]
22C6F8:  LDR.W           R10, [SP,#0x3B0+var_360]
22C6FC:  MOVW            R0, #0xB288
22C700:  LDR             R1, [SP,#0x3B0+var_31C]
22C702:  CMP             R2, #0
22C704:  LDR.W           R0, [R10,R0]
22C708:  ADD             R0, R1
22C70A:  SUB.W           R0, R0, R2; void *
22C70E:  STR.W           R0, [R8]
22C712:  BEQ             loc_22C72E
22C714:  MOVW            R3, #0x937C
22C718:  MOVW            R6, #0xB28C
22C71C:  LDR.W           R3, [R10,R3]
22C720:  NEGS            R1, R2
22C722:  LDR.W           R6, [R10,R6]
22C726:  ADD             R3, R6
22C728:  ADD             R1, R3; void *
22C72A:  BLX             memcpy_1
22C72E:  MOVS            R2, #0
22C730:  LDR             R4, [SP,#0x3B0+var_37C]
22C732:  STR.W           R2, [R11]
22C736:  MOVS            R0, #0x6E ; 'n'
22C738:  LDR.W           R1, =(unk_5F0C60 - 0x22C748)
22C73C:  MOVW            R8, #0x1208
22C740:  LDR             R2, [SP,#0x3B0+var_380]
22C742:  MOVS            R6, #0
22C744:  ADD             R1, PC; unk_5F0C60
22C746:  CMP             R2, #3
22C748:  MOV.W           R2, #0
22C74C:  IT EQ
22C74E:  MOVEQ           R2, #1
22C750:  MLA.W           R1, R4, R0, R1
22C754:  LDR             R3, [SP,#0x3B0+var_398]
22C756:  LDR             R5, [SP,#0x3B0+var_370]
22C758:  ORRS            R3, R5
22C75A:  ADD             R5, SP, #0x3B0+var_198
22C75C:  IT NE
22C75E:  MOVNE           R3, #1
22C760:  ADD.W           R9, R5, #0x9C
22C764:  ORRS            R2, R3
22C766:  STR             R2, [SP,#0x3B0+var_39C]
22C768:  ADD.W           R2, R1, #0x43 ; 'C'
22C76C:  STR             R2, [SP,#0x3B0+var_3A8]
22C76E:  ADD.W           R2, R1, #0x6C ; 'l'
22C772:  ADDS            R1, #0x5C ; '\'
22C774:  STR             R1, [SP,#0x3B0+var_378]
22C776:  MOVW            R1, #0x92AC
22C77A:  ADD             R1, R10
22C77C:  STR             R1, [SP,#0x3B0+var_35C]
22C77E:  MOVW            R1, #0x92A8
22C782:  STR             R2, [SP,#0x3B0+var_374]
22C784:  ADD             R1, R10
22C786:  STR             R1, [SP,#0x3B0+var_364]
22C788:  MOVW            R1, #0xB54C
22C78C:  STR.W           R9, [SP,#0x3B0+var_350]
22C790:  ADD             R1, R10
22C792:  STR             R1, [SP,#0x3B0+var_390]
22C794:  MOVW            R1, #0xB548
22C798:  ADD             R1, R10
22C79A:  STR             R1, [SP,#0x3B0+var_394]
22C79C:  LDR.W           R1, =(unk_5F0C60 - 0x22C7A4)
22C7A0:  ADD             R1, PC; unk_5F0C60
22C7A2:  MLA.W           R1, R4, R0, R1
22C7A6:  STR             R1, [SP,#0x3B0+var_344]
22C7A8:  LDR.W           R1, =(unk_5F0C60 - 0x22C7B0)
22C7AC:  ADD             R1, PC; unk_5F0C60
22C7AE:  MLA.W           R1, R4, R0, R1
22C7B2:  STR             R1, [SP,#0x3B0+var_354]
22C7B4:  LDR.W           R1, =(unk_5F0C60 - 0x22C7BC)
22C7B8:  ADD             R1, PC; unk_5F0C60
22C7BA:  MLA.W           R1, R4, R0, R1
22C7BE:  STR             R1, [SP,#0x3B0+var_3A4]
22C7C0:  LDR.W           R1, =(unk_5F0C60 - 0x22C7C8)
22C7C4:  ADD             R1, PC; unk_5F0C60
22C7C6:  MLA.W           R1, R4, R0, R1
22C7CA:  STR             R1, [SP,#0x3B0+var_384]
22C7CC:  LDR.W           R1, =(unk_5F0C60 - 0x22C7D4)
22C7D0:  ADD             R1, PC; unk_5F0C60
22C7D2:  MLA.W           R1, R4, R0, R1
22C7D6:  STR             R1, [SP,#0x3B0+var_3A0]
22C7D8:  LDR.W           R1, =(unk_5F0C60 - 0x22C7E0)
22C7DC:  ADD             R1, PC; unk_5F0C60
22C7DE:  MLA.W           R0, R4, R0, R1
22C7E2:  STR             R0, [SP,#0x3B0+var_388]
22C7E4:  LDR.W           R0, =(unk_6D0FD8 - 0x22C7EC)
22C7E8:  ADD             R0, PC; unk_6D0FD8
22C7EA:  ADD.W           R0, R0, #0x240
22C7EE:  STR             R0, [SP,#0x3B0+var_32C]
22C7F0:  LDR.W           R0, =(unk_6D1E80 - 0x22C7F8)
22C7F4:  ADD             R0, PC; unk_6D1E80
22C7F6:  ADD.W           R0, R0, #0x240
22C7FA:  STR             R0, [SP,#0x3B0+var_330]
22C7FC:  MOVS            R0, #0
22C7FE:  STR             R0, [SP,#0x3B0+var_338]
22C800:  ADD             R0, SP, #0x3B0+var_310
22C802:  MOVS            R1, #0x5C ; '\'
22C804:  MLA.W           R1, R6, R1, R0
22C808:  LDR             R0, [SP,#0x3B0+var_390]
22C80A:  STR             R1, [SP,#0x3B0+var_314]
22C80C:  LDR             R0, [R0]
22C80E:  ADD.W           R4, R1, #8
22C812:  STR             R0, [SP,#0x3B0+var_334]
22C814:  LDR             R0, [SP,#0x3B0+var_394]
22C816:  LDR             R0, [R0]
22C818:  STR             R0, [SP,#0x3B0+var_358]
22C81A:  LDR             R0, [SP,#0x3B0+var_368]
22C81C:  LDR             R0, [R0]
22C81E:  CMP             R0, #0
22C820:  BEQ             loc_22C830
22C822:  MOV             R0, R10
22C824:  MOV             R1, R5
22C826:  MOV             R2, R4
22C828:  MOVS            R3, #0
22C82A:  BL              sub_22D268
22C82E:  B               loc_22C83A
22C830:  MOV             R0, R10
22C832:  MOV             R1, R5
22C834:  MOV             R2, R4
22C836:  BL              sub_22D3B4
22C83A:  LDR             R1, [SP,#0x3B0+var_37C]
22C83C:  MOV             R2, R5
22C83E:  STRD.W          R1, R0, [SP,#0x3B0+var_3B0]
22C842:  MOV             R0, R10
22C844:  LDR             R1, [SP,#0x3B0+var_358]
22C846:  MOV             R3, R4
22C848:  BL              sub_22DD08
22C84C:  CMP             R0, #0
22C84E:  BNE.W           loc_22D0FC
22C852:  LDR             R0, [SP,#0x3B0+var_36C]
22C854:  LDR             R1, [SP,#0x3B0+var_314]
22C856:  CMP             R0, #2
22C858:  STR             R6, [SP,#0x3B0+var_348]
22C85A:  BNE.W           loc_22CC0E
22C85E:  LDR             R0, [SP,#0x3B0+var_368]
22C860:  ADD.W           R4, R1, #0xC0
22C864:  LDR             R0, [R0]
22C866:  CBZ             R0, loc_22C876
22C868:  LDR             R3, [SP,#0x3B0+var_398]
22C86A:  MOV             R0, R10
22C86C:  MOV             R1, R9
22C86E:  MOV             R2, R4
22C870:  BL              sub_22D268
22C874:  B               loc_22C880
22C876:  MOV             R0, R10
22C878:  MOV             R1, R9
22C87A:  MOV             R2, R4
22C87C:  BL              sub_22D3B4
22C880:  LDR             R1, [SP,#0x3B0+var_37C]
22C882:  MOV             R2, R9
22C884:  STRD.W          R1, R0, [SP,#0x3B0+var_3B0]
22C888:  MOV             R3, R4
22C88A:  LDR             R0, [SP,#0x3B0+var_358]
22C88C:  ADD.W           R5, R0, #0x1200
22C890:  MOV             R0, R10
22C892:  MOV             R1, R5
22C894:  BL              sub_22DD08
22C898:  CMP             R0, #0
22C89A:  BNE.W           loc_22D122
22C89E:  LDR             R0, [SP,#0x3B0+var_370]
22C8A0:  LDR.W           R12, [SP,#0x3B0+var_314]
22C8A4:  CBZ             R0, loc_22C8E8
22C8A6:  LDR.W           R0, [R12,#0x3C]
22C8AA:  LDR.W           R1, [R12,#0xF4]
22C8AE:  CMP             R1, R0
22C8B0:  IT HI
22C8B2:  MOVHI           R0, R1
22C8B4:  CMP             R0, #1
22C8B6:  BLT             loc_22C8E8
22C8B8:  ADD.W           R0, R0, R0,LSL#3
22C8BC:  LDR             R2, [SP,#0x3B0+var_358]
22C8BE:  MOVS            R1, #0
22C8C0:  LSLS            R0, R0, #1
22C8C2:  ADD.W           R3, R2, #0x1200
22C8C6:  VLDR            D16, [R2]
22C8CA:  ADDS            R1, #1
22C8CC:  VLDR            D17, [R3]
22C8D0:  CMP             R1, R0
22C8D2:  VADD.F64        D18, D16, D17
22C8D6:  VSUB.F64        D16, D16, D17
22C8DA:  VSTR            D18, [R2]
22C8DE:  ADD.W           R2, R2, #8
22C8E2:  VSTR            D16, [R3]
22C8E6:  BLT             loc_22C8C2
22C8E8:  LDR             R0, [SP,#0x3B0+var_398]
22C8EA:  CMP             R0, #0
22C8EC:  BEQ.W           loc_22CB68
22C8F0:  LDR             R0, [SP,#0x3B0+var_368]
22C8F2:  LDR             R0, [R0]
22C8F4:  LDRD.W          R1, R2, [R12,#0xCC]
22C8F8:  CMP             R2, #2
22C8FA:  AND.W           R1, R1, R0
22C8FE:  ADD             R0, R1
22C900:  LDR.W           R1, =(off_660E3C - 0x22C908)
22C904:  ADD             R1, PC; off_660E3C
22C906:  ADD.W           R0, R1, R0,LSL#4
22C90A:  LDR             R1, [SP,#0x3B0+var_370]
22C90C:  LDR.W           LR, [R0,R1,LSL#3]
22C910:  ADD.W           R0, R0, R1,LSL#3
22C914:  LDR.W           R9, [R0,#4]
22C918:  BNE.W           loc_22CAAA
22C91C:  MOV             R3, R12
22C91E:  MOVS            R4, #0
22C920:  LDR.W           R12, [R3,#0xD4]!
22C924:  CMP.W           R12, #0
22C928:  IT NE
22C92A:  MOVNE.W         R12, #1
22C92E:  LDR             R0, [SP,#0x3B0+var_314]
22C930:  ADD.W           R0, R0, R4,LSL#2
22C934:  LDR.W           R0, [R0,#0xE4]
22C938:  CMP             R0, #3
22C93A:  IT GT
22C93C:  MOVGT.W         R12, #0
22C940:  CMP             R0, #0xB
22C942:  BGT             loc_22C9BA
22C944:  MOV             R6, R0
22C946:  LDR             R0, [R3]
22C948:  ADD.W           R2, R6, R6,LSL#1
22C94C:  ADD             R1, SP, #0x3B0+var_198
22C94E:  ADD             R2, R4
22C950:  MOVW            R8, #0xFDC0
22C954:  SUBS            R0, R2, R0
22C956:  MOVT            R8, #0xFFFF
22C95A:  ADD.W           R0, R1, R0,LSL#2
22C95E:  LDR.W           R2, [R0,#0x9C]
22C962:  CMP             R2, #7
22C964:  BEQ             loc_22C9B4
22C966:  LDR             R0, [SP,#0x3B0+var_344]
22C968:  ADD             R0, R6
22C96A:  LDRB.W          R0, [R0,#0x60]
22C96E:  CBZ             R0, loc_22C9B4
22C970:  ADD.W           R1, LR, R2,LSL#3
22C974:  ADD.W           R2, R9, R2,LSL#3
22C978:  ADDS            R0, #1
22C97A:  VLDR            D17, [R1]
22C97E:  LDR             R1, [SP,#0x3B0+var_354]
22C980:  VLDR            D16, [R2]
22C984:  ADD.W           R1, R1, R6,LSL#1
22C988:  LDRH.W          R1, [R1,#0x44]
22C98C:  ADD             R1, R4
22C98E:  ADD.W           R2, R5, R1,LSL#3
22C992:  ADD.W           R1, R2, R8,LSL#3
22C996:  SUBS            R0, #1
22C998:  CMP             R0, #1
22C99A:  VLDR            D18, [R1]
22C99E:  VMUL.F64        D19, D17, D18
22C9A2:  VMUL.F64        D18, D16, D18
22C9A6:  VSTR            D19, [R1]
22C9AA:  VSTR            D18, [R2]
22C9AE:  ADD.W           R2, R2, #0x18
22C9B2:  BGT             loc_22C992
22C9B4:  ADDS            R0, R6, #1
22C9B6:  CMP             R6, #0xB
22C9B8:  BLT             loc_22C944
22C9BA:  LDR             R0, [R3]
22C9BC:  ADD.W           R1, R4, #0x21 ; '!'
22C9C0:  SUBS            R0, R1, R0
22C9C2:  ADD             R1, SP, #0x3B0+var_198
22C9C4:  ADD.W           R0, R1, R0,LSL#2
22C9C8:  LDR.W           R0, [R0,#0x9C]
22C9CC:  CMP             R0, #7
22C9CE:  BEQ             loc_22CA1A
22C9D0:  LDR             R2, [SP,#0x3B0+var_374]
22C9D2:  ADD.W           R1, LR, R0,LSL#3
22C9D6:  ADD.W           R0, R9, R0,LSL#3
22C9DA:  VLDR            D17, [R1]
22C9DE:  LDRB            R6, [R2]
22C9E0:  LDR             R2, [SP,#0x3B0+var_378]
22C9E2:  VLDR            D16, [R0]
22C9E6:  LDRH            R2, [R2]
22C9E8:  ADDS            R0, R4, R2
22C9EA:  ADD.W           R2, R5, R0,LSL#3
22C9EE:  ADDS            R0, R6, #1
22C9F0:  MOV             R6, #0xFFFFFDC0
22C9F8:  ADD.W           R1, R2, R6,LSL#3
22C9FC:  SUBS            R0, #1
22C9FE:  CMP             R0, #1
22CA00:  VLDR            D18, [R1]
22CA04:  VMUL.F64        D19, D17, D18
22CA08:  VMUL.F64        D18, D16, D18
22CA0C:  VSTR            D19, [R1]
22CA10:  VSTR            D18, [R2]
22CA14:  ADD.W           R2, R2, #0x18
22CA18:  BGT             loc_22C9F8
22CA1A:  ADDS            R4, #1
22CA1C:  CMP             R4, #3
22CA1E:  BNE.W           loc_22C92E
22CA22:  CMP.W           R12, #0
22CA26:  LDR.W           R12, [SP,#0x3B0+var_314]
22CA2A:  MOVW            R8, #0x1208
22CA2E:  BEQ.W           loc_22CB68
22CA32:  LDR.W           R0, [R12,#0xF0]
22CA36:  CMP             R0, #7
22CA38:  BGT.W           loc_22CB68
22CA3C:  LDR             R1, [SP,#0x3B0+var_3A4]
22CA3E:  LDRH.W          R2, [R1,R0,LSL#1]
22CA42:  MOV             R3, R0
22CA44:  ADD             R0, SP, #0x3B0+var_198
22CA46:  ADD.W           R0, R0, R3,LSL#2
22CA4A:  LDR.W           R6, [R0,#0x9C]
22CA4E:  LDR             R0, [SP,#0x3B0+var_384]
22CA50:  CMP             R6, #7
22CA52:  ADD             R0, R3
22CA54:  LDRB.W          R0, [R0,#0x2E]
22CA58:  BNE             loc_22CA5E
22CA5A:  ADD             R2, R0
22CA5C:  B               loc_22CAA2
22CA5E:  CBZ             R0, loc_22CAA2
22CA60:  ADD.W           R1, R9, R6,LSL#3
22CA64:  ADDS            R4, R0, #1
22CA66:  VLDR            D16, [R1]
22CA6A:  ADD.W           R1, LR, R6,LSL#3
22CA6E:  ADD.W           R6, R5, R2,LSL#3
22CA72:  VLDR            D17, [R1]
22CA76:  MOV             R1, #0xFFFFFDC0
22CA7E:  ADD.W           R0, R6, R1,LSL#3
22CA82:  SUBS            R4, #1
22CA84:  ADDS            R2, #1
22CA86:  CMP             R4, #1
22CA88:  VLDR            D18, [R0]
22CA8C:  VMUL.F64        D19, D17, D18
22CA90:  VMUL.F64        D18, D16, D18
22CA94:  VSTR            D19, [R0]
22CA98:  VSTR            D18, [R6]
22CA9C:  ADD.W           R6, R6, #8
22CAA0:  BGT             loc_22CA7E
22CAA2:  ADDS            R0, R3, #1
22CAA4:  CMP             R3, #7
22CAA6:  BLT             loc_22CA42
22CAA8:  B               loc_22CB68
22CAAA:  LDR.W           R0, [R12,#0xF0]
22CAAE:  CMP             R0, #0x15
22CAB0:  BGT             loc_22CB68
22CAB2:  LDR             R1, [SP,#0x3B0+var_3A0]
22CAB4:  LDRH.W          R2, [R1,R0,LSL#1]
22CAB8:  BEQ             loc_22CB1C
22CABA:  MOV             R3, R0
22CABC:  ADD             R0, SP, #0x3B0+var_198
22CABE:  ADD.W           R0, R0, R3,LSL#2
22CAC2:  LDR.W           R6, [R0,#0x9C]
22CAC6:  LDR             R0, [SP,#0x3B0+var_388]
22CAC8:  CMP             R6, #7
22CACA:  ADD             R0, R3
22CACC:  LDRB.W          R0, [R0,#0x2E]
22CAD0:  BNE             loc_22CAD6
22CAD2:  ADD             R2, R0
22CAD4:  B               loc_22CB16
22CAD6:  CBZ             R0, loc_22CB16
22CAD8:  ADD.W           R1, R9, R6,LSL#3
22CADC:  ADDS            R4, R0, #1
22CADE:  VLDR            D16, [R1]
22CAE2:  ADD.W           R1, LR, R6,LSL#3
22CAE6:  ADD.W           R6, R5, R2,LSL#3
22CAEA:  VLDR            D17, [R1]
22CAEE:  MOV             R1, #0xFFFFFDC0
22CAF6:  ADD.W           R0, R6, R1,LSL#3
22CAFA:  SUBS            R4, #1
22CAFC:  ADDS            R2, #1
22CAFE:  CMP             R4, #1
22CB00:  VLDR            D18, [R0]
22CB04:  VMUL.F64        D19, D17, D18
22CB08:  VMUL.F64        D18, D16, D18
22CB0C:  VSTR            D19, [R0]
22CB10:  VSTM            R6!, {D18}
22CB14:  BGT             loc_22CAF6
22CB16:  ADDS            R0, R3, #1
22CB18:  CMP             R3, #0x14
22CB1A:  BLT             loc_22CABA
22CB1C:  LDR             R0, [SP,#0x3B0+var_AC]
22CB1E:  MOV             R6, #0xFFFFFDC0
22CB26:  CMP             R0, #7
22CB28:  BEQ             loc_22CB68
22CB2A:  LDR             R1, [SP,#0x3B0+var_358]
22CB2C:  ADD.W           R1, R1, R2,LSL#3
22CB30:  LDR             R2, [SP,#0x3B0+var_3A8]
22CB32:  LDRB            R3, [R2]
22CB34:  ADD.W           R2, R1, #0x1200
22CB38:  ADD.W           R1, LR, R0,LSL#3
22CB3C:  ADD.W           R0, R9, R0,LSL#3
22CB40:  VLDR            D16, [R0]
22CB44:  ADDS            R0, R3, #1
22CB46:  VLDR            D17, [R1]
22CB4A:  ADD.W           R1, R2, R6,LSL#3
22CB4E:  SUBS            R0, #1
22CB50:  CMP             R0, #1
22CB52:  VLDR            D18, [R1]
22CB56:  VMUL.F64        D19, D17, D18
22CB5A:  VMUL.F64        D18, D16, D18
22CB5E:  VSTR            D19, [R1]
22CB62:  VSTM            R2!, {D18}
22CB66:  BGT             loc_22CB4A
22CB68:  LDR             R0, [SP,#0x3B0+var_39C]
22CB6A:  LDR             R6, [SP,#0x3B0+var_348]
22CB6C:  CMP             R0, #1
22CB6E:  BNE             loc_22CB9E
22CB70:  ADD             R0, SP, #0x3B0+var_310
22CB72:  MOV.W           R12, #0x5C ; '\'
22CB76:  ADDS            R0, #8
22CB78:  MOVS            R3, #0
22CB7A:  MLA.W           R1, R6, R12, R0
22CB7E:  MOVS            R4, #0xB8
22CB80:  LDR             R2, [R1,#0x34]
22CB82:  LDR.W           R1, [R1,#0xEC]
22CB86:  CMP             R1, R2
22CB88:  IT LS
22CB8A:  MOVLS           R3, #1
22CB8C:  SMLABB.W        R0, R3, R4, R0
22CB90:  MLA.W           R0, R6, R12, R0
22CB94:  LDR.W           R12, [SP,#0x3B0+var_314]
22CB98:  IT HI
22CB9A:  MOVHI           R2, R1
22CB9C:  STR             R2, [R0,#0x34]
22CB9E:  LDR             R0, [SP,#0x3B0+var_380]
22CBA0:  CMP             R0, #1
22CBA2:  BEQ             loc_22CBDC
22CBA4:  CMP             R0, #3
22CBA6:  BNE             loc_22CC0E
22CBA8:  LDR.W           R0, [R12,#0xF4]!
22CBAC:  CMP             R0, #1
22CBAE:  BLT             loc_22CC0E
22CBB0:  LDR             R1, [SP,#0x3B0+var_358]
22CBB2:  MOVS            R0, #0
22CBB4:  ADD.W           R2, R1, #0x1200
22CBB8:  VLDR            D16, [R1]
22CBBC:  ADDS            R0, #1
22CBBE:  VLDR            D17, [R2]
22CBC2:  VADD.F64        D16, D16, D17
22CBC6:  VSTR            D16, [R1]
22CBCA:  ADDS            R1, #8
22CBCC:  LDR.W           R2, [R12]
22CBD0:  ADD.W           R2, R2, R2,LSL#3
22CBD4:  CMP.W           R0, R2,LSL#1
22CBD8:  BLT             loc_22CBB4
22CBDA:  B               loc_22CC0E
22CBDC:  LDR.W           R0, [R12,#0xF4]!
22CBE0:  CMP             R0, #1
22CBE2:  BLT             loc_22CC0E
22CBE4:  MOVS            R0, #0
22CBE6:  MOVW            R1, #0xFDC0
22CBEA:  VLDR            D16, [R5]
22CBEE:  MOVT            R1, #0xFFFF
22CBF2:  ADDS            R0, #1
22CBF4:  ADD.W           R1, R5, R1,LSL#3
22CBF8:  ADD.W           R5, R1, R8
22CBFC:  VSTR            D16, [R1]
22CC00:  LDR.W           R2, [R12]
22CC04:  ADD.W           R1, R2, R2,LSL#3
22CC08:  CMP.W           R0, R1,LSL#1
22CC0C:  BLT             loc_22CBE6
22CC0E:  LDR             R0, [SP,#0x3B0+var_358]
22CC10:  MOVS            R4, #0
22CC12:  ADD.W           R12, R0, #0xC8
22CC16:  MOV             LR, R0
22CC18:  ADD             R0, SP, #0x3B0+var_310
22CC1A:  MOVS            R1, #0xB8
22CC1C:  MLA.W           R0, R4, R1, R0
22CC20:  MOVS            R1, #0x5C ; '\'
22CC22:  MLA.W           R5, R6, R1, R0
22CC26:  MOV             R11, R5
22CC28:  LDR.W           R0, [R11,#0x18]!
22CC2C:  CMP             R0, #2
22CC2E:  BNE             loc_22CC3C
22CC30:  LDR             R0, [R5,#0x1C]
22CC32:  CMP             R0, #0
22CC34:  BEQ.W           loc_22CDA0
22CC38:  MOVS            R0, #1
22CC3A:  B               loc_22CC44
22CC3C:  LDR             R0, [R5,#0x3C]
22CC3E:  SUBS            R0, #1
22CC40:  BEQ.W           loc_22CDA0
22CC44:  LDR.W           R1, =(unk_6D0F98 - 0x22CC4C)
22CC48:  ADD             R1, PC; unk_6D0F98
22CC4A:  VLDM            R1, {D16-D23}
22CC4E:  LDR.W           R1, =(dword_6D0F58 - 0x22CC56)
22CC52:  ADD             R1, PC; dword_6D0F58
22CC54:  VLDM            R1, {D24-D31}
22CC58:  MOV             R1, R12
22CC5A:  VLDR            D0, [R1,#-0x20]
22CC5E:  SUB.W           R2, R1, #0x38 ; '8'
22CC62:  VLDR            D1, [R1,#-0x28]
22CC66:  SUBS            R0, #1
22CC68:  VLDR            D2, [R1,#-0x30]
22CC6C:  VLDR            D3, [R1,#-0x38]
22CC70:  VLDR            D4, [R1,#-0x40]
22CC74:  VLDR            D5, [R1,#-0x48]
22CC78:  VLDR            D6, [R1,#-0x50]
22CC7C:  VLDR            D7, [R1,#-0x58]
22CC80:  VMUL.F64        D8, D3, D16
22CC84:  VMUL.F64        D9, D4, D24
22CC88:  VMUL.F64        D10, D5, D17
22CC8C:  VMUL.F64        D11, D2, D25
22CC90:  VMUL.F64        D12, D6, D18
22CC94:  VMUL.F64        D13, D1, D26
22CC98:  VMUL.F64        D14, D0, D19
22CC9C:  VMUL.F64        D15, D7, D27
22CCA0:  VMUL.F64        D4, D4, D16
22CCA4:  VMUL.F64        D3, D3, D24
22CCA8:  VMUL.F64        D2, D2, D17
22CCAC:  VMUL.F64        D5, D5, D25
22CCB0:  VMUL.F64        D1, D1, D18
22CCB4:  VMUL.F64        D6, D6, D26
22CCB8:  VMUL.F64        D7, D7, D19
22CCBC:  VMUL.F64        D0, D0, D27
22CCC0:  VSUB.F64        D8, D9, D8
22CCC4:  VADD.F64        D3, D3, D4
22CCC8:  VSUB.F64        D2, D5, D2
22CCCC:  VSUB.F64        D1, D6, D1
22CCD0:  VSUB.F64        D6, D15, D14
22CCD4:  VADD.F64        D0, D0, D7
22CCD8:  VADD.F64        D4, D11, D10
22CCDC:  VADD.F64        D5, D13, D12
22CCE0:  VSTR            D8, [R1,#-0x40]
22CCE4:  VSTR            D2, [R1,#-0x48]
22CCE8:  VSTM            R2, {D3-D5}
22CCEC:  VSTR            D1, [R1,#-0x50]
22CCF0:  VSTR            D6, [R1,#-0x58]
22CCF4:  VSTR            D0, [R1,#-0x20]
22CCF8:  VLDR            D0, [R1,#-0x18]
22CCFC:  VLDR            D1, [R1,#-0x60]
22CD00:  VMUL.F64        D2, D0, D20
22CD04:  VMUL.F64        D3, D1, D28
22CD08:  VMUL.F64        D1, D1, D20
22CD0C:  VMUL.F64        D0, D0, D28
22CD10:  VSUB.F64        D2, D3, D2
22CD14:  VADD.F64        D0, D0, D1
22CD18:  VSTR            D2, [R1,#-0x60]
22CD1C:  VSTR            D0, [R1,#-0x18]
22CD20:  VLDR            D0, [R1,#-0x10]
22CD24:  VLDR            D1, [R1,#-0x68]
22CD28:  VMUL.F64        D2, D0, D21
22CD2C:  VMUL.F64        D3, D1, D29
22CD30:  VMUL.F64        D1, D1, D21
22CD34:  VMUL.F64        D0, D0, D29
22CD38:  VSUB.F64        D2, D3, D2
22CD3C:  VADD.F64        D0, D0, D1
22CD40:  VSTR            D2, [R1,#-0x68]
22CD44:  VSTR            D0, [R1,#-0x10]
22CD48:  VLDR            D0, [R1,#-8]
22CD4C:  VLDR            D1, [R1,#-0x70]
22CD50:  VMUL.F64        D2, D0, D22
22CD54:  VMUL.F64        D3, D1, D30
22CD58:  VMUL.F64        D1, D1, D22
22CD5C:  VMUL.F64        D0, D0, D30
22CD60:  VSUB.F64        D2, D3, D2
22CD64:  VADD.F64        D0, D0, D1
22CD68:  VSTR            D2, [R1,#-0x70]
22CD6C:  VSTR            D0, [R1,#-8]
22CD70:  VLDR            D0, [R1]
22CD74:  VLDR            D1, [R1,#-0x78]
22CD78:  VMUL.F64        D2, D0, D23
22CD7C:  VMUL.F64        D3, D1, D31
22CD80:  VMUL.F64        D1, D1, D23
22CD84:  VMUL.F64        D0, D0, D31
22CD88:  VSUB.F64        D2, D3, D2
22CD8C:  VADD.F64        D0, D0, D1
22CD90:  VSTR            D2, [R1,#-0x78]
22CD94:  VSTR            D0, [R1]
22CD98:  ADD.W           R1, R1, #0x90
22CD9C:  BNE.W           loc_22CC5A
22CDA0:  ADD.W           R0, R10, R4,LSL#2
22CDA4:  MOVW            R3, #0x4808
22CDA8:  MOV             R8, R5
22CDAA:  LDR             R1, [R0,R3]
22CDAC:  RSB.W           R2, R1, #1
22CDB0:  STR             R2, [R0,R3]
22CDB2:  ADD.W           R0, R4, R4,LSL#3
22CDB6:  LDR             R3, [SP,#0x3B0+var_334]
22CDB8:  ADD.W           R1, R1, R1,LSL#3
22CDBC:  STR.W           LR, [SP,#0x3B0+var_318]
22CDC0:  ADD.W           R9, R3, R0,LSL#9
22CDC4:  ADD.W           R3, R10, #8
22CDC8:  ADD.W           R1, R3, R1,LSL#10
22CDCC:  ADD.W           R6, R1, R0,LSL#9
22CDD0:  ADD.W           R1, R2, R2,LSL#3
22CDD4:  LDR             R2, [R5,#0x1C]
22CDD6:  ADD.W           R1, R3, R1,LSL#10
22CDDA:  STRD.W          R4, R12, [SP,#0x3B0+var_340]
22CDDE:  ADD.W           R5, R1, R0,LSL#9
22CDE2:  CMP             R2, #0
22CDE4:  BEQ             loc_22CE30
22CDE6:  LDR             R1, [SP,#0x3B0+var_358]
22CDE8:  MOV             R2, R5
22CDEA:  LDR.W           R3, =(unk_6D0FD8 - 0x22CDF8)
22CDEE:  ADD.W           R4, R1, R0,LSL#9
22CDF2:  MOV             R1, R6
22CDF4:  ADD             R3, PC; unk_6D0FD8
22CDF6:  STR.W           R9, [SP,#0x3B0+var_3B0]
22CDFA:  MOV             R0, R4
22CDFC:  BLX             j_INT123_dct36
22CE00:  LDR.W           R3, =(unk_6D1E80 - 0x22CE1A)
22CE04:  ADD.W           R0, R9, #8
22CE08:  STR             R0, [SP,#0x3B0+var_3B0]
22CE0A:  ADD.W           R0, R4, #0x90
22CE0E:  ADD.W           R1, R6, #0x90
22CE12:  ADD.W           R2, R5, #0x90
22CE16:  ADD             R3, PC; unk_6D1E80
22CE18:  BLX             j_INT123_dct36
22CE1C:  LDR.W           LR, [SP,#0x3B0+var_318]
22CE20:  ADD.W           R9, R9, #0x10
22CE24:  ADD.W           R5, R5, #0x120
22CE28:  ADD.W           R6, R6, #0x120
22CE2C:  MOVS            R3, #2
22CE2E:  B               loc_22CE32
22CE30:  MOVS            R3, #0
22CE32:  LDR.W           R0, [R11]
22CE36:  LDR.W           R1, [R8,#0x3C]!
22CE3A:  CMP             R0, #2
22CE3C:  BNE             loc_22CECC
22CE3E:  CMP             R3, R1
22CE40:  BCS.W           loc_22CF5C
22CE44:  ADD.W           R0, R3, R3,LSL#3
22CE48:  MOV             R10, R8
22CE4A:  LSLS            R4, R0, #4
22CE4C:  ADD.W           R8, LR, R4
22CE50:  MOV             R11, R3
22CE52:  LDR             R3, [SP,#0x3B0+var_32C]
22CE54:  MOV             R1, R6
22CE56:  MOV             R0, R8
22CE58:  MOV             R2, R5
22CE5A:  STR.W           R9, [SP,#0x3B0+var_3B0]
22CE5E:  BL              sub_23B26C
22CE62:  ADD.W           R0, R9, #8
22CE66:  LDR             R3, [SP,#0x3B0+var_330]
22CE68:  STR             R0, [SP,#0x3B0+var_3B0]
22CE6A:  ADD.W           R0, R8, #0x90
22CE6E:  ADD.W           R1, R6, #0x90
22CE72:  ADD.W           R2, R5, #0x90
22CE76:  BL              sub_23B26C
22CE7A:  MOV             R3, R11
22CE7C:  LDR.W           LR, [SP,#0x3B0+var_318]
22CE80:  LDR.W           R0, [R10]
22CE84:  ADDS            R3, #2
22CE86:  ADD.W           R9, R9, #0x10
22CE8A:  ADD.W           R5, R5, #0x120
22CE8E:  ADD.W           R6, R6, #0x120
22CE92:  ADD.W           R4, R4, #0x120
22CE96:  CMP             R3, R0
22CE98:  BCC             loc_22CE4C
22CE9A:  LDR.W           R10, [SP,#0x3B0+var_360]
22CE9E:  MOVS            R2, #0
22CEA0:  LDRD.W          R4, R12, [SP,#0x3B0+var_340]
22CEA4:  CMP             R3, #0x1F
22CEA6:  BLS             loc_22CF62
22CEA8:  B               loc_22D088
22CEAA:  ALIGN 4
22CEAC:  DCD unk_5F26A8 - 0x22BF94
22CEB0:  DCD unk_5F26A8 - 0x22C10C
22CEB4:  DCD unk_5F0C60 - 0x22C1D0
22CEB8:  DCD unk_5F26A8 - 0x22C1E0
22CEBC:  DCD off_677664 - 0x22C21A
22CEC0:  DCD unk_5F0C60 - 0x22C224
22CEC4:  DCD unk_5F0C60 - 0x22C230
22CEC8:  DCD unk_5F0C60 - 0x22C23C
22CECC:  CMP             R3, R1
22CECE:  BCS             loc_22CF5C
22CED0:  ADD.W           R1, R3, R3,LSL#3
22CED4:  ADD.W           R0, R0, R0,LSL#3
22CED8:  MOVS            R4, #0
22CEDA:  STR.W           R8, [SP,#0x3B0+var_328]
22CEDE:  ADD.W           R1, LR, R1,LSL#4
22CEE2:  STR             R1, [SP,#0x3B0+var_31C]
22CEE4:  LDR             R1, =(unk_6D1E80 - 0x22CEEA)
22CEE6:  ADD             R1, PC; unk_6D1E80
22CEE8:  ADD.W           R1, R1, R0,LSL#5
22CEEC:  STR             R1, [SP,#0x3B0+var_320]
22CEEE:  LDR             R1, =(unk_6D0FD8 - 0x22CEF4)
22CEF0:  ADD             R1, PC; unk_6D0FD8
22CEF2:  ADD.W           R0, R1, R0,LSL#5
22CEF6:  STR             R0, [SP,#0x3B0+var_324]
22CEF8:  LDR             R0, [SP,#0x3B0+var_31C]
22CEFA:  ADD.W           R10, R6, R4
22CEFE:  STR             R3, [SP,#0x3B0+var_314]
22CF00:  ADD.W           R11, R5, R4
22CF04:  ADD.W           R8, R0, R4
22CF08:  LDR             R3, [SP,#0x3B0+var_324]
22CF0A:  MOV             R1, R10
22CF0C:  MOV             R2, R11
22CF0E:  MOV             R0, R8
22CF10:  STR.W           R9, [SP,#0x3B0+var_3B0]
22CF14:  BLX             j_INT123_dct36
22CF18:  ADD.W           R0, R9, #8
22CF1C:  LDR             R3, [SP,#0x3B0+var_320]
22CF1E:  STR             R0, [SP,#0x3B0+var_3B0]
22CF20:  ADD.W           R0, R8, #0x90
22CF24:  ADD.W           R1, R10, #0x90
22CF28:  ADD.W           R2, R11, #0x90
22CF2C:  BLX             j_INT123_dct36
22CF30:  LDR             R0, [SP,#0x3B0+var_328]
22CF32:  ADD.W           R9, R9, #0x10
22CF36:  LDR             R3, [SP,#0x3B0+var_314]
22CF38:  ADD.W           R4, R4, #0x120
22CF3C:  LDR             R0, [R0]
22CF3E:  ADDS            R3, #2
22CF40:  CMP             R3, R0
22CF42:  BCC             loc_22CEF8
22CF44:  ADD             R6, R4
22CF46:  ADD             R5, R4
22CF48:  LDR.W           R10, [SP,#0x3B0+var_360]
22CF4C:  MOVS            R2, #0
22CF4E:  LDRD.W          R4, R12, [SP,#0x3B0+var_340]
22CF52:  LDR.W           LR, [SP,#0x3B0+var_318]
22CF56:  CMP             R3, #0x1F
22CF58:  BLS             loc_22CF62
22CF5A:  B               loc_22D088
22CF5C:  MOVS            R2, #0
22CF5E:  LDRD.W          R4, R12, [SP,#0x3B0+var_340]
22CF62:  RSB.W           R0, R3, #0x20 ; ' '
22CF66:  VLDR            D16, [R6]
22CF6A:  ADD.W           R1, R9, #0x400
22CF6E:  SUBS            R0, #1
22CF70:  VSTR            D16, [R9]
22CF74:  STRD.W          R2, R2, [R5]
22CF78:  VLDR            D16, [R6,#8]
22CF7C:  VSTR            D16, [R9,#0x100]
22CF80:  STRD.W          R2, R2, [R5,#8]
22CF84:  VLDR            D16, [R6,#0x10]
22CF88:  VSTR            D16, [R9,#0x200]
22CF8C:  STRD.W          R2, R2, [R5,#0x10]
22CF90:  VLDR            D16, [R6,#0x18]
22CF94:  VSTR            D16, [R9,#0x300]
22CF98:  STRD.W          R2, R2, [R5,#0x18]
22CF9C:  VLDR            D16, [R6,#0x20]
22CFA0:  VSTR            D16, [R1]
22CFA4:  ADD.W           R1, R9, #0x500
22CFA8:  STRD.W          R2, R2, [R5,#0x20]
22CFAC:  VLDR            D16, [R6,#0x28]
22CFB0:  VSTR            D16, [R1]
22CFB4:  ADD.W           R1, R9, #0x600
22CFB8:  STRD.W          R2, R2, [R5,#0x28]
22CFBC:  VLDR            D16, [R6,#0x30]
22CFC0:  VSTR            D16, [R1]
22CFC4:  ADD.W           R1, R9, #0x700
22CFC8:  STRD.W          R2, R2, [R5,#0x30]
22CFCC:  VLDR            D16, [R6,#0x38]
22CFD0:  VSTR            D16, [R1]
22CFD4:  ADD.W           R1, R9, #0x800
22CFD8:  STRD.W          R2, R2, [R5,#0x38]
22CFDC:  VLDR            D16, [R6,#0x40]
22CFE0:  VSTR            D16, [R1]
22CFE4:  ADD.W           R1, R9, #0x900
22CFE8:  STRD.W          R2, R2, [R5,#0x40]
22CFEC:  VLDR            D16, [R6,#0x48]
22CFF0:  VSTR            D16, [R1]
22CFF4:  ADD.W           R1, R9, #0xA00
22CFF8:  STRD.W          R2, R2, [R5,#0x48]
22CFFC:  VLDR            D16, [R6,#0x50]
22D000:  VSTR            D16, [R1]
22D004:  ADD.W           R1, R9, #0xB00
22D008:  STRD.W          R2, R2, [R5,#0x50]
22D00C:  VLDR            D16, [R6,#0x58]
22D010:  VSTR            D16, [R1]
22D014:  ADD.W           R1, R9, #0xC00
22D018:  STRD.W          R2, R2, [R5,#0x58]
22D01C:  VLDR            D16, [R6,#0x60]
22D020:  VSTR            D16, [R1]
22D024:  ADD.W           R1, R9, #0xD00
22D028:  STRD.W          R2, R2, [R5,#0x60]
22D02C:  VLDR            D16, [R6,#0x68]
22D030:  VSTR            D16, [R1]
22D034:  ADD.W           R1, R9, #0xE00
22D038:  STRD.W          R2, R2, [R5,#0x68]
22D03C:  VLDR            D16, [R6,#0x70]
22D040:  VSTR            D16, [R1]
22D044:  ADD.W           R1, R9, #0xF00
22D048:  STRD.W          R2, R2, [R5,#0x70]
22D04C:  VLDR            D16, [R6,#0x78]
22D050:  VSTR            D16, [R1]
22D054:  ADD.W           R1, R9, #0x1000
22D058:  STRD.W          R2, R2, [R5,#0x78]
22D05C:  VLDR            D16, [R6,#0x80]
22D060:  VSTR            D16, [R1]
22D064:  ADD.W           R1, R9, #0x1100
22D068:  STRD.W          R2, R2, [R5,#0x80]
22D06C:  ADD.W           R9, R9, #8
22D070:  VLDR            D16, [R6,#0x88]
22D074:  ADD.W           R6, R6, #0x90
22D078:  VSTR            D16, [R1]
22D07C:  STRD.W          R2, R2, [R5,#0x88]
22D080:  ADD.W           R5, R5, #0x90
22D084:  BNE.W           loc_22CF66
22D088:  LDR             R0, [SP,#0x3B0+var_34C]
22D08A:  ADDS            R4, #1
22D08C:  LDR.W           R9, [SP,#0x3B0+var_350]
22D090:  ADD.W           LR, LR, #0x1200
22D094:  LDR             R6, [SP,#0x3B0+var_348]
22D096:  ADD.W           R12, R12, #0x1200
22D09A:  CMP             R4, R0
22D09C:  BLT.W           loc_22CC18
22D0A0:  LDR             R5, [SP,#0x3B0+var_380]
22D0A2:  MOVS            R4, #0
22D0A4:  MOVW            R8, #0x1208
22D0A8:  ADDS            R0, R5, #1
22D0AA:  BEQ             loc_22D0BA
22D0AC:  LDR             R0, [SP,#0x3B0+var_35C]
22D0AE:  MOV             R1, R10
22D0B0:  LDR             R2, [R0]
22D0B2:  LDR             R0, [SP,#0x3B0+var_334]
22D0B4:  ADD             R0, R4
22D0B6:  BLX             R2
22D0B8:  B               loc_22D0CA
22D0BA:  LDR             R1, [SP,#0x3B0+var_364]
22D0BC:  MOV             R2, R10
22D0BE:  LDR             R0, [SP,#0x3B0+var_334]
22D0C0:  ADD             R0, R4
22D0C2:  LDR             R3, [R1]
22D0C4:  ADD.W           R1, R0, #0x1200
22D0C8:  BLX             R3
22D0CA:  LDR             R1, [SP,#0x3B0+var_338]
22D0CC:  ADD.W           R4, R4, #0x100
22D0D0:  CMP.W           R4, #0x1200
22D0D4:  ADD             R1, R0
22D0D6:  STR             R1, [SP,#0x3B0+var_338]
22D0D8:  BNE             loc_22D0A8
22D0DA:  LDR             R0, [SP,#0x3B0+var_38C]
22D0DC:  ADDS            R6, #1
22D0DE:  ADD             R5, SP, #0x3B0+var_198
22D0E0:  CMP             R6, R0
22D0E2:  BLT.W           loc_22C800
22D0E6:  B               loc_22D13A
22D0E8:  LDR.W           R0, [LR]
22D0EC:  TST.W           R0, #0x20
22D0F0:  BEQ             loc_22D14C
22D0F2:  LSLS            R0, R0, #0x1A
22D0F4:  BPL             loc_22D168
22D0F6:  MOVS            R0, #0
22D0F8:  STR             R0, [SP,#0x3B0+var_338]
22D0FA:  B               loc_22D13A
22D0FC:  MOVW            R0, #0xB33C
22D100:  LDRB.W          R0, [R10,R0]
22D104:  LSLS            R0, R0, #0x1A
22D106:  BMI             loc_22D13A
22D108:  MOVW            R0, #0xB338
22D10C:  LDR.W           R0, [R10,R0]
22D110:  CMP             R0, #2
22D112:  BLT             loc_22D13A
22D114:  LDR             R0, =(off_677664 - 0x22D120)
22D116:  MOVW            R2, #0x7CE
22D11A:  LDR             R1, =(aCProjectsOswra_29 - 0x22D122); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D11C:  ADD             R0, PC; off_677664
22D11E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D120:  B               loc_22D1BC
22D122:  MOVW            R0, #0xB33C
22D126:  LDRB.W          R0, [R10,R0]
22D12A:  LSLS            R0, R0, #0x1A
22D12C:  BMI             loc_22D13A
22D12E:  MOVW            R0, #0xB338
22D132:  LDR.W           R0, [R10,R0]
22D136:  CMP             R0, #2
22D138:  BGE             loc_22D1B0
22D13A:  LDR             R0, [SP,#0x3B0+var_338]
22D13C:  ADD.W           SP, SP, #0x350
22D140:  VPOP            {D8-D15}
22D144:  ADD             SP, SP, #4
22D146:  POP.W           {R8-R11}
22D14A:  POP             {R4-R7,PC}
22D14C:  LDR             R0, =(off_677664 - 0x22D15A)
22D14E:  MOV.W           R2, #0x1E8
22D152:  LDR             R1, =(aCProjectsOswra_30 - 0x22D15C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D154:  MOV             R4, LR
22D156:  ADD             R0, PC; off_677664
22D158:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D15A:  LDR             R0, [R0]
22D15C:  LDR             R0, [R0]; stream
22D15E:  BLX             fprintf
22D162:  LDR             R0, [R4]
22D164:  LSLS            R0, R0, #0x1A
22D166:  BMI             loc_22D0F6
22D168:  LDR             R0, =(off_677664 - 0x22D174)
22D16A:  MOVW            R2, #0x7B7
22D16E:  LDR             R1, =(aCProjectsOswra_31 - 0x22D176); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D170:  ADD             R0, PC; off_677664
22D172:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D174:  LDR             R0, [R0]
22D176:  LDR             R0, [R0]; stream
22D178:  BLX             fprintf
22D17C:  B               loc_22D0F6
22D17E:  LDR             R0, =(off_677664 - 0x22D18E)
22D180:  MOVW            R1, #0x9314
22D184:  LDR             R3, [SP,#0x3B0+var_360]
22D186:  SUB.W           R2, R2, R10
22D18A:  ADD             R0, PC; off_677664
22D18C:  LDR             R0, [R0]
22D18E:  LDR             R3, [R3,R1]
22D190:  ADR             R1, aNoteMissingDBy; "Note: missing %d bytes in bit reservoir"...
22D192:  LDR             R0, [R0]; stream
22D194:  BLX             fprintf
22D198:  LDR             R3, [SP,#0x3B0+var_314]
22D19A:  LDR             R0, [SP,#0x3B0+var_368]
22D19C:  LDR.W           R6, [R8]
22D1A0:  LDR.W           R1, [R11]
22D1A4:  LDR             R2, [R0]
22D1A6:  LDR.W           R10, [R3]
22D1AA:  LDR             R0, [SP,#0x3B0+var_324]
22D1AC:  B.W             loc_22C02C
22D1B0:  LDR             R0, =(off_677664 - 0x22D1BC)
22D1B2:  MOVW            R2, #0x7DE
22D1B6:  LDR             R1, =(aCProjectsOswra_29 - 0x22D1BE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D1B8:  ADD             R0, PC; off_677664
22D1BA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22D1BC:  LDR             R0, [R0]
22D1BE:  LDR             R0, [R0]; stream
22D1C0:  BLX             fprintf
22D1C4:  B               loc_22D13A
