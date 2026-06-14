; =========================================================
; Game Engine Function: sub_185F02
; Address            : 0x185F02 - 0x185F4A
; =========================================================

185F02:  PUSH            {R4,R5,R7,LR}
185F04:  ADD             R7, SP, #8
185F06:  MOV.W           R12, #0
185F0A:  MOV.W           LR, #0
185F0E:  MOVS            R3, #0
185F10:  LDR.W           R2, [R0,R3,LSL#2]
185F14:  LDR.W           R4, [R1,R3,LSL#2]
185F18:  ADD.W           R5, R2, LR
185F1C:  SUBS            R5, R5, R4
185F1E:  STR.W           R5, [R0,R3,LSL#2]
185F22:  BIC.W           R5, R2, #0x80000000
185F26:  ADD             LR, R5
185F28:  BIC.W           R5, R4, #0x80000000
185F2C:  ASRS            R2, R2, #0x1F
185F2E:  SUB.W           R5, LR, R5
185F32:  ADD.W           R2, R2, R4,LSR#31
185F36:  ADDS            R3, #1
185F38:  ADD.W           R2, R2, R5,LSR#31
185F3C:  CMP             R3, #0x10
185F3E:  ADD.W           R2, R2, #1
185F42:  SUB.W           LR, R12, R2,LSR#1
185F46:  BNE             loc_185F10
185F48:  POP             {R4,R5,R7,PC}
