; =========================================================
; Game Engine Function: sub_21D240
; Address            : 0x21D240 - 0x21D26E
; =========================================================

21D240:  PUSH            {R4,R5,R7,LR}
21D242:  ADD             R7, SP, #8
21D244:  MOV             R4, R1
21D246:  LDR             R1, =(aNoexcept_1 - 0x21D250); "noexcept(" ...
21D248:  MOV             R5, R0
21D24A:  MOV             R0, R4
21D24C:  ADD             R1, PC; "noexcept("
21D24E:  ADD.W           R2, R1, #9
21D252:  BL              sub_216F98
21D256:  LDR             R0, [R5,#8]
21D258:  MOV             R1, R4
21D25A:  BL              sub_2154CC
21D25E:  LDR             R1, =(unk_901C1 - 0x21D266)
21D260:  MOV             R0, R4
21D262:  ADD             R1, PC; unk_901C1
21D264:  ADDS            R2, R1, #1
21D266:  POP.W           {R4,R5,R7,LR}
21D26A:  B.W             sub_216F98
