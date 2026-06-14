; =========================================================
; Game Engine Function: sub_103874
; Address            : 0x103874 - 0x1038B0
; =========================================================

103874:  PUSH            {R4-R7,LR}
103876:  ADD             R7, SP, #0xC
103878:  PUSH.W          {R11}
10387C:  MOV             R4, R1
10387E:  LDR             R1, =(aLambda - 0x103888); "'lambda" ...
103880:  LDR             R6, =(sub_FFB40+1 - 0x10388E)
103882:  MOV             R5, R0
103884:  ADD             R1, PC; "'lambda"
103886:  MOV             R0, R4
103888:  ADDS            R2, R1, #7
10388A:  ADD             R6, PC; sub_FFB40
10388C:  BLX             R6; sub_FFB40
10388E:  LDRD.W          R1, R2, [R5,#0x18]
103892:  MOV             R0, R4
103894:  BLX             R6; sub_FFB40
103896:  LDR             R1, =(asc_4D70B - 0x10389E); "'" ...
103898:  MOV             R0, R4
10389A:  ADD             R1, PC; "'"
10389C:  ADDS            R2, R1, #1
10389E:  BLX             R6; sub_FFB40
1038A0:  MOV             R0, R5
1038A2:  MOV             R1, R4
1038A4:  POP.W           {R11}
1038A8:  POP.W           {R4-R7,LR}
1038AC:  B.W             sub_1038C0
