; =========================================================
; Game Engine Function: sub_1F06C8
; Address            : 0x1F06C8 - 0x1F06E2
; =========================================================

1F06C8:  PUSH            {R4,R6,R7,LR}
1F06CA:  ADD             R7, SP, #8
1F06CC:  MOV             R4, R0
1F06CE:  LDR             R0, [R0,#4]; fd
1F06D0:  ADDS            R1, R0, #1
1F06D2:  BEQ             loc_1F06D8
1F06D4:  BLX             close
1F06D8:  MOV.W           R0, #0xFFFFFFFF
1F06DC:  STR             R0, [R4,#4]
1F06DE:  MOV             R0, R4
1F06E0:  POP             {R4,R6,R7,PC}
