; =========================================================
; Game Engine Function: sub_15DF34
; Address            : 0x15DF34 - 0x15DF60
; =========================================================

15DF34:  PUSH            {R4,R6,R7,LR}
15DF36:  ADD             R7, SP, #8
15DF38:  MOV             R4, R0
15DF3A:  LDR             R0, [R0,#8]
15DF3C:  MOVS            R1, #0
15DF3E:  BL              sub_164C70
15DF42:  MOV             R2, R0
15DF44:  ANDS            R0, R1
15DF46:  ADDS            R0, #1
15DF48:  BEQ             loc_15DF56
15DF4A:  LDR             R0, [R4,#8]
15DF4C:  MOV             R3, R1
15DF4E:  POP.W           {R4,R6,R7,LR}
15DF52:  B.W             sub_164B90
15DF56:  VMOV.I32        D16, #0
15DF5A:  VMOV            R0, R1, D16
15DF5E:  POP             {R4,R6,R7,PC}
