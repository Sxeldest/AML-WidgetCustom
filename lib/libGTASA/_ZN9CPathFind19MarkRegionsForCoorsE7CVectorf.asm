; =========================================================
; Game Engine Function: _ZN9CPathFind19MarkRegionsForCoorsE7CVectorf
; Address            : 0x319470 - 0x319574
; =========================================================

319470:  PUSH            {R4-R7,LR}
319472:  ADD             R7, SP, #0xC
319474:  PUSH.W          {R8-R10}
319478:  VMOV            S2, R1
31947C:  VLDR            S0, [R7,#arg_0]
319480:  VMOV            S6, R2
319484:  VLDR            S8, =3000.0
319488:  VSUB.F32        S4, S2, S0
31948C:  MOVS            R1, #0
31948E:  VADD.F32        S2, S2, S0
319492:  MOVS            R0, #7
319494:  VADD.F32        S10, S6, S0
319498:  MOV.W           R9, #7
31949C:  VSUB.F32        S0, S6, S0
3194A0:  VLDR            S6, =750.0
3194A4:  VADD.F32        S4, S4, S8
3194A8:  VADD.F32        S2, S2, S8
3194AC:  VADD.F32        S10, S10, S8
3194B0:  VADD.F32        S0, S0, S8
3194B4:  VDIV.F32        S4, S4, S6
3194B8:  VDIV.F32        S2, S2, S6
3194BC:  VDIV.F32        S8, S10, S6
3194C0:  VDIV.F32        S0, S0, S6
3194C4:  VCVT.S32.F32    S4, S4
3194C8:  VCVT.S32.F32    S2, S2
3194CC:  VCVT.S32.F32    S6, S8
3194D0:  VCVT.S32.F32    S0, S0
3194D4:  VMOV            R3, S4
3194D8:  VMOV            R4, S2
3194DC:  VMOV            R10, S6
3194E0:  VMOV            R2, S0
3194E4:  CMP.W           R10, #0
3194E8:  IT LE
3194EA:  MOVLE           R10, R1
3194EC:  CMP.W           R10, #7
3194F0:  IT GE
3194F2:  MOVGE           R10, R0
3194F4:  CMP             R2, #0
3194F6:  IT LE
3194F8:  MOVLE           R2, R1
3194FA:  CMP             R2, #7
3194FC:  IT LT
3194FE:  MOVLT           R9, R2
319500:  CMP             R4, #0
319502:  IT LE
319504:  MOVLE           R4, R1
319506:  CMP             R4, #7
319508:  IT GE
31950A:  MOVGE           R4, R0
31950C:  CMP             R3, #0
31950E:  IT GT
319510:  MOVGT           R1, R3
319512:  CMP             R1, #7
319514:  IT LT
319516:  MOVLT           R0, R1
319518:  CMP             R0, R4
31951A:  BGT             loc_31956E
31951C:  LDR             R3, =(ToBeStreamed_ptr - 0x31952E)
31951E:  CMP             R9, R10
319520:  MOV             R6, R10
319522:  MVN.W           R2, R2
319526:  IT GT
319528:  MOVGT           R6, R9
31952A:  ADD             R3, PC; ToBeStreamed_ptr
31952C:  MOV             R5, #0xFFFFFFF8
319530:  CMN.W           R2, #8
319534:  IT LS
319536:  MOVLS           R2, R5
319538:  MVNS            R1, R1
31953A:  CMN.W           R1, #8
31953E:  ADD             R2, R6
319540:  IT GT
319542:  MOVGT           R5, R1
319544:  LDR             R1, [R3]; ToBeStreamed
319546:  ADD.W           R8, R2, #2
31954A:  MOV             R2, #0xFFFFFFFE
31954E:  ADD.W           R0, R1, R0,LSL#3
319552:  SUBS            R6, R2, R5
319554:  ADD.W           R5, R0, R9
319558:  CMP             R9, R10
31955A:  BGT             loc_319566
31955C:  MOV             R0, R5
31955E:  MOV             R1, R8
319560:  MOVS            R2, #1
319562:  BLX             j___aeabi_memset8
319566:  ADDS            R6, #1
319568:  ADDS            R5, #8
31956A:  CMP             R6, R4
31956C:  BLT             loc_319558
31956E:  POP.W           {R8-R10}
319572:  POP             {R4-R7,PC}
