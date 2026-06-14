; =========================================================
; Game Engine Function: ec_enc_shrink
; Address            : 0xB72EA - 0xB7308
; =========================================================

B72EA:  PUSH            {R4,R5,R7,LR}
B72EC:  ADD             R7, SP, #8
B72EE:  MOV             R5, R0
B72F0:  MOV             R4, R1
B72F2:  LDRD.W          R1, R3, [R5]
B72F6:  LDR             R2, [R5,#8]; n
B72F8:  ADDS            R0, R1, R4
B72FA:  ADD             R1, R3
B72FC:  SUBS            R0, R0, R2; dest
B72FE:  SUBS            R1, R1, R2; src
B7300:  BLX             j_memmove
B7304:  STR             R4, [R5,#4]
B7306:  POP             {R4,R5,R7,PC}
