; =========================================================
; Game Engine Function: sub_16363C
; Address            : 0x16363C - 0x16365A
; =========================================================

16363C:  PUSH            {R7,LR}
16363E:  MOV             R7, SP
163640:  LDR             R0, =(aLibgtasaSo - 0x163646); "libGTASA.so" ...
163642:  ADD             R0, PC; "libGTASA.so"
163644:  BL              sub_163FF8
163648:  LDR             R1, =(dword_381A80 - 0x163658)
16364A:  MOV             R2, #0x679E70
163652:  ADD             R0, R2
163654:  ADD             R1, PC; dword_381A80
163656:  STR             R0, [R1]
163658:  POP             {R7,PC}
