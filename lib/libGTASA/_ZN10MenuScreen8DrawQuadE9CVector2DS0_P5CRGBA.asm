; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawQuadE9CVector2DS0_P5CRGBA
; Address            : 0x2985F8 - 0x29870C
; =========================================================

2985F8:  PUSH            {R4-R7,LR}
2985FA:  ADD             R7, SP, #0xC
2985FC:  PUSH.W          {R11}
298600:  SUB             SP, SP, #8
298602:  LDR.W           R12, [R7,#arg_4]
298606:  VMOV            S4, R1
29860A:  VMOV            S8, R3
29860E:  VLDR            S10, [R7,#arg_0]
298612:  VLDR            S12, =480.0
298616:  LDRB.W          LR, [R12,#3]
29861A:  LDRB.W          R4, [R12,#7]
29861E:  LDRB.W          R5, [R12,#0xB]
298622:  VMOV            S0, LR
298626:  LDRB.W          R6, [R12,#0xF]
29862A:  VCVT.F32.U32    S0, S0
29862E:  VLDR            S2, [R0,#8]
298632:  VMUL.F32        S0, S2, S0
298636:  VMOV            S2, R4
29863A:  VCVT.F32.U32    S2, S2
29863E:  VCVT.U32.F32    S0, S0
298642:  VMOV            R4, S0
298646:  STRB.W          R4, [R12,#3]
29864A:  VLDR            S0, [R0,#8]
29864E:  VMUL.F32        S0, S0, S2
298652:  VMOV            S2, R5
298656:  VCVT.F32.U32    S2, S2
29865A:  VCVT.U32.F32    S0, S0
29865E:  VMOV            R5, S0
298662:  STRB.W          R5, [R12,#7]
298666:  VLDR            S0, [R0,#8]
29866A:  VMUL.F32        S0, S0, S2
29866E:  VMOV            S2, R6
298672:  VCVT.F32.U32    S2, S2
298676:  VCVT.U32.F32    S0, S0
29867A:  VMOV            R6, S0
29867E:  STRB.W          R6, [R12,#0xB]
298682:  VLDR            S0, [R0,#8]
298686:  LDR             R0, =(RsGlobal_ptr - 0x298694)
298688:  VMUL.F32        S0, S0, S2
29868C:  VLDR            S2, =-320.0
298690:  ADD             R0, PC; RsGlobal_ptr
298692:  VADD.F32        S4, S4, S2
298696:  LDR             R0, [R0]; RsGlobal
298698:  VADD.F32        S2, S8, S2
29869C:  VMOV            S8, R2
2986A0:  VCVT.U32.F32    S0, S0
2986A4:  VMOV            R1, S0
2986A8:  STRB.W          R1, [R12,#0xF]
2986AC:  VLDR            S6, [R0,#8]
2986B0:  VLDR            S0, [R0,#4]
2986B4:  VCVT.F32.S32    S6, S6
2986B8:  VCVT.F32.S32    S0, S0
2986BC:  STR.W           R12, [SP,#0x18+var_18]
2986C0:  VMUL.F32        S4, S4, S6
2986C4:  VMUL.F32        S2, S2, S6
2986C8:  VMUL.F32        S8, S8, S6
2986CC:  VMUL.F32        S6, S10, S6
2986D0:  VMOV.F32        S10, #0.5
2986D4:  VDIV.F32        S4, S4, S12
2986D8:  VDIV.F32        S2, S2, S12
2986DC:  VDIV.F32        S8, S8, S12
2986E0:  VDIV.F32        S6, S6, S12
2986E4:  VMUL.F32        S0, S0, S10
2986E8:  VMOV            R1, S8
2986EC:  VMOV            R3, S6
2986F0:  VADD.F32        S4, S0, S4
2986F4:  VADD.F32        S0, S0, S2
2986F8:  VMOV            R0, S4
2986FC:  VMOV            R2, S0
298700:  BLX             j__ZN10MobileMenu8DrawQuadE9CVector2DS0_P5CRGBA; MobileMenu::DrawQuad(CVector2D,CVector2D,CRGBA *)
298704:  ADD             SP, SP, #8
298706:  POP.W           {R11}
29870A:  POP             {R4-R7,PC}
