; =========================================================
; Game Engine Function: _Z12ScreenToMenuRK9CVector2D
; Address            : 0x297160 - 0x2971B0
; =========================================================

297160:  LDR             R2, =(RsGlobal_ptr - 0x29716A)
297162:  VLDR            S4, =480.0
297166:  ADD             R2, PC; RsGlobal_ptr
297168:  VLDR            S10, =-240.0
29716C:  LDR             R2, [R2]; RsGlobal
29716E:  VLDR            S0, [R2,#4]
297172:  VLDR            S2, [R2,#8]
297176:  VCVT.F32.S32    S0, S0
29717A:  VLDR            S6, [R1]
29717E:  VLDR            S8, [R1,#4]
297182:  VCVT.F32.S32    S2, S2
297186:  VMUL.F32        S6, S6, S4
29718A:  VMUL.F32        S4, S8, S4
29718E:  VMUL.F32        S0, S0, S10
297192:  VADD.F32        S0, S6, S0
297196:  VDIV.F32        S0, S0, S2
29719A:  VDIV.F32        S2, S4, S2
29719E:  VLDR            S4, =320.0
2971A2:  VADD.F32        S0, S0, S4
2971A6:  VSTR            S0, [R0]
2971AA:  VSTR            S2, [R0,#4]
2971AE:  BX              LR
