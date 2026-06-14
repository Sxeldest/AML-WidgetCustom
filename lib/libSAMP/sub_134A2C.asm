; =========================================================
; Game Engine Function: sub_134A2C
; Address            : 0x134A2C - 0x134A60
; =========================================================

134A2C:  PUSH            {R4,R6,R7,LR}
134A2E:  ADD             R7, SP, #8
134A30:  LDR             R4, [R0,#4]
134A32:  LDRB.W          R0, [R4,#0x50]
134A36:  CBZ             R0, loc_134A42
134A38:  LDR             R0, [R4]
134A3A:  MOVS            R1, #0
134A3C:  LDR             R2, [R0,#0x24]
134A3E:  MOV             R0, R4
134A40:  BLX             R2
134A42:  LDR             R0, =(off_23496C - 0x134A4E)
134A44:  MOVS            R1, #0
134A46:  STRB.W          R1, [R4,#0x50]
134A4A:  ADD             R0, PC; off_23496C
134A4C:  LDR             R0, [R0]; dword_23DEF4
134A4E:  LDR             R0, [R0]
134A50:  CBZ             R0, locret_134A5E
134A52:  LDR             R1, =(aStats - 0x134A58); "/stats" ...
134A54:  ADD             R1, PC; "/stats"
134A56:  POP.W           {R4,R6,R7,LR}
134A5A:  B.W             sub_144460
134A5E:  POP             {R4,R6,R7,PC}
