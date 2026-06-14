; =========================================================
; Game Engine Function: _Z10NvQuatMultPfPKfS1_
; Address            : 0x2795EC - 0x27969A
; =========================================================

2795EC:  PUSH            {R7,LR}
2795EE:  MOV             R7, SP
2795F0:  VPUSH           {D8}
2795F4:  VLDR            S0, [R2]
2795F8:  VLDR            S8, [R1]
2795FC:  VLDR            S2, [R2,#4]
279600:  VLDR            S12, [R1,#8]
279604:  VMUL.F32        S13, S8, S0
279608:  VLDR            S4, [R2,#8]
27960C:  VMUL.F32        S11, S8, S2
279610:  VLDR            S10, [R1,#4]
279614:  VMUL.F32        S3, S12, S0
279618:  VLDR            S14, [R1,#0xC]
27961C:  VMUL.F32        S1, S8, S4
279620:  VLDR            S6, [R2,#0xC]
279624:  VMUL.F32        S9, S10, S0
279628:  VMUL.F32        S5, S12, S2
27962C:  VMUL.F32        S7, S10, S4
279630:  VMUL.F32        S15, S14, S6
279634:  VMUL.F32        S16, S14, S2
279638:  VMUL.F32        S0, S14, S0
27963C:  VSUB.F32        S1, S3, S1
279640:  VMUL.F32        S14, S14, S4
279644:  VMUL.F32        S2, S10, S2
279648:  VSUB.F32        S3, S7, S5
27964C:  VSUB.F32        S5, S11, S9
279650:  VSUB.F32        S7, S15, S13
279654:  VMUL.F32        S10, S10, S6
279658:  VADD.F32        S1, S16, S1
27965C:  VMUL.F32        S8, S8, S6
279660:  VMUL.F32        S6, S12, S6
279664:  VADD.F32        S0, S0, S3
279668:  VADD.F32        S14, S5, S14
27966C:  VMUL.F32        S4, S12, S4
279670:  VSUB.F32        S2, S7, S2
279674:  VADD.F32        S10, S10, S1
279678:  VADD.F32        S0, S8, S0
27967C:  VADD.F32        S6, S14, S6
279680:  VSUB.F32        S2, S2, S4
279684:  VSTR            S0, [R0]
279688:  VSTR            S10, [R0,#4]
27968C:  VSTR            S6, [R0,#8]
279690:  VSTR            S2, [R0,#0xC]
279694:  VPOP            {D8}
279698:  POP             {R7,PC}
