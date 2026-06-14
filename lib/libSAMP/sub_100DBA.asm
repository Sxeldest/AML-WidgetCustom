; =========================================================
; Game Engine Function: sub_100DBA
; Address            : 0x100DBA - 0x100DE4
; =========================================================

100DBA:  PUSH            {R4,R6,R7,LR}
100DBC:  ADD             R7, SP, #8
100DBE:  MOV             R4, R0
100DC0:  MOVS            R0, #0
100DC2:  STRD.W          R0, R0, [R3]
100DC6:  STR             R1, [R3,#8]
100DC8:  STR             R3, [R2]
100DCA:  LDR             R0, [R4]
100DCC:  LDR             R0, [R0]
100DCE:  CBZ             R0, loc_100DD4
100DD0:  STR             R0, [R4]
100DD2:  LDR             R3, [R2]
100DD4:  LDR             R0, [R4,#4]
100DD6:  MOV             R1, R3
100DD8:  BL              sub_EA2D2
100DDC:  LDR             R0, [R4,#8]
100DDE:  ADDS            R0, #1
100DE0:  STR             R0, [R4,#8]
100DE2:  POP             {R4,R6,R7,PC}
