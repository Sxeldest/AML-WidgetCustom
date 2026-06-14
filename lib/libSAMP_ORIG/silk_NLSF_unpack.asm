; =========================================================
; Game Engine Function: silk_NLSF_unpack
; Address            : 0xB623C - 0xB62BE
; =========================================================

B623C:  PUSH            {R4-R7,LR}
B623E:  ADD             R7, SP, #0xC
B6240:  PUSH.W          {R11}
B6244:  LDRSH.W         R12, [R2,#2]
B6248:  CMP.W           R12, #1
B624C:  BLT             loc_B62B8
B624E:  MUL.W           R3, R12, R3
B6252:  LDR.W           R12, [R2,#0x18]
B6256:  ADD.W           R3, R3, R3,LSR#31
B625A:  ADD.W           R12, R12, R3,ASR#1
B625E:  MOVS            R3, #0
B6260:  LDRB.W          LR, [R12],#1
B6264:  AND.W           R5, LR, #1
B6268:  UBFX.W          R4, LR, #1, #3
B626C:  NEGS            R5, R5
B626E:  ORR.W           R4, R4, R4,LSL#3
B6272:  STRH.W          R4, [R0,R3,LSL#1]
B6276:  LDRSH.W         R4, [R2,#2]
B627A:  LDR             R6, [R2,#0x14]
B627C:  SUBS            R4, #1
B627E:  ANDS            R4, R5
B6280:  MOV.W           R5, LR,LSR#5
B6284:  ADD             R4, R6
B6286:  ORR.W           R5, R5, R5,LSL#3
B628A:  LDRB            R4, [R4,R3]
B628C:  STRB            R4, [R1,R3]
B628E:  ADD.W           R4, R0, R3,LSL#1
B6292:  STRH            R5, [R4,#2]
B6294:  LDRSH.W         R4, [R2,#2]
B6298:  UBFX.W          R6, LR, #4, #1
B629C:  NEGS            R6, R6
B629E:  LDR             R5, [R2,#0x14]
B62A0:  SUBS            R4, #1
B62A2:  ANDS            R6, R4
B62A4:  ADD             R6, R5
B62A6:  ADDS            R5, R1, R3
B62A8:  ADD             R6, R3
B62AA:  ADDS            R3, #2
B62AC:  LDRB            R6, [R6,#1]
B62AE:  STRB            R6, [R5,#1]
B62B0:  LDRSH.W         R6, [R2,#2]
B62B4:  CMP             R3, R6
B62B6:  BLT             loc_B6260
B62B8:  POP.W           {R11}
B62BC:  POP             {R4-R7,PC}
