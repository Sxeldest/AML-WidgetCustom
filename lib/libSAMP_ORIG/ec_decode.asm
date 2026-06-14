; =========================================================
; Game Engine Function: ec_decode
; Address            : 0xB59D8 - 0xB5A06
; =========================================================

B59D8:  PUSH            {R4-R7,LR}
B59DA:  ADD             R7, SP, #0xC
B59DC:  PUSH.W          {R11}
B59E0:  MOV             R5, R0
B59E2:  MOV             R4, R1
B59E4:  LDRD.W          R0, R6, [R5,#0x1C]
B59E8:  BLX             sub_108874
B59EC:  MOV             R1, R0
B59EE:  MOV             R0, R6
B59F0:  STR             R1, [R5,#0x24]
B59F2:  BLX             sub_108874
B59F6:  ADDS            R0, #1
B59F8:  CMP             R0, R4
B59FA:  IT HI
B59FC:  MOVHI           R0, R4
B59FE:  SUBS            R0, R4, R0
B5A00:  POP.W           {R11}
B5A04:  POP             {R4-R7,PC}
