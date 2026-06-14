; =========================================================
; Game Engine Function: sub_1523D6
; Address            : 0x1523D6 - 0x152400
; =========================================================

1523D6:  SUB             SP, SP, #4
1523D8:  PUSH            {R7,LR}
1523DA:  MOV             R7, SP
1523DC:  SUB             SP, SP, #0xC
1523DE:  ADD.W           R1, R7, #8
1523E2:  MOV             R12, R2
1523E4:  STR             R3, [R7,#8]
1523E6:  MOVW            R2, #0x7FF
1523EA:  STR             R1, [SP,#0x18+var_10]
1523EC:  MOV             R3, R12
1523EE:  STR             R1, [SP,#0x18+var_18]
1523F0:  MOVS            R1, #0
1523F2:  BLX             __vsprintf_chk
1523F6:  ADD             SP, SP, #0xC
1523F8:  POP.W           {R7,LR}
1523FC:  ADD             SP, SP, #4
1523FE:  BX              LR
