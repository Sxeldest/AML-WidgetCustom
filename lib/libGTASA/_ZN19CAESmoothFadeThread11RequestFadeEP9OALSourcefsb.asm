; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb
; Address            : 0x3A7320 - 0x3A749C
; =========================================================

3A7320:  PUSH            {R4-R7,LR}
3A7322:  ADD             R7, SP, #0xC
3A7324:  PUSH.W          {R8,R9,R11}
3A7328:  VPUSH           {D8}
3A732C:  MOV             R4, R0
3A732E:  MOV             R8, R3
3A7330:  LDRB.W          R0, [R4,#0x804]
3A7334:  MOV             R5, R2
3A7336:  MOV             R6, R1
3A7338:  CMP             R0, #0
3A733A:  BEQ             loc_3A7434
3A733C:  LDRB.W          R0, [R4,#0x810]
3A7340:  CMP             R0, #0
3A7342:  BNE             loc_3A7434
3A7344:  MOV             R0, R6; this
3A7346:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A734A:  MOV             R2, R6
3A734C:  LDR.W           R0, [R2,#0x28]!
3A7350:  CBNZ            R0, loc_3A7364
3A7352:  LDR             R0, [R6,#8]
3A7354:  MOVW            R1, #0x1014
3A7358:  STR             R1, [R6,#0x28]
3A735A:  MOVW            R1, #0x1010
3A735E:  BLX             j_alGetSourcei
3A7362:  LDR             R0, [R6,#0x28]
3A7364:  MOVW            R1, #0x1012
3A7368:  CMP             R0, R1
3A736A:  BNE             loc_3A7434
3A736C:  MOV             R0, R6; this
3A736E:  LDR.W           R9, [R7,#arg_0]
3A7372:  VMOV            S16, R5
3A7376:  BLX             j__ZN9OALSource9GetVolumeEv; OALSource::GetVolume(void)
3A737A:  VMOV            S0, R0
3A737E:  VCMP.F32        S0, S16
3A7382:  VMRS            APSR_nzcv, FPSCR
3A7386:  BEQ             loc_3A739E
3A7388:  VSUB.F32        S2, S0, S16
3A738C:  VLDR            S4, =0.01
3A7390:  VABS.F32        S2, S2
3A7394:  VCMPE.F32       S2, S4
3A7398:  VMRS            APSR_nzcv, FPSCR
3A739C:  BGE             loc_3A73C8
3A739E:  CMP.W           R9, #1
3A73A2:  BNE             loc_3A7430
3A73A4:  LDR             R0, [R6,#0xC]
3A73A6:  CMP             R0, #2
3A73A8:  ITT EQ
3A73AA:  MOVEQ           R0, R6; this
3A73AC:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A73B0:  LDR             R0, [R6,#8]
3A73B2:  BLX             j_alSourceStop
3A73B6:  MOVW            R0, #0x1014
3A73BA:  STR             R0, [R6,#0x28]
3A73BC:  MOVS            R0, #0
3A73BE:  STR             R0, [R6,#0x20]
3A73C0:  MOVS            R0, #1
3A73C2:  STRB.W          R0, [R6,#0x2C]
3A73C6:  B               loc_3A7436
3A73C8:  LDR.W           R3, [R4,#0x814]
3A73CC:  CMP             R3, #1
3A73CE:  BLT             loc_3A7434
3A73D0:  ADD.W           R1, R4, #0x1C
3A73D4:  MOVS            R0, #0
3A73D6:  MOV.W           LR, #0
3A73DA:  LDR             R2, [R1]
3A73DC:  CMP             R2, #1
3A73DE:  BEQ             loc_3A73F0
3A73E0:  CBNZ            R2, loc_3A7408
3A73E2:  MOVS.W          R2, LR,LSL#31
3A73E6:  MOV.W           LR, #1
3A73EA:  IT EQ
3A73EC:  MOVEQ           R12, R0
3A73EE:  B               loc_3A7408
3A73F0:  LDR.W           R2, [R1,#-0x18]
3A73F4:  CMP             R2, R6
3A73F6:  BNE             loc_3A7408
3A73F8:  LDR.W           R2, [R4,#0x80C]
3A73FC:  LDR             R5, [R1,#4]
3A73FE:  SUB.W           R2, R8, R2
3A7402:  ADD             R2, R5
3A7404:  CMP             R2, #1
3A7406:  BHI             loc_3A7426
3A7408:  ADDS            R0, #1
3A740A:  ADDS            R1, #0x20 ; ' '
3A740C:  CMP             R0, R3
3A740E:  BLT             loc_3A73DA
3A7410:  MOVS.W          R0, LR,LSL#31
3A7414:  BEQ             loc_3A7434
3A7416:  ADD.W           R0, R4, R12,LSL#5
3A741A:  MOV             R1, R0
3A741C:  LDR.W           R2, [R1,#0x1C]!
3A7420:  CMP             R2, #1
3A7422:  BNE             loc_3A7440
3A7424:  MOV             R0, R12
3A7426:  ADD.W           R3, R4, R0,LSL#5
3A742A:  LDRB.W          R2, [R3,#0x18]!
3A742E:  CBZ             R2, loc_3A745A
3A7430:  MOVS            R0, #1
3A7432:  B               loc_3A7436
3A7434:  MOVS            R0, #0
3A7436:  VPOP            {D8}
3A743A:  POP.W           {R8,R9,R11}
3A743E:  POP             {R4-R7,PC}
3A7440:  LDR             R2, =(g_numSoundChannelsUsed_ptr - 0x3A7446)
3A7442:  ADD             R2, PC; g_numSoundChannelsUsed_ptr
3A7444:  LDR             R2, [R2]; g_numSoundChannelsUsed
3A7446:  LDR             R3, [R2]
3A7448:  ADDS            R3, #1
3A744A:  STR             R3, [R2]
3A744C:  LDR             R2, [R6,#4]
3A744E:  ADD.W           R3, R0, #0x18
3A7452:  ADDS            R2, #1
3A7454:  STR             R2, [R6,#4]
3A7456:  STR             R6, [R0,#4]
3A7458:  MOV             R0, R12
3A745A:  VSUB.F32        S2, S16, S0
3A745E:  ADD.W           R0, R4, R0,LSL#5
3A7462:  ADDS.W          R2, R8, #2
3A7466:  VSTR            S0, [R0,#8]
3A746A:  VSTR            S16, [R0,#0xC]
3A746E:  VSTR            S2, [R0,#0x10]
3A7472:  VSTR            S0, [R0,#0x14]
3A7476:  STRB.W          R9, [R3]
3A747A:  BEQ             loc_3A7488
3A747C:  ADDS.W          R2, R8, #1
3A7480:  IT EQ
3A7482:  MOVEQ.W         R8, #0x1E
3A7486:  B               loc_3A748C
3A7488:  MOV.W           R8, #0x1C
3A748C:  STRH.W          R8, [R0,#0x1A]
3A7490:  LDR.W           R2, [R4,#0x80C]
3A7494:  STR             R2, [R0,#0x20]
3A7496:  MOVS            R0, #1
3A7498:  STR             R0, [R1]
3A749A:  B               loc_3A7436
