; =========================================================
; Game Engine Function: sub_1EF6C4
; Address            : 0x1EF6C4 - 0x1EF70E
; =========================================================

1EF6C4:  PUSH            {R4-R7,LR}
1EF6C6:  ADD             R7, SP, #0xC
1EF6C8:  PUSH.W          {R11}
1EF6CC:  MOV             R4, R0
1EF6CE:  LDR             R6, [R0,#4]
1EF6D0:  LDR             R0, [R0,#0x10]
1EF6D2:  LDR             R1, [R4,#0x14]
1EF6D4:  ADD             R0, R1
1EF6D6:  MOVS            R1, #0x38 ; '8'
1EF6D8:  SUBS            R5, R0, #1
1EF6DA:  MOV             R0, R5
1EF6DC:  BLX             sub_220A6C
1EF6E0:  LDR.W           R1, [R6,R0,LSL#2]
1EF6E4:  RSB.W           R0, R0, R0,LSL#3
1EF6E8:  SUB.W           R0, R5, R0,LSL#3
1EF6EC:  ADD.W           R0, R0, R0,LSL#3
1EF6F0:  ADD.W           R0, R1, R0,LSL#3
1EF6F4:  BL              sub_1EDFDC
1EF6F8:  LDR             R0, [R4,#0x14]
1EF6FA:  MOVS            R1, #1
1EF6FC:  SUBS            R0, #1
1EF6FE:  STR             R0, [R4,#0x14]
1EF700:  MOV             R0, R4
1EF702:  POP.W           {R11}
1EF706:  POP.W           {R4-R7,LR}
1EF70A:  B.W             sub_1EF70E
