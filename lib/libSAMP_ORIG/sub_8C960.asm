; =========================================================
; Game Engine Function: sub_8C960
; Address            : 0x8C960 - 0x8C9D6
; =========================================================

8C960:  PUSH            {R7,LR}
8C962:  MOV             R7, SP
8C964:  LDR.W           R3, [R0,#0xAC]
8C968:  CBZ             R2, loc_8C970
8C96A:  ANDS            R2, R3
8C96C:  IT EQ
8C96E:  POPEQ           {R7,PC}
8C970:  MOVW            R12, #0xFFFF
8C974:  ADD.W           LR, R0, #0xC
8C978:  MOVT            R12, #0x7F7F
8C97C:  VLDR            S4, [R0,#0xC8]
8C980:  STRD.W          R12, R12, [R0,#0xB8]
8C984:  MOV             R2, LR
8C986:  VLDR            D16, [R1]
8C98A:  MOVS            R1, #0xCC
8C98C:  VCVT.S32.F32    D16, D16
8C990:  VLD1.32         {D17}, [R2],R1
8C994:  BIC.W           R1, R3, #0xE
8C998:  VLDR            S6, [R0,#0xCC]
8C99C:  VLD1.32         {D18-D19}, [R2]
8C9A0:  VCVT.F32.S32    D16, D16
8C9A4:  STR.W           R1, [R0,#0xAC]
8C9A8:  ADD.W           R1, R0, #0x10
8C9AC:  VSUB.F32        D0, D16, D17
8C9B0:  VST1.32         {D16[1]}, [R1@32]
8C9B4:  VST1.32         {D16[0]}, [LR@32]
8C9B8:  VADD.F32        S6, S1, S6
8C9BC:  VADD.F32        S4, S0, S4
8C9C0:  VMOV            D1, D0
8C9C4:  VADD.F32        Q9, Q0, Q9
8C9C8:  VSTR            S6, [R0,#0xCC]
8C9CC:  VSTR            S4, [R0,#0xC8]
8C9D0:  VST1.32         {D18-D19}, [R2]
8C9D4:  POP             {R7,PC}
