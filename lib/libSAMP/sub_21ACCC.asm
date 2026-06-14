; =========================================================
; Game Engine Function: sub_21ACCC
; Address            : 0x21ACCC - 0x21AD08
; =========================================================

21ACCC:  PUSH            {R4-R7,LR}
21ACCE:  ADD             R7, SP, #0xC
21ACD0:  PUSH.W          {R11}
21ACD4:  MOV             R4, R1
21ACD6:  LDR             R1, =(aLambda - 0x21ACE0); "'lambda" ...
21ACD8:  LDR             R6, =(sub_216F98+1 - 0x21ACE6)
21ACDA:  MOV             R5, R0
21ACDC:  ADD             R1, PC; "'lambda"
21ACDE:  MOV             R0, R4
21ACE0:  ADDS            R2, R1, #7
21ACE2:  ADD             R6, PC; sub_216F98
21ACE4:  BLX             R6; sub_216F98
21ACE6:  LDRD.W          R1, R2, [R5,#0x18]
21ACEA:  MOV             R0, R4
21ACEC:  BLX             R6; sub_216F98
21ACEE:  LDR             R1, =(asc_88EDF - 0x21ACF6); "'" ...
21ACF0:  MOV             R0, R4
21ACF2:  ADD             R1, PC; "'"
21ACF4:  ADDS            R2, R1, #1
21ACF6:  BLX             R6; sub_216F98
21ACF8:  MOV             R0, R5
21ACFA:  MOV             R1, R4
21ACFC:  POP.W           {R11}
21AD00:  POP.W           {R4-R7,LR}
21AD04:  B.W             sub_21AD18
