; =========================================================
; Game Engine Function: sub_180EE4
; Address            : 0x180EE4 - 0x180EF8
; =========================================================

180EE4:  CBZ             R1, locret_180EF6
180EE6:  CBZ             R2, locret_180EF6
180EE8:  LDR             R3, [R1]
180EEA:  CBZ             R3, locret_180EF6
180EEC:  ADDW            R0, R0, #0x7D4
180EF0:  MOVS            R3, #1
180EF2:  B.W             sub_17E686
180EF6:  BX              LR
