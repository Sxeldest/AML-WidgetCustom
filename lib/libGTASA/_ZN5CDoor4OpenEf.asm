; =========================================================
; Game Engine Function: _ZN5CDoor4OpenEf
; Address            : 0x56F22C - 0x56F274
; =========================================================

56F22C:  VMOV.F32        S4, #1.0
56F230:  VLDR            S0, [R0]
56F234:  VMOV            S2, R1
56F238:  LDR             R1, [R0,#0xC]
56F23A:  STR             R1, [R0,#0x10]
56F23C:  VCMPE.F32       S2, S4
56F240:  VMRS            APSR_nzcv, FPSCR
56F244:  BGE             loc_56F260
56F246:  VMUL.F32        S0, S0, S2
56F24A:  VCMP.F32        S0, #0.0
56F24E:  VSTR            S0, [R0,#0xC]
56F252:  VMRS            APSR_nzcv, FPSCR
56F256:  ITTT EQ
56F258:  MOVEQ           R1, #0
56F25A:  STREQ           R1, [R0,#0x14]
56F25C:  BXEQ            LR
56F25E:  BX              LR
56F260:  LDRB            R1, [R0,#8]
56F262:  MOVS            R2, #0
56F264:  VSTR            S0, [R0,#0xC]
56F268:  CMP.W           R2, R1,LSR#7
56F26C:  ITT EQ
56F26E:  MOVEQ           R1, #1
56F270:  STRBEQ          R1, [R0,#0xB]
56F272:  BX              LR
