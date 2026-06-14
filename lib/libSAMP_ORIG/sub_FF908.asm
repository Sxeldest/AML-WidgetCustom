; =========================================================
; Game Engine Function: sub_FF908
; Address            : 0xFF908 - 0xFF928
; =========================================================

FF908:  PUSH            {R4,R5,R7,LR}
FF90A:  ADD             R7, SP, #8
FF90C:  MOV             R5, R1
FF90E:  LDRD.W          R1, R3, [R1,#8]
FF912:  MOV             R4, R2
FF914:  ADD.W           R2, R1, R2,LSL#2
FF918:  MOV             R1, R5
FF91A:  BL              sub_103E18
FF91E:  LDR             R0, [R5,#8]
FF920:  ADD.W           R0, R0, R4,LSL#2
FF924:  STR             R0, [R5,#0xC]
FF926:  POP             {R4,R5,R7,PC}
