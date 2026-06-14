; =========================================================
; Game Engine Function: sub_21D668
; Address            : 0x21D668 - 0x21D69C
; =========================================================

21D668:  PUSH            {R4,R5,R7,LR}
21D66A:  ADD             R7, SP, #8
21D66C:  MOV             R5, R0
21D66E:  LDR             R0, [R0,#0xC]
21D670:  MOV             R4, R1
21D672:  BL              sub_217AF6
21D676:  CBNZ            R0, loc_21D682
21D678:  LDR             R0, [R5,#0xC]
21D67A:  MOV             R1, R4
21D67C:  BL              sub_217B0A
21D680:  CBZ             R0, loc_21D68E
21D682:  LDR             R1, =(unk_901C1 - 0x21D68A)
21D684:  MOV             R0, R4
21D686:  ADD             R1, PC; unk_901C1
21D688:  ADDS            R2, R1, #1
21D68A:  BL              sub_216F98
21D68E:  LDR             R0, [R5,#0xC]
21D690:  LDR             R1, [R0]
21D692:  LDR             R2, [R1,#0x14]
21D694:  MOV             R1, R4
21D696:  POP.W           {R4,R5,R7,LR}
21D69A:  BX              R2
