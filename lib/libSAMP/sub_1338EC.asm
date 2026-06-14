; =========================================================
; Game Engine Function: sub_1338EC
; Address            : 0x1338EC - 0x133A26
; =========================================================

1338EC:  PUSH            {R4,R6,R7,LR}
1338EE:  ADD             R7, SP, #8
1338F0:  VPUSH           {D8-D11}
1338F4:  SUB             SP, SP, #8
1338F6:  VMOV.F32        S18, #0.5
1338FA:  VLDR            S0, =0.9
1338FE:  VLDR            S2, [R0,#0x14]
133902:  MOV             R4, R0
133904:  VLDR            S4, [R0,#0x18]
133908:  MOV             R1, SP
13390A:  VMUL.F32        S0, S2, S0
13390E:  LDR             R0, [R0,#0x5C]
133910:  VMUL.F32        S2, S4, S18
133914:  VSTR            S0, [R0,#0x14]
133918:  VSTR            S0, [R0,#0x1C]
13391C:  VSTR            S0, [R0,#0x24]
133920:  VSTR            S2, [R0,#0x18]
133924:  VSTR            S2, [R0,#0x20]
133928:  VSTR            S2, [R0,#0x28]
13392C:  VLDR            S4, [R4,#0x14]
133930:  VLDR            S6, [R4,#0x18]
133934:  VSUB.F32        S0, S4, S0
133938:  LDR             R0, [R4,#0x5C]
13393A:  VSUB.F32        S2, S6, S2
13393E:  VMUL.F32        S0, S0, S18
133942:  VMUL.F32        S2, S2, S18
133946:  VSTR            S0, [SP,#0x30+var_30]
13394A:  VSTR            S2, [SP,#0x30+var_2C]
13394E:  BL              sub_12BD92
133952:  VLDR            S0, =0.06
133956:  VLDR            S2, [R4,#0x18]
13395A:  LDRD.W          R0, R1, [R4,#0x5C]
13395E:  VMUL.F32        S16, S2, S0
133962:  VLDR            S0, =5.1304
133966:  VLDR            S20, [R0,#0xC]
13396A:  VMUL.F32        S0, S16, S0
13396E:  VSTR            S16, [R1,#0x18]
133972:  VSTR            S16, [R1,#0x20]
133976:  VSTR            S16, [R1,#0x28]
13397A:  VSTR            S0, [R1,#0x14]
13397E:  VSTR            S0, [R1,#0x1C]
133982:  VSTR            S0, [R1,#0x24]
133986:  MOV             R1, SP
133988:  VLDR            S4, [R4,#0x14]
13398C:  LDR             R0, [R4,#0x60]
13398E:  VSUB.F32        S0, S4, S0
133992:  VLDR            S4, =0.07
133996:  VMUL.F32        S22, S2, S4
13399A:  VMUL.F32        S0, S0, S18
13399E:  VSTR            S22, [SP,#0x30+var_2C]
1339A2:  VSTR            S0, [SP,#0x30+var_30]
1339A6:  BL              sub_12BD92
1339AA:  LDR             R0, [R4,#0x64]
1339AC:  VDUP.32         Q8, D8[0]
1339B0:  MOV             R1, SP
1339B2:  ADDS            R0, #0x14
1339B4:  VSTR            S22, [SP,#0x30+var_2C]
1339B8:  VST1.32         {D16-D17}, [R0]!
1339BC:  VSTR            S16, [R0]
1339C0:  VSTR            S16, [R0,#4]
1339C4:  VLDR            S0, [R4,#0x14]
1339C8:  LDR             R0, [R4,#0x64]
1339CA:  VSUB.F32        S0, S0, S20
1339CE:  VSUB.F32        S0, S0, S16
1339D2:  VSTR            S0, [SP,#0x30+var_30]
1339D6:  BL              sub_12BD92
1339DA:  VLDR            S0, =5.6889
1339DE:  MOV             R1, SP
1339E0:  LDR             R0, [R4,#0x68]
1339E2:  VMUL.F32        S0, S16, S0
1339E6:  VSTR            S20, [SP,#0x30+var_30]
1339EA:  VSTR            S16, [R0,#0x18]
1339EE:  VSTR            S16, [R0,#0x20]
1339F2:  VSTR            S16, [R0,#0x28]
1339F6:  VSTR            S0, [R0,#0x14]
1339FA:  VSTR            S0, [R0,#0x1C]
1339FE:  VSTR            S0, [R0,#0x24]
133A02:  VLDR            S0, [R4,#0x18]
133A06:  LDR             R0, [R4,#0x68]
133A08:  VSUB.F32        S0, S0, S22
133A0C:  VSUB.F32        S0, S0, S16
133A10:  VSTR            S0, [SP,#0x30+var_2C]
133A14:  BL              sub_12BD92
133A18:  MOV             R0, R4
133A1A:  BL              sub_12C0E6
133A1E:  ADD             SP, SP, #8
133A20:  VPOP            {D8-D11}
133A24:  POP             {R4,R6,R7,PC}
