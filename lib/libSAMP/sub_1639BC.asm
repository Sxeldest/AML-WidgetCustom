; =========================================================
; Game Engine Function: sub_1639BC
; Address            : 0x1639BC - 0x1639E4
; =========================================================

1639BC:  B.W             loc_1639C0
1639C0:  PUSH            {R7,LR}
1639C2:  MOV             R7, SP
1639C4:  LDR             R1, =(off_23494C - 0x1639CA)
1639C6:  ADD             R1, PC; off_23494C
1639C8:  LDR             R1, [R1]; dword_23DF24
1639CA:  LDR             R1, [R1]
1639CC:  CBZ             R1, locret_1639E2
1639CE:  MOV             R2, #0x66F018
1639D6:  ADDS            R1, R1, R2
1639D8:  ITT NE
1639DA:  LDRNE           R1, [R1]
1639DC:  CMPNE           R1, #0
1639DE:  BEQ             locret_1639E2
1639E0:  BLX             R1
1639E2:  POP             {R7,PC}
