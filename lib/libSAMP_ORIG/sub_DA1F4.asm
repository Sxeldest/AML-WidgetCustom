; =========================================================
; Game Engine Function: sub_DA1F4
; Address            : 0xDA1F4 - 0xDA364
; =========================================================

DA1F4:  PUSH            {R4-R7,LR}
DA1F6:  ADD             R7, SP, #0xC
DA1F8:  PUSH.W          {R8-R11}
DA1FC:  SUB             SP, SP, #0x3C
DA1FE:  MOV             R6, R0
DA200:  LDR             R5, [R7,#arg_0]
DA202:  LDR             R4, [R6,#4]
DA204:  CMP             R1, #0
DA206:  LDR.W           R8, [R6,#0x24]
DA20A:  STR             R3, [SP,#0x58+var_40]
DA20C:  BEQ             loc_DA21C
DA20E:  MUL.W           R11, R8, R1
DA212:  CMP             R1, #1
DA214:  BLT             loc_DA2B8
DA216:  LDR.W           R12, [R6,#0x1C]
DA21A:  B               loc_DA22E
DA21C:  LDR.W           R12, [R7,#arg_8]
DA220:  LDR             R1, [R6,#0x1C]
DA222:  LSL.W           R11, R8, R12
DA226:  SUB.W           R12, R1, R12
DA22A:  MOVS            R1, #1
DA22C:  MOV             R8, R11
DA22E:  ADD.W           R5, R11, R4
DA232:  LDR.W           LR, [R7,#arg_10]
DA236:  MOV.W           R0, R11,LSL#2
DA23A:  STR.W           R11, [SP,#0x58+var_44]
DA23E:  LSLS            R5, R5, #2
DA240:  ADD.W           R11, R6, #0x38 ; '8'
DA244:  STR             R5, [SP,#0x58+var_38]
DA246:  MOV.W           R10, R8,LSL#2
DA24A:  MOVS            R5, #0
DA24C:  MOV             R8, R3
DA24E:  STR             R0, [SP,#0x58+var_3C]
DA250:  STR             R1, [SP,#0x58+var_20]
DA252:  STRD.W          R11, R10, [SP,#0x58+var_28]
DA256:  STR             R5, [SP,#0x58+var_30]
DA258:  MOV.W           R9, #0
DA25C:  MOV             R5, R2
DA25E:  STR             R2, [SP,#0x58+var_2C]
DA260:  STR.W           R8, [SP,#0x58+var_34]
DA264:  LDR             R3, [R6,#0x34]
DA266:  MOV             R0, R11
DA268:  STRD.W          R4, R12, [SP,#0x58+var_58]
DA26C:  MOV             R2, R8
DA26E:  STRD.W          R1, LR, [SP,#0x58+var_50]
DA272:  MOV             R1, R5
DA274:  MOV             R10, R12
DA276:  MOV             R11, LR
DA278:  BLX             j_clt_mdct_forward_c
DA27C:  MOV             LR, R11
DA27E:  LDR.W           R11, [SP,#0x58+var_28]
DA282:  MOV             R12, R10
DA284:  LDRD.W          R10, R1, [SP,#0x58+var_24]
DA288:  ADD.W           R9, R9, #1
DA28C:  ADD.W           R8, R8, #4
DA290:  ADD             R5, R10
DA292:  CMP             R9, R1
DA294:  BLT             loc_DA264
DA296:  LDR             R2, [SP,#0x58+var_2C]
DA298:  LDR             R0, [SP,#0x58+var_38]
DA29A:  LDR.W           R8, [SP,#0x58+var_34]
DA29E:  ADD             R2, R0
DA2A0:  LDR             R0, [SP,#0x58+var_3C]
DA2A2:  LDR             R5, [SP,#0x58+var_30]
DA2A4:  ADD             R8, R0
DA2A6:  LDR             R0, [R7,#arg_4]
DA2A8:  ADDS            R5, #1
DA2AA:  CMP             R5, R0
DA2AC:  BLT             loc_DA256
DA2AE:  LDR.W           R11, [R7,#arg_0]
DA2B2:  MOV             R5, R11
DA2B4:  LDRD.W          R11, R3, [SP,#0x58+var_44]
DA2B8:  CMP             R5, #1
DA2BA:  LDR             R4, [R7,#arg_C]
DA2BC:  ITT EQ
DA2BE:  LDREQ           R1, [R7,#arg_4]
DA2C0:  CMPEQ           R1, #2
DA2C2:  BNE             loc_DA2E8
DA2C4:  CMP.W           R11, #1
DA2C8:  BLT             loc_DA2E8
DA2CA:  ADD.W           R5, R3, R11,LSL#2
DA2CE:  MOVS            R1, #0
DA2D0:  LDR.W           R2, [R5,R1,LSL#2]
DA2D4:  LDR.W           R6, [R3,R1,LSL#2]
DA2D8:  ASRS            R2, R2, #1
DA2DA:  ADD.W           R2, R2, R6,ASR#1
DA2DE:  STR.W           R2, [R3,R1,LSL#2]
DA2E2:  ADDS            R1, #1
DA2E4:  CMP             R1, R11
DA2E6:  BLT             loc_DA2D0
DA2E8:  CMP             R4, #1
DA2EA:  BEQ             loc_DA35C
DA2EC:  MOV             R0, R11
DA2EE:  MOV             R1, R4
DA2F0:  BLX             sub_108848
DA2F4:  MOV             R10, R0
DA2F6:  MOV             R1, R11
DA2F8:  SUB.W           R0, R1, R10
DA2FC:  CMP.W           R10, #0
DA300:  MOV.W           R9, R0,LSL#2
DA304:  BLE             loc_DA340
DA306:  LDR             R6, [SP,#0x58+var_40]
DA308:  MOV.W           R8, R1,LSL#2
DA30C:  MOVS            R5, #0
DA30E:  MUL.W           R0, R1, R5
DA312:  MOV             R1, R6
DA314:  MOV             R2, R10
DA316:  LDR             R3, [R1]
DA318:  SUBS            R2, #1
DA31A:  MUL.W           R3, R4, R3
DA31E:  STR.W           R3, [R1],#4
DA322:  BNE             loc_DA316
DA324:  ADD             R0, R10
DA326:  LDR             R1, [SP,#0x58+var_40]
DA328:  ADD.W           R0, R1, R0,LSL#2; int
DA32C:  MOV             R1, R9; n
DA32E:  BLX             sub_10967C
DA332:  LDR             R0, [R7,#arg_0]
DA334:  ADDS            R5, #1
DA336:  ADD             R6, R8
DA338:  MOV             R1, R11
DA33A:  CMP             R5, R0
DA33C:  BLT             loc_DA30E
DA33E:  B               loc_DA35C
DA340:  LDR             R0, [SP,#0x58+var_40]
DA342:  LSLS            R5, R1, #2
DA344:  MOVS            R6, #0
DA346:  ADD.W           R4, R0, R10,LSL#2
DA34A:  MOV             R0, R4; int
DA34C:  MOV             R1, R9; n
DA34E:  BLX             sub_10967C
DA352:  LDR             R0, [R7,#arg_0]
DA354:  ADDS            R6, #1
DA356:  ADD             R4, R5
DA358:  CMP             R6, R0
DA35A:  BLT             loc_DA34A
DA35C:  ADD             SP, SP, #0x3C ; '<'
DA35E:  POP.W           {R8-R11}
DA362:  POP             {R4-R7,PC}
