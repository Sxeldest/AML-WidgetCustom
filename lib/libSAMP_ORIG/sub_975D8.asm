; =========================================================
; Game Engine Function: sub_975D8
; Address            : 0x975D8 - 0x9765A
; =========================================================

975D8:  PUSH            {R7,LR}
975DA:  MOV             R7, SP
975DC:  LDR             R2, =(dword_1ACF68 - 0x975E6)
975DE:  MOVW            R3, #0x19AC
975E2:  ADD             R2, PC; dword_1ACF68
975E4:  LDR             R2, [R2]
975E6:  LDR             R2, [R2,R3]
975E8:  LDR.W           R3, [R2,#0xAC]
975EC:  CBZ             R1, loc_975F4
975EE:  ANDS            R1, R3
975F0:  IT EQ
975F2:  POPEQ           {R7,PC}
975F4:  MOVW            R12, #0xFFFF
975F8:  ADD.W           LR, R2, #0xC
975FC:  MOVT            R12, #0x7F7F
97600:  VLDR            S4, [R2,#0xC8]
97604:  STRD.W          R12, R12, [R2,#0xB8]
97608:  MOV             R1, LR
9760A:  VLDR            D16, [R0]
9760E:  MOVS            R0, #0xCC
97610:  VCVT.S32.F32    D16, D16
97614:  VLD1.32         {D17}, [R1],R0
97618:  BIC.W           R0, R3, #0xE
9761C:  VLDR            S6, [R2,#0xCC]
97620:  VLD1.32         {D18-D19}, [R1]
97624:  VCVT.F32.S32    D16, D16
97628:  STR.W           R0, [R2,#0xAC]
9762C:  ADD.W           R0, R2, #0x10
97630:  VSUB.F32        D0, D16, D17
97634:  VST1.32         {D16[1]}, [R0@32]
97638:  VST1.32         {D16[0]}, [LR@32]
9763C:  VADD.F32        S6, S1, S6
97640:  VADD.F32        S4, S0, S4
97644:  VMOV            D1, D0
97648:  VADD.F32        Q9, Q0, Q9
9764C:  VSTR            S6, [R2,#0xCC]
97650:  VSTR            S4, [R2,#0xC8]
97654:  VST1.32         {D18-D19}, [R1]
97658:  POP             {R7,PC}
