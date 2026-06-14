; =========================================================
; Game Engine Function: sub_108A74
; Address            : 0x108A74 - 0x108AA0
; =========================================================

108A74:  VMOV            S0, R0
108A78:  VCMP.F32        S0, #0.0
108A7C:  VMRS            APSR_nzcv, FPSCR
108A80:  BPL             loc_108A9C
108A84:  PUSH            {R11,LR}
108A88:  EOR             R0, R0, #0x80000000
108A8C:  BL              sub_108AF0
108A90:  RSBS            R0, R0, #0
108A94:  RSC             R1, R1, #0
108A98:  POP             {R11,PC}
108A9C:  B               sub_108AF0
