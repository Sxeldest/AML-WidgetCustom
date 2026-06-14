; =========================================================
; Game Engine Function: _ZN8CRange2D21GetRandomPointInRangeEv
; Address            : 0x40E618 - 0x40E68E
; =========================================================

40E618:  PUSH            {R4,R5,R7,LR}
40E61A:  ADD             R7, SP, #8
40E61C:  VPUSH           {D8-D11}
40E620:  MOV             R5, R1
40E622:  MOV             R4, R0
40E624:  VLDR            S16, [R5]
40E628:  VLDR            S0, [R5,#8]
40E62C:  VLDR            S18, [R5,#4]
40E630:  VSUB.F32        S0, S0, S16
40E634:  VLDR            S20, [R5,#0xC]
40E638:  VABS.F32        S0, S0
40E63C:  VCVT.S32.F32    S22, S0
40E640:  BLX             rand
40E644:  VMOV            R1, S22
40E648:  BLX             __aeabi_idivmod
40E64C:  VMOV            S0, R1
40E650:  VSUB.F32        S2, S20, S18
40E654:  VCVT.F32.S32    S0, S0
40E658:  VABS.F32        S2, S2
40E65C:  VADD.F32        S0, S16, S0
40E660:  VSTR            S0, [R4]
40E664:  VLDR            S16, [R5,#4]
40E668:  VCVT.S32.F32    S18, S2
40E66C:  BLX             rand
40E670:  VMOV            R1, S18
40E674:  BLX             __aeabi_idivmod
40E678:  VMOV            S0, R1
40E67C:  VCVT.F32.S32    S0, S0
40E680:  VADD.F32        S0, S16, S0
40E684:  VSTR            S0, [R4,#4]
40E688:  VPOP            {D8-D11}
40E68C:  POP             {R4,R5,R7,PC}
