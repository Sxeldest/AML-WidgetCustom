; =========================================================
; Game Engine Function: sub_15E4F4
; Address            : 0x15E4F4 - 0x15E50A
; =========================================================

15E4F4:  LDR             R0, =(off_234A24 - 0x15E4FA)
15E4F6:  ADD             R0, PC; off_234A24
15E4F8:  LDR             R0, [R0]; dword_23DEEC
15E4FA:  LDR             R0, [R0]
15E4FC:  CBZ             R0, locret_15E508
15E4FE:  LDR.W           R0, [R0,#0x84]
15E502:  CBZ             R0, locret_15E508
15E504:  B.W             sub_1380DC
15E508:  BX              LR
