; =========================================================
; Game Engine Function: silk_NLSF_unpack
; Address            : 0x194460 - 0x1944E2
; =========================================================

194460:  PUSH            {R4-R7,LR}
194462:  ADD             R7, SP, #0xC
194464:  PUSH.W          {R11}
194468:  LDRSH.W         R12, [R2,#2]
19446C:  CMP.W           R12, #1
194470:  BLT             loc_1944DC
194472:  MUL.W           R3, R12, R3
194476:  LDR.W           R12, [R2,#0x18]
19447A:  ADD.W           R3, R3, R3,LSR#31
19447E:  ADD.W           R12, R12, R3,ASR#1
194482:  MOVS            R3, #0
194484:  LDRB.W          LR, [R12],#1
194488:  AND.W           R5, LR, #1
19448C:  UBFX.W          R4, LR, #1, #3
194490:  NEGS            R5, R5
194492:  ORR.W           R4, R4, R4,LSL#3
194496:  STRH.W          R4, [R0,R3,LSL#1]
19449A:  LDRSH.W         R4, [R2,#2]
19449E:  LDR             R6, [R2,#0x14]
1944A0:  SUBS            R4, #1
1944A2:  ANDS            R4, R5
1944A4:  MOV.W           R5, LR,LSR#5
1944A8:  ADD             R4, R6
1944AA:  ORR.W           R5, R5, R5,LSL#3
1944AE:  LDRB            R4, [R4,R3]
1944B0:  STRB            R4, [R1,R3]
1944B2:  ADD.W           R4, R0, R3,LSL#1
1944B6:  STRH            R5, [R4,#2]
1944B8:  LDRSH.W         R4, [R2,#2]
1944BC:  UBFX.W          R6, LR, #4, #1
1944C0:  NEGS            R6, R6
1944C2:  LDR             R5, [R2,#0x14]
1944C4:  SUBS            R4, #1
1944C6:  ANDS            R6, R4
1944C8:  ADD             R6, R5
1944CA:  ADDS            R5, R1, R3
1944CC:  ADD             R6, R3
1944CE:  ADDS            R3, #2
1944D0:  LDRB            R6, [R6,#1]
1944D2:  STRB            R6, [R5,#1]
1944D4:  LDRSH.W         R6, [R2,#2]
1944D8:  CMP             R3, R6
1944DA:  BLT             loc_194484
1944DC:  POP.W           {R11}
1944E0:  POP             {R4-R7,PC}
