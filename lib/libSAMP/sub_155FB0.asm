; =========================================================
; Game Engine Function: sub_155FB0
; Address            : 0x155FB0 - 0x155FE0
; =========================================================

155FB0:  PUSH            {R7,LR}
155FB2:  MOV             R7, SP
155FB4:  LDR             R0, [R0,#0x58]
155FB6:  BL              sub_152694
155FBA:  CBZ             R0, loc_155FC4
155FBC:  LDRB            R1, [R0,#0x1E]
155FBE:  CBZ             R1, loc_155FCA
155FC0:  MOVS            R0, #0
155FC2:  POP             {R7,PC}
155FC4:  MOV.W           R0, #0xFFFFFFFF
155FC8:  POP             {R7,PC}
155FCA:  VLDR            S0, =100.0
155FCE:  VLDR            S2, [R0,#0x20]
155FD2:  VMUL.F32        S0, S2, S0
155FD6:  VCVT.S32.F32    S0, S0
155FDA:  VMOV            R0, S0
155FDE:  POP             {R7,PC}
