; =========================================================
; Game Engine Function: sub_216F6C
; Address            : 0x216F6C - 0x216F8A
; =========================================================

216F6C:  PUSH            {R4,R5,R7,LR}
216F6E:  ADD             R7, SP, #8
216F70:  MOV             R4, R1
216F72:  LDRD.W          R1, R2, [R0,#8]
216F76:  MOV             R5, R0
216F78:  MOV             R0, R4
216F7A:  BL              sub_216F98
216F7E:  LDR             R0, [R5,#0x10]
216F80:  MOV             R1, R4
216F82:  POP.W           {R4,R5,R7,LR}
216F86:  B.W             sub_2154CC
