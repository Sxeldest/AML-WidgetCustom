; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy13CalcTotalTimeEv
; Address            : 0x38A2A0 - 0x38A37A
; =========================================================

38A2A0:  PUSH            {R4-R7,LR}
38A2A2:  ADD             R7, SP, #0xC
38A2A4:  PUSH.W          {R8-R11}
38A2A8:  LDRSH.W         R8, [R0,#8]
38A2AC:  MOVS            R1, #0
38A2AE:  STR             R1, [R0,#0x10]
38A2B0:  CMP.W           R8, #1
38A2B4:  BLT             loc_38A374
38A2B6:  VLDR            S0, =0.0
38A2BA:  MOV.W           R10, #0
38A2BE:  B               loc_38A2C4
38A2C0:  VLDR            S0, [R0,#0x10]
38A2C4:  LDR             R3, [R0,#4]
38A2C6:  ADD.W           R4, R10, R10,LSL#1
38A2CA:  ADD.W           R5, R3, R4,LSL#2
38A2CE:  LDRSH.W         R9, [R5,#6]!
38A2D2:  SUB.W           R6, R9, #1
38A2D6:  MOV             R12, R5
38A2D8:  LDRB.W          R11, [R12,#-2]!
38A2DC:  MOV             LR, R5
38A2DE:  ADD.W           R4, R6, R6,LSL#2
38A2E2:  LDR.W           R2, [LR,#2]!
38A2E6:  TST.W           R11, #2
38A2EA:  MOV.W           R1, R4,LSL#2
38A2EE:  IT NE
38A2F0:  LSLNE           R1, R6, #5
38A2F2:  ADD             R1, R2
38A2F4:  VLDR            S2, [R1,#0x10]
38A2F8:  VCMPE.F32       S2, S0
38A2FC:  VMRS            APSR_nzcv, FPSCR
38A300:  ITTE GT
38A302:  VSTRGT          S2, [R0,#0x10]
38A306:  LDRHGT          R5, [R5]
38A308:  UXTHLE.W        R5, R9
38A30C:  SXTH            R5, R5
38A30E:  CMP             R5, #2
38A310:  BLT             loc_38A368
38A312:  MOV             R1, #0xFFFFFFC0
38A316:  ADD.W           R2, R1, R5,LSL#5
38A31A:  ADD.W           R1, R5, R5,LSL#2
38A31E:  MOV             R3, #0xFFFFFFD8
38A322:  ADDS            R5, #1
38A324:  ADD.W           R6, R3, R1,LSL#2
38A328:  LDRH.W          R1, [R12]
38A32C:  ADD.W           R4, R6, #0x14
38A330:  LDR.W           R3, [LR]
38A334:  SUBS            R5, #1
38A336:  ANDS.W          R1, R1, #2
38A33A:  IT NE
38A33C:  ADDNE.W         R4, R2, #0x20 ; ' '
38A340:  SUB.W           R1, R6, #0x14
38A344:  IT NE
38A346:  MOVNE           R6, R2
38A348:  SUBS            R2, #0x20 ; ' '
38A34A:  ADD             R6, R3
38A34C:  ADD             R3, R4
38A34E:  CMP             R5, #2
38A350:  VLDR            S0, [R6,#0x10]
38A354:  MOV             R6, R1
38A356:  VLDR            S2, [R3,#0x10]
38A35A:  VSUB.F32        S0, S2, S0
38A35E:  VSTR            S0, [R3,#0x10]
38A362:  BGT             loc_38A328
38A364:  LDRH.W          R8, [R0,#8]
38A368:  ADD.W           R10, R10, #1
38A36C:  SXTH.W          R1, R8
38A370:  CMP             R10, R1
38A372:  BLT             loc_38A2C0
38A374:  POP.W           {R8-R11}
38A378:  POP             {R4-R7,PC}
