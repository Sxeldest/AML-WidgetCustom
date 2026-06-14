; =========================================================
; Game Engine Function: _Z12IsWideScreenv
; Address            : 0x2A96F0 - 0x2A971E
; =========================================================

2A96F0:  LDR             R0, =(RsGlobal_ptr - 0x2A96F6)
2A96F2:  ADD             R0, PC; RsGlobal_ptr
2A96F4:  LDR             R0, [R0]; RsGlobal
2A96F6:  VLDR            S0, [R0,#4]
2A96FA:  VLDR            S2, [R0,#8]
2A96FE:  MOVS            R0, #0
2A9700:  VCVT.F32.S32    S2, S2
2A9704:  VCVT.F32.S32    S0, S0
2A9708:  VDIV.F32        S0, S0, S2
2A970C:  VLDR            S2, =1.8
2A9710:  VCMPE.F32       S0, S2
2A9714:  VMRS            APSR_nzcv, FPSCR
2A9718:  IT GT
2A971A:  MOVGT           R0, #1
2A971C:  BX              LR
