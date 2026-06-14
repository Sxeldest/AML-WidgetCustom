; =========================================================
; Game Engine Function: png_chunk_unknown_handling
; Address            : 0x1EE408 - 0x1EE460
; =========================================================

1EE408:  SUB             SP, SP, #8
1EE40A:  MOV             R2, R0
1EE40C:  MOVS            R0, #0
1EE40E:  LSRS            R3, R1, #0x10
1EE410:  STRB.W          R1, [SP,#8+var_5+3]
1EE414:  STRB.W          R0, [SP,#8+var_1]
1EE418:  CMP             R2, #0
1EE41A:  STRB.W          R3, [SP,#8+var_5+1]
1EE41E:  MOV.W           R3, R1,LSR#24
1EE422:  MOV.W           R1, R1,LSR#8
1EE426:  STRB.W          R3, [SP,#8+var_5]
1EE42A:  STRB.W          R1, [SP,#8+var_5+2]
1EE42E:  BEQ             loc_1EE456
1EE430:  LDR.W           R1, [R2,#0x2FC]
1EE434:  CBZ             R1, loc_1EE454
1EE436:  LDR.W           R0, [R2,#0x300]
1EE43A:  ADD.W           R1, R1, R1,LSL#2
1EE43E:  ADD             R1, R0
1EE440:  SUBS            R1, #5
1EE442:  LDR.W           R2, [SP,#8+var_5]
1EE446:  LDR             R3, [R1]
1EE448:  CMP             R2, R3
1EE44A:  BEQ             loc_1EE45A
1EE44C:  SUBS            R2, R1, #5
1EE44E:  CMP             R1, R0
1EE450:  MOV             R1, R2
1EE452:  BHI             loc_1EE442
1EE454:  MOVS            R0, #0
1EE456:  ADD             SP, SP, #8
1EE458:  BX              LR
1EE45A:  LDRB            R0, [R1,#4]
1EE45C:  ADD             SP, SP, #8
1EE45E:  BX              LR
