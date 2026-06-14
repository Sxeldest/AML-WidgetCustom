; =========================================================
; Game Engine Function: ec_enc_shrink
; Address            : 0x19550E - 0x19552C
; =========================================================

19550E:  PUSH            {R4,R5,R7,LR}
195510:  ADD             R7, SP, #8
195512:  MOV             R5, R0
195514:  MOV             R4, R1
195516:  LDRD.W          R1, R3, [R5]
19551A:  LDR             R2, [R5,#8]; n
19551C:  ADDS            R0, R1, R4
19551E:  ADD             R1, R3
195520:  SUBS            R0, R0, R2; dest
195522:  SUBS            R1, R1, R2; src
195524:  BLX             j_memmove
195528:  STR             R4, [R5,#4]
19552A:  POP             {R4,R5,R7,PC}
