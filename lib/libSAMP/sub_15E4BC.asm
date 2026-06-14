; =========================================================
; Game Engine Function: sub_15E4BC
; Address            : 0x15E4BC - 0x15E4D4
; =========================================================

15E4BC:  MOV             R2, R0
15E4BE:  LDR             R0, =(off_234A24 - 0x15E4C4)
15E4C0:  ADD             R0, PC; off_234A24
15E4C2:  LDR             R0, [R0]; dword_23DEEC
15E4C4:  LDR             R0, [R0]
15E4C6:  CBZ             R0, locret_15E4D2
15E4C8:  LDR.W           R0, [R0,#0x84]
15E4CC:  CBZ             R0, locret_15E4D2
15E4CE:  B.W             sub_137B98
15E4D2:  BX              LR
