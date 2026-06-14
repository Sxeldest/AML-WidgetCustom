; =========================================================
; Game Engine Function: sub_13498C
; Address            : 0x13498C - 0x1349C0
; =========================================================

13498C:  PUSH            {R4,R6,R7,LR}
13498E:  ADD             R7, SP, #8
134990:  LDR             R4, [R0,#4]
134992:  LDRB.W          R0, [R4,#0x50]
134996:  CBZ             R0, loc_1349A2
134998:  LDR             R0, [R4]
13499A:  MOVS            R1, #0
13499C:  LDR             R2, [R0,#0x24]
13499E:  MOV             R0, R4
1349A0:  BLX             R2
1349A2:  LDR             R0, =(off_23496C - 0x1349AE)
1349A4:  MOVS            R1, #0
1349A6:  STRB.W          R1, [R4,#0x50]
1349AA:  ADD             R0, PC; off_23496C
1349AC:  LDR             R0, [R0]; dword_23DEF4
1349AE:  LDR             R0, [R0]
1349B0:  CBZ             R0, locret_1349BE
1349B2:  LDR             R1, =(aQuest - 0x1349B8); "/quest" ...
1349B4:  ADD             R1, PC; "/quest"
1349B6:  POP.W           {R4,R6,R7,LR}
1349BA:  B.W             sub_144460
1349BE:  POP             {R4,R6,R7,PC}
