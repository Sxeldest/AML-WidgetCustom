; =========================================================
; Game Engine Function: sub_163A28
; Address            : 0x163A28 - 0x163A62
; =========================================================

163A28:  B.W             loc_163A2C
163A2C:  PUSH            {R7,LR}
163A2E:  MOV             R7, SP
163A30:  MOV             R12, R0
163A32:  LDR             R0, =(off_23494C - 0x163A38)
163A34:  ADD             R0, PC; off_23494C
163A36:  LDR             R0, [R0]; dword_23DF24
163A38:  LDR.W           LR, [R0]
163A3C:  MOVS            R0, #0
163A3E:  CMP.W           LR, #0
163A42:  ITTT NE
163A44:  MOVWNE          R3, #0x3B24
163A48:  MOVTNE          R3, #0x67 ; 'g'
163A4C:  ADDSNE.W        R3, R3, LR
163A50:  BNE             loc_163A54
163A52:  POP             {R7,PC}
163A54:  LDR             R3, [R3]
163A56:  CBZ             R3, loc_163A5E
163A58:  MOV             R0, R12
163A5A:  BLX             R3
163A5C:  B               locret_163A52
163A5E:  MOVS            R0, #0
163A60:  POP             {R7,PC}
