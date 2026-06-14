; =========================================================
; Game Engine Function: sub_105228
; Address            : 0x105228 - 0x105256
; =========================================================

105228:  PUSH            {R4,R5,R7,LR}
10522A:  ADD             R7, SP, #8
10522C:  MOV             R4, R1
10522E:  LDR             R1, =(aUuidof - 0x105238); "__uuidof(" ...
105230:  MOV             R5, R0
105232:  MOV             R0, R4
105234:  ADD             R1, PC; "__uuidof("
105236:  ADD.W           R2, R1, #9
10523A:  BL              sub_FFB40
10523E:  LDR             R0, [R5,#8]
105240:  MOV             R1, R4
105242:  BL              sub_FE074
105246:  LDR             R1, =(asc_50037 - 0x10524E); ")" ...
105248:  MOV             R0, R4
10524A:  ADD             R1, PC; ")"
10524C:  ADDS            R2, R1, #1
10524E:  POP.W           {R4,R5,R7,LR}
105252:  B.W             sub_FFB40
