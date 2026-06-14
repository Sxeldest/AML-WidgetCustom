; =========================================================
; Game Engine Function: sub_DE2CC
; Address            : 0xDE2CC - 0xDE346
; =========================================================

DE2CC:  PUSH            {R4-R7,LR}
DE2CE:  ADD             R7, SP, #0xC
DE2D0:  PUSH.W          {R11}
DE2D4:  SUB             SP, SP, #0x20
DE2D6:  LDR             R4, [R7,#arg_8]
DE2D8:  ADD             R5, SP, #0x30+var_1C
DE2DA:  LDRD.W          R12, LR, [R7,#arg_0]
DE2DE:  STM.W           R5, {R3,R12,LR}
DE2E2:  LDR             R3, [R4,#4]
DE2E4:  AND.W           R4, LR, #0xFF000000
DE2E8:  CMP.W           R4, #0x1000000
DE2EC:  STR             R2, [SP,#0x30+var_20]
DE2EE:  ITTTT EQ
DE2F0:  ANDEQ.W         R4, R12, #0xFF000000
DE2F4:  CMPEQ.W         R4, #0x30000000
DE2F8:  MOVEQ           R4, #0x20 ; ' '
DE2FA:  STRBEQ.W        R4, [SP,#0x30+var_15]
DE2FE:  AND.W           LR, R3, #0x10000
DE302:  LDR             R4, =(aNan - 0xDE314); "NAN" ...
DE304:  UBFX.W          R3, R3, #8, #8
DE308:  LDR             R5, =(aInf_0 - 0xDE318); "INF" ...
DE30A:  CMP.W           LR, #0
DE30E:  LDR             R6, =(aNan_0 - 0xDE31A); "nan" ...
DE310:  ADD             R4, PC; "NAN"
DE312:  LDR             R2, =(aInf - 0xDE31E); "inf" ...
DE314:  ADD             R5, PC; "INF"
DE316:  ADD             R6, PC; "nan"
DE318:  STR             R3, [SP,#0x30+var_28]
DE31A:  ADD             R2, PC; "inf"
DE31C:  ITT NE
DE31E:  MOVNE           R6, R4
DE320:  MOVNE           R2, R5
DE322:  CMP             R1, #0
DE324:  IT NE
DE326:  MOVNE           R2, R6
DE328:  ADD             R1, SP, #0x30+var_28
DE32A:  STR             R2, [SP,#0x30+var_24]
DE32C:  MOVS            R2, #4
DE32E:  STR             R1, [SP,#0x30+var_30]
DE330:  ADD             R1, SP, #0x30+var_20
DE332:  CMP             R3, #0
DE334:  IT EQ
DE336:  MOVEQ           R2, #3
DE338:  MOV             R3, R2
DE33A:  BL              sub_DE358
DE33E:  ADD             SP, SP, #0x20 ; ' '
DE340:  POP.W           {R11}
DE344:  POP             {R4-R7,PC}
