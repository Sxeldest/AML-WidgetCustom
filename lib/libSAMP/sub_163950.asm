; =========================================================
; Game Engine Function: sub_163950
; Address            : 0x163950 - 0x163982
; =========================================================

163950:  B.W             loc_163954
163954:  PUSH            {R7,LR}
163956:  MOV             R7, SP
163958:  MOV             R12, R0
16395A:  LDR             R0, =(off_23494C - 0x163960)
16395C:  ADD             R0, PC; off_23494C
16395E:  LDR             R0, [R0]; dword_23DF24
163960:  LDR             R3, [R0]
163962:  MOVS            R0, #0
163964:  CBZ             R3, locret_16397C
163966:  MOV             R2, #0x671E38
16396E:  ADDS            R3, R3, R2
163970:  IT EQ
163972:  POPEQ           {R7,PC}
163974:  LDR             R3, [R3]
163976:  CBZ             R3, loc_16397E
163978:  MOV             R0, R12
16397A:  BLX             R3
16397C:  POP             {R7,PC}
16397E:  MOVS            R0, #0
163980:  POP             {R7,PC}
