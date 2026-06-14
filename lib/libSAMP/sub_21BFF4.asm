; =========================================================
; Game Engine Function: sub_21BFF4
; Address            : 0x21BFF4 - 0x21C016
; =========================================================

21BFF4:  PUSH            {R4,R5,R7,LR}
21BFF6:  ADD             R7, SP, #8
21BFF8:  MOV             R4, R1
21BFFA:  LDR             R1, =(asc_8F738 - 0x21C004); "~" ...
21BFFC:  MOV             R5, R0
21BFFE:  MOV             R0, R4
21C000:  ADD             R1, PC; "~"
21C002:  ADDS            R2, R1, #1
21C004:  BL              sub_216F98
21C008:  LDR             R0, [R5,#8]
21C00A:  LDR             R1, [R0]
21C00C:  LDR             R2, [R1,#0x10]
21C00E:  MOV             R1, R4
21C010:  POP.W           {R4,R5,R7,LR}
21C014:  BX              R2
