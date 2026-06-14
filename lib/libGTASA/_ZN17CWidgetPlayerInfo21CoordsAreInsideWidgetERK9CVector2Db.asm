; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo21CoordsAreInsideWidgetERK9CVector2Db
; Address            : 0x2BCC3C - 0x2BCC84
; =========================================================

2BCC3C:  VLDR            S0, [R1]
2BCC40:  VLDR            S2, [R0,#0x98]
2BCC44:  VCMPE.F32       S0, S2
2BCC48:  VMRS            APSR_nzcv, FPSCR
2BCC4C:  BLT             loc_2BCC80
2BCC4E:  VLDR            S2, [R0,#0xA0]
2BCC52:  VCMPE.F32       S0, S2
2BCC56:  VMRS            APSR_nzcv, FPSCR
2BCC5A:  BGT             loc_2BCC80
2BCC5C:  VLDR            S0, [R1,#4]
2BCC60:  VLDR            S2, [R0,#0xA4]
2BCC64:  VCMPE.F32       S0, S2
2BCC68:  VMRS            APSR_nzcv, FPSCR
2BCC6C:  BLT             loc_2BCC80
2BCC6E:  VLDR            S2, [R0,#0x9C]
2BCC72:  VCMPE.F32       S0, S2
2BCC76:  VMRS            APSR_nzcv, FPSCR
2BCC7A:  ITT LE
2BCC7C:  MOVLE           R0, #1
2BCC7E:  BXLE            LR
2BCC80:  MOVS            R0, #0
2BCC82:  BX              LR
