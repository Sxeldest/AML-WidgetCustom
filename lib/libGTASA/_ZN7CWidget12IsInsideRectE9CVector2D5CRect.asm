; =========================================================
; Game Engine Function: _ZN7CWidget12IsInsideRectE9CVector2D5CRect
; Address            : 0x2B3FEE - 0x2B403E
; =========================================================

2B3FEE:  VMOV            S0, R0
2B3FF2:  VMOV            S2, R2
2B3FF6:  VCMPE.F32       S0, S2
2B3FFA:  VMRS            APSR_nzcv, FPSCR
2B3FFE:  BLE             loc_2B403A
2B4000:  LDR             R0, [SP,#arg_0]
2B4002:  VMOV            S2, R0
2B4006:  VCMPE.F32       S0, S2
2B400A:  VMRS            APSR_nzcv, FPSCR
2B400E:  BGE             loc_2B403A
2B4010:  LDR             R0, [SP,#arg_4]
2B4012:  VMOV            S0, R1
2B4016:  VMOV            S2, R0
2B401A:  MOVS            R0, #0
2B401C:  VCMPE.F32       S0, S2
2B4020:  VMRS            APSR_nzcv, FPSCR
2B4024:  IT LE
2B4026:  BXLE            LR
2B4028:  VMOV            S2, R3
2B402C:  VCMPE.F32       S0, S2
2B4030:  VMRS            APSR_nzcv, FPSCR
2B4034:  IT LT
2B4036:  MOVLT           R0, #1
2B4038:  BX              LR
2B403A:  MOVS            R0, #0
2B403C:  BX              LR
