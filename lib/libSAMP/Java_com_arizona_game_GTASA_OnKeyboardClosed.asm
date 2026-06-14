; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_OnKeyboardClosed
; Address            : 0x17CD88 - 0x17CDB8
; =========================================================

17CD88:  PUSH            {R4,R5,R7,LR}
17CD8A:  ADD             R7, SP, #8
17CD8C:  LDR             R0, =(off_234A24 - 0x17CD92)
17CD8E:  ADD             R0, PC; off_234A24
17CD90:  LDR             R4, [R0]; dword_23DEEC
17CD92:  LDR             R0, [R4]
17CD94:  CBZ             R0, locret_17CDB6
17CD96:  LDR             R0, =(off_234A58 - 0x17CD9C)
17CD98:  ADD             R0, PC; off_234A58
17CD9A:  LDR             R5, [R0]; dword_2631B0
17CD9C:  LDR             R0, [R5]
17CD9E:  BL              sub_10BDC0
17CDA2:  CBZ             R0, loc_17CDAC
17CDA4:  LDR             R0, [R5]
17CDA6:  MOVS            R1, #0
17CDA8:  BL              sub_10BDA0
17CDAC:  LDR             R0, [R4]
17CDAE:  MOVS            R1, #0
17CDB0:  LDR             R0, [R0,#0x58]
17CDB2:  STRB.W          R1, [R0,#0x90]
17CDB6:  POP             {R4,R5,R7,PC}
