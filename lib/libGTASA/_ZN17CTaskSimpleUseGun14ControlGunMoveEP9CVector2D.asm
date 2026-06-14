; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun14ControlGunMoveEP9CVector2D
; Address            : 0x4DDA78 - 0x4DDAF6
; =========================================================

4DDA78:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DDA82)
4DDA7A:  VLDR            S4, [R0,#0x18]
4DDA7E:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DDA80:  VLDR            S2, [R1,#4]
4DDA84:  VLDR            S0, =0.07
4DDA88:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4DDA8A:  VSUB.F32        S6, S2, S4
4DDA8E:  VLDR            S8, [R2]
4DDA92:  VMUL.F32        S0, S8, S0
4DDA96:  VCMPE.F32       S6, S0
4DDA9A:  VMRS            APSR_nzcv, FPSCR
4DDA9E:  BLE             loc_4DDAA6
4DDAA0:  VADD.F32        S2, S0, S4
4DDAA4:  B               loc_4DDAB8
4DDAA6:  VNEG.F32        S8, S0
4DDAAA:  VCMPE.F32       S6, S8
4DDAAE:  VMRS            APSR_nzcv, FPSCR
4DDAB2:  IT LT
4DDAB4:  VSUBLT.F32      S2, S4, S0
4DDAB8:  VSTR            S2, [R0,#0x18]
4DDABC:  VLDR            S4, [R0,#0x14]
4DDAC0:  VLDR            S2, [R1]
4DDAC4:  VSUB.F32        S6, S2, S4
4DDAC8:  VCMPE.F32       S6, S0
4DDACC:  VMRS            APSR_nzcv, FPSCR
4DDAD0:  BLE             loc_4DDAD8
4DDAD2:  VADD.F32        S2, S0, S4
4DDAD6:  B               loc_4DDAEA
4DDAD8:  VNEG.F32        S8, S0
4DDADC:  VCMPE.F32       S6, S8
4DDAE0:  VMRS            APSR_nzcv, FPSCR
4DDAE4:  IT LT
4DDAE6:  VSUBLT.F32      S2, S4, S0
4DDAEA:  MOVS            R1, #1
4DDAEC:  STRB            R1, [R0,#0xA]
4DDAEE:  VSTR            S2, [R0,#0x14]
4DDAF2:  MOVS            R0, #1
4DDAF4:  BX              LR
