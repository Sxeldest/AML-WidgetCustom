; =========================================================
; Game Engine Function: sub_E1304
; Address            : 0xE1304 - 0xE1408
; =========================================================

E1304:  PUSH            {R4-R7,LR}
E1306:  ADD             R7, SP, #0xC
E1308:  PUSH.W          {R8-R10}
E130C:  SUB             SP, SP, #0x48
E130E:  MOV             R6, R0
E1310:  LDR             R0, =(unk_91CE0 - 0xE131E)
E1312:  LDRH.W          R2, [R1,#9]
E1316:  ADD.W           R8, R1, #0xB
E131A:  ADD             R0, PC; unk_91CE0
E131C:  LDR             R5, [R1]
E131E:  AND.W           R2, R2, #0xF
E1322:  LDR.W           R10, [R7,#arg_0]
E1326:  SUBS            R4, R5, R3
E1328:  LDRB            R0, [R0,R2]
E132A:  IT CC
E132C:  MOVCC           R4, #0
E132E:  LSRS.W          R9, R4, R0
E1332:  BEQ             loc_E1340
E1334:  MOV             R0, R6
E1336:  MOV             R1, R9
E1338:  MOV             R2, R8
E133A:  BL              sub_DD992
E133E:  MOV             R6, R0
E1340:  LDR.W           R0, [R10]
E1344:  BIC.W           R5, R0, #0xFF000000
E1348:  CBZ             R5, loc_E136A
E134A:  LDRD.W          R0, R2, [R6,#8]
E134E:  ADDS            R1, R0, #1
E1350:  CMP             R2, R1
E1352:  BCS             loc_E1360
E1354:  LDR             R0, [R6]
E1356:  LDR             R2, [R0]
E1358:  MOV             R0, R6
E135A:  BLX             R2
E135C:  LDR             R0, [R6,#8]
E135E:  ADDS            R1, R0, #1
E1360:  LDR             R2, [R6,#4]
E1362:  STR             R1, [R6,#8]
E1364:  STRB            R5, [R2,R0]
E1366:  LSRS            R5, R5, #8
E1368:  BNE             loc_E134A
E136A:  SUB.W           R5, R7, #-var_59
E136E:  LDR.W           R1, [R10,#8]
E1372:  MOVS            R0, #0x30 ; '0'
E1374:  SUB.W           R9, R4, R9
E1378:  STRB.W          R0, [R7,#var_59]
E137C:  MOV             R0, R6
E137E:  MOV             R2, R5
E1380:  BL              sub_DD9D2
E1384:  LDR.W           R1, [R10,#0x18]
E1388:  MOV             R12, R0
E138A:  LDRD.W          R6, R4, [R0,#8]
E138E:  LDRD.W          R2, R3, [R10,#0x10]
E1392:  ADD             R6, R1
E1394:  CMP             R4, R6
E1396:  BCC             loc_E13C2
E1398:  LDR.W           R4, [R12,#4]
E139C:  STR.W           R6, [R12,#8]
E13A0:  CBZ             R4, loc_E13C2
E13A2:  ADDS            R1, R6, R4
E13A4:  MOVS            R6, #0x18
E13A6:  SUBS            R1, #1
E13A8:  MOV             R0, R2
E13AA:  MOVS.W          R3, R3,LSR#1
E13AE:  BFI.W           R0, R6, #1, #0x1F
E13B2:  STRB.W          R0, [R1],#-1
E13B6:  MOV.W           R2, R2,RRX
E13BA:  ORRS.W          R0, R2, R3
E13BE:  BNE             loc_E13A8
E13C0:  B               loc_E13EC
E13C2:  ADD             R1, R5
E13C4:  MOVS            R5, #0x18
E13C6:  SUBS            R6, R1, #1
E13C8:  MOV             R0, R2
E13CA:  MOVS.W          R3, R3,LSR#1
E13CE:  BFI.W           R0, R5, #1, #0x1F
E13D2:  STRB.W          R0, [R6],#-1
E13D6:  MOV.W           R2, R2,RRX
E13DA:  ORRS.W          R0, R2, R3
E13DE:  BNE             loc_E13C8
E13E0:  SUB.W           R0, R7, #-var_59
E13E4:  MOV             R2, R12
E13E6:  BL              sub_DCF1C
E13EA:  MOV             R12, R0
E13EC:  CMP.W           R9, #0
E13F0:  BEQ             loc_E13FE
E13F2:  MOV             R0, R12
E13F4:  MOV             R1, R9
E13F6:  MOV             R2, R8
E13F8:  BL              sub_DD992
E13FC:  MOV             R12, R0
E13FE:  MOV             R0, R12
E1400:  ADD             SP, SP, #0x48 ; 'H'
E1402:  POP.W           {R8-R10}
E1406:  POP             {R4-R7,PC}
