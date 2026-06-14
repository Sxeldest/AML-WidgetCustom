; =========================================================
; Game Engine Function: sub_1034F0
; Address            : 0x1034F0 - 0x103528
; =========================================================

1034F0:  PUSH            {R4-R7,LR}
1034F2:  ADD             R7, SP, #0xC
1034F4:  PUSH.W          {R11}
1034F8:  MOV             R4, R1
1034FA:  LDR             R1, =(aUnnamed - 0x103504); "'unnamed" ...
1034FC:  LDR             R6, =(sub_FFB40+1 - 0x10350C)
1034FE:  MOV             R5, R0
103500:  ADD             R1, PC; "'unnamed"
103502:  MOV             R0, R4
103504:  ADD.W           R2, R1, #8
103508:  ADD             R6, PC; sub_FFB40
10350A:  BLX             R6; sub_FFB40
10350C:  LDRD.W          R1, R2, [R5,#8]
103510:  MOV             R0, R4
103512:  BLX             R6; sub_FFB40
103514:  LDR             R1, =(asc_4D70B - 0x10351E); "'" ...
103516:  MOV             R0, R4
103518:  MOV             R3, R6
10351A:  ADD             R1, PC; "'"
10351C:  ADDS            R2, R1, #1
10351E:  POP.W           {R11}
103522:  POP.W           {R4-R7,LR}
103526:  BX              R3; sub_FFB40
