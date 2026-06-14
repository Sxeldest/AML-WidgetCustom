; =========================================================
; Game Engine Function: sub_185136
; Address            : 0x185136 - 0x185174
; =========================================================

185136:  PUSH            {R4,R6,R7,LR}
185138:  ADD             R7, SP, #8
18513A:  MOV.W           R12, #0
18513E:  MOVS            R2, #0
185140:  LDR.W           LR, [R0,R2,LSL#2]
185144:  LDR.W           R3, [R1,R2,LSL#2]
185148:  ADD.W           R4, LR, R12
18514C:  ADD             R4, R3
18514E:  STR.W           R4, [R0,R2,LSL#2]
185152:  BIC.W           R4, LR, #0x80000000
185156:  ADD             R12, R4
185158:  BIC.W           R4, R3, #0x80000000
18515C:  LSRS            R3, R3, #0x1F
18515E:  ADD             R4, R12
185160:  ADD.W           R3, R3, LR,LSR#31
185164:  ADDS            R2, #1
185166:  ADD.W           R3, R3, R4,LSR#31
18516A:  CMP             R2, #8
18516C:  MOV.W           R12, R3,LSR#1
185170:  BNE             loc_185140
185172:  POP             {R4,R6,R7,PC}
