; =========================================================
; Game Engine Function: _ZN7CGarage32CalcDistToGarageRectangleSquaredEff
; Address            : 0x311F24 - 0x311F8A
; =========================================================

311F24:  VLDR            S4, [R0,#0x28]
311F28:  VMOV            S2, R1
311F2C:  VMOV            S0, R2
311F30:  VCMPE.F32       S4, S2
311F34:  VMRS            APSR_nzcv, FPSCR
311F38:  BGT             loc_311F48
311F3A:  VLDR            S4, [R0,#0x2C]
311F3E:  VCMPE.F32       S4, S2
311F42:  VMRS            APSR_nzcv, FPSCR
311F46:  BGE             loc_311F4E
311F48:  VSUB.F32        S2, S2, S4
311F4C:  B               loc_311F52
311F4E:  VLDR            S2, =0.0
311F52:  VLDR            S4, [R0,#0x30]
311F56:  VCMPE.F32       S4, S0
311F5A:  VMRS            APSR_nzcv, FPSCR
311F5E:  BGT             loc_311F6E
311F60:  VLDR            S4, [R0,#0x34]
311F64:  VCMPE.F32       S4, S0
311F68:  VMRS            APSR_nzcv, FPSCR
311F6C:  BGE             loc_311F74
311F6E:  VSUB.F32        S0, S0, S4
311F72:  B               loc_311F78
311F74:  VLDR            S0, =0.0
311F78:  VMUL.F32        S0, S0, S0
311F7C:  VMUL.F32        S2, S2, S2
311F80:  VADD.F32        S0, S2, S0
311F84:  VMOV            R0, S0
311F88:  BX              LR
