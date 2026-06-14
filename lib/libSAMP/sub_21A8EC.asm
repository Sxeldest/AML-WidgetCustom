; =========================================================
; Game Engine Function: sub_21A8EC
; Address            : 0x21A8EC - 0x21A90E
; =========================================================

21A8EC:  PUSH            {R4,R6,R7,LR}
21A8EE:  ADD             R7, SP, #8
21A8F0:  MOV             R4, R0
21A8F2:  LDR             R0, [R0]
21A8F4:  LDR             R1, [R4,#4]
21A8F6:  LDR.W           R2, [R0,#0x14C]
21A8FA:  ADD.W           R1, R2, R1,LSL#2
21A8FE:  STR.W           R1, [R0,#0x150]
21A902:  ADD.W           R0, R4, #8
21A906:  BL              sub_21558A
21A90A:  MOV             R0, R4
21A90C:  POP             {R4,R6,R7,PC}
