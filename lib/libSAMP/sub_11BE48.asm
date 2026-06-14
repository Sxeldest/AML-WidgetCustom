; =========================================================
; Game Engine Function: sub_11BE48
; Address            : 0x11BE48 - 0x11BE76
; =========================================================

11BE48:  PUSH            {R7,LR}
11BE4A:  MOV             R7, SP
11BE4C:  MOV             R12, R0
11BE4E:  LDR             R0, =(off_23494C - 0x11BE54)
11BE50:  ADD             R0, PC; off_23494C
11BE52:  LDR             R0, [R0]; dword_23DF24
11BE54:  LDR             R3, [R0]
11BE56:  MOVS            R0, #0
11BE58:  CBZ             R3, locret_11BE70
11BE5A:  MOV             R2, #0x674AF4
11BE62:  ADDS            R3, R3, R2
11BE64:  IT EQ
11BE66:  POPEQ           {R7,PC}
11BE68:  LDR             R3, [R3]
11BE6A:  CBZ             R3, loc_11BE72
11BE6C:  MOV             R0, R12
11BE6E:  BLX             R3
11BE70:  POP             {R7,PC}
11BE72:  MOVS            R0, #0
11BE74:  POP             {R7,PC}
