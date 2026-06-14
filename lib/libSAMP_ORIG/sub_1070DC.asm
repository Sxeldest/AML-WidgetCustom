; =========================================================
; Game Engine Function: sub_1070DC
; Address            : 0x1070DC - 0x1070F0
; =========================================================

1070DC:  PUSH            {R7,LR}
1070DE:  MOV             R7, SP
1070E0:  BLX             sub_10AA78
1070E4:  MOVS            R1, #9
1070E6:  CMP             R0, #0
1070E8:  IT EQ
1070EA:  MOVEQ           R1, #8
1070EC:  MOV             R0, R1
1070EE:  POP             {R7,PC}
