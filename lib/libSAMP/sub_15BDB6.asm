; =========================================================
; Game Engine Function: sub_15BDB6
; Address            : 0x15BDB6 - 0x15BDD8
; =========================================================

15BDB6:  LDRB            R1, [R0,#0x12]
15BDB8:  CBZ             R1, loc_15BDBE
15BDBA:  MOVS            R0, #1
15BDBC:  BX              LR
15BDBE:  LDRB            R1, [R0,#0x11]
15BDC0:  CBZ             R1, loc_15BDC6
15BDC2:  MOVS            R0, #0
15BDC4:  BX              LR
15BDC6:  LDR             R0, [R0,#4]
15BDC8:  CMP             R0, #0
15BDCA:  BEQ             loc_15BDBA
15BDCC:  LDRB            R0, [R0,#4]
15BDCE:  DMB.W           ISH
15BDD2:  AND.W           R0, R0, #1
15BDD6:  BX              LR
