; =========================================================
; Game Engine Function: sub_6C90C
; Address            : 0x6C90C - 0x6C94C
; =========================================================

6C90C:  PUSH            {R4,R6,R7,LR}
6C90E:  ADD             R7, SP, #8
6C910:  LDR             R2, =(off_114AB0 - 0x6C91E)
6C912:  MOV             R3, #0x23DEEC
6C91A:  ADD             R2, PC; off_114AB0
6C91C:  LDR             R2, [R2]; dword_1A4408
6C91E:  LDR             R2, [R2]
6C920:  LDR             R2, [R2,R3]
6C922:  CMP             R2, #0
6C924:  ITT NE
6C926:  STRBNE.W        R1, [R0,#0x50]
6C92A:  POPNE           {R4,R6,R7,PC}
6C92C:  LDR             R4, =(aSampOrig - 0x6C936); "SAMP_ORIG" ...
6C92E:  MOVS            R0, #4; prio
6C930:  LDR             R2, =(aUiPointerIsNul - 0x6C938); "UI pointer is null" ...
6C932:  ADD             R4, PC; "SAMP_ORIG"
6C934:  ADD             R2, PC; "UI pointer is null"
6C936:  MOV             R1, R4; tag
6C938:  BLX             __android_log_print
6C93C:  LDR             R2, =(aSampSetwidgetv - 0x6C946); "SAMP::setWidgetVisible: UI pointer is n"... ...
6C93E:  MOVS            R0, #4
6C940:  MOV             R1, R4
6C942:  ADD             R2, PC; "SAMP::setWidgetVisible: UI pointer is n"...
6C944:  POP.W           {R4,R6,R7,LR}
6C948:  B.W             sub_10C158
