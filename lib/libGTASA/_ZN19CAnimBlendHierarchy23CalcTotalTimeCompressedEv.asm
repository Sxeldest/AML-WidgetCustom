; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy23CalcTotalTimeCompressedEv
; Address            : 0x38A380 - 0x38A464
; =========================================================

38A380:  PUSH            {R4-R7,LR}
38A382:  ADD             R7, SP, #0xC
38A384:  PUSH.W          {R8-R11}
38A388:  LDRSH.W         R8, [R0,#8]
38A38C:  MOVS            R1, #0
38A38E:  STR             R1, [R0,#0x10]
38A390:  CMP.W           R8, #1
38A394:  BLT             loc_38A45E
38A396:  VLDR            S2, =0.0
38A39A:  MOV.W           R10, #0
38A39E:  VLDR            S0, =0.016667
38A3A2:  B               loc_38A3A8
38A3A4:  VLDR            S2, [R0,#0x10]
38A3A8:  LDR             R3, [R0,#4]
38A3AA:  ADD.W           R4, R10, R10,LSL#1
38A3AE:  ADD.W           R5, R3, R4,LSL#2
38A3B2:  LDRSH.W         R9, [R5,#6]!
38A3B6:  SUB.W           R6, R9, #1
38A3BA:  MOV             R12, R5
38A3BC:  LDRB.W          R11, [R12,#-2]!
38A3C0:  MOV             LR, R5
38A3C2:  ADD.W           R4, R6, R6,LSL#2
38A3C6:  LDR.W           R2, [LR,#2]!
38A3CA:  TST.W           R11, #2
38A3CE:  MOV.W           R1, R4,LSL#1
38A3D2:  IT NE
38A3D4:  LSLNE           R1, R6, #4
38A3D6:  ADD             R1, R2
38A3D8:  LDRSH.W         R1, [R1,#8]
38A3DC:  VMOV            S4, R1
38A3E0:  VCVT.F32.S32    S4, S4
38A3E4:  VMUL.F32        S4, S4, S0
38A3E8:  VCMPE.F32       S4, S2
38A3EC:  VMRS            APSR_nzcv, FPSCR
38A3F0:  ITTE GT
38A3F2:  VSTRGT          S4, [R0,#0x10]
38A3F6:  LDRHGT          R5, [R5]
38A3F8:  UXTHLE.W        R5, R9
38A3FC:  SXTH            R5, R5
38A3FE:  CMP             R5, #2
38A400:  BLT             loc_38A452
38A402:  MOV             R1, #0xFFFFFFE0
38A406:  ADD.W           R2, R1, R5,LSL#4
38A40A:  ADD.W           R1, R5, R5,LSL#2
38A40E:  MOV             R3, #0xFFFFFFEC
38A412:  ADDS            R5, #1
38A414:  ADD.W           R6, R3, R1,LSL#1
38A418:  LDRH.W          R1, [R12]
38A41C:  ADD.W           R4, R6, #0xA
38A420:  LDR.W           R3, [LR]
38A424:  SUBS            R5, #1
38A426:  ANDS.W          R1, R1, #2
38A42A:  IT NE
38A42C:  ADDNE.W         R4, R2, #0x10
38A430:  SUB.W           R1, R6, #0xA
38A434:  IT NE
38A436:  MOVNE           R6, R2
38A438:  SUBS            R2, #0x10
38A43A:  ADD             R6, R3
38A43C:  ADD             R3, R4
38A43E:  CMP             R5, #2
38A440:  LDRH            R6, [R6,#8]
38A442:  LDRH            R4, [R3,#8]
38A444:  SUB.W           R4, R4, R6
38A448:  MOV             R6, R1
38A44A:  STRH            R4, [R3,#8]
38A44C:  BGT             loc_38A418
38A44E:  LDRH.W          R8, [R0,#8]
38A452:  ADD.W           R10, R10, #1
38A456:  SXTH.W          R1, R8
38A45A:  CMP             R10, R1
38A45C:  BLT             loc_38A3A4
38A45E:  POP.W           {R8-R11}
38A462:  POP             {R4-R7,PC}
