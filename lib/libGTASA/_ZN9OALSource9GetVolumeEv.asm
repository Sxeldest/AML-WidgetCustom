; =========================================================
; Game Engine Function: _ZN9OALSource9GetVolumeEv
; Address            : 0x27FE90 - 0x27FEBA
; =========================================================

27FE90:  PUSH            {R7,LR}
27FE92:  MOV             R7, SP
27FE94:  VMOV.F32        S0, #1.0
27FE98:  VLDR            S2, [R0,#0x24]
27FE9C:  VDIV.F32        S0, S0, S2
27FEA0:  VMOV            R0, S0; x
27FEA4:  BLX             logf
27FEA8:  VLDR            S0, =-8.6562
27FEAC:  VMOV            S2, R0
27FEB0:  VMUL.F32        S0, S2, S0
27FEB4:  VMOV            R0, S0
27FEB8:  POP             {R7,PC}
