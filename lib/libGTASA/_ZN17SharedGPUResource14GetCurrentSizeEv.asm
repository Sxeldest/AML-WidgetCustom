; =========================================================
; Game Engine Function: _ZN17SharedGPUResource14GetCurrentSizeEv
; Address            : 0x1BCC72 - 0x1BCCA0
; =========================================================

1BCC72:  LDR             R1, [R0,#0x10]
1BCC74:  CBZ             R1, loc_1BCC98
1BCC76:  MOVS            R2, #0
1BCC78:  MOVS            R0, #0
1BCC7A:  LDR             R3, [R1,#8]
1BCC7C:  LDR.W           R12, [R1,#0x14]
1BCC80:  ADD             R2, R3
1BCC82:  LDR             R1, [R1,#0x28]
1BCC84:  ADD.W           R3, R12, #0xF
1BCC88:  BIC.W           R3, R3, #0xF
1BCC8C:  CMP             R1, #0
1BCC8E:  ADD             R0, R3
1BCC90:  BNE             loc_1BCC7A
1BCC92:  LSLS            R1, R2, #1
1BCC94:  ADD             R0, R1
1BCC96:  BX              LR
1BCC98:  MOVS            R0, #0
1BCC9A:  MOVS            R1, #0
1BCC9C:  ADD             R0, R1
1BCC9E:  BX              LR
