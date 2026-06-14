; =========================================================
; Game Engine Function: sub_1630AC
; Address            : 0x1630AC - 0x1630D0
; =========================================================

1630AC:  PUSH            {R7,LR}
1630AE:  MOV             R7, SP
1630B0:  LDR             R1, =(off_23494C - 0x1630B6)
1630B2:  ADD             R1, PC; off_23494C
1630B4:  LDR             R1, [R1]; dword_23DF24
1630B6:  LDR             R1, [R1]
1630B8:  CBZ             R1, locret_1630CE
1630BA:  MOV             R2, #0x6746D0
1630C2:  ADDS            R1, R1, R2
1630C4:  ITT NE
1630C6:  LDRNE           R1, [R1]
1630C8:  CMPNE           R1, #0
1630CA:  BEQ             locret_1630CE
1630CC:  BLX             R1
1630CE:  POP             {R7,PC}
