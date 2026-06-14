; =========================================================
; Game Engine Function: sub_1386EC
; Address            : 0x1386EC - 0x138714
; =========================================================

1386EC:  PUSH            {R7,LR}
1386EE:  MOV             R7, SP
1386F0:  LDR             R0, =(byte_3141F4 - 0x1386F6)
1386F2:  ADD             R0, PC; byte_3141F4
1386F4:  LDRB            R0, [R0]
1386F6:  CBZ             R0, loc_1386FC
1386F8:  MOVS            R0, #1
1386FA:  POP             {R7,PC}
1386FC:  BL              sub_F0B30
138700:  LDR             R1, =(dword_3141F8 - 0x138706)
138702:  ADD             R1, PC; dword_3141F8
138704:  LDR             R1, [R1]
138706:  SUBS            R1, R0, R1
138708:  MOVS            R0, #0
13870A:  CMP.W           R1, #0x1F4
13870E:  IT LS
138710:  MOVLS           R0, #1
138712:  POP             {R7,PC}
