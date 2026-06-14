; =========================================================
; Game Engine Function: sub_11BD68
; Address            : 0x11BD68 - 0x11BD96
; =========================================================

11BD68:  PUSH            {R7,LR}
11BD6A:  MOV             R7, SP
11BD6C:  MOV             R12, R0
11BD6E:  LDR             R0, =(off_23494C - 0x11BD74)
11BD70:  ADD             R0, PC; off_23494C
11BD72:  LDR             R0, [R0]; dword_23DF24
11BD74:  LDR             R3, [R0]
11BD76:  MOVS            R0, #0
11BD78:  CBZ             R3, locret_11BD90
11BD7A:  MOV             R2, #0x67208C
11BD82:  ADDS            R3, R3, R2
11BD84:  IT EQ
11BD86:  POPEQ           {R7,PC}
11BD88:  LDR             R3, [R3]
11BD8A:  CBZ             R3, loc_11BD92
11BD8C:  MOV             R0, R12
11BD8E:  BLX             R3
11BD90:  POP             {R7,PC}
11BD92:  MOVS            R0, #0
11BD94:  POP             {R7,PC}
