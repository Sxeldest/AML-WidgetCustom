; =========================================================
; Game Engine Function: sub_18DE00
; Address            : 0x18DE00 - 0x18DE38
; =========================================================

18DE00:  PUSH            {R4,R5,R7,LR}
18DE02:  ADD             R7, SP, #8
18DE04:  SUBS            R3, R1, #1
18DE06:  CMP             R3, #2
18DE08:  BHI             loc_18DE1E
18DE0A:  STRB            R1, [R0]
18DE0C:  CBZ             R2, loc_18DE24
18DE0E:  ADDS            R0, #1
18DE10:  MOVS            R1, #0
18DE12:  LDRB            R3, [R2,R1]
18DE14:  STRB            R3, [R0,R1]
18DE16:  ADDS            R1, #1
18DE18:  CMP             R1, #0x10
18DE1A:  BNE             loc_18DE12
18DE1C:  B               loc_18DE34
18DE1E:  MOV             R0, #0xFFFFFFFC
18DE22:  POP             {R4,R5,R7,PC}
18DE24:  ADDS            R4, R0, #1
18DE26:  MOVS            R5, #0
18DE28:  BL              sub_187150
18DE2C:  STRB            R0, [R4,R5]
18DE2E:  ADDS            R5, #1
18DE30:  CMP             R5, #0x10
18DE32:  BNE             loc_18DE28
18DE34:  MOVS            R0, #1
18DE36:  POP             {R4,R5,R7,PC}
