; =========================================================
; Game Engine Function: sub_151D54
; Address            : 0x151D54 - 0x151D86
; =========================================================

151D54:  MOV             R2, R0
151D56:  LDR             R0, [R0,#4]
151D58:  LDRB            R3, [R2,#0x12]
151D5A:  STR             R1, [R2,#0xC]
151D5C:  CBNZ            R3, loc_151D62
151D5E:  CBNZ            R0, loc_151D62
151D60:  BX              LR
151D62:  VMOV            S0, R1
151D66:  VLDR            S2, [R2,#8]
151D6A:  LDRB            R1, [R2,#0x14]
151D6C:  VLDR            S4, =0.0
151D70:  VMUL.F32        S0, S2, S0
151D74:  CMP             R1, #0
151D76:  IT EQ
151D78:  VMOVEQ.F32      S4, S0
151D7C:  VMOV            R1, S4
151D80:  LDR             R2, [R0]
151D82:  LDR             R2, [R2,#0xC]
151D84:  BX              R2
