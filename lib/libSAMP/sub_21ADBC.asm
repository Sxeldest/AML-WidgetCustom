; =========================================================
; Game Engine Function: sub_21ADBC
; Address            : 0x21ADBC - 0x21ADFA
; =========================================================

21ADBC:  PUSH            {R4-R7,LR}
21ADBE:  ADD             R7, SP, #0xC
21ADC0:  PUSH.W          {R11}
21ADC4:  MOV             R4, R1
21ADC6:  LDR             R1, =(aQjk+6 - 0x21ADD0); "(" ...
21ADC8:  LDR             R6, =(sub_216F98+1 - 0x21ADD6)
21ADCA:  MOV             R5, R0
21ADCC:  ADD             R1, PC; "("
21ADCE:  MOV             R0, R4
21ADD0:  ADDS            R2, R1, #1
21ADD2:  ADD             R6, PC; sub_216F98
21ADD4:  BLX             R6; sub_216F98
21ADD6:  LDR             R0, [R5,#8]
21ADD8:  MOV             R1, R4
21ADDA:  BL              sub_2154CC
21ADDE:  LDR             R1, =(unk_901C1 - 0x21ADE6)
21ADE0:  MOV             R0, R4
21ADE2:  ADD             R1, PC; unk_901C1
21ADE4:  ADDS            R2, R1, #1
21ADE6:  BLX             R6; sub_216F98
21ADE8:  LDRD.W          R1, R2, [R5,#0xC]
21ADEC:  MOV             R0, R4
21ADEE:  MOV             R3, R6
21ADF0:  POP.W           {R11}
21ADF4:  POP.W           {R4-R7,LR}
21ADF8:  BX              R3; sub_216F98
