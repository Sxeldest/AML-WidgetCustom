; =========================================================
; Game Engine Function: sub_216D60
; Address            : 0x216D60 - 0x216D80
; =========================================================

216D60:  PUSH            {R4,R5,R7,LR}
216D62:  ADD             R7, SP, #8
216D64:  MOV             R5, R1
216D66:  LDRD.W          R1, R3, [R1,#8]
216D6A:  MOV             R4, R2
216D6C:  ADD.W           R2, R1, R2,LSL#2
216D70:  MOV             R1, R5
216D72:  BL              sub_21B270
216D76:  LDR             R0, [R5,#8]
216D78:  ADD.W           R0, R0, R4,LSL#2
216D7C:  STR             R0, [R5,#0xC]
216D7E:  POP             {R4,R5,R7,PC}
