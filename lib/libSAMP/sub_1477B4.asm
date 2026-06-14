; =========================================================
; Game Engine Function: sub_1477B4
; Address            : 0x1477B4 - 0x1477F6
; =========================================================

1477B4:  PUSH            {R7,LR}
1477B6:  MOV             R7, SP
1477B8:  SUB             SP, SP, #0x118
1477BA:  LDRD.W          R1, R0, [R0]; src
1477BE:  MOVS            R3, #0
1477C0:  ASRS            R2, R0, #0x1F
1477C2:  ADD.W           R0, R0, R2,LSR#29
1477C6:  MOVS            R2, #1
1477C8:  ADD.W           R2, R2, R0,ASR#3; size
1477CC:  ADD             R0, SP, #0x120+var_11C; int
1477CE:  BL              sub_17D4F2
1477D2:  LDR             R1, =(aAxl - 0x1477DA); "AXL" ...
1477D4:  LDR             R2, =(aCanceleditobje - 0x1477DC); "CancelEditObject: no params" ...
1477D6:  ADD             R1, PC; "AXL"
1477D8:  ADD             R2, PC; "CancelEditObject: no params"
1477DA:  MOVS            R0, #4; prio
1477DC:  BLX             __android_log_print
1477E0:  LDR             R0, =(off_234A20 - 0x1477E6)
1477E2:  ADD             R0, PC; off_234A20
1477E4:  LDR             R0, [R0]; dword_23DF0C
1477E6:  LDR             R0, [R0]
1477E8:  BL              sub_147ED4
1477EC:  ADD             R0, SP, #0x120+var_11C
1477EE:  BL              sub_17D542
1477F2:  ADD             SP, SP, #0x118
1477F4:  POP             {R7,PC}
