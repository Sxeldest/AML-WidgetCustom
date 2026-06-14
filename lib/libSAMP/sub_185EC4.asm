; =========================================================
; Game Engine Function: sub_185EC4
; Address            : 0x185EC4 - 0x185F02
; =========================================================

185EC4:  PUSH            {R4,R6,R7,LR}
185EC6:  ADD             R7, SP, #8
185EC8:  MOV.W           R12, #0
185ECC:  MOVS            R2, #0
185ECE:  LDR.W           LR, [R0,R2,LSL#2]
185ED2:  LDR.W           R3, [R1,R2,LSL#2]
185ED6:  ADD.W           R4, LR, R12
185EDA:  ADD             R4, R3
185EDC:  STR.W           R4, [R0,R2,LSL#2]
185EE0:  BIC.W           R4, LR, #0x80000000
185EE4:  ADD             R12, R4
185EE6:  BIC.W           R4, R3, #0x80000000
185EEA:  LSRS            R3, R3, #0x1F
185EEC:  ADD             R4, R12
185EEE:  ADD.W           R3, R3, LR,LSR#31
185EF2:  ADDS            R2, #1
185EF4:  ADD.W           R3, R3, R4,LSR#31
185EF8:  CMP             R2, #0x10
185EFA:  MOV.W           R12, R3,LSR#1
185EFE:  BNE             loc_185ECE
185F00:  POP             {R4,R6,R7,PC}
