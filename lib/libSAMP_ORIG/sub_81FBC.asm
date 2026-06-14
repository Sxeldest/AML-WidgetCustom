; =========================================================
; Game Engine Function: sub_81FBC
; Address            : 0x81FBC - 0x81FCC
; =========================================================

81FBC:  PUSH            {R4,R6,R7,LR}
81FBE:  ADD             R7, SP, #8
81FC0:  LDR             R1, [R0,#4]
81FC2:  MOV             R4, R0
81FC4:  BL              sub_821E0
81FC8:  MOV             R0, R4
81FCA:  POP             {R4,R6,R7,PC}
