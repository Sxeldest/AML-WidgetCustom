; =========================================================
; Game Engine Function: sub_170B10
; Address            : 0x170B10 - 0x170B3C
; =========================================================

170B10:  PUSH            {R7,LR}
170B12:  MOV             R7, SP
170B14:  LDR             R0, =(dword_381B58 - 0x170B1E)
170B16:  MOVW            R1, #0x19AC
170B1A:  ADD             R0, PC; dword_381B58
170B1C:  LDR             R0, [R0]
170B1E:  LDR             R0, [R0,R1]
170B20:  LDR.W           R2, [R0,#0x1C0]
170B24:  LDR.W           R1, [R0,#0x27C]
170B28:  LDR             R2, [R2,#0xC]
170B2A:  ADD.W           R0, R1, #0x64 ; 'd'
170B2E:  ADDS            R2, #1
170B30:  BL              sub_174F42
170B34:  POP.W           {R7,LR}
170B38:  B.W             sub_16DE44
