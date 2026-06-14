; =========================================================
; Game Engine Function: sub_151D18
; Address            : 0x151D18 - 0x151D50
; =========================================================

151D18:  MOV             R2, R0
151D1A:  LDRB            R0, [R0,#0x14]
151D1C:  CMP             R0, R1
151D1E:  IT EQ
151D20:  BXEQ            LR
151D22:  LDRB            R3, [R2,#0x12]
151D24:  LDR             R0, [R2,#4]
151D26:  STRB            R1, [R2,#0x14]
151D28:  CBNZ            R3, loc_151D2E
151D2A:  CBNZ            R0, loc_151D2E
151D2C:  BX              LR
151D2E:  VLDR            S0, [R2,#8]
151D32:  CMP             R1, #0
151D34:  VLDR            S2, [R2,#0xC]
151D38:  VMUL.F32        S0, S0, S2
151D3C:  VLDR            S2, =0.0
151D40:  IT NE
151D42:  VMOVNE.F32      S0, S2
151D46:  VMOV            R1, S0
151D4A:  LDR             R2, [R0]
151D4C:  LDR             R2, [R2,#0xC]
151D4E:  BX              R2
