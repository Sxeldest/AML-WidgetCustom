; =========================================================
; Game Engine Function: sub_1824FC
; Address            : 0x1824FC - 0x182516
; =========================================================

1824FC:  CBZ             R1, locret_182514
1824FE:  PUSH            {R4,R5,R7,LR}
182500:  ADD             R7, SP, #8
182502:  MOV             R0, R1; cp
182504:  MOV             R4, R3
182506:  MOV             R5, R2
182508:  BLX             inet_addr
18250C:  STRH            R5, [R4,#4]
18250E:  STR             R0, [R4]
182510:  POP.W           {R4,R5,R7,LR}
182514:  BX              LR
