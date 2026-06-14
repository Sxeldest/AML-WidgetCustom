; =========================================================
; Game Engine Function: sub_1639EC
; Address            : 0x1639EC - 0x163A1E
; =========================================================

1639EC:  B.W             loc_1639F0
1639F0:  PUSH            {R7,LR}
1639F2:  MOV             R7, SP
1639F4:  MOV             R1, R0
1639F6:  LDR             R0, =(off_23494C - 0x1639FC)
1639F8:  ADD             R0, PC; off_23494C
1639FA:  LDR             R0, [R0]; dword_23DF24
1639FC:  LDR             R2, [R0]
1639FE:  MOVS            R0, #0
163A00:  CBZ             R2, locret_163A18
163A02:  MOV             R3, #0x674708
163A0A:  ADDS            R2, R2, R3
163A0C:  IT EQ
163A0E:  POPEQ           {R7,PC}
163A10:  LDR             R2, [R2]
163A12:  CBZ             R2, loc_163A1A
163A14:  MOV             R0, R1
163A16:  BLX             R2
163A18:  POP             {R7,PC}
163A1A:  MOVS            R0, #0
163A1C:  POP             {R7,PC}
