; =========================================================
; Game Engine Function: sub_180ED0
; Address            : 0x180ED0 - 0x180EE4
; =========================================================

180ED0:  CBZ             R1, locret_180EE2
180ED2:  CBZ             R2, locret_180EE2
180ED4:  LDR             R3, [R1]
180ED6:  CBZ             R3, locret_180EE2
180ED8:  ADDW            R0, R0, #0x7D4
180EDC:  MOVS            R3, #0
180EDE:  B.W             sub_17E686
180EE2:  BX              LR
