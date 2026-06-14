; =========================================================
; Game Engine Function: _Z28GetStatFromChangingStatIndexi
; Address            : 0x35FAAC - 0x35FAB6
; =========================================================

35FAAC:  LDR             R1, =(unk_6101A8 - 0x35FAB2)
35FAAE:  ADD             R1, PC; unk_6101A8
35FAB0:  LDR.W           R0, [R1,R0,LSL#2]
35FAB4:  BX              LR
