; =========================================================
; Game Engine Function: sub_128A92
; Address            : 0x128A92 - 0x128AAA
; =========================================================

128A92:  LDR             R2, [R0,#0xC]
128A94:  LDRD.W          R3, R12, [R0,#4]
128A98:  LDR             R1, [R1]
128A9A:  ADD.W           R0, R3, R2,ASR#1
128A9E:  LSLS            R2, R2, #0x1F
128AA0:  ITT NE
128AA2:  LDRNE           R2, [R0]
128AA4:  LDRNE.W         R12, [R2,R12]
128AA8:  BX              R12
