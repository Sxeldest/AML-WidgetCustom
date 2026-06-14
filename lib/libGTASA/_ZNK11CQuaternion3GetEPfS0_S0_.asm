; =========================================================
; Game Engine Function: _ZNK11CQuaternion3GetEPfS0_S0_
; Address            : 0x450330 - 0x450474
; =========================================================

450330:  PUSH            {R4-R7,LR}
450332:  ADD             R7, SP, #0xC
450334:  PUSH.W          {R8,R9,R11}
450338:  VPUSH           {D8-D15}
45033C:  VLDR            S18, [R0]
450340:  VMOV.F32        S2, #1.0
450344:  VLDR            S0, [R0,#8]
450348:  MOV             R9, R1
45034A:  VADD.F32        S26, S18, S18
45034E:  VLDR            S20, [R0,#4]
450352:  VADD.F32        S24, S0, S0
450356:  VLDR            S22, [R0,#0xC]
45035A:  VADD.F32        S28, S20, S20
45035E:  MOV             R6, R3
450360:  MOV             R8, R2
450362:  VMUL.F32        S30, S0, S24
450366:  VMUL.F32        S0, S18, S26
45036A:  VMUL.F32        S17, S22, S24
45036E:  VMUL.F32        S19, S18, S28
450372:  VADD.F32        S0, S0, S30
450376:  VADD.F32        S23, S19, S17
45037A:  VSUB.F32        S25, S2, S0
45037E:  VMOV            R0, S23; y
450382:  VMOV            R1, S25; x
450386:  BLX             atan2f
45038A:  VMOV            S27, R0
45038E:  VLDR            S16, =6.2832
450392:  VCMPE.F32       S27, #0.0
450396:  VMRS            APSR_nzcv, FPSCR
45039A:  VADD.F32        S0, S27, S16
45039E:  IT LT
4503A0:  VMOVLT.F32      S27, S0
4503A4:  VMOV            R4, S27
4503A8:  MOV             R0, R4; x
4503AA:  BLX             sinf
4503AE:  MOV             R5, R0
4503B0:  MOV             R0, R4; x
4503B2:  BLX             cosf
4503B6:  VMOV            S29, R0
4503BA:  VSTR            S27, [R6]
4503BE:  VMOV            S21, R5
4503C2:  VMUL.F32        S26, S26, S22
4503C6:  VMUL.F32        S31, S20, S24
4503CA:  VMUL.F32        S0, S25, S29
4503CE:  VMUL.F32        S2, S23, S21
4503D2:  VSUB.F32        S4, S31, S26
4503D6:  VADD.F32        S0, S2, S0
4503DA:  VMOV            R0, S4
4503DE:  VMOV            R1, S0; x
4503E2:  EOR.W           R0, R0, #0x80000000; y
4503E6:  BLX             atan2f
4503EA:  VMUL.F32        S0, S20, S28
4503EE:  VMUL.F32        S2, S28, S22
4503F2:  VMUL.F32        S4, S18, S24
4503F6:  VMOV.F32        S8, #1.0
4503FA:  VADD.F32        S6, S31, S26
4503FE:  VADD.F32        S0, S0, S30
450402:  VSUB.F32        S2, S4, S2
450406:  VSUB.F32        S4, S19, S17
45040A:  VMUL.F32        S6, S6, S21
45040E:  VSUB.F32        S0, S8, S0
450412:  VMUL.F32        S2, S2, S29
450416:  VMUL.F32        S4, S4, S21
45041A:  VMUL.F32        S0, S0, S29
45041E:  VSUB.F32        S2, S2, S6
450422:  VSUB.F32        S0, S0, S4
450426:  VMOV            R2, S2
45042A:  VMOV            R1, S0; x
45042E:  VMOV            S0, R0
450432:  VCMPE.F32       S0, #0.0
450436:  VMRS            APSR_nzcv, FPSCR
45043A:  VADD.F32        S2, S0, S16
45043E:  EOR.W           R0, R2, #0x80000000; y
450442:  IT LT
450444:  VMOVLT.F32      S0, S2
450448:  VSTR            S0, [R9]
45044C:  BLX             atan2f
450450:  VMOV            S0, R0
450454:  VCMPE.F32       S0, #0.0
450458:  VMRS            APSR_nzcv, FPSCR
45045C:  VADD.F32        S2, S0, S16
450460:  IT LT
450462:  VMOVLT.F32      S0, S2
450466:  VSTR            S0, [R8]
45046A:  VPOP            {D8-D15}
45046E:  POP.W           {R8,R9,R11}
450472:  POP             {R4-R7,PC}
