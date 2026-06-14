; =========================================================
; Game Engine Function: sub_105100
; Address            : 0x105100 - 0x10515E
; =========================================================

105100:  PUSH            {R4-R7,LR}
105102:  ADD             R7, SP, #0xC
105104:  PUSH.W          {R8}
105108:  MOV             R4, R1
10510A:  LDR             R1, =(asc_4F675 - 0x105114); "(" ...
10510C:  LDR             R5, =(sub_FFB40+1 - 0x10511A)
10510E:  MOV             R8, R0
105110:  ADD             R1, PC; "("
105112:  MOV             R0, R4
105114:  ADDS            R2, R1, #1
105116:  ADD             R5, PC; sub_FFB40
105118:  BLX             R5; sub_FFB40
10511A:  LDR.W           R0, [R8,#8]
10511E:  MOV             R1, R4
105120:  LDR             R6, =(sub_FE074+1 - 0x105126)
105122:  ADD             R6, PC; sub_FE074
105124:  BLX             R6; sub_FE074
105126:  LDR             R1, =(asc_4B480 - 0x10512E); ") ? (" ...
105128:  MOV             R0, R4
10512A:  ADD             R1, PC; ") ? ("
10512C:  ADDS            R2, R1, #5
10512E:  BLX             R5; sub_FFB40
105130:  LDR.W           R0, [R8,#0xC]
105134:  MOV             R1, R4
105136:  BLX             R6; sub_FE074
105138:  LDR             R1, =(asc_4CC2C - 0x105140); ") : (" ...
10513A:  MOV             R0, R4
10513C:  ADD             R1, PC; ") : ("
10513E:  ADDS            R2, R1, #5
105140:  BLX             R5; sub_FFB40
105142:  LDR.W           R0, [R8,#0x10]
105146:  MOV             R1, R4
105148:  BLX             R6; sub_FE074
10514A:  LDR             R1, =(asc_50037 - 0x105154); ")" ...
10514C:  MOV             R0, R4
10514E:  MOV             R3, R5
105150:  ADD             R1, PC; ")"
105152:  ADDS            R2, R1, #1
105154:  POP.W           {R8}
105158:  POP.W           {R4-R7,LR}
10515C:  BX              R3; sub_FFB40
