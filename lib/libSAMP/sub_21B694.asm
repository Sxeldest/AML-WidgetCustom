; =========================================================
; Game Engine Function: sub_21B694
; Address            : 0x21B694 - 0x21B6BA
; =========================================================

21B694:  PUSH            {R4,R5,R7,LR}
21B696:  ADD             R7, SP, #8
21B698:  MOV             R5, R0
21B69A:  LDR             R0, [R0,#8]
21B69C:  MOV             R4, R1
21B69E:  BL              sub_2154CC
21B6A2:  LDR             R1, =(asc_8B736 - 0x21B6AA); "::" ...
21B6A4:  MOV             R0, R4
21B6A6:  ADD             R1, PC; "::"
21B6A8:  ADDS            R2, R1, #2
21B6AA:  BL              sub_216F98
21B6AE:  LDR             R0, [R5,#0xC]
21B6B0:  MOV             R1, R4
21B6B2:  POP.W           {R4,R5,R7,LR}
21B6B6:  B.W             sub_2154CC
