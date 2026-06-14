; =========================================================
; Game Engine Function: sub_100E6E
; Address            : 0x100E6E - 0x100E98
; =========================================================

100E6E:  PUSH            {R4,R6,R7,LR}
100E70:  ADD             R7, SP, #8
100E72:  MOV             R4, R0
100E74:  MOVS            R0, #0
100E76:  STRD.W          R0, R0, [R3]
100E7A:  STR             R1, [R3,#8]
100E7C:  STR             R3, [R2]
100E7E:  LDR             R0, [R4]
100E80:  LDR             R0, [R0]
100E82:  CBZ             R0, loc_100E88
100E84:  STR             R0, [R4]
100E86:  LDR             R3, [R2]
100E88:  LDR             R0, [R4,#4]
100E8A:  MOV             R1, R3
100E8C:  BL              sub_EA2D2
100E90:  LDR             R0, [R4,#8]
100E92:  ADDS            R0, #1
100E94:  STR             R0, [R4,#8]
100E96:  POP             {R4,R6,R7,PC}
