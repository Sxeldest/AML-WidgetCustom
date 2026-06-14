; =========================================================
; Game Engine Function: sub_1057D4
; Address            : 0x1057D4 - 0x10580A
; =========================================================

1057D4:  PUSH            {R4,R5,R7,LR}
1057D6:  ADD             R7, SP, #8
1057D8:  MOV             R5, R0
1057DA:  LDR             R0, [R0,#8]
1057DC:  MOV             R4, R1
1057DE:  CBZ             R0, loc_1057FE
1057E0:  LDR             R1, [R0]
1057E2:  LDR             R2, [R1,#0x10]
1057E4:  MOV             R1, R4
1057E6:  BLX             R2
1057E8:  LDR             R0, [R5,#8]
1057EA:  MOV             R1, R4
1057EC:  BL              sub_10068A
1057F0:  CBNZ            R0, loc_1057FE
1057F2:  LDR             R1, =(asc_4B4F4 - 0x1057FA); " " ...
1057F4:  MOV             R0, R4
1057F6:  ADD             R1, PC; " "
1057F8:  ADDS            R2, R1, #1
1057FA:  BL              sub_FFB40
1057FE:  LDR             R0, [R5,#0xC]
105800:  MOV             R1, R4
105802:  POP.W           {R4,R5,R7,LR}
105806:  B.W             sub_FE074
