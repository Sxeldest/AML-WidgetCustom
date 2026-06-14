; =========================================================
; Game Engine Function: sub_21D500
; Address            : 0x21D500 - 0x21D52E
; =========================================================

21D500:  PUSH            {R4,R5,R7,LR}
21D502:  ADD             R7, SP, #8
21D504:  MOV             R4, R1
21D506:  LDR             R1, =(aPixelVector - 0x21D510); "pixel vector[" ...
21D508:  MOV             R5, R0
21D50A:  MOV             R0, R4
21D50C:  ADD             R1, PC; "pixel vector["
21D50E:  ADD.W           R2, R1, #0xD
21D512:  BL              sub_216F98
21D516:  LDR             R0, [R5,#8]
21D518:  MOV             R1, R4
21D51A:  BL              sub_2154CC
21D51E:  LDR             R1, =(unk_8919A - 0x21D526)
21D520:  MOV             R0, R4
21D522:  ADD             R1, PC; unk_8919A
21D524:  ADDS            R2, R1, #1
21D526:  POP.W           {R4,R5,R7,LR}
21D52A:  B.W             sub_216F98
