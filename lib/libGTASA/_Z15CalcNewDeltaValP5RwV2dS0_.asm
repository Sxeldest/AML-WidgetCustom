; =========================================================
; Game Engine Function: _Z15CalcNewDeltaValP5RwV2dS0_
; Address            : 0x5CED40 - 0x5CED7C
; =========================================================

5CED40:  VLDR            S0, [R0]
5CED44:  VLDR            S4, [R1]
5CED48:  VLDR            S2, [R0,#4]
5CED4C:  VLDR            S6, [R1,#4]
5CED50:  VSUB.F32        S0, S4, S0
5CED54:  VLDR            S4, =+Inf
5CED58:  VSUB.F32        S2, S6, S2
5CED5C:  VLDR            S6, =0.0
5CED60:  VDIV.F32        S0, S0, S2
5CED64:  VABS.F32        S2, S0
5CED68:  VCMP.F32        S2, S4
5CED6C:  VMRS            APSR_nzcv, FPSCR
5CED70:  IT NE
5CED72:  VMOVNE.F32      S6, S0
5CED76:  VMOV            R0, S6
5CED7A:  BX              LR
