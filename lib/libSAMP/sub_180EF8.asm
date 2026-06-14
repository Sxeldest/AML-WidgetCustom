; =========================================================
; Game Engine Function: sub_180EF8
; Address            : 0x180EF8 - 0x180F08
; =========================================================

180EF8:  CBZ             R1, locret_180F06
180EFA:  LDR             R2, [R1]
180EFC:  CBZ             R2, locret_180F06
180EFE:  ADDW            R0, R0, #0x7D4
180F02:  B.W             sub_17E820
180F06:  BX              LR
