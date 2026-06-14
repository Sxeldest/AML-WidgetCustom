; =========================================================
; Game Engine Function: sub_18B9EC
; Address            : 0x18B9EC - 0x18BA14
; =========================================================

18B9EC:  PUSH            {R4,R6,R7,LR}
18B9EE:  ADD             R7, SP, #8
18B9F0:  MOV             R4, R0
18B9F2:  LDR             R0, [R0,#4]
18B9F4:  CMP             R0, R1
18B9F6:  IT LS
18B9F8:  POPLS           {R4,R6,R7,PC}
18B9FA:  MVNS            R2, R1
18B9FC:  ADD             R0, R2
18B9FE:  LDR             R3, [R4]
18BA00:  LSLS            R2, R0, #2; n
18BA02:  ADD.W           R0, R3, R1,LSL#2; dest
18BA06:  ADDS            R1, R0, #4; src
18BA08:  BLX             j_memmove
18BA0C:  LDR             R0, [R4,#4]
18BA0E:  SUBS            R0, #1
18BA10:  STR             R0, [R4,#4]
18BA12:  POP             {R4,R6,R7,PC}
