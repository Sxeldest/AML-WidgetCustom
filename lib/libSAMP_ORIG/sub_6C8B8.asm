; =========================================================
; Game Engine Function: sub_6C8B8
; Address            : 0x6C8B8 - 0x6C8FC
; =========================================================

6C8B8:  PUSH            {R4,R6,R7,LR}
6C8BA:  ADD             R7, SP, #8
6C8BC:  LDR             R1, =(off_114AB0 - 0x6C8CA)
6C8BE:  MOV             R2, #0x23DEEC
6C8C6:  ADD             R1, PC; off_114AB0
6C8C8:  LDR             R1, [R1]; dword_1A4408
6C8CA:  LDR             R1, [R1]
6C8CC:  LDR             R1, [R1,R2]
6C8CE:  CBZ             R1, loc_6C8DC
6C8D0:  LDRB.W          R0, [R0,#0x50]
6C8D4:  CMP             R0, #0
6C8D6:  IT NE
6C8D8:  MOVNE           R0, #1
6C8DA:  POP             {R4,R6,R7,PC}
6C8DC:  LDR             R4, =(aSampOrig - 0x6C8E6); "SAMP_ORIG" ...
6C8DE:  MOVS            R0, #4; prio
6C8E0:  LDR             R2, =(aUiPointerIsNul - 0x6C8E8); "UI pointer is null" ...
6C8E2:  ADD             R4, PC; "SAMP_ORIG"
6C8E4:  ADD             R2, PC; "UI pointer is null"
6C8E6:  MOV             R1, R4; tag
6C8E8:  BLX             __android_log_print
6C8EC:  LDR             R2, =(aSampIswidgetvi - 0x6C8F6); "SAMP::isWidgetVisible: UI pointer is nu"... ...
6C8EE:  MOVS            R0, #4; prio
6C8F0:  MOV             R1, R4; tag
6C8F2:  ADD             R2, PC; "SAMP::isWidgetVisible: UI pointer is nu"...
6C8F4:  BLX             __android_log_print
6C8F8:  MOVS            R0, #0
6C8FA:  POP             {R4,R6,R7,PC}
