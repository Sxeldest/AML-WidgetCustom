; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode8InSectorERK5CRecti
; Address            : 0x40DE80 - 0x40DF48
; =========================================================

40DE80:  SUB             SP, SP, #8
40DE82:  LDR.W           R12, [R0,#4]
40DE86:  VLDR            S2, [R0]
40DE8A:  STR.W           R12, [SP,#8+var_4]
40DE8E:  LDR             R3, [R0,#0xC]
40DE90:  VLDR            S0, [R0,#8]
40DE94:  STR             R3, [SP,#8+var_8]
40DE96:  LDR             R0, [R0,#0x24]
40DE98:  CMP             R0, #0
40DE9A:  BEQ             loc_40DF42
40DE9C:  CMP             R2, #3; switch 4 cases
40DE9E:  BHI             def_40DEA8; jumptable 0040DEA8 default case
40DEA0:  VMOV            S4, R12
40DEA4:  VMOV            S6, R3
40DEA8:  TBB.W           [PC,R2]; switch jump
40DEAC:  DCB 2; jump table for switch statement
40DEAD:  DCB 0xA
40DEAE:  DCB 0x12
40DEAF:  DCB 0x19
40DEB0:  VMOV.F32        S8, #0.5; jumptable 0040DEA8 case 0
40DEB4:  MOV             R0, SP
40DEB6:  VADD.F32        S0, S2, S0
40DEBA:  VMUL.F32        S0, S0, S8
40DEBE:  B               loc_40DEEC
40DEC0:  VMOV.F32        S8, #0.5; jumptable 0040DEA8 case 1
40DEC4:  MOV             R0, SP
40DEC6:  VADD.F32        S2, S2, S0
40DECA:  VMUL.F32        S2, S2, S8
40DECE:  B               loc_40DEEC
40DED0:  VMOV.F32        S8, #0.5; jumptable 0040DEA8 case 2
40DED4:  VADD.F32        S0, S2, S0
40DED8:  VMUL.F32        S0, S0, S8
40DEDC:  B               loc_40DEEA
40DEDE:  VMOV.F32        S8, #0.5; jumptable 0040DEA8 case 3
40DEE2:  VADD.F32        S2, S2, S0
40DEE6:  VMUL.F32        S2, S2, S8
40DEEA:  ADD             R0, SP, #8+var_4
40DEEC:  VMOV.F32        S8, #0.5
40DEF0:  VADD.F32        S4, S4, S6
40DEF4:  VMUL.F32        S4, S4, S8
40DEF8:  VSTR            S4, [R0]
40DEFC:  VLDR            S4, [R1,#8]; jumptable 0040DEA8 default case
40DF00:  VCMPE.F32       S2, S4
40DF04:  VMRS            APSR_nzcv, FPSCR
40DF08:  BGT             loc_40DF42
40DF0A:  VLDR            S2, [R1]
40DF0E:  VCMPE.F32       S0, S2
40DF12:  VMRS            APSR_nzcv, FPSCR
40DF16:  BLT             loc_40DF42
40DF18:  VLDR            S0, [SP,#8+var_8]
40DF1C:  VLDR            S2, [R1,#4]
40DF20:  VCMPE.F32       S0, S2
40DF24:  VMRS            APSR_nzcv, FPSCR
40DF28:  BGT             loc_40DF42
40DF2A:  VLDR            S0, [SP,#8+var_4]
40DF2E:  VLDR            S2, [R1,#0xC]
40DF32:  VCMPE.F32       S0, S2
40DF36:  VMRS            APSR_nzcv, FPSCR
40DF3A:  ITTT GE
40DF3C:  MOVGE           R0, #1
40DF3E:  ADDGE           SP, SP, #8
40DF40:  BXGE            LR
40DF42:  MOVS            R0, #0
40DF44:  ADD             SP, SP, #8
40DF46:  BX              LR
