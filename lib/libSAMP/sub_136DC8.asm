; =========================================================
; Game Engine Function: sub_136DC8
; Address            : 0x136DC8 - 0x136E12
; =========================================================

136DC8:  PUSH            {R4,R6,R7,LR}
136DCA:  ADD             R7, SP, #8
136DCC:  LDR             R1, [R0,#0x54]
136DCE:  MOV             R4, R0
136DD0:  CBZ             R1, loc_136DD8
136DD2:  MOV             R0, R4
136DD4:  BL              sub_12BE22
136DD8:  LDR             R1, [R4,#0x58]
136DDA:  CBZ             R1, loc_136DE2
136DDC:  MOV             R0, R4
136DDE:  BL              sub_12BE22
136DE2:  LDR             R1, [R4,#0x5C]
136DE4:  CBZ             R1, loc_136DEC
136DE6:  MOV             R0, R4
136DE8:  BL              sub_12BE22
136DEC:  LDR             R0, =(off_234970 - 0x136DF8)
136DEE:  MOVS            R2, #1
136DF0:  LDRB.W          R1, [R4,#0x50]
136DF4:  ADD             R0, PC; off_234970
136DF6:  LDR             R0, [R0]; dword_23DEF0
136DF8:  LDR             R0, [R0]
136DFA:  STRB.W          R2, [R0,#0x54]
136DFE:  CBZ             R1, loc_136E0A
136E00:  LDR             R0, [R4]
136E02:  MOVS            R1, #0
136E04:  LDR             R2, [R0,#0x24]
136E06:  MOV             R0, R4
136E08:  BLX             R2
136E0A:  MOVS            R0, #0
136E0C:  STRB.W          R0, [R4,#0x50]
136E10:  POP             {R4,R6,R7,PC}
