; =========================================================
; Game Engine Function: sub_1086D4
; Address            : 0x1086D4 - 0x1086F8
; =========================================================

1086D4:  PUSH            {R7,LR}
1086D6:  MOV             R7, SP
1086D8:  LDR             R0, =(off_23494C - 0x1086DE)
1086DA:  ADD             R0, PC; off_23494C
1086DC:  LDR             R0, [R0]; dword_23DF24
1086DE:  LDR             R0, [R0]
1086E0:  CBZ             R0, locret_1086F6
1086E2:  MOV             R1, #0x672BE0
1086EA:  ADDS            R0, R0, R1
1086EC:  ITT NE
1086EE:  LDRNE           R0, [R0]
1086F0:  CMPNE           R0, #0
1086F2:  BEQ             locret_1086F6
1086F4:  BLX             R0
1086F6:  POP             {R7,PC}
