; =========================================================
; Game Engine Function: sub_15E484
; Address            : 0x15E484 - 0x15E49C
; =========================================================

15E484:  LDR             R0, =(off_234A24 - 0x15E48A)
15E486:  ADD             R0, PC; off_234A24
15E488:  LDR             R0, [R0]; dword_23DEEC
15E48A:  LDR             R0, [R0]
15E48C:  CBZ             R0, loc_15E498
15E48E:  LDR.W           R0, [R0,#0x84]
15E492:  CBZ             R0, loc_15E498
15E494:  B.W             loc_138258
15E498:  MOVS            R0, #0
15E49A:  BX              LR
