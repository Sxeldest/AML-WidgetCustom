; =========================================================
; Game Engine Function: _Z13OS_DebugBreakv
; Address            : 0x266810 - 0x266822
; =========================================================

266810:  PUSH            {R7,LR}
266812:  MOV             R7, SP
266814:  LDR             R1, =(aOswrapper - 0x26681E); "OSWrapper"
266816:  ADR             R2, aHalt; "HALT"
266818:  MOVS            R0, #3; prio
26681A:  ADD             R1, PC; "OSWrapper"
26681C:  BLX             __android_log_print
266820:  UND             #0xFE
