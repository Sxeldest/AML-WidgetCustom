; =========================================================
; Game Engine Function: _ZN8CShadows24AffectColourWithLightingEhhhhhPhS0_S0_
; Address            : 0x5BB94C - 0x5BBA1A
; =========================================================

5BB94C:  PUSH            {R4,R5,R7,LR}
5BB94E:  ADD             R7, SP, #8
5BB950:  LDRD.W          LR, R12, [R7,#arg_8]
5BB954:  CMP             R0, #2
5BB956:  LDRD.W          R5, R4, [R7,#arg_0]
5BB95A:  BNE             loc_5BB962
5BB95C:  VMOV.F32        S0, #1.0
5BB960:  B               loc_5BB9D2
5BB962:  AND.W           R0, R1, #0xF
5BB966:  VMOV.F32        S0, #0.5
5BB96A:  VMOV.F32        S6, #15.0
5BB96E:  VMOV            S2, R0
5BB972:  LSRS            R0, R1, #4
5BB974:  VMOV            S4, R0
5BB978:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x5BB986)
5BB97A:  VCVT.F32.S32    S2, S2
5BB97E:  VCVT.F32.S32    S4, S4
5BB982:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
5BB984:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
5BB986:  VMUL.F32        S2, S2, S0
5BB98A:  VMUL.F32        S0, S4, S0
5BB98E:  VMOV.F32        S4, #1.0
5BB992:  VDIV.F32        S2, S2, S6
5BB996:  VDIV.F32        S0, S0, S6
5BB99A:  VLDR            S6, [R0]
5BB99E:  VSUB.F32        S4, S4, S6
5BB9A2:  VMUL.F32        S0, S0, S6
5BB9A6:  VLDR            S6, =0.7
5BB9AA:  VMUL.F32        S2, S2, S4
5BB9AE:  VADD.F32        S0, S0, S2
5BB9B2:  VLDR            S2, =0.6
5BB9B6:  VMUL.F32        S2, S4, S2
5BB9BA:  VLDR            S4, =0.4
5BB9BE:  VMUL.F32        S0, S0, S6
5BB9C2:  VLDR            S6, =0.3
5BB9C6:  VADD.F32        S2, S2, S4
5BB9CA:  VADD.F32        S0, S0, S6
5BB9CE:  VMIN.F32        D0, D1, D0
5BB9D2:  VMOV            S2, R2
5BB9D6:  VMOV            S4, R5
5BB9DA:  VCVT.F32.U32    S2, S2
5BB9DE:  VMOV            S6, R3
5BB9E2:  VCVT.F32.U32    S4, S4
5BB9E6:  VCVT.F32.U32    S6, S6
5BB9EA:  VMUL.F32        S2, S0, S2
5BB9EE:  VMUL.F32        S4, S0, S4
5BB9F2:  VMUL.F32        S0, S0, S6
5BB9F6:  VCVT.U32.F32    S2, S2
5BB9FA:  VCVT.U32.F32    S4, S4
5BB9FE:  VCVT.U32.F32    S0, S0
5BBA02:  VMOV            R0, S2
5BBA06:  STRB            R0, [R4]
5BBA08:  VMOV            R0, S0
5BBA0C:  STRB.W          R0, [LR]
5BBA10:  VMOV            R0, S4
5BBA14:  STRB.W          R0, [R12]
5BBA18:  POP             {R4,R5,R7,PC}
