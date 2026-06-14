; =========================================================
; Game Engine Function: opus_repacketizer_out_range
; Address            : 0x1B97E6 - 0x1B9804
; =========================================================

1B97E6:  PUSH            {R7,LR}
1B97E8:  MOV             R7, SP
1B97EA:  SUB             SP, SP, #0x10
1B97EC:  LDR.W           R12, [R7,#8]
1B97F0:  MOV.W           LR, #0
1B97F4:  STRD.W          R12, LR, [SP,#0x18+var_18]
1B97F8:  STR.W           LR, [SP,#0x18+var_10]
1B97FC:  BLX             j_opus_repacketizer_out_range_impl
1B9800:  ADD             SP, SP, #0x10
1B9802:  POP             {R7,PC}
