; =========================================================
; Game Engine Function: sub_1298C4
; Address            : 0x1298C4 - 0x1298E8
; =========================================================

1298C4:  PUSH            {R7,LR}
1298C6:  MOV             R7, SP
1298C8:  LDR             R1, =(off_23494C - 0x1298CE)
1298CA:  ADD             R1, PC; off_23494C
1298CC:  LDR             R1, [R1]; dword_23DF24
1298CE:  LDR             R1, [R1]
1298D0:  CBZ             R1, locret_1298E6
1298D2:  MOV             R2, #0x66FD50
1298DA:  ADDS            R1, R1, R2
1298DC:  ITT NE
1298DE:  LDRNE           R1, [R1]
1298E0:  CMPNE           R1, #0
1298E2:  BEQ             locret_1298E6
1298E4:  BLX             R1
1298E6:  POP             {R7,PC}
