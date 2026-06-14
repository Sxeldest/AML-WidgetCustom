; =========================================================
; Game Engine Function: sub_FB20C
; Address            : 0xFB20C - 0xFB2AC
; =========================================================

FB20C:  PUSH            {R4-R7,LR}
FB20E:  ADD             R7, SP, #0xC
FB210:  PUSH.W          {R11}
FB214:  SUB             SP, SP, #0x10
FB216:  CMP             R1, R0
FB218:  BEQ             loc_FB2A4
FB21A:  MOV             R5, R0
FB21C:  LDR             R0, [R0,#0x10]
FB21E:  MOV             R4, R1
FB220:  CMP             R0, R5
FB222:  BEQ             loc_FB230
FB224:  LDR             R1, [R4,#0x10]
FB226:  CMP             R4, R1
FB228:  BEQ             loc_FB24C
FB22A:  STR             R1, [R5,#0x10]
FB22C:  STR             R0, [R4,#0x10]
FB22E:  B               loc_FB2A4
FB230:  LDR             R1, [R4,#0x10]
FB232:  CMP             R1, R4
FB234:  BEQ             loc_FB266
FB236:  LDR             R1, [R0]
FB238:  LDR             R2, [R1,#0xC]
FB23A:  MOV             R1, R4
FB23C:  BLX             R2
FB23E:  LDR             R0, [R5,#0x10]
FB240:  LDR             R1, [R0]
FB242:  LDR             R1, [R1,#0x10]
FB244:  BLX             R1
FB246:  LDR             R0, [R4,#0x10]
FB248:  STR             R0, [R5,#0x10]
FB24A:  B               loc_FB2A2
FB24C:  LDR             R0, [R1]
FB24E:  LDR             R2, [R0,#0xC]
FB250:  MOV             R0, R1
FB252:  MOV             R1, R5
FB254:  BLX             R2
FB256:  LDR             R0, [R4,#0x10]
FB258:  LDR             R1, [R0]
FB25A:  LDR             R1, [R1,#0x10]
FB25C:  BLX             R1
FB25E:  LDR             R0, [R5,#0x10]
FB260:  STR             R0, [R4,#0x10]
FB262:  STR             R5, [R5,#0x10]
FB264:  B               loc_FB2A4
FB266:  LDR             R1, [R0]
FB268:  LDR             R2, [R1,#0xC]
FB26A:  MOV             R1, SP
FB26C:  BLX             R2
FB26E:  LDR             R0, [R5,#0x10]
FB270:  LDR             R1, [R0]
FB272:  LDR             R1, [R1,#0x10]
FB274:  BLX             R1
FB276:  MOVS            R6, #0
FB278:  STR             R6, [R5,#0x10]
FB27A:  LDR             R0, [R4,#0x10]
FB27C:  LDR             R1, [R0]
FB27E:  LDR             R2, [R1,#0xC]
FB280:  MOV             R1, R5
FB282:  BLX             R2
FB284:  LDR             R0, [R4,#0x10]
FB286:  LDR             R1, [R0]
FB288:  LDR             R1, [R1,#0x10]
FB28A:  BLX             R1
FB28C:  LDR             R0, [SP,#0x20+var_20]
FB28E:  STR             R6, [R4,#0x10]
FB290:  STR             R5, [R5,#0x10]
FB292:  LDR             R2, [R0,#0xC]
FB294:  MOV             R0, SP
FB296:  MOV             R1, R4
FB298:  BLX             R2
FB29A:  LDR             R0, [SP,#0x20+var_20]
FB29C:  LDR             R1, [R0,#0x10]
FB29E:  MOV             R0, SP
FB2A0:  BLX             R1
FB2A2:  STR             R4, [R4,#0x10]
FB2A4:  ADD             SP, SP, #0x10
FB2A6:  POP.W           {R11}
FB2AA:  POP             {R4-R7,PC}
