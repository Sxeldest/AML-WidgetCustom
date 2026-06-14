; =========================================================
; Game Engine Function: sub_21AD7C
; Address            : 0x21AD7C - 0x21ADAE
; =========================================================

21AD7C:  PUSH            {R4,R5,R7,LR}
21AD7E:  ADD             R7, SP, #8
21AD80:  MOV             R4, R1
21AD82:  LDR             R1, =(asc_91028 - 0x21AD8C); "[]" ...
21AD84:  MOV             R5, R0
21AD86:  MOV             R0, R4
21AD88:  ADD             R1, PC; "[]"
21AD8A:  ADDS            R2, R1, #2
21AD8C:  BL              sub_216F98
21AD90:  LDR             R0, [R5,#8]
21AD92:  LDRB            R1, [R0,#4]
21AD94:  CMP             R1, #0x2D ; '-'
21AD96:  ITT EQ
21AD98:  MOVEQ           R1, R4
21AD9A:  BLEQ            sub_21AD18
21AD9E:  LDR             R1, =(asc_8363B - 0x21ADA6); "{...}" ...
21ADA0:  MOV             R0, R4
21ADA2:  ADD             R1, PC; "{...}"
21ADA4:  ADDS            R2, R1, #5
21ADA6:  POP.W           {R4,R5,R7,LR}
21ADAA:  B.W             sub_216F98
