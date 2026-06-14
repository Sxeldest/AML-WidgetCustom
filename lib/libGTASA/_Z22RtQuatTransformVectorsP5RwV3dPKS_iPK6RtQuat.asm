; =========================================================
; Game Engine Function: _Z22RtQuatTransformVectorsP5RwV3dPKS_iPK6RtQuat
; Address            : 0x211550 - 0x21165A
; =========================================================

211550:  CMP             R2, #1
211552:  IT LT
211554:  BXLT            LR
211556:  VLDR            S4, [R3]
21155A:  MOV             R12, R0
21155C:  VLDR            S2, [R3,#4]
211560:  VMUL.F32        S8, S4, S4
211564:  VLDR            S0, [R3,#8]
211568:  VMUL.F32        S6, S2, S2
21156C:  VLDR            S10, [R3,#0xC]
211570:  VMUL.F32        S12, S0, S0
211574:  VADD.F32        S0, S0, S0
211578:  VADD.F32        S2, S2, S2
21157C:  VADD.F32        S4, S4, S4
211580:  VMUL.F32        S14, S10, S10
211584:  VADD.F32        S6, S8, S6
211588:  VMUL.F32        S8, S10, S2
21158C:  VADD.F32        S12, S6, S12
211590:  VMUL.F32        S6, S10, S0
211594:  VMUL.F32        S10, S10, S4
211598:  VSUB.F32        S12, S14, S12
21159C:  VLDR            S14, [R1]
2115A0:  SUBS            R2, #1
2115A2:  VLDR            S1, [R1,#4]
2115A6:  VMUL.F32        S7, S4, S14
2115AA:  VLDR            S3, [R1,#8]
2115AE:  VMUL.F32        S5, S2, S1
2115B2:  VMUL.F32        S11, S6, S14
2115B6:  VMUL.F32        S13, S6, S1
2115BA:  VMUL.F32        S9, S10, S3
2115BE:  VMUL.F32        S15, S8, S3
2115C2:  VMUL.F32        S14, S8, S14
2115C6:  VMUL.F32        S1, S10, S1
2115CA:  VADD.F32        S5, S7, S5
2115CE:  VMUL.F32        S3, S0, S3
2115D2:  VSUB.F32        S7, S11, S9
2115D6:  VSUB.F32        S9, S15, S13
2115DA:  VSUB.F32        S14, S1, S14
2115DE:  VADD.F32        S1, S5, S3
2115E2:  VSTR            S9, [R12]
2115E6:  VSTR            S7, [R12,#4]
2115EA:  VSTR            S14, [R12,#8]
2115EE:  VLDR            S3, [R3]
2115F2:  VMUL.F32        S3, S1, S3
2115F6:  VADD.F32        S3, S9, S3
2115FA:  VSTR            S3, [R12]
2115FE:  VLDR            S5, [R3,#4]
211602:  VMUL.F32        S5, S1, S5
211606:  VADD.F32        S5, S7, S5
21160A:  VSTR            S5, [R12,#4]
21160E:  VLDR            S7, [R3,#8]
211612:  VMUL.F32        S1, S1, S7
211616:  VADD.F32        S14, S14, S1
21161A:  VSTR            S14, [R12,#8]
21161E:  VLDR            S1, [R1]
211622:  VMUL.F32        S1, S12, S1
211626:  VADD.F32        S1, S3, S1
21162A:  VSTR            S1, [R12]
21162E:  VLDR            S1, [R1,#4]
211632:  VMUL.F32        S1, S12, S1
211636:  VADD.F32        S1, S5, S1
21163A:  VSTR            S1, [R12,#4]
21163E:  VLDR            S1, [R1,#8]
211642:  ADD.W           R1, R1, #0xC
211646:  VMUL.F32        S1, S12, S1
21164A:  VADD.F32        S14, S14, S1
21164E:  VSTR            S14, [R12,#8]
211652:  ADD.W           R12, R12, #0xC
211656:  BNE             loc_21159C
211658:  BX              LR
