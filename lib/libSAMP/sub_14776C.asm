; =========================================================
; Game Engine Function: sub_14776C
; Address            : 0x14776C - 0x1477A2
; =========================================================

14776C:  PUSH            {R7,LR}
14776E:  MOV             R7, SP
147770:  SUB             SP, SP, #0x118
147772:  LDRD.W          R1, R0, [R0]; src
147776:  MOVS            R3, #0
147778:  ASRS            R2, R0, #0x1F
14777A:  ADD.W           R0, R0, R2,LSR#29
14777E:  MOVS            R2, #1
147780:  ADD.W           R2, R2, R0,ASR#3; size
147784:  ADD             R0, SP, #0x120+var_11C; int
147786:  BL              sub_17D4F2
14778A:  LDR             R1, =(aAxl - 0x147792); "AXL" ...
14778C:  LDR             R2, =(aSelectobjectNo - 0x147794); "SelectObject: no params" ...
14778E:  ADD             R1, PC; "AXL"
147790:  ADD             R2, PC; "SelectObject: no params"
147792:  MOVS            R0, #4; prio
147794:  BLX             __android_log_print
147798:  ADD             R0, SP, #0x120+var_11C
14779A:  BL              sub_17D542
14779E:  ADD             SP, SP, #0x118
1477A0:  POP             {R7,PC}
