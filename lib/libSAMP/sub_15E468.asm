; =========================================================
; Game Engine Function: sub_15E468
; Address            : 0x15E468 - 0x15E480
; =========================================================

15E468:  LDR             R0, =(off_234A24 - 0x15E46E)
15E46A:  ADD             R0, PC; off_234A24
15E46C:  LDR             R0, [R0]; dword_23DEEC
15E46E:  LDR             R0, [R0]
15E470:  CBZ             R0, loc_15E47C
15E472:  LDR.W           R0, [R0,#0x84]
15E476:  CBZ             R0, loc_15E47C
15E478:  B.W             loc_13824C
15E47C:  MOVS            R0, #0
15E47E:  BX              LR
