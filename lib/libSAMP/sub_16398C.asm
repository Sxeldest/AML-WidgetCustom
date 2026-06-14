; =========================================================
; Game Engine Function: sub_16398C
; Address            : 0x16398C - 0x1639B4
; =========================================================

16398C:  B.W             loc_163990
163990:  PUSH            {R7,LR}
163992:  MOV             R7, SP
163994:  LDR             R1, =(off_23494C - 0x16399A)
163996:  ADD             R1, PC; off_23494C
163998:  LDR             R1, [R1]; dword_23DF24
16399A:  LDR             R1, [R1]
16399C:  CBZ             R1, locret_1639B2
16399E:  MOV             R2, #0x6722F0
1639A6:  ADDS            R1, R1, R2
1639A8:  ITT NE
1639AA:  LDRNE           R1, [R1]
1639AC:  CMPNE           R1, #0
1639AE:  BEQ             locret_1639B2
1639B0:  BLX             R1
1639B2:  POP             {R7,PC}
