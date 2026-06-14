; =========================================================
; Game Engine Function: silk_interpolate
; Address            : 0x1B1342 - 0x1B1378
; =========================================================

1B1342:  PUSH            {R4,R6,R7,LR}
1B1344:  ADD             R7, SP, #8
1B1346:  LDR.W           R12, [R7,#arg_0]
1B134A:  CMP.W           R12, #1
1B134E:  IT LT
1B1350:  POPLT           {R4,R6,R7,PC}
1B1352:  SXTH.W          LR, R3
1B1356:  LDRSH.W         R3, [R1],#2
1B135A:  SUBS.W          R12, R12, #1
1B135E:  LDRH.W          R4, [R2],#2
1B1362:  SUB.W           R4, R4, R3
1B1366:  SXTH            R4, R4
1B1368:  SMULBB.W        R4, R4, LR
1B136C:  ADD.W           R3, R3, R4,LSR#2
1B1370:  STRH.W          R3, [R0],#2
1B1374:  BNE             loc_1B1356
1B1376:  POP             {R4,R6,R7,PC}
