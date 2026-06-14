; =========================================================
; Game Engine Function: sub_12BEA8
; Address            : 0x12BEA8 - 0x12BF00
; =========================================================

12BEA8:  VLDR            S0, [R0,#0x2C]
12BEAC:  MOV             R2, R0
12BEAE:  VLDR            S2, [R1]
12BEB2:  MOVS            R0, #0
12BEB4:  VSUB.F32        S0, S2, S0
12BEB8:  VCMP.F32        S0, #0.0
12BEBC:  VMRS            APSR_nzcv, FPSCR
12BEC0:  ITTTT GE
12BEC2:  VLDRGE          S2, [R2,#0x30]
12BEC6:  VLDRGE          S4, [R1,#4]
12BECA:  VSUBGE.F32      S2, S4, S2
12BECE:  VCMPGE.F32      S2, #0.0
12BED2:  IT GE
12BED4:  VMRSGE          APSR_nzcv, FPSCR
12BED8:  BGE             loc_12BEDC
12BEDA:  BX              LR
12BEDC:  VLDR            S4, [R2,#0x14]
12BEE0:  VCMP.F32        S0, S4
12BEE4:  VMRS            APSR_nzcv, FPSCR
12BEE8:  IT PL
12BEEA:  BXPL            LR
12BEEC:  VLDR            S0, [R2,#0x18]
12BEF0:  MOVS            R0, #0
12BEF2:  VCMP.F32        S2, S0
12BEF6:  VMRS            APSR_nzcv, FPSCR
12BEFA:  IT MI
12BEFC:  MOVMI           R0, #1
12BEFE:  BX              LR
