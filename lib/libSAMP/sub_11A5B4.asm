; =========================================================
; Game Engine Function: sub_11A5B4
; Address            : 0x11A5B4 - 0x11A5E0
; =========================================================

11A5B4:  PUSH            {R7,LR}
11A5B6:  MOV             R7, SP
11A5B8:  MOV             R2, R0
11A5BA:  LDR             R0, =(off_23494C - 0x11A5C0)
11A5BC:  ADD             R0, PC; off_23494C
11A5BE:  LDR             R0, [R0]; dword_23DF24
11A5C0:  LDR             R3, [R0]
11A5C2:  MOVS            R0, #0
11A5C4:  CBZ             R3, locret_11A5DA
11A5C6:  ADD.W           R3, R3, #0x670000
11A5CA:  ADDS.W          R3, R3, #0x790
11A5CE:  IT EQ
11A5D0:  POPEQ           {R7,PC}
11A5D2:  LDR             R3, [R3]
11A5D4:  CBZ             R3, loc_11A5DC
11A5D6:  MOV             R0, R2
11A5D8:  BLX             R3
11A5DA:  POP             {R7,PC}
11A5DC:  MOVS            R0, #0
11A5DE:  POP             {R7,PC}
