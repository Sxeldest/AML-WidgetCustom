; =========================================================
; Game Engine Function: sub_1544A0
; Address            : 0x1544A0 - 0x1544CA
; =========================================================

1544A0:  SUB             SP, SP, #4
1544A2:  PUSH            {R7,LR}
1544A4:  MOV             R7, SP
1544A6:  SUB             SP, SP, #0xC
1544A8:  ADD.W           R1, R7, #8
1544AC:  MOV             R12, R2
1544AE:  STR             R3, [R7,#8]
1544B0:  MOVW            R2, #0x7FF
1544B4:  STR             R1, [SP,#0x18+var_10]
1544B6:  MOV             R3, R12
1544B8:  STR             R1, [SP,#0x18+var_18]
1544BA:  MOVS            R1, #0
1544BC:  BLX             __vsprintf_chk
1544C0:  ADD             SP, SP, #0xC
1544C2:  POP.W           {R7,LR}
1544C6:  ADD             SP, SP, #4
1544C8:  BX              LR
