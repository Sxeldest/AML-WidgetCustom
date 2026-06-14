; =========================================================
; Game Engine Function: sub_EF194
; Address            : 0xEF194 - 0xEF27A
; =========================================================

EF194:  PUSH            {R4-R7,LR}
EF196:  ADD             R7, SP, #0xC
EF198:  PUSH.W          {R8-R11}
EF19C:  SUB             SP, SP, #0x24
EF19E:  MOV             R10, R3
EF1A0:  MOV             R9, R2
EF1A2:  MOV             R8, R0
EF1A4:  CMP.W           R3, #0xFFFFFFFF
EF1A8:  BLE             loc_EF1AE
EF1AA:  MOVS            R0, #4
EF1AC:  B               loc_EF1E0
EF1AE:  LDR.W           R4, [R8,#8]
EF1B2:  LDRD.W          R0, R2, [R4,#8]
EF1B6:  ADDS            R1, R0, #1
EF1B8:  CMP             R2, R1
EF1BA:  BCS             loc_EF1C8
EF1BC:  LDR             R0, [R4]
EF1BE:  LDR             R2, [R0]
EF1C0:  MOV             R0, R4
EF1C2:  BLX             R2
EF1C4:  LDR             R0, [R4,#8]
EF1C6:  ADDS            R1, R0, #1
EF1C8:  LDR             R2, [R4,#4]
EF1CA:  RSBS.W          R9, R9, #0
EF1CE:  STR             R1, [R4,#8]
EF1D0:  MOV.W           R1, #0x2D ; '-'
EF1D4:  STRB            R1, [R2,R0]
EF1D6:  MOV.W           R0, #0
EF1DA:  SBC.W           R10, R0, R10
EF1DE:  MOVS            R0, #3
EF1E0:  ORR.W           R3, R9, #1
EF1E4:  LDR             R1, =(unk_91C38 - 0xEF202)
EF1E6:  CLZ.W           R3, R3
EF1EA:  LDR             R2, =(unk_91BF8 - 0xEF1FC)
EF1EC:  ADDS            R3, #0x20 ; ' '
EF1EE:  CMP.W           R10, #0
EF1F2:  IT NE
EF1F4:  CLZNE.W         R3, R10
EF1F8:  ADD             R2, PC; unk_91BF8
EF1FA:  EOR.W           R3, R3, #0x3F ; '?'
EF1FE:  ADD             R1, PC; unk_91C38
EF200:  LDR.W           R4, [R8,#8]
EF204:  LDRB            R6, [R2,R3]
EF206:  LDR.W           R2, [R1,R6,LSL#3]
EF20A:  ADD.W           R1, R1, R6,LSL#3
EF20E:  LDR             R1, [R1,#4]
EF210:  SUBS.W          R2, R9, R2
EF214:  SBCS.W          R1, R10, R1
EF218:  IT CC
EF21A:  SUBCC           R6, #1
EF21C:  CMP             R0, R6
EF21E:  BLE             loc_EF254
EF220:  SUBS            R0, R0, R6
EF222:  CMP             R0, #1
EF224:  BLT             loc_EF250
EF226:  ADDS            R5, R0, #1
EF228:  MOV.W           R11, #0x30 ; '0'
EF22C:  LDRD.W          R0, R2, [R4,#8]
EF230:  ADDS            R1, R0, #1
EF232:  CMP             R2, R1
EF234:  BCS             loc_EF242
EF236:  LDR             R0, [R4]
EF238:  LDR             R2, [R0]
EF23A:  MOV             R0, R4
EF23C:  BLX             R2
EF23E:  LDR             R0, [R4,#8]
EF240:  ADDS            R1, R0, #1
EF242:  LDR             R2, [R4,#4]
EF244:  SUBS            R5, #1
EF246:  CMP             R5, #1
EF248:  STR             R1, [R4,#8]
EF24A:  STRB.W          R11, [R2,R0]
EF24E:  BGT             loc_EF22C
EF250:  STR.W           R4, [R8,#8]
EF254:  STR             R6, [SP,#0x40+var_40]
EF256:  ADD             R6, SP, #0x40+var_30
EF258:  ADD             R0, SP, #0x40+var_38
EF25A:  MOV             R2, R9
EF25C:  MOV             R1, R6
EF25E:  MOV             R3, R10
EF260:  BL              sub_DD0CC
EF264:  LDR             R1, [SP,#0x40+var_34]
EF266:  MOV             R0, R6
EF268:  MOV             R2, R4
EF26A:  BL              sub_DCF1C
EF26E:  STR.W           R0, [R8,#8]
EF272:  ADD             SP, SP, #0x24 ; '$'
EF274:  POP.W           {R8-R11}
EF278:  POP             {R4-R7,PC}
