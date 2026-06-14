; =========================================================
; Game Engine Function: sub_114304
; Address            : 0x114304 - 0x11444E
; =========================================================

114304:  PUSH            {R4,R5,R7,LR}
114306:  ADD             R7, SP, #8
114308:  SUB             SP, SP, #8
11430A:  MOV             R4, R1
11430C:  MOV             R5, R0
11430E:  LDR             R0, [R0,#0x20]
114310:  LDR             R1, [R1,#4]
114312:  VLDR            S0, [R7,#arg_4]
114316:  VLDR            S2, [R7,#arg_0]
11431A:  CMP             R0, R1
11431C:  IT NE
11431E:  ADDSNE.W        R0, R0, #1
114322:  BNE.W           loc_11444A
114326:  VLDR            S6, [R4,#8]
11432A:  VLDR            S4, [R4,#0xC]
11432E:  VCVT.F32.S32    S6, S6
114332:  LDRB.W          R0, [R5,#0x28]
114336:  VCVT.F32.S32    S4, S4
11433A:  VSTR            S6, [R5,#0x18]
11433E:  VSTR            S4, [R5,#0x1C]
114342:  CBZ             R0, loc_114360
114344:  LDR             R0, [R4]
114346:  CMP             R0, #1
114348:  BEQ             loc_1143B8
11434A:  CMP             R0, #4
11434C:  ITT EQ
11434E:  MOVEQ           R0, #0
114350:  STRBEQ.W        R0, [R5,#0x28]
114354:  MOV             R0, R4
114356:  ADD             SP, SP, #8
114358:  POP.W           {R4,R5,R7,LR}
11435C:  B.W             sub_FA4D8
114360:  VMOV            S8, R2
114364:  VCMP.F32        S6, S8
114368:  VMRS            APSR_nzcv, FPSCR
11436C:  ITTT PL
11436E:  VADDPL.F32      S2, S8, S2
114372:  VCMPPL.F32      S2, S6
114376:  VMRSPL          APSR_nzcv, FPSCR
11437A:  BMI             loc_11444A
11437C:  VMOV            S2, R3
114380:  VCMP.F32        S4, S2
114384:  VMRS            APSR_nzcv, FPSCR
114388:  ITTT PL
11438A:  VADDPL.F32      S0, S2, S0
11438E:  VCMPPL.F32      S0, S4
114392:  VMRSPL          APSR_nzcv, FPSCR
114396:  BMI             loc_11444A
114398:  LDR             R0, [R4]
11439A:  CMP             R0, #2
11439C:  BNE             loc_11444A
11439E:  MOV             R0, SP; this
1143A0:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1143A4:  LDRD.W          R0, R1, [SP,#0x10+var_10]
1143A8:  STRD.W          R0, R1, [R5,#0x10]
1143AC:  MOVS            R1, #1
1143AE:  LDR             R0, [R4,#4]
1143B0:  STRB.W          R1, [R5,#0x28]
1143B4:  STR             R0, [R5,#0x20]
1143B6:  B               loc_114444
1143B8:  MOV             R0, SP; this
1143BA:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1143BE:  LDRD.W          R0, R1, [R5,#0x10]
1143C2:  LDRD.W          R2, R3, [SP,#0x10+var_10]
1143C6:  SUBS            R0, R2, R0
1143C8:  MOVW            R2, #:lower16:unk_7C830
1143CC:  SBC.W           R1, R3, R1
1143D0:  MOVT            R2, #:upper16:unk_7C830
1143D4:  SUBS            R0, R0, R2
1143D6:  SBCS.W          R0, R1, #0
1143DA:  BLT             loc_1143EA
1143DC:  MOV             R0, SP; this
1143DE:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1143E2:  LDRD.W          R0, R1, [SP,#0x10+var_10]
1143E6:  STRD.W          R0, R1, [R5,#0x10]
1143EA:  LDR             R0, =(off_23496C - 0x1143F0)
1143EC:  ADD             R0, PC; off_23496C
1143EE:  LDR             R0, [R0]; dword_23DEF4
1143F0:  LDR             R0, [R0]
1143F2:  CBZ             R0, loc_114436
1143F4:  LDR             R1, [R5,#0x24]
1143F6:  CMP             R1, #3
1143F8:  BLE             loc_11440E
1143FA:  CMP.W           R1, #0x100
1143FE:  BEQ             loc_11441C
114400:  CMP             R1, #0x80
114402:  BEQ             loc_114428
114404:  CMP             R1, #4
114406:  BNE             loc_114436
114408:  LDR             R1, =(aLock - 0x11440E); "/lock" ...
11440A:  ADD             R1, PC; "/lock"
11440C:  B               loc_114432
11440E:  CMP             R1, #1
114410:  BEQ             loc_11442E
114412:  CMP             R1, #2
114414:  BNE             loc_114436
114416:  LDR             R1, =(aLights - 0x11441C); "/lights" ...
114418:  ADD             R1, PC; "/lights"
11441A:  B               loc_114432
11441C:  MOVS            R1, #0x55 ; 'U'
11441E:  MOV.W           R2, #0xFFFFFFFF
114422:  BL              sub_144A80
114426:  B               loc_114436
114428:  LDR             R1, =(aRadio - 0x11442E); "/radio" ...
11442A:  ADD             R1, PC; "/radio"
11442C:  B               loc_114432
11442E:  LDR             R1, =(aEngine - 0x114434); "/engine" ...
114430:  ADD             R1, PC; "/engine"
114432:  BL              sub_144460
114436:  MOVS            R0, #0
114438:  MOV.W           R1, #0xFFFFFFFF
11443C:  STRB.W          R0, [R5,#0x28]
114440:  STRD.W          R1, R0, [R5,#0x20]
114444:  MOV             R0, R4
114446:  BL              sub_FA4D8
11444A:  ADD             SP, SP, #8
11444C:  POP             {R4,R5,R7,PC}
