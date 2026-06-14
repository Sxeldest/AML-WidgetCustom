; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins26CalculateFadingAtomicAlphaEP14CBaseModelInfoP7CEntityf
; Address            : 0x5D4D2C - 0x5D4DF2
; =========================================================

5D4D2C:  PUSH            {R4,R6,R7,LR}
5D4D2E:  ADD             R7, SP, #8
5D4D30:  LDR.W           R12, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x5D4D40)
5D4D34:  VMOV.F32        S0, #22.0
5D4D38:  LDR.W           LR, =(TheCamera_ptr - 0x5D4D44)
5D4D3C:  ADD             R12, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
5D4D3E:  LDR             R3, =(FadeDistMult_ptr - 0x5D4D4C)
5D4D40:  ADD             LR, PC; TheCamera_ptr
5D4D42:  LDR             R4, [R0,#0x2C]
5D4D44:  LDR.W           R12, [R12]; CRenderer::ms_fFarClipPlane ...
5D4D48:  ADD             R3, PC; FadeDistMult_ptr
5D4D4A:  LDR.W           LR, [LR]; TheCamera
5D4D4E:  VLDR            S4, [R4,#0x24]
5D4D52:  VLDR            S8, [R12]
5D4D56:  VLDR            S6, [R0,#0x30]
5D4D5A:  VLDR            S10, [LR,#0xEC]
5D4D5E:  VADD.F32        S4, S8, S4
5D4D62:  LDR             R3, [R3]; FadeDistMult
5D4D64:  VMUL.F32        S8, S6, S10
5D4D68:  VLDR            S2, [R3]
5D4D6C:  VMUL.F32        S0, S2, S0
5D4D70:  VMOV            S2, R2
5D4D74:  LDR             R2, [R1,#0x34]
5D4D76:  VMIN.F32        D2, D4, D2
5D4D7A:  CBZ             R2, loc_5D4D82
5D4D7C:  VMOV.F32        S6, S0
5D4D80:  B               loc_5D4DBC
5D4D82:  VMIN.F32        D4, D3, D2
5D4D86:  VLDR            S10, =150.0
5D4D8A:  VMOV.F32        S6, S0
5D4D8E:  VCMPE.F32       S8, S10
5D4D92:  VMRS            APSR_nzcv, FPSCR
5D4D96:  BLE             loc_5D4DA8
5D4D98:  VMOV.F32        S6, #15.0
5D4D9C:  VDIV.F32        S6, S8, S6
5D4DA0:  VMOV.F32        S8, #10.0
5D4DA4:  VADD.F32        S6, S6, S8
5D4DA8:  LDRB            R1, [R1,#0x1D]
5D4DAA:  LSLS            R1, R1, #0x1F
5D4DAC:  BEQ             loc_5D4DBC
5D4DAE:  LDR             R1, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x5D4DB4)
5D4DB0:  ADD             R1, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
5D4DB2:  LDR             R1, [R1]; CRenderer::ms_lowLodDistScale ...
5D4DB4:  VLDR            S8, [R1]
5D4DB8:  VMUL.F32        S4, S4, S8
5D4DBC:  VADD.F32        S0, S4, S0
5D4DC0:  VLDR            S4, =0.8
5D4DC4:  LDRB.W          R0, [R0,#0x22]
5D4DC8:  VSUB.F32        S0, S0, S2
5D4DCC:  VMOV            S2, R0
5D4DD0:  VCVT.F32.U32    S2, S2
5D4DD4:  VDIV.F32        S0, S0, S6
5D4DD8:  VMOV.F32        S6, #1.0
5D4DDC:  VMUL.F32        S0, S0, S4
5D4DE0:  VMIN.F32        D0, D0, D3
5D4DE4:  VMUL.F32        S0, S0, S2
5D4DE8:  VCVT.S32.F32    S0, S0
5D4DEC:  VMOV            R0, S0
5D4DF0:  POP             {R4,R6,R7,PC}
