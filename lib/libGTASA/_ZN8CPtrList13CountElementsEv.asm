; =========================================================
; Game Engine Function: _ZN8CPtrList13CountElementsEv
; Address            : 0x40DAB8 - 0x40DACA
; =========================================================

40DAB8:  LDR             R1, [R0]
40DABA:  MOVS            R0, #0
40DABC:  B               loc_40DAC2
40DABE:  LDR             R1, [R1,#4]
40DAC0:  ADDS            R0, #1
40DAC2:  CMP             R1, #0
40DAC4:  IT EQ
40DAC6:  BXEQ            LR
40DAC8:  B               loc_40DABE
