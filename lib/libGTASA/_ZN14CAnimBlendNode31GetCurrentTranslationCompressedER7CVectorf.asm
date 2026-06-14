; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode31GetCurrentTranslationCompressedER7CVectorf
; Address            : 0x38B644 - 0x38B77E
; =========================================================

38B644:  PUSH            {R4,R6,R7,LR}
38B646:  ADD             R7, SP, #8
38B648:  MOVS            R3, #0
38B64A:  VMOV            S0, R2
38B64E:  STRD.W          R3, R3, [R1]
38B652:  STR             R3, [R1,#8]
38B654:  LDR             R3, [R0,#0x14]
38B656:  LDRB.W          R2, [R3,#0x2E]
38B65A:  VLDR            S2, [R3,#0x18]
38B65E:  VMUL.F32        S0, S2, S0
38B662:  LSLS            R2, R2, #0x1B
38B664:  IT MI
38B666:  VMOVMI.F32      S0, S2
38B66A:  VCMPE.F32       S0, #0.0
38B66E:  VMRS            APSR_nzcv, FPSCR
38B672:  BLE.W           locret_38B77C
38B676:  LDR.W           R12, [R0,#0x10]
38B67A:  LDRSH.W         R2, [R0,#8]
38B67E:  LDRSH.W         LR, [R0,#0xA]
38B682:  LDRH.W          R3, [R12,#4]
38B686:  ANDS.W          R4, R3, #2
38B68A:  ADD.W           R3, R2, R2,LSL#2
38B68E:  MOV.W           R3, R3,LSL#1
38B692:  IT NE
38B694:  LSLNE           R3, R2, #4
38B696:  ADD.W           R2, LR, LR,LSL#2
38B69A:  MOV.W           R2, R2,LSL#1
38B69E:  IT NE
38B6A0:  MOVNE.W         R2, LR,LSL#4
38B6A4:  CMP             R4, #0
38B6A6:  IT EQ
38B6A8:  POPEQ           {R4,R6,R7,PC}
38B6AA:  LDR.W           R4, [R12,#8]
38B6AE:  ADD             R3, R4
38B6B0:  ADD.W           R12, R4, R2
38B6B4:  LDRH            R2, [R3,#8]
38B6B6:  CBZ             R2, loc_38B6D8
38B6B8:  SXTH            R2, R2
38B6BA:  VLDR            S4, =0.016667
38B6BE:  VMOV            S2, R2
38B6C2:  VCVT.F32.S32    S2, S2
38B6C6:  VMUL.F32        S2, S2, S4
38B6CA:  VLDR            S4, [R0,#0xC]
38B6CE:  VSUB.F32        S4, S2, S4
38B6D2:  VDIV.F32        S2, S4, S2
38B6D6:  B               loc_38B6DC
38B6D8:  VLDR            S2, =0.0
38B6DC:  LDRSH.W         LR, [R12,#0xA]
38B6E0:  LDRSH.W         R2, [R12,#0xC]
38B6E4:  LDRSH.W         R12, [R12,#0xE]
38B6E8:  LDRSH.W         R4, [R3,#0xA]
38B6EC:  VMOV            S8, LR
38B6F0:  LDRSH.W         R0, [R3,#0xC]
38B6F4:  VMOV            S4, R2
38B6F8:  LDRSH.W         R3, [R3,#0xE]
38B6FC:  VMOV            S12, R12
38B700:  VMOV            S10, R4
38B704:  VLDR            S14, =0.00097656
38B708:  VMOV            S6, R0
38B70C:  VMOV            S1, R3
38B710:  VCVT.F32.S32    S4, S4
38B714:  VCVT.F32.S32    S6, S6
38B718:  VCVT.F32.S32    S8, S8
38B71C:  VCVT.F32.S32    S10, S10
38B720:  VCVT.F32.S32    S12, S12
38B724:  VCVT.F32.S32    S1, S1
38B728:  VMUL.F32        S4, S4, S14
38B72C:  VMUL.F32        S6, S6, S14
38B730:  VMUL.F32        S8, S8, S14
38B734:  VMUL.F32        S10, S10, S14
38B738:  VMUL.F32        S12, S12, S14
38B73C:  VMUL.F32        S14, S1, S14
38B740:  VSUB.F32        S6, S6, S4
38B744:  VSUB.F32        S10, S10, S8
38B748:  VSUB.F32        S14, S14, S12
38B74C:  VMUL.F32        S6, S2, S6
38B750:  VMUL.F32        S10, S2, S10
38B754:  VMUL.F32        S2, S2, S14
38B758:  VADD.F32        S4, S4, S6
38B75C:  VADD.F32        S6, S8, S10
38B760:  VADD.F32        S2, S12, S2
38B764:  VMUL.F32        S4, S0, S4
38B768:  VMUL.F32        S6, S0, S6
38B76C:  VMUL.F32        S0, S0, S2
38B770:  VSTR            S6, [R1]
38B774:  VSTR            S4, [R1,#4]
38B778:  VSTR            S0, [R1,#8]
38B77C:  POP             {R4,R6,R7,PC}
