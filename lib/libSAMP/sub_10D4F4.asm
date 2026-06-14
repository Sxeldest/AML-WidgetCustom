; =========================================================
; Game Engine Function: sub_10D4F4
; Address            : 0x10D4F4 - 0x10D51A
; =========================================================

10D4F4:  PUSH            {R4,R6,R7,LR}
10D4F6:  ADD             R7, SP, #8
10D4F8:  MOV             R4, R0
10D4FA:  LDR             R0, =(off_23494C - 0x10D504)
10D4FC:  MOVW            R2, #0x957C
10D500:  ADD             R0, PC; off_23494C
10D502:  MOVT            R2, #0x95
10D506:  LDR             R0, [R0]; dword_23DF24
10D508:  LDR             R0, [R0]
10D50A:  LDR             R1, =(off_263254 - 0x10D512)
10D50C:  ADD             R0, R2
10D50E:  ADD             R1, PC; off_263254
10D510:  MOVS            R2, #0
10D512:  BL              sub_164222
10D516:  MOV             R0, R4
10D518:  POP             {R4,R6,R7,PC}
