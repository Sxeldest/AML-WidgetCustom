; =========================================================
; Game Engine Function: sub_15E538
; Address            : 0x15E538 - 0x15E556
; =========================================================

15E538:  LDR             R0, =(off_234A24 - 0x15E53E)
15E53A:  ADD             R0, PC; off_234A24
15E53C:  LDR             R0, [R0]; dword_23DEEC
15E53E:  LDR             R0, [R0]
15E540:  CBZ             R0, loc_15E552
15E542:  LDR             R0, [R0,#0x68]
15E544:  CBZ             R0, loc_15E552
15E546:  LDRB.W          R0, [R0,#0x50]
15E54A:  CMP             R0, #0
15E54C:  IT NE
15E54E:  MOVNE           R0, #1
15E550:  BX              LR
15E552:  MOVS            R0, #0
15E554:  BX              LR
