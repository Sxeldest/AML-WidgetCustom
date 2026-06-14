; =========================================================
; Game Engine Function: sub_6C808
; Address            : 0x6C808 - 0x6C836
; =========================================================

6C808:  PUSH            {R4,R6,R7,LR}
6C80A:  ADD             R7, SP, #8
6C80C:  LDR             R0, =(off_114AB0 - 0x6C81A)
6C80E:  MOV             R1, #0x23DEEC
6C816:  ADD             R0, PC; off_114AB0
6C818:  LDR             R0, [R0]; dword_1A4408
6C81A:  LDR             R0, [R0]
6C81C:  LDR             R4, [R0,R1]
6C81E:  CBZ             R4, loc_6C824
6C820:  MOV             R0, R4
6C822:  POP             {R4,R6,R7,PC}
6C824:  LDR             R1, =(aSampOrig - 0x6C82E); "SAMP_ORIG" ...
6C826:  MOVS            R0, #4; prio
6C828:  LDR             R2, =(aUiPointerIsNul - 0x6C830); "UI pointer is null" ...
6C82A:  ADD             R1, PC; "SAMP_ORIG"
6C82C:  ADD             R2, PC; "UI pointer is null"
6C82E:  BLX             __android_log_print
6C832:  MOV             R0, R4
6C834:  POP             {R4,R6,R7,PC}
