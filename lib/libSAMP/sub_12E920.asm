; =========================================================
; Game Engine Function: sub_12E920
; Address            : 0x12E920 - 0x12E9EA
; =========================================================

12E920:  PUSH            {R4,R6,R7,LR}
12E922:  ADD             R7, SP, #8
12E924:  VPUSH           {D8-D12}
12E928:  SUB             SP, SP, #8
12E92A:  VLDR            S0, =0.93
12E92E:  VMOV.F32        S4, #3.0
12E932:  VLDR            S16, [R0,#0x14]
12E936:  MOV             R4, R0
12E938:  VLDR            D17, =0.975
12E93C:  MOV             R1, SP
12E93E:  VMUL.F32        S0, S16, S0
12E942:  VLDR            S2, [R0,#0x18]
12E946:  LDR             R0, [R0,#0x58]
12E948:  VCVT.F64.F32    D16, S0
12E94C:  VLDR            S0, =0.06
12E950:  VMUL.F64        D16, D16, D17
12E954:  VMUL.F32        S18, S2, S0
12E958:  VCVT.F32.F64    S22, D16
12E95C:  VMUL.F32        S20, S18, S4
12E960:  VSTR            S18, [R0,#0x18]
12E964:  VSTR            S18, [R0,#0x20]
12E968:  VSTR            S18, [R0,#0x28]
12E96C:  VLDR            S4, =0.33
12E970:  VMUL.F32        S24, S2, S4
12E974:  VSTR            S20, [R0,#0x14]
12E978:  VSTR            S20, [R0,#0x1C]
12E97C:  VSTR            S20, [R0,#0x24]
12E980:  VLDR            S0, [R4,#0x14]
12E984:  LDR             R0, [R4,#0x58]
12E986:  VSUB.F32        S0, S0, S22
12E98A:  VSTR            S24, [SP,#0x38+var_34]
12E98E:  VSUB.F32        S0, S0, S20
12E992:  VSTR            S0, [SP,#0x38+var_38]
12E996:  BL              sub_12BD92
12E99A:  LDR             R0, [R4,#0x5C]
12E99C:  VSUB.F32        S0, S20, S20
12E9A0:  VLDR            S2, =-0.01
12E9A4:  MOV             R1, SP
12E9A6:  VSTR            S24, [SP,#0x38+var_34]
12E9AA:  VSTR            S20, [R0,#0x14]
12E9AE:  VSTR            S18, [R0,#0x18]
12E9B2:  VSTR            S20, [R0,#0x1C]
12E9B6:  VSTR            S18, [R0,#0x20]
12E9BA:  VMLA.F32        S0, S16, S2
12E9BE:  VSTR            S20, [R0,#0x24]
12E9C2:  VSTR            S18, [R0,#0x28]
12E9C6:  VLDR            S4, [R4,#0x14]
12E9CA:  LDR             R0, [R4,#0x5C]
12E9CC:  VSUB.F32        S2, S4, S22
12E9D0:  VSUB.F32        S0, S2, S0
12E9D4:  VSTR            S0, [SP,#0x38+var_38]
12E9D8:  BL              sub_12BD92
12E9DC:  MOV             R0, R4
12E9DE:  BL              sub_12C0E6
12E9E2:  ADD             SP, SP, #8
12E9E4:  VPOP            {D8-D12}
12E9E8:  POP             {R4,R6,R7,PC}
