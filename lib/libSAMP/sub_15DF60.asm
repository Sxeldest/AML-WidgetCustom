; =========================================================
; Game Engine Function: sub_15DF60
; Address            : 0x15DF60 - 0x15DF86
; =========================================================

15DF60:  PUSH            {R4,R6,R7,LR}
15DF62:  ADD             R7, SP, #8
15DF64:  SUB             SP, SP, #8
15DF66:  MOV             R4, R0
15DF68:  LDR             R0, [R0,#8]
15DF6A:  BL              sub_164BA8
15DF6E:  MOV             R2, R0
15DF70:  LDR             R0, [R4,#8]
15DF72:  MOVS            R3, #0
15DF74:  STR             R3, [SP,#0x10+var_10]
15DF76:  MOV             R3, R1
15DF78:  BL              sub_164C84
15DF7C:  CMP             R0, #0
15DF7E:  IT NE
15DF80:  MOVNE           R0, #1
15DF82:  ADD             SP, SP, #8
15DF84:  POP             {R4,R6,R7,PC}
