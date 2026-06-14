; =========================================================
; Game Engine Function: sub_21D6A4
; Address            : 0x21D6A4 - 0x21D6CA
; =========================================================

21D6A4:  PUSH            {R4,R5,R7,LR}
21D6A6:  ADD             R7, SP, #8
21D6A8:  MOV             R4, R1
21D6AA:  LDRD.W          R1, R2, [R0,#8]
21D6AE:  MOV             R5, R0
21D6B0:  MOV             R0, R4
21D6B2:  BL              sub_216F98
21D6B6:  MOV             R0, R4
21D6B8:  MOVS            R1, #0x20 ; ' '
21D6BA:  BL              sub_2154F2
21D6BE:  LDR             R0, [R5,#0x10]
21D6C0:  MOV             R1, R4
21D6C2:  POP.W           {R4,R5,R7,LR}
21D6C6:  B.W             sub_2154CC
