; =========================================================
; Game Engine Function: sub_1586B2
; Address            : 0x1586B2 - 0x1586DC
; =========================================================

1586B2:  SUB             SP, SP, #4
1586B4:  PUSH            {R7,LR}
1586B6:  MOV             R7, SP
1586B8:  SUB             SP, SP, #0xC
1586BA:  ADD.W           R1, R7, #8
1586BE:  MOV             R12, R2
1586C0:  STR             R3, [R7,#8]
1586C2:  MOVW            R2, #0x7FF
1586C6:  STR             R1, [SP,#0x18+var_10]
1586C8:  MOV             R3, R12
1586CA:  STR             R1, [SP,#0x18+var_18]
1586CC:  MOVS            R1, #0
1586CE:  BLX             __vsprintf_chk
1586D2:  ADD             SP, SP, #0xC
1586D4:  POP.W           {R7,LR}
1586D8:  ADD             SP, SP, #4
1586DA:  BX              LR
