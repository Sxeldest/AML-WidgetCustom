; =========================================================
; Game Engine Function: _ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f
; Address            : 0x582C2C - 0x582C86
; =========================================================

582C2C:  CMP             R1, #1
582C2E:  ITTT EQ
582C30:  VLDREQ          S0, =-1.1
582C34:  VMOVEQ          R0, S0
582C38:  BXEQ            LR
582C3A:  CMP             R1, #3
582C3C:  ITTT EQ
582C3E:  VLDREQ          S0, =0.0
582C42:  VMOVEQ          R0, S0
582C46:  BXEQ            LR
582C48:  VLDR            S2, [R2]
582C4C:  VLDR            S8, [R3]
582C50:  VLDR            S4, [R2,#4]
582C54:  VLDR            S10, [R3,#4]
582C58:  VMUL.F32        S2, S8, S2
582C5C:  VLDR            S6, [R2,#8]
582C60:  VMUL.F32        S4, S10, S4
582C64:  VLDR            S12, [R3,#8]
582C68:  VLDR            S0, [SP,#arg_0]
582C6C:  VMUL.F32        S6, S12, S6
582C70:  VADD.F32        S2, S2, S4
582C74:  VADD.F32        S2, S2, S6
582C78:  VNEG.F32        S2, S2
582C7C:  VDIV.F32        S0, S2, S0
582C80:  VMOV            R0, S0
582C84:  BX              LR
