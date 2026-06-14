; =========================================================
; Game Engine Function: sub_6C844
; Address            : 0x6C844 - 0x6C872
; =========================================================

6C844:  PUSH            {R4,R6,R7,LR}
6C846:  ADD             R7, SP, #8
6C848:  LDR             R0, =(off_114AB0 - 0x6C856)
6C84A:  MOV             R1, #0x23DEF0
6C852:  ADD             R0, PC; off_114AB0
6C854:  LDR             R0, [R0]; dword_1A4408
6C856:  LDR             R0, [R0]
6C858:  LDR             R4, [R0,R1]
6C85A:  CBZ             R4, loc_6C860
6C85C:  MOV             R0, R4
6C85E:  POP             {R4,R6,R7,PC}
6C860:  LDR             R1, =(aSampOrig - 0x6C86A); "SAMP_ORIG" ...
6C862:  MOVS            R0, #4; prio
6C864:  LDR             R2, =(aGamePointerIsN - 0x6C86C); "Game pointer is null" ...
6C866:  ADD             R1, PC; "SAMP_ORIG"
6C868:  ADD             R2, PC; "Game pointer is null"
6C86A:  BLX             __android_log_print
6C86E:  MOV             R0, R4
6C870:  POP             {R4,R6,R7,PC}
