; =========================================================
; Game Engine Function: sub_163F1C
; Address            : 0x163F1C - 0x163F4A
; =========================================================

163F1C:  B.W             loc_163F20
163F20:  PUSH            {R7,LR}
163F22:  MOV             R7, SP
163F24:  LDR             R0, =(off_23494C - 0x163F2A)
163F26:  ADD             R0, PC; off_23494C
163F28:  LDR             R0, [R0]; dword_23DF24
163F2A:  LDR             R1, [R0]
163F2C:  MOVS            R0, #0
163F2E:  CBZ             R1, locret_163F44
163F30:  MOV             R2, #0x671F30
163F38:  ADDS            R1, R1, R2
163F3A:  IT EQ
163F3C:  POPEQ           {R7,PC}
163F3E:  LDR             R0, [R1]
163F40:  CBZ             R0, loc_163F46
163F42:  BLX             R0
163F44:  POP             {R7,PC}
163F46:  MOVS            R0, #0
163F48:  POP             {R7,PC}
