; =========================================================
; Game Engine Function: sub_15E4A0
; Address            : 0x15E4A0 - 0x15E4B8
; =========================================================

15E4A0:  LDR             R1, =(off_234A24 - 0x15E4A6)
15E4A2:  ADD             R1, PC; off_234A24
15E4A4:  LDR             R1, [R1]; dword_23DEEC
15E4A6:  LDR             R1, [R1]
15E4A8:  CBZ             R1, loc_15E4B4
15E4AA:  LDR.W           R1, [R1,#0x84]
15E4AE:  CBZ             R1, loc_15E4B4
15E4B0:  B.W             loc_138264
15E4B4:  MOVS            R0, #0
15E4B6:  BX              LR
