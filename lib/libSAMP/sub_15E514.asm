; =========================================================
; Game Engine Function: sub_15E514
; Address            : 0x15E514 - 0x15E532
; =========================================================

15E514:  LDR             R0, =(off_234A24 - 0x15E51A)
15E516:  ADD             R0, PC; off_234A24
15E518:  LDR             R0, [R0]; dword_23DEEC
15E51A:  LDR             R0, [R0]
15E51C:  CBZ             R0, loc_15E52E
15E51E:  LDR             R0, [R0,#0x58]
15E520:  CBZ             R0, loc_15E52E
15E522:  LDRB.W          R0, [R0,#0x50]
15E526:  CMP             R0, #0
15E528:  IT NE
15E52A:  MOVNE           R0, #1
15E52C:  BX              LR
15E52E:  MOVS            R0, #0
15E530:  BX              LR
