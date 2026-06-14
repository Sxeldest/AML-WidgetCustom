; =========================================================
; Game Engine Function: sub_108A44
; Address            : 0x108A44 - 0x108A74
; =========================================================

108A44:  VMOV            D16, R0, R1
108A48:  VCMP.F64        D16, #0.0
108A4C:  VMRS            APSR_nzcv, FPSCR
108A50:  BPL             loc_108A70
108A54:  PUSH            {R11,LR}
108A58:  VNEG.F64        D16, D16
108A5C:  VMOV            R0, R1, D16
108A60:  BL              sub_108AA0
108A64:  RSBS            R0, R0, #0
108A68:  RSC             R1, R1, #0
108A6C:  POP             {R11,PC}
108A70:  B               sub_108AA0
