; =========================================================
; Game Engine Function: png_build_grayscale_palette
; Address            : 0x1EE2E0 - 0x1EE372
; =========================================================

1EE2E0:  PUSH            {R4,R6,R7,LR}
1EE2E2:  ADD             R7, SP, #8
1EE2E4:  CMP             R1, #0
1EE2E6:  BEQ             locret_1EE370
1EE2E8:  SUBS            R0, #1
1EE2EA:  CMP             R0, #7
1EE2EC:  BHI             locret_1EE370
1EE2EE:  UXTB            R2, R0
1EE2F0:  MOVS            R3, #0x8B
1EE2F2:  LSR.W           R2, R3, R2
1EE2F6:  LSLS            R2, R2, #0x1F
1EE2F8:  BEQ             locret_1EE370
1EE2FA:  ADR             R3, dword_1EE390
1EE2FC:  ORR.W           R2, R0, #4
1EE300:  CMP             R2, #7
1EE302:  LDR.W           R12, [R3,R0,LSL#2]
1EE306:  ADR             R3, dword_1EE3B0
1EE308:  IT EQ
1EE30A:  CMPEQ           R2, #7
1EE30C:  LDR.W           LR, [R3,R0,LSL#2]
1EE310:  BEQ             loc_1EE318
1EE312:  MOVS            R3, #0
1EE314:  MOVS            R0, #0
1EE316:  B               loc_1EE35C
1EE318:  ADR             R2, dword_1EE380
1EE31A:  AND.W           R0, LR, #0x110
1EE31E:  VLD1.64         {D16-D17}, [R2@128]
1EE322:  MOV.W           R2, R12,LSL#4
1EE326:  MUL.W           R3, R12, R0
1EE32A:  MOV             R4, R1
1EE32C:  VDUP.8          Q9, R12
1EE330:  VMUL.I8         Q9, Q9, Q8
1EE334:  VDUP.8          Q8, R2
1EE338:  MOV             R2, R0
1EE33A:  VMOV            Q10, Q9
1EE33E:  SUBS            R2, #0x10
1EE340:  VMOV            Q11, Q9
1EE344:  VADD.I8         Q13, Q9, Q8
1EE348:  VST3.8          {D18,D20,D22}, [R4]!
1EE34C:  VST3.8          {D19,D21,D23}, [R4]!
1EE350:  VMOV            Q9, Q13
1EE354:  BNE             loc_1EE33A
1EE356:  CMP             LR, R0
1EE358:  IT EQ
1EE35A:  POPEQ           {R4,R6,R7,PC}
1EE35C:  ADD.W           R2, R0, R0,LSL#1
1EE360:  ADDS            R0, #1
1EE362:  CMP             R0, LR
1EE364:  STRB            R3, [R1,R2]
1EE366:  ADD             R2, R1
1EE368:  STRB            R3, [R2,#1]
1EE36A:  STRB            R3, [R2,#2]
1EE36C:  ADD             R3, R12
1EE36E:  BLT             loc_1EE35C
1EE370:  POP             {R4,R6,R7,PC}
