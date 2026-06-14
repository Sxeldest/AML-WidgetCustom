; =========================================================
; Game Engine Function: sub_1546EC
; Address            : 0x1546EC - 0x154716
; =========================================================

1546EC:  SUB             SP, SP, #4
1546EE:  PUSH            {R7,LR}
1546F0:  MOV             R7, SP
1546F2:  SUB             SP, SP, #0xC
1546F4:  ADD.W           R1, R7, #8
1546F8:  MOV             R12, R2
1546FA:  STR             R3, [R7,#8]
1546FC:  MOVW            R2, #0x7FF
154700:  STR             R1, [SP,#0x18+var_10]
154702:  MOV             R3, R12
154704:  STR             R1, [SP,#0x18+var_18]
154706:  MOVS            R1, #0
154708:  BLX             __vsprintf_chk
15470C:  ADD             SP, SP, #0xC
15470E:  POP.W           {R7,LR}
154712:  ADD             SP, SP, #4
154714:  BX              LR
