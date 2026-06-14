; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot7AbortIKEP4CPed
; Address            : 0x4E02A8 - 0x4E02B6
; =========================================================

4E02A8:  LDR.W           R0, [R1,#0x48C]
4E02AC:  BIC.W           R0, R0, #0x400000
4E02B0:  STR.W           R0, [R1,#0x48C]
4E02B4:  BX              LR
