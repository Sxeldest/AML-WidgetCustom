; =========================================================
; Game Engine Function: sub_F1258
; Address            : 0xF1258 - 0xF1320
; =========================================================

F1258:  PUSH            {R4-R7,LR}
F125A:  ADD             R7, SP, #0xC
F125C:  PUSH.W          {R8-R11}
F1260:  STR             R0, [R2]
F1262:  LDRB            R0, [R7,#arg_C]
F1264:  LDR             R4, [R7,#arg_4]
F1266:  LDR.W           R12, [R7,#arg_0]
F126A:  LSLS            R0, R0, #0x1E
F126C:  STR             R3, [R4]
F126E:  BPL             loc_F128E
F1270:  SUB.W           R0, R12, R3
F1274:  CMP             R0, #2
F1276:  BGE             loc_F127C
F1278:  MOVS            R0, #1
F127A:  B               loc_F131A
F127C:  ADDS            R0, R3, #1
F127E:  STR             R0, [R4]
F1280:  MOVS            R0, #0xFE
F1282:  STRB            R0, [R3]
F1284:  LDR             R0, [R4]
F1286:  ADDS            R3, R0, #1
F1288:  STR             R3, [R4]
F128A:  MOVS            R3, #0xFF
F128C:  STRB            R3, [R0]
F128E:  LDR.W           R10, [R7,#arg_8]
F1292:  MOVW            R8, #0x7FF
F1296:  LDR             R0, [R2]
F1298:  MOV.W           R11, #0
F129C:  MOV.W           R9, #0x37 ; '7'
F12A0:  CMP             R0, R1
F12A2:  BCS             loc_F1318
F12A4:  LDR             R3, [R0]
F12A6:  MOVS            R0, #2
F12A8:  BIC.W           R5, R3, R8
F12AC:  CMP.W           R5, #0xD800
F12B0:  BEQ             loc_F131A
F12B2:  CMP             R3, R10
F12B4:  BHI             loc_F131A
F12B6:  LDR             R0, [R4]
F12B8:  CMP.W           R11, R3,LSR#16
F12BC:  SUB.W           R5, R12, R0
F12C0:  BNE             loc_F12CE
F12C2:  CMP             R5, #2
F12C4:  BLT             loc_F1278
F12C6:  ADDS            R5, R0, #1
F12C8:  STR             R5, [R4]
F12CA:  LSRS            R5, R3, #8
F12CC:  B               loc_F1306
F12CE:  CMP             R5, #4
F12D0:  BLT             loc_F1278
F12D2:  ADDS            R5, R0, #1
F12D4:  STR             R5, [R4]
F12D6:  MOV.W           R5, #0x7C0
F12DA:  MOVS            R6, #0xD8
F12DC:  AND.W           R5, R5, R3,LSR#10
F12E0:  ADD.W           R5, R5, #0x3FC0
F12E4:  ORR.W           LR, R6, R5,LSR#8
F12E8:  STRB.W          LR, [R0]
F12EC:  LDR             R0, [R4]
F12EE:  ADDS            R6, R0, #1
F12F0:  STR             R6, [R4]
F12F2:  UBFX.W          R6, R3, #0xA, #6
F12F6:  ADD             R5, R6
F12F8:  STRB            R5, [R0]
F12FA:  LDR             R0, [R4]
F12FC:  ADDS            R5, R0, #1
F12FE:  STR             R5, [R4]
F1300:  LSRS            R5, R3, #8
F1302:  BFI.W           R5, R9, #2, #0x1E
F1306:  STRB            R5, [R0]
F1308:  LDR             R0, [R4]
F130A:  ADDS            R5, R0, #1
F130C:  STR             R5, [R4]
F130E:  STRB            R3, [R0]
F1310:  LDR             R0, [R2]
F1312:  ADDS            R0, #4
F1314:  STR             R0, [R2]
F1316:  B               loc_F12A0
F1318:  MOVS            R0, #0
F131A:  POP.W           {R8-R11}
F131E:  POP             {R4-R7,PC}
