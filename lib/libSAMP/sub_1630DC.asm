; =========================================================
; Game Engine Function: sub_1630DC
; Address            : 0x1630DC - 0x163100
; =========================================================

1630DC:  PUSH            {R7,LR}
1630DE:  MOV             R7, SP
1630E0:  LDR             R2, =(off_23494C - 0x1630E6)
1630E2:  ADD             R2, PC; off_23494C
1630E4:  LDR             R2, [R2]; dword_23DF24
1630E6:  LDR             R2, [R2]
1630E8:  CBZ             R2, locret_1630FE
1630EA:  MOV             R3, #0x6711FC
1630F2:  ADDS            R2, R2, R3
1630F4:  ITT NE
1630F6:  LDRNE           R2, [R2]
1630F8:  CMPNE           R2, #0
1630FA:  BEQ             locret_1630FE
1630FC:  BLX             R2
1630FE:  POP             {R7,PC}
