; =========================================================
; Game Engine Function: sub_125974
; Address            : 0x125974 - 0x1259B2
; =========================================================

125974:  PUSH            {R7,LR}
125976:  MOV             R7, SP
125978:  LDR             R0, =(dword_263C44 - 0x12597E)
12597A:  ADD             R0, PC; dword_263C44
12597C:  LDR             R0, [R0]
12597E:  CBZ             R0, loc_12599C
125980:  LDR             R1, =(dword_238E90 - 0x125988)
125982:  LDR             R2, =(dword_238E94 - 0x12598A)
125984:  ADD             R1, PC; dword_238E90
125986:  ADD             R2, PC; dword_238E94
125988:  LDR             R1, [R1]
12598A:  LDR             R2, [R2]
12598C:  RSB.W           R1, R1, R1,LSL#3
125990:  ADD.W           R0, R0, R1,LSL#5
125994:  ADD.W           R0, R0, R2,LSL#6
125998:  ADDS            R0, #0x14
12599A:  POP             {R7,PC}
12599C:  LDR             R1, =(aAxl - 0x1259A8); "AXL" ...
12599E:  MOVS            R0, #5; prio
1259A0:  LDR             R2, =(aChandlinghookF - 0x1259AA); "CHandlingHook: fail to call %s. Custom "... ...
1259A2:  LDR             R3, =(aStaticCharChan_0 - 0x1259AC); "static char *CHandlingHook::getFlyingSt"... ...
1259A4:  ADD             R1, PC; "AXL"
1259A6:  ADD             R2, PC; "CHandlingHook: fail to call %s. Custom "...
1259A8:  ADD             R3, PC; "static char *CHandlingHook::getFlyingSt"...
1259AA:  BLX             __android_log_print
1259AE:  MOVS            R0, #0
1259B0:  POP             {R7,PC}
