; =========================================================
; Game Engine Function: _ZN7ZIPFile12EntryCompareEPKvS1_
; Address            : 0x26F5AC - 0x26F5B4
; =========================================================

26F5AC:  LDR             R1, [R1,#8]; char *
26F5AE:  LDR             R0, [R0,#8]; char *
26F5B0:  B.W             j_strcasecmp
