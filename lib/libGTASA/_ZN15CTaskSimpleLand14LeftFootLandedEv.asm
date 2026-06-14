; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand14LeftFootLandedEv
; Address            : 0x52CE74 - 0x52CEAA
; =========================================================

52CE74:  LDR             R1, [R0,#8]
52CE76:  CMP             R1, #0
52CE78:  ITT EQ
52CE7A:  MOVEQ           R0, #0
52CE7C:  BXEQ            LR
52CE7E:  VLDR            S0, =0.2
52CE82:  MOVS            R0, #0
52CE84:  VLDR            S2, [R1,#0x20]
52CE88:  VCMPE.F32       S2, S0
52CE8C:  VMRS            APSR_nzcv, FPSCR
52CE90:  IT LT
52CE92:  BXLT            LR
52CE94:  VLDR            S4, [R1,#0x28]
52CE98:  VSUB.F32        S2, S2, S4
52CE9C:  VCMPE.F32       S2, S0
52CEA0:  VMRS            APSR_nzcv, FPSCR
52CEA4:  IT LT
52CEA6:  MOVLT           R0, #1
52CEA8:  BX              LR
