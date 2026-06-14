; =========================================================
; Game Engine Function: sub_1107DC
; Address            : 0x1107DC - 0x110800
; =========================================================

1107DC:  PUSH            {R7,LR}
1107DE:  MOV             R7, SP
1107E0:  LDR             R2, =(off_23494C - 0x1107E6)
1107E2:  ADD             R2, PC; off_23494C
1107E4:  LDR             R2, [R2]; dword_23DF24
1107E6:  LDR             R2, [R2]
1107E8:  CBZ             R2, locret_1107FE
1107EA:  MOV             R3, #0x670C34
1107F2:  ADDS            R2, R2, R3
1107F4:  ITT NE
1107F6:  LDRNE           R2, [R2]
1107F8:  CMPNE           R2, #0
1107FA:  BEQ             locret_1107FE
1107FC:  BLX             R2
1107FE:  POP             {R7,PC}
