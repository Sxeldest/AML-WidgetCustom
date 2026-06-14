; =========================================================
; Game Engine Function: sub_21AD18
; Address            : 0x21AD18 - 0x21AD6C
; =========================================================

21AD18:  PUSH            {R4,R5,R7,LR}
21AD1A:  ADD             R7, SP, #8
21AD1C:  MOV             R5, R0
21AD1E:  LDR             R0, [R0,#0xC]
21AD20:  MOV             R4, R1
21AD22:  CBZ             R0, loc_21AD46
21AD24:  LDR             R1, =(unk_82C59 - 0x21AD2C)
21AD26:  MOV             R0, R4
21AD28:  ADD             R1, PC; unk_82C59
21AD2A:  ADDS            R2, R1, #1
21AD2C:  BL              sub_216F98
21AD30:  ADD.W           R0, R5, #8
21AD34:  MOV             R1, R4
21AD36:  BL              sub_21AC38
21AD3A:  LDR             R1, =(aW7+6 - 0x21AD42); ">" ...
21AD3C:  MOV             R0, R4
21AD3E:  ADD             R1, PC; ">"
21AD40:  ADDS            R2, R1, #1
21AD42:  BL              sub_216F98
21AD46:  LDR             R1, =(aQjk+6 - 0x21AD4E); "(" ...
21AD48:  MOV             R0, R4
21AD4A:  ADD             R1, PC; "("
21AD4C:  ADDS            R2, R1, #1
21AD4E:  BL              sub_216F98
21AD52:  ADD.W           R0, R5, #0x10
21AD56:  MOV             R1, R4
21AD58:  BL              sub_21AC38
21AD5C:  LDR             R1, =(unk_901C1 - 0x21AD64)
21AD5E:  MOV             R0, R4
21AD60:  ADD             R1, PC; unk_901C1
21AD62:  ADDS            R2, R1, #1
21AD64:  POP.W           {R4,R5,R7,LR}
21AD68:  B.W             sub_216F98
