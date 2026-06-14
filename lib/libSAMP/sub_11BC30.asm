; =========================================================
; Game Engine Function: sub_11BC30
; Address            : 0x11BC30 - 0x11BC5E
; =========================================================

11BC30:  PUSH            {R7,LR}
11BC32:  MOV             R7, SP
11BC34:  MOV             R1, R0
11BC36:  LDR             R0, =(off_23494C - 0x11BC3C)
11BC38:  ADD             R0, PC; off_23494C
11BC3A:  LDR             R0, [R0]; dword_23DF24
11BC3C:  LDR             R2, [R0]
11BC3E:  MOVS            R0, #0
11BC40:  CBZ             R2, locret_11BC58
11BC42:  MOVW            R3, #0xF974
11BC46:  MOVT            R3, #0x66 ; 'f'
11BC4A:  ADDS            R2, R2, R3
11BC4C:  IT EQ
11BC4E:  POPEQ           {R7,PC}
11BC50:  LDR             R2, [R2]
11BC52:  CBZ             R2, loc_11BC5A
11BC54:  MOV             R0, R1
11BC56:  BLX             R2
11BC58:  POP             {R7,PC}
11BC5A:  MOVS            R0, #0
11BC5C:  POP             {R7,PC}
