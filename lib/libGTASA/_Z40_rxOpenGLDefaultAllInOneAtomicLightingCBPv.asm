; =========================================================
; Game Engine Function: _Z40_rxOpenGLDefaultAllInOneAtomicLightingCBPv
; Address            : 0x221480 - 0x221584
; =========================================================

221480:  PUSH            {R4-R7,LR}
221482:  ADD             R7, SP, #0xC
221484:  PUSH.W          {R8-R11}
221488:  SUB             SP, SP, #4
22148A:  MOV             R10, R0
22148C:  LDR.W           R0, [R10,#0x18]
221490:  LDRB            R0, [R0,#8]
221492:  LSLS            R0, R0, #0x1A
221494:  BPL             loc_221574
221496:  LDR             R0, =(RwEngineInstance_ptr - 0x22149C)
221498:  ADD             R0, PC; RwEngineInstance_ptr
22149A:  LDR             R0, [R0]; RwEngineInstance
22149C:  LDR             R0, [R0]
22149E:  LDR             R0, [R0,#4]
2214A0:  CMP             R0, #0
2214A2:  BEQ             loc_221574
2214A4:  MOVS            R0, #1
2214A6:  BLX             j__Z33_rwOpenGLLightsGlobalLightsEnable11RpLightFlag; _rwOpenGLLightsGlobalLightsEnable(RpLightFlag)
2214AA:  STR             R0, [SP,#0x20+var_20]
2214AC:  MOV             R9, R10
2214AE:  LDR             R0, =(RwEngineInstance_ptr - 0x2214B4)
2214B0:  ADD             R0, PC; RwEngineInstance_ptr
2214B2:  LDR             R0, [R0]; RwEngineInstance
2214B4:  LDR             R0, [R0]
2214B6:  LDRH            R1, [R0,#0xA]
2214B8:  ADDS            R1, #1
2214BA:  STRH            R1, [R0,#0xA]
2214BC:  LDR.W           R11, [R9,#0x64]!
2214C0:  CMP             R11, R9
2214C2:  BEQ             loc_221570
2214C4:  LDR             R0, =(RwEngineInstance_ptr - 0x2214CA)
2214C6:  ADD             R0, PC; RwEngineInstance_ptr
2214C8:  LDR             R4, [R0]; RwEngineInstance
2214CA:  LDR.W           R5, [R11,#8]
2214CE:  LDR.W           R8, [R5,#0x48]!
2214D2:  CMP             R8, R5
2214D4:  BNE             loc_2214E0
2214D6:  B               loc_221568
2214D8:  LDR.W           R8, [R8]
2214DC:  CMP             R8, R5
2214DE:  BEQ             loc_221568
2214E0:  LDR.W           R0, [R8,#8]
2214E4:  CMP             R0, #0
2214E6:  BEQ             loc_2214D8
2214E8:  LDR             R1, [R4]
2214EA:  LDRH            R2, [R0,#0x3C]
2214EC:  LDRH            R1, [R1,#0xA]
2214EE:  CMP             R2, R1
2214F0:  ITT NE
2214F2:  LDRBNE          R2, [R0,#2]
2214F4:  MOVSNE.W        R2, R2,LSL#31
2214F8:  BEQ             loc_2214D8
2214FA:  STRH            R1, [R0,#0x3C]
2214FC:  LDR.W           R0, [R8,#8]
221500:  LDR             R0, [R0,#4]
221502:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
221506:  MOV             R6, R0
221508:  MOV             R0, R10
22150A:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
22150E:  MOV             R1, R0
221510:  VLDR            S0, [R6,#0x30]
221514:  VLDR            S2, [R1]
221518:  VLDR            D16, [R6,#0x34]
22151C:  VSUB.F32        S0, S2, S0
221520:  VLDR            D17, [R1,#4]
221524:  LDR.W           R0, [R8,#8]
221528:  VSUB.F32        D16, D17, D16
22152C:  VLDR            S2, [R1,#0xC]
221530:  VLDR            S4, [R0,#0x14]
221534:  VADD.F32        S2, S2, S4
221538:  VMUL.F32        S0, S0, S0
22153C:  VMUL.F32        D2, D16, D16
221540:  VMUL.F32        S2, S2, S2
221544:  VADD.F32        S0, S0, S4
221548:  VADD.F32        S0, S0, S5
22154C:  VCMPE.F32       S0, S2
221550:  VMRS            APSR_nzcv, FPSCR
221554:  BGE             loc_2214D8
221556:  BLX             j__Z31_rwOpenGLLightsLocalLightEnablePK7RpLight; _rwOpenGLLightsLocalLightEnable(RpLight const*)
22155A:  LDR             R1, [SP,#0x20+var_20]
22155C:  LDR.W           R8, [R8]
221560:  ORRS            R1, R0
221562:  STR             R1, [SP,#0x20+var_20]
221564:  CMP             R8, R5
221566:  BNE             loc_2214E0
221568:  LDR.W           R11, [R11]
22156C:  CMP             R11, R9
22156E:  BNE             loc_2214CA
221570:  LDR             R0, [SP,#0x20+var_20]
221572:  B               loc_221576
221574:  MOVS            R0, #0; int
221576:  ADD             SP, SP, #4
221578:  POP.W           {R8-R11}
22157C:  POP.W           {R4-R7,LR}
221580:  B.W             j_j__Z21_rwOpenGLLightsEnablei; j__rwOpenGLLightsEnable(int)
