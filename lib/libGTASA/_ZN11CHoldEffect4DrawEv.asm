; =========================================================
; Game Engine Function: _ZN11CHoldEffect4DrawEv
; Address            : 0x2963A8 - 0x2965EE
; =========================================================

2963A8:  PUSH            {R4-R7,LR}
2963AA:  ADD             R7, SP, #0xC
2963AC:  PUSH.W          {R8-R11}
2963B0:  SUB             SP, SP, #4
2963B2:  VPUSH           {D8-D15}
2963B6:  SUB.W           SP, SP, #0x310
2963BA:  MOV             R4, R0
2963BC:  VLDR            S4, [R4,#0x1C]
2963C0:  VCMPE.F32       S4, #0.0
2963C4:  VMRS            APSR_nzcv, FPSCR
2963C8:  BLE.W           loc_2965DE
2963CC:  MOV             R0, R4
2963CE:  LDR.W           R1, [R0,#8]!
2963D2:  CMP             R1, #0
2963D4:  BEQ.W           loc_2965DE
2963D8:  VMOV.F32        S0, #0.5
2963DC:  LDRB.W          R1, [R4,#0x20]
2963E0:  VLDR            S6, =0.6
2963E4:  VMOV.F32        S16, #1.0
2963E8:  CMP             R1, #0
2963EA:  VMOV.F32        S2, S0
2963EE:  IT NE
2963F0:  VMOVNE.F32      S2, S6
2963F4:  VMOV.F32        S6, #16.0
2963F8:  VMUL.F32        S4, S4, S6
2963FC:  VMAX.F32        D2, D2, D8
296400:  VCVT.S32.F32    S4, S4
296404:  VMOV            R1, S4
296408:  CMP             R1, #0
29640A:  BLE.W           loc_2965BC
29640E:  STR             R0, [SP,#0x370+var_368]
296410:  ADD.W           R10, SP, #0x370+var_1E0
296414:  VLDR            S18, [R4,#0xC]
296418:  MOV.W           R8, #0
29641C:  VLDR            S6, [R4,#0x14]
296420:  MOV.W           R11, #0
296424:  VLDR            S4, [R4,#0x10]
296428:  VSUB.F32        S8, S6, S18
29642C:  STR             R4, [SP,#0x370+var_36C]
29642E:  VLDR            S20, [R4,#0x18]
296432:  ADD             R4, SP, #0x370+var_360
296434:  VLDR            S19, =0.3927
296438:  VLDR            S21, =-1.5708
29643C:  STR             R1, [SP,#0x370+var_364]
29643E:  VABS.F32        S22, S8
296442:  VMUL.F32        S24, S22, S2
296446:  VADD.F32        S2, S18, S6
29644A:  VADD.F32        S6, S4, S20
29644E:  VSUB.F32        S4, S4, S20
296452:  VMUL.F32        S26, S2, S0
296456:  VMUL.F32        S28, S6, S0
29645A:  VABS.F32        S30, S4
29645E:  ADD.W           R9, R11, #1
296462:  VMOV            S0, R9
296466:  VCVT.F32.S32    S0, S0
29646A:  VMUL.F32        S0, S0, S19
29646E:  VADD.F32        S0, S0, S21
296472:  VMOV            R6, S0
296476:  MOV             R0, R6; x
296478:  BLX             cosf
29647C:  MOV             R5, R0
29647E:  MOV             R0, R6; x
296480:  BLX             sinf
296484:  VMOV            S0, R11
296488:  VMOV            S23, R5
29648C:  VCVT.F32.S32    S0, S0
296490:  VMUL.F32        S0, S0, S19
296494:  VADD.F32        S0, S0, S21
296498:  VMOV            R6, S0
29649C:  VMOV            S0, R0
2964A0:  VMUL.F32        S25, S24, S0
2964A4:  MOV             R0, R6; x
2964A6:  BLX             cosf
2964AA:  MOV             R5, R0
2964AC:  MOV             R0, R6; x
2964AE:  BLX             sinf
2964B2:  VMOV            S0, R0
2964B6:  ADD.W           R1, R4, R8
2964BA:  VMOV            S2, R5
2964BE:  MOV.W           R6, #0x3F000000
2964C2:  VMUL.F32        S4, S24, S23
2964C6:  STR.W           R6, [R4,R8]
2964CA:  VMUL.F32        S0, S24, S0
2964CE:  VMUL.F32        S2, S24, S2
2964D2:  STR             R6, [R1,#4]
2964D4:  VADD.F32        S6, S28, S25
2964D8:  ADD.W           R0, R10, R8
2964DC:  ADD.W           R8, R8, #0x18
2964E0:  MOV             R11, R9
2964E2:  VSTR            S26, [R0]
2964E6:  VSTR            S28, [R0,#4]
2964EA:  VADD.F32        S4, S26, S4
2964EE:  VADD.F32        S0, S28, S0
2964F2:  VADD.F32        S2, S26, S2
2964F6:  VSUB.F32        S8, S6, S20
2964FA:  VSUB.F32        S10, S4, S18
2964FE:  VSTR            S4, [R0,#8]
296502:  VSUB.F32        S12, S0, S20
296506:  VSTR            S6, [R0,#0xC]
29650A:  VSUB.F32        S14, S2, S18
29650E:  VSTR            S2, [R0,#0x10]
296512:  VDIV.F32        S8, S8, S30
296516:  VDIV.F32        S10, S10, S22
29651A:  VDIV.F32        S12, S12, S30
29651E:  VDIV.F32        S14, S14, S22
296522:  VSTR            S10, [R1,#8]
296526:  VSTR            S8, [R1,#0xC]
29652A:  VSTR            S14, [R1,#0x10]
29652E:  VSTR            S12, [R1,#0x14]
296532:  LDR             R1, [SP,#0x370+var_364]
296534:  VSTR            S0, [R0,#0x14]
296538:  CMP             R1, R9
29653A:  BNE             loc_29645E
29653C:  ADD.W           R8, R1, R1,LSL#1
296540:  CMP             R1, #1
296542:  BLT             loc_2965C2
296544:  LDR             R0, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x29654C)
296546:  LDR             R1, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x29654E)
296548:  ADD             R0, PC; _ZN9CSprite2d11NearScreenZE_ptr
29654A:  ADD             R1, PC; _ZN9CSprite2d13RecipNearClipE_ptr
29654C:  LDR             R0, [R0]; CSprite2d::NearScreenZ ...
29654E:  LDR             R6, [R1]; CSprite2d::RecipNearClip ...
296550:  ADD.W           R1, R10, #4
296554:  VLDR            S0, [R0]
296558:  ADDS            R0, R4, #4
29655A:  LDR             R4, [SP,#0x370+var_36C]
29655C:  VADD.F32        S0, S0, S16
296560:  LDR.W           R12, [R6]; CSprite2d::RecipNearClip
296564:  ADD.W           R3, R4, #0x40 ; '@'
296568:  MOV             R6, R8
29656A:  LDR             R2, [R1]
29656C:  SUBS            R6, #1
29656E:  LDR.W           R5, [R1,#-4]
296572:  ADD.W           R1, R1, #8
296576:  VSTR            S0, [R3,#-0x10]
29657A:  STRD.W          R5, R2, [R3,#-0x18]
29657E:  STR.W           R12, [R3,#-0xC]
296582:  LDR.W           R2, [R0,#-4]
296586:  LDR             R5, [R0]
296588:  ADD.W           R0, R0, #8
29658C:  STR.W           R2, [R3,#-4]
296590:  STR             R5, [R3]
296592:  LDRB.W          R2, [R4,#0x21]
296596:  STRB.W          R2, [R3,#-8]
29659A:  LDRB.W          R2, [R4,#0x22]
29659E:  STRB.W          R2, [R3,#-7]
2965A2:  LDRB.W          R2, [R4,#0x23]
2965A6:  STRB.W          R2, [R3,#-6]
2965AA:  LDRB.W          R2, [R4,#0x24]
2965AE:  STRB.W          R2, [R3,#-5]
2965B2:  ADD.W           R3, R3, #0x1C
2965B6:  BNE             loc_29656A
2965B8:  LDR             R0, [SP,#0x370+var_368]
2965BA:  B               loc_2965C6
2965BC:  ADD.W           R8, R1, R1,LSL#1
2965C0:  B               loc_2965C6
2965C2:  LDRD.W          R4, R0, [SP,#0x370+var_36C]; this
2965C6:  BLX             j__ZN9CSprite2d14SetRenderStateEv; CSprite2d::SetRenderState(void)
2965CA:  ADD.W           R1, R4, #0x28 ; '('
2965CE:  MOVS            R0, #3
2965D0:  MOV             R2, R8
2965D2:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
2965D6:  MOVS            R0, #1
2965D8:  MOVS            R1, #0
2965DA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2965DE:  ADD.W           SP, SP, #0x310
2965E2:  VPOP            {D8-D15}
2965E6:  ADD             SP, SP, #4
2965E8:  POP.W           {R8-R11}
2965EC:  POP             {R4-R7,PC}
