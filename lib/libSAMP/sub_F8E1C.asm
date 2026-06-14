; =========================================================
; Game Engine Function: sub_F8E1C
; Address            : 0xF8E1C - 0xF8EB4
; =========================================================

F8E1C:  PUSH            {R4-R7,LR}
F8E1E:  ADD             R7, SP, #0xC
F8E20:  PUSH.W          {R11}
F8E24:  SUB             SP, SP, #0x80
F8E26:  MOV             R5, R0
F8E28:  LDR             R0, =(off_234970 - 0xF8E2E)
F8E2A:  ADD             R0, PC; off_234970
F8E2C:  LDR             R6, [R0]; dword_23DEF0
F8E2E:  LDR             R0, [R6]
F8E30:  BL              sub_E35A0
F8E34:  VLDR            S0, =10000.0
F8E38:  CBZ             R0, loc_F8EA8
F8E3A:  MOV             R4, R0
F8E3C:  LDR             R0, [R5,#4]
F8E3E:  CBZ             R0, loc_F8EA8
F8E40:  MOV             R1, SP
F8E42:  MOV             R0, R5
F8E44:  BL              sub_F8910
F8E48:  LDR             R0, =(off_23496C - 0xF8E4E)
F8E4A:  ADD             R0, PC; off_23496C
F8E4C:  LDR             R0, [R0]; dword_23DEF4
F8E4E:  LDR             R0, [R0]
F8E50:  CBZ             R0, loc_F8E78
F8E52:  LDR.W           R0, [R0,#0x3B0]
F8E56:  MOVW            R1, #0x13BC
F8E5A:  LDR             R0, [R0]
F8E5C:  LDR             R0, [R0,R1]
F8E5E:  CBZ             R0, loc_F8E78
F8E60:  LDRB.W          R1, [R0,#0x1B0]
F8E64:  CBNZ            R1, loc_F8E6C
F8E66:  LDRB.W          R0, [R0,#0x22]
F8E6A:  CBZ             R0, loc_F8E78
F8E6C:  LDR             R0, [R6]
F8E6E:  ADD             R1, SP, #0x90+var_50
F8E70:  LDR             R0, [R0,#4]
F8E72:  BL              sub_F8828
F8E76:  B               loc_F8E80
F8E78:  ADD             R1, SP, #0x90+var_50
F8E7A:  MOV             R0, R4
F8E7C:  BL              sub_F8910
F8E80:  VLDR            D16, [SP,#0x90+var_1C]
F8E84:  VLDR            D17, [SP,#0x90+var_5C]
F8E88:  VLDR            S0, [SP,#0x90+var_20]
F8E8C:  VSUB.F32        D16, D17, D16
F8E90:  VLDR            S2, [SP,#0x90+var_60]
F8E94:  VSUB.F32        S0, S2, S0
F8E98:  VMUL.F32        D1, D16, D16
F8E9C:  VMLA.F32        S2, S0, S0
F8EA0:  VADD.F32        S0, S2, S3
F8EA4:  VSQRT.F32       S0, S0
F8EA8:  VMOV            R0, S0
F8EAC:  ADD             SP, SP, #0x80
F8EAE:  POP.W           {R11}
F8EB2:  POP             {R4-R7,PC}
