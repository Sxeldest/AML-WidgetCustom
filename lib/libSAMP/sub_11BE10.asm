; =========================================================
; Game Engine Function: sub_11BE10
; Address            : 0x11BE10 - 0x11BE3E
; =========================================================

11BE10:  PUSH            {R7,LR}
11BE12:  MOV             R7, SP
11BE14:  MOV             R1, R0
11BE16:  LDR             R0, =(off_23494C - 0x11BE1C)
11BE18:  ADD             R0, PC; off_23494C
11BE1A:  LDR             R0, [R0]; dword_23DF24
11BE1C:  LDR             R2, [R0]
11BE1E:  MOVS            R0, #0
11BE20:  CBZ             R2, locret_11BE38
11BE22:  MOV             R3, #0x66EC88
11BE2A:  ADDS            R2, R2, R3
11BE2C:  IT EQ
11BE2E:  POPEQ           {R7,PC}
11BE30:  LDR             R2, [R2]
11BE32:  CBZ             R2, loc_11BE3A
11BE34:  MOV             R0, R1
11BE36:  BLX             R2
11BE38:  POP             {R7,PC}
11BE3A:  MOVS            R0, #0
11BE3C:  POP             {R7,PC}
