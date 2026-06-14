; =========================================================
; Game Engine Function: _ZN4CPad11UpdateMouseEv
; Address            : 0x3F83CC - 0x3F84D6
; =========================================================

3F83CC:  PUSH            {R4-R7,LR}
3F83CE:  ADD             R7, SP, #0xC
3F83D0:  PUSH.W          {R8}
3F83D4:  LDR             R1, =(_ZN4CPad26PCTempMouseControllerStateE_ptr - 0x3F83E0)
3F83D6:  MOV             R8, R0
3F83D8:  LDR             R0, =(_ZN4CPad13vecMouseDeltaE_ptr - 0x3F83E2)
3F83DA:  MOVS            R5, #0
3F83DC:  ADD             R1, PC; _ZN4CPad26PCTempMouseControllerStateE_ptr
3F83DE:  ADD             R0, PC; _ZN4CPad13vecMouseDeltaE_ptr
3F83E0:  LDR             R1, [R1]; CPad::PCTempMouseControllerState ...
3F83E2:  LDR             R0, [R0]; CPad::vecMouseDelta ...
3F83E4:  LDRD.W          R2, R0, [R0]; CPad::vecMouseDelta
3F83E8:  STRB            R5, [R1,#(byte_959AE6 - 0x959AE0)]
3F83EA:  STRH            R5, [R1,#(word_959AE4 - 0x959AE0)]
3F83EC:  STR             R5, [R1]; CPad::PCTempMouseControllerState
3F83EE:  STRD.W          R2, R0, [R1,#(dword_959AEC - 0x959AE0)]
3F83F2:  MOVS            R0, #0; int
3F83F4:  MOVS            R1, #0; int
3F83F6:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
3F83FA:  ORR.W           R0, R0, #1
3F83FE:  CMP             R0, #3
3F8400:  BNE             loc_3F8406
3F8402:  MOVS            R0, #1
3F8404:  B               loc_3F841C
3F8406:  MOVS            R0, #1; int
3F8408:  MOVS            R1, #0; int
3F840A:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
3F840E:  ORR.W           R0, R0, #1
3F8412:  CMP             R0, #3
3F8414:  MOV.W           R0, #0
3F8418:  IT EQ
3F841A:  MOVEQ           R0, #1
3F841C:  LDR             R1, =(_ZN4CPad26PCTempMouseControllerStateE_ptr - 0x3F8422)
3F841E:  ADD             R1, PC; _ZN4CPad26PCTempMouseControllerStateE_ptr
3F8420:  LDR             R6, [R1]; CPad::PCTempMouseControllerState ...
3F8422:  MOVS            R1, #1; int
3F8424:  STRB            R0, [R6]; CPad::PCTempMouseControllerState
3F8426:  MOVS            R0, #0; int
3F8428:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
3F842C:  ORR.W           R0, R0, #1
3F8430:  MOVS            R1, #2; int
3F8432:  CMP             R0, #3
3F8434:  MOV.W           R0, #0
3F8438:  IT EQ
3F843A:  MOVEQ           R0, #1
3F843C:  STRB            R0, [R6,#(_ZN4CPad26PCTempMouseControllerStateE+1 - 0x959AE0)]; CPad::PCTempMouseControllerState
3F843E:  MOVS            R0, #0; int
3F8440:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
3F8444:  LDR             R1, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3F8452)
3F8446:  ORR.W           R0, R0, #1
3F844A:  LDR             R2, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x3F8460)
3F844C:  CMP             R0, #3
3F844E:  ADD             R1, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3F8450:  STRH.W          R5, [R6,#(word_959AE4+1 - 0x959AE0)]
3F8454:  STR             R5, [R6,#(dword_959AE8 - 0x959AE0)]
3F8456:  IT EQ
3F8458:  MOVEQ           R5, #1
3F845A:  LDR             R1, [R1]; CPad::NewMouseControllerState ...
3F845C:  ADD             R2, PC; _ZN4CPad23OldMouseControllerStateE_ptr
3F845E:  STRB            R5, [R6,#(_ZN4CPad26PCTempMouseControllerStateE+2 - 0x959AE0)]; CPad::PCTempMouseControllerState
3F8460:  VLD1.32         {D16-D17}, [R6]!
3F8464:  MOV             R0, R1
3F8466:  VLD1.32         {D18-D19}, [R1]
3F846A:  LDR             R2, [R2]; CPad::OldMouseControllerState ...
3F846C:  VST1.32         {D16-D17}, [R0]!
3F8470:  VST1.32         {D18-D19}, [R2]!
3F8474:  LDR             R3, [R0]
3F8476:  STR             R3, [R2]
3F8478:  LDRB.W          LR, [R1]; CPad::NewMouseControllerState
3F847C:  LDRB            R3, [R1,#(_ZN4CPad23NewMouseControllerStateE+1 - 0x959AF4)]; CPad::NewMouseControllerState
3F847E:  LDR             R6, [R6]
3F8480:  LDRB            R5, [R1,#(_ZN4CPad23NewMouseControllerStateE+2 - 0x959AF4)]; CPad::NewMouseControllerState
3F8482:  ORR.W           R3, R3, LR
3F8486:  LDRB            R4, [R1,#(_ZN4CPad23NewMouseControllerStateE+3 - 0x959AF4)]; CPad::NewMouseControllerState
3F8488:  LDRB.W          R12, [R1,#(byte_959AFA - 0x959AF4)]
3F848C:  ORRS            R3, R5
3F848E:  STR             R6, [R0]
3F8490:  ORRS            R3, R4
3F8492:  LDRB            R2, [R1,#(word_959AF8 - 0x959AF4)]
3F8494:  LDRB            R6, [R1,#(word_959AF8+1 - 0x959AF4)]
3F8496:  ORRS            R2, R3
3F8498:  ORRS            R2, R6
3F849A:  ORR.W           R2, R2, R12
3F849E:  LSLS            R2, R2, #0x18
3F84A0:  ITTT EQ
3F84A2:  VLDREQ          S0, [R1,#0xC]
3F84A6:  VCMPEQ.F32      S0, #0.0
3F84AA:  VMRSEQ          APSR_nzcv, FPSCR
3F84AE:  BNE             loc_3F84C4
3F84B0:  VLDR            S0, [R0]
3F84B4:  VCMP.F32        S0, #0.0
3F84B8:  VMRS            APSR_nzcv, FPSCR
3F84BC:  BNE             loc_3F84C4
3F84BE:  POP.W           {R8}
3F84C2:  POP             {R4-R7,PC}
3F84C4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3F84CA)
3F84C6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3F84C8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3F84CA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3F84CC:  STR.W           R0, [R8,#0x134]
3F84D0:  POP.W           {R8}
3F84D4:  POP             {R4-R7,PC}
