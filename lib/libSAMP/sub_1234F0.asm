; =========================================================
; Game Engine Function: sub_1234F0
; Address            : 0x1234F0 - 0x123516
; =========================================================

1234F0:  PUSH            {R7,LR}
1234F2:  MOV             R7, SP
1234F4:  SUB             SP, SP, #0x10
1234F6:  LDR             R0, [R0,#0x10]
1234F8:  STRD.W          R2, R1, [SP,#0x18+var_10]
1234FC:  STR             R3, [SP,#0x18+var_14]
1234FE:  CBZ             R0, loc_123512
123500:  LDR             R1, [R0]
123502:  ADD             R2, SP, #0x18+var_10
123504:  ADD             R3, SP, #0x18+var_14
123506:  LDR.W           R12, [R1,#0x18]
12350A:  ADD             R1, SP, #0x18+var_C
12350C:  BLX             R12
12350E:  ADD             SP, SP, #0x10
123510:  POP             {R7,PC}
123512:  BL              sub_DC92C
