; =========================================================
; Game Engine Function: _Z11OS_DebugOutPKc
; Address            : 0x266800 - 0x26680C
; =========================================================

266800:  LDR             R1, =(aOswrapper - 0x26680A); "OSWrapper"
266802:  MOV             R2, R0; fmt
266804:  MOVS            R0, #3; prio
266806:  ADD             R1, PC; "OSWrapper"
266808:  B.W             sub_199CB8
