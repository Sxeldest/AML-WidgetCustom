; =========================================================
; Game Engine Function: _Z18LimitFrustumVectorR7CVectorRKS_f
; Address            : 0x41087A - 0x4108D0
; =========================================================

41087A:  VLDR            S4, [R1,#8]
41087E:  VMOV            S12, R2
410882:  VLDR            S10, [R0,#8]
410886:  VSUB.F32        S12, S12, S4
41088A:  VLDR            S0, [R1]
41088E:  VSUB.F32        S10, S10, S4
410892:  VLDR            S6, [R0]
410896:  VLDR            S2, [R1,#4]
41089A:  VLDR            S8, [R0,#4]
41089E:  VSUB.F32        S6, S6, S0
4108A2:  VSUB.F32        S8, S8, S2
4108A6:  VDIV.F32        S12, S12, S10
4108AA:  VMUL.F32        S6, S12, S6
4108AE:  VMUL.F32        S8, S12, S8
4108B2:  VMUL.F32        S10, S10, S12
4108B6:  VADD.F32        S0, S0, S6
4108BA:  VADD.F32        S2, S2, S8
4108BE:  VADD.F32        S4, S4, S10
4108C2:  VSTR            S0, [R0]
4108C6:  VSTR            S2, [R0,#4]
4108CA:  VSTR            S4, [R0,#8]
4108CE:  BX              LR
