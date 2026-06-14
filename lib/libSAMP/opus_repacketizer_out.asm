; =========================================================
; Game Engine Function: opus_repacketizer_out
; Address            : 0x1B9804 - 0x1B9824
; =========================================================

1B9804:  PUSH            {R7,LR}
1B9806:  MOV             R7, SP
1B9808:  SUB             SP, SP, #0x10
1B980A:  LDR             R3, [R0,#4]
1B980C:  MOV             R12, R1
1B980E:  MOVS            R1, #0
1B9810:  STRD.W          R2, R1, [SP,#0x18+var_18]
1B9814:  STR             R1, [SP,#0x18+var_10]
1B9816:  MOV             R2, R3
1B9818:  MOVS            R1, #0
1B981A:  MOV             R3, R12
1B981C:  BLX             j_opus_repacketizer_out_range_impl
1B9820:  ADD             SP, SP, #0x10
1B9822:  POP             {R7,PC}
