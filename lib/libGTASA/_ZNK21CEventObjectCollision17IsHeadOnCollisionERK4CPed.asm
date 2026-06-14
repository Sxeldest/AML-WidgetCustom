; =========================================================
; Game Engine Function: _ZNK21CEventObjectCollision17IsHeadOnCollisionERK4CPed
; Address            : 0x371630 - 0x37168C
; =========================================================

371630:  PUSH            {R4,R5,R7,LR}
371632:  ADD             R7, SP, #8
371634:  SUB             SP, SP, #0x10
371636:  LDR             R5, [R1,#0x14]
371638:  MOVS            R4, #0
37163A:  LDRD.W          R1, R0, [R0,#0x18]
37163E:  STRD.W          R1, R0, [SP,#0x18+var_18]
371642:  MOV             R0, SP; this
371644:  STR             R4, [SP,#0x18+var_10]
371646:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
37164A:  VLDR            S0, [R5,#0x10]
37164E:  VLDR            S6, [SP,#0x18+var_18]
371652:  VLDR            S2, [R5,#0x14]
371656:  VLDR            S8, [SP,#0x18+var_14]
37165A:  VMUL.F32        S0, S0, S6
37165E:  VLDR            S4, [R5,#0x18]
371662:  VMUL.F32        S2, S2, S8
371666:  VLDR            S10, [SP,#0x18+var_10]
37166A:  VMUL.F32        S4, S4, S10
37166E:  VADD.F32        S0, S0, S2
371672:  VLDR            S2, =-0.9397
371676:  VADD.F32        S0, S0, S4
37167A:  VCMPE.F32       S0, S2
37167E:  VMRS            APSR_nzcv, FPSCR
371682:  IT LT
371684:  MOVLT           R4, #1
371686:  MOV             R0, R4
371688:  ADD             SP, SP, #0x10
37168A:  POP             {R4,R5,R7,PC}
