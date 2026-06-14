; =========================================================
; Game Engine Function: sub_E11C8
; Address            : 0xE11C8 - 0xE12F0
; =========================================================

E11C8:  PUSH            {R4-R7,LR}
E11CA:  ADD             R7, SP, #0xC
E11CC:  PUSH.W          {R8-R11}
E11D0:  SUB             SP, SP, #0x14
E11D2:  MOV             R6, R0
E11D4:  LDR             R0, =(unk_91CE0 - 0xE11E2)
E11D6:  LDRH.W          R2, [R1,#9]
E11DA:  ADD.W           R8, R1, #0xB
E11DE:  ADD             R0, PC; unk_91CE0
E11E0:  LDR             R5, [R1]
E11E2:  AND.W           R2, R2, #0xF
E11E6:  LDR.W           R10, [R7,#arg_0]
E11EA:  SUBS            R5, R5, R3
E11EC:  LDRB            R0, [R0,R2]
E11EE:  IT CC
E11F0:  MOVCC           R5, #0
E11F2:  LSRS.W          R9, R5, R0
E11F6:  BEQ             loc_E1204
E11F8:  MOV             R0, R6
E11FA:  MOV             R1, R9
E11FC:  MOV             R2, R8
E11FE:  BL              sub_DD992
E1202:  MOV             R6, R0
E1204:  LDR.W           R0, [R10]
E1208:  BIC.W           R4, R0, #0xFF000000
E120C:  CBZ             R4, loc_E122E
E120E:  LDRD.W          R0, R2, [R6,#8]
E1212:  ADDS            R1, R0, #1
E1214:  CMP             R2, R1
E1216:  BCS             loc_E1224
E1218:  LDR             R0, [R6]
E121A:  LDR             R2, [R0]
E121C:  MOV             R0, R6
E121E:  BLX             R2
E1220:  LDR             R0, [R6,#8]
E1222:  ADDS            R1, R0, #1
E1224:  LDR             R2, [R6,#4]
E1226:  STR             R1, [R6,#8]
E1228:  STRB            R4, [R2,R0]
E122A:  LSRS            R4, R4, #8
E122C:  BNE             loc_E120E
E122E:  SUB.W           R11, R7, #-var_2D
E1232:  LDR.W           R1, [R10,#8]
E1236:  MOVS            R0, #0x30 ; '0'
E1238:  SUB.W           R9, R5, R9
E123C:  STRB.W          R0, [R7,#var_2D]
E1240:  MOV             R0, R6
E1242:  MOV             R2, R11
E1244:  BL              sub_DD9D2
E1248:  MOV             LR, R0
E124A:  LDR.W           R1, [R10,#0x18]
E124E:  LDRD.W          R5, R6, [LR,#8]
E1252:  LDRD.W          R3, R0, [R10,#0x10]
E1256:  LDRB.W          R12, [R10,#0x1C]
E125A:  ADDS            R4, R5, R1
E125C:  CMP             R6, R4
E125E:  BCC             loc_E129A
E1260:  LDR.W           R5, [LR,#4]
E1264:  STR.W           R4, [LR,#8]
E1268:  CBZ             R5, loc_E129A
E126A:  LDR             R6, =(a0123456789abcd_0 - 0xE1276); "0123456789ABCDEF" ...
E126C:  CMP.W           R12, #0
E1270:  LDR             R1, =(a0123456789abcd - 0xE1278); "0123456789abcdef" ...
E1272:  ADD             R6, PC; "0123456789ABCDEF"
E1274:  ADD             R1, PC; "0123456789abcdef"
E1276:  IT NE
E1278:  MOVNE           R1, R6
E127A:  ADDS            R6, R4, R5
E127C:  SUBS            R6, #1
E127E:  AND.W           R5, R3, #0xF
E1282:  LSRS            R3, R3, #4
E1284:  ORR.W           R3, R3, R0,LSL#28
E1288:  LDRB            R5, [R1,R5]
E128A:  ORR.W           R4, R3, R0,LSR#4
E128E:  LSRS            R0, R0, #4
E1290:  STRB.W          R5, [R6],#-1
E1294:  CMP             R4, #0
E1296:  BNE             loc_E127E
E1298:  B               loc_E12D4
E129A:  LDR             R5, =(a0123456789abcd_0 - 0xE12A6); "0123456789ABCDEF" ...
E129C:  ADD             R1, R11
E129E:  LDR             R4, =(a0123456789abcd - 0xE12AC); "0123456789abcdef" ...
E12A0:  SUBS            R6, R1, #1
E12A2:  ADD             R5, PC; "0123456789ABCDEF"
E12A4:  CMP.W           R12, #0
E12A8:  ADD             R4, PC; "0123456789abcdef"
E12AA:  IT NE
E12AC:  MOVNE           R4, R5
E12AE:  AND.W           R5, R3, #0xF
E12B2:  LSRS            R3, R3, #4
E12B4:  ORR.W           R3, R3, R0,LSL#28
E12B8:  LDRB            R5, [R4,R5]
E12BA:  ORR.W           R2, R3, R0,LSR#4
E12BE:  LSRS            R0, R0, #4
E12C0:  STRB.W          R5, [R6],#-1
E12C4:  CMP             R2, #0
E12C6:  BNE             loc_E12AE
E12C8:  SUB.W           R0, R7, #-var_2D
E12CC:  MOV             R2, LR
E12CE:  BL              sub_DCF1C
E12D2:  MOV             LR, R0
E12D4:  CMP.W           R9, #0
E12D8:  BEQ             loc_E12E6
E12DA:  MOV             R0, LR
E12DC:  MOV             R1, R9
E12DE:  MOV             R2, R8
E12E0:  BL              sub_DD992
E12E4:  MOV             LR, R0
E12E6:  MOV             R0, LR
E12E8:  ADD             SP, SP, #0x14
E12EA:  POP.W           {R8-R11}
E12EE:  POP             {R4-R7,PC}
