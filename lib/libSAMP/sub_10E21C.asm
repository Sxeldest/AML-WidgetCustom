; =========================================================
; Game Engine Function: sub_10E21C
; Address            : 0x10E21C - 0x10E246
; =========================================================

10E21C:  PUSH            {R4,R6,R7,LR}
10E21E:  ADD             R7, SP, #8
10E220:  MOV             R4, R0
10E222:  MOVS            R0, #0
10E224:  STRD.W          R0, R0, [R3]
10E228:  STR             R1, [R3,#8]
10E22A:  STR             R3, [R2]
10E22C:  LDR             R0, [R4]
10E22E:  LDR             R0, [R0]
10E230:  CBZ             R0, loc_10E236
10E232:  STR             R0, [R4]
10E234:  LDR             R3, [R2]
10E236:  LDR             R0, [R4,#4]
10E238:  MOV             R1, R3
10E23A:  BL              sub_EA2D2
10E23E:  LDR             R0, [R4,#8]
10E240:  ADDS            R0, #1
10E242:  STR             R0, [R4,#8]
10E244:  POP             {R4,R6,R7,PC}
