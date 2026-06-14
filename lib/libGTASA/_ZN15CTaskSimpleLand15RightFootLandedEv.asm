; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand15RightFootLandedEv
; Address            : 0x52CE38 - 0x52CE6E
; =========================================================

52CE38:  LDR             R1, [R0,#8]
52CE3A:  CMP             R1, #0
52CE3C:  ITT EQ
52CE3E:  MOVEQ           R0, #0
52CE40:  BXEQ            LR
52CE42:  VLDR            S0, =0.1
52CE46:  MOVS            R0, #0
52CE48:  VLDR            S2, [R1,#0x20]
52CE4C:  VCMPE.F32       S2, S0
52CE50:  VMRS            APSR_nzcv, FPSCR
52CE54:  IT LT
52CE56:  BXLT            LR
52CE58:  VLDR            S4, [R1,#0x28]
52CE5C:  VSUB.F32        S2, S2, S4
52CE60:  VCMPE.F32       S2, S0
52CE64:  VMRS            APSR_nzcv, FPSCR
52CE68:  IT LT
52CE6A:  MOVLT           R0, #1
52CE6C:  BX              LR
