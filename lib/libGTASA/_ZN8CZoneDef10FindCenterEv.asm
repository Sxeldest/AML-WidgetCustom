; =========================================================
; Game Engine Function: _ZN8CZoneDef10FindCenterEv
; Address            : 0x5CFA44 - 0x5CFAD8
; =========================================================

5CFA44:  PUSH            {R7,LR}
5CFA46:  MOV             R7, SP
5CFA48:  LDRSH.W         R2, [R1,#4]
5CFA4C:  VMOV.F32        S0, #0.5
5CFA50:  LDRSH.W         R3, [R1,#6]
5CFA54:  LDRSH.W         R12, [R1]
5CFA58:  VMOV            S4, R2
5CFA5C:  LDRSH.W         LR, [R1,#2]
5CFA60:  VMOV            S2, R3
5CFA64:  VMOV            S12, R12
5CFA68:  VCVT.F32.S32    S2, S2
5CFA6C:  VCVT.F32.S32    S4, S4
5CFA70:  LDRSH.W         R2, [R1,#0xA]
5CFA74:  VMOV            S8, LR
5CFA78:  VMOV            S6, R2
5CFA7C:  VCVT.F32.S32    S6, S6
5CFA80:  LDRSH.W         R2, [R1,#8]
5CFA84:  VCVT.F32.S32    S8, S8
5CFA88:  VMUL.F32        S2, S2, S0
5CFA8C:  VMOV            S10, R2
5CFA90:  VMUL.F32        S4, S4, S0
5CFA94:  VCVT.F32.S32    S10, S10
5CFA98:  LDRSH.W         R2, [R1,#0xC]
5CFA9C:  VCVT.F32.S32    S12, S12
5CFAA0:  LDRSH.W         R1, [R1,#0xE]
5CFAA4:  VMUL.F32        S6, S6, S0
5CFAA8:  ADD             R1, R2
5CFAAA:  VADD.F32        S2, S2, S8
5CFAAE:  VMOV            S14, R1
5CFAB2:  VCVT.F32.S32    S14, S14
5CFAB6:  VMUL.F32        S8, S10, S0
5CFABA:  VADD.F32        S4, S4, S12
5CFABE:  VADD.F32        S2, S2, S6
5CFAC2:  VMUL.F32        S0, S14, S0
5CFAC6:  VADD.F32        S4, S4, S8
5CFACA:  VSTR            S4, [R0]
5CFACE:  VSTR            S2, [R0,#4]
5CFAD2:  VSTR            S0, [R0,#8]
5CFAD6:  POP             {R7,PC}
