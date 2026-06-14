; =========================================================
; Game Engine Function: sub_1278F4
; Address            : 0x1278F4 - 0x127914
; =========================================================

1278F4:  PUSH            {R4,R6,R7,LR}
1278F6:  ADD             R7, SP, #8
1278F8:  SUB             SP, SP, #0x10
1278FA:  MOV             R4, R0
1278FC:  MOVS            R0, #0
1278FE:  STR             R0, [R4,#0x10]
127900:  STR             R2, [SP,#0x18+var_C]
127902:  STRD.W          R3, R1, [SP,#0x18+var_14]
127906:  ADD             R1, SP, #0x18+var_14
127908:  MOV             R0, R4
12790A:  BL              sub_127CF0
12790E:  MOV             R0, R4
127910:  ADD             SP, SP, #0x10
127912:  POP             {R4,R6,R7,PC}
