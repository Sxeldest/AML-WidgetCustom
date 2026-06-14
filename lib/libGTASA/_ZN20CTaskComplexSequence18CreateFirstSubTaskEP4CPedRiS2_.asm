; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence18CreateFirstSubTaskEP4CPedRiS2_
; Address            : 0x4EE88E - 0x4EE8A4
; =========================================================

4EE88E:  LDR             R1, [R2]
4EE890:  ADD.W           R0, R0, R1,LSL#2
4EE894:  LDR             R0, [R0,#0x10]
4EE896:  CMP             R0, #0
4EE898:  ITT EQ
4EE89A:  MOVEQ           R0, #0
4EE89C:  BXEQ            LR
4EE89E:  LDR             R1, [R0]
4EE8A0:  LDR             R1, [R1,#8]
4EE8A2:  BX              R1
