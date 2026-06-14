; =========================================================
; Game Engine Function: sub_127ABC
; Address            : 0x127ABC - 0x127AEA
; =========================================================

127ABC:  PUSH            {R7,LR}
127ABE:  MOV             R7, SP
127AC0:  MOV             R1, R0
127AC2:  LDR             R0, =(off_23494C - 0x127AC8)
127AC4:  ADD             R0, PC; off_23494C
127AC6:  LDR             R0, [R0]; dword_23DF24
127AC8:  LDR             R2, [R0]
127ACA:  MOVS            R0, #0
127ACC:  CBZ             R2, locret_127AE4
127ACE:  MOV             R3, #0x674EF0
127AD6:  ADDS            R2, R2, R3
127AD8:  IT EQ
127ADA:  POPEQ           {R7,PC}
127ADC:  LDR             R2, [R2]
127ADE:  CBZ             R2, loc_127AE6
127AE0:  MOV             R0, R1
127AE2:  BLX             R2
127AE4:  POP             {R7,PC}
127AE6:  MOVS            R0, #0
127AE8:  POP             {R7,PC}
