; =========================================================
; Game Engine Function: _ZN6CRadar33TransformRealWorldToTexCoordSpaceER9CVector2DRKS0_ii
; Address            : 0x4426B8 - 0x442712
; =========================================================

4426B8:  MOV.W           R12, #0x1F4
4426BC:  VLDR            S2, =-3000.0
4426C0:  MUL.W           R2, R2, R12
4426C4:  VMOV            S0, R2
4426C8:  RSB.W           R2, R3, #0xC
4426CC:  VCVT.F32.S32    S0, S0
4426D0:  MUL.W           R2, R2, R12
4426D4:  VMOV            S4, R2
4426D8:  VADD.F32        S0, S0, S2
4426DC:  VCVT.F32.S32    S4, S4
4426E0:  VLDR            S6, [R1]
4426E4:  VSUB.F32        S0, S6, S0
4426E8:  VLDR            S6, =-0.002
4426EC:  VADD.F32        S2, S4, S2
4426F0:  VSTR            S0, [R0]
4426F4:  VLDR            S4, [R1,#4]
4426F8:  VSUB.F32        S2, S4, S2
4426FC:  VLDR            S4, =0.002
442700:  VMUL.F32        S0, S0, S4
442704:  VMUL.F32        S2, S2, S6
442708:  VSTR            S0, [R0]
44270C:  VSTR            S2, [R0,#4]
442710:  BX              LR
