; =========================================================
; Game Engine Function: sub_1DCB88
; Address            : 0x1DCB88 - 0x1DCBD0
; =========================================================

1DCB88:  CMP             R2, #1
1DCB8C:  BNE             loc_1DCBC4
1DCB90:  VMOV            S0, R3
1DCB94:  VCMPE.F32       S0, #0.0
1DCB98:  VMRS            APSR_nzcv, FPSCR
1DCB9C:  BLT             loc_1DCBB8
1DCBA0:  VABS.F32        S2, S0
1DCBA4:  VLDR            S4, =+Inf
1DCBA8:  VCMP.F32        S2, S4
1DCBAC:  VMRS            APSR_nzcv, FPSCR
1DCBB0:  VSTRNE          S0, [R0,#0x90]
1DCBB4:  BXNE            LR
1DCBB8:  MOV             R0, R1
1DCBBC:  MOVW            R1, #0xA003
1DCBC0:  B               j_alSetError
1DCBC4:  MOV             R0, R1
1DCBC8:  MOVW            R1, #0xA002
1DCBCC:  B               j_alSetError
