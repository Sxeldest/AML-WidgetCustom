; =========================================================
; Game Engine Function: sub_138CA8
; Address            : 0x138CA8 - 0x138CD2
; =========================================================

138CA8:  PUSH            {R4,R6,R7,LR}
138CAA:  ADD             R7, SP, #8
138CAC:  MOV             R4, R0
138CAE:  MOVS            R0, #0
138CB0:  STRD.W          R0, R0, [R3]
138CB4:  STR             R1, [R3,#8]
138CB6:  STR             R3, [R2]
138CB8:  LDR             R0, [R4]
138CBA:  LDR             R0, [R0]
138CBC:  CBZ             R0, loc_138CC2
138CBE:  STR             R0, [R4]
138CC0:  LDR             R3, [R2]
138CC2:  LDR             R0, [R4,#4]
138CC4:  MOV             R1, R3
138CC6:  BL              sub_EA2D2
138CCA:  LDR             R0, [R4,#8]
138CCC:  ADDS            R0, #1
138CCE:  STR             R0, [R4,#8]
138CD0:  POP             {R4,R6,R7,PC}
