; =========================================================
; Game Engine Function: _Z13CamShakeNoPosP7CCameraf
; Address            : 0x3D6488 - 0x3D64D2
; =========================================================

3D6488:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D6494)
3D648A:  VMOV.F32        S4, #2.0
3D648E:  LDR             R3, [R0,#0x58]
3D6490:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D6492:  VLDR            S2, =-0.001
3D6496:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
3D6498:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
3D649A:  SUBS            R3, R2, R3
3D649C:  VMOV            S0, R3
3D64A0:  VCVT.F32.U32    S0, S0
3D64A4:  VLDR            S6, [R0,#0x128]
3D64A8:  VMUL.F32        S2, S0, S2
3D64AC:  VMOV            S0, R1
3D64B0:  VADD.F32        S2, S6, S2
3D64B4:  VLDR            S6, =0.0
3D64B8:  VMIN.F32        D16, D1, D2
3D64BC:  VMAX.F32        D1, D16, D3
3D64C0:  VCMPE.F32       S2, S0
3D64C4:  VMRS            APSR_nzcv, FPSCR
3D64C8:  ITT LT
3D64CA:  STRLT           R2, [R0,#0x58]
3D64CC:  VSTRLT          S0, [R0,#0x128]
3D64D0:  BX              LR
