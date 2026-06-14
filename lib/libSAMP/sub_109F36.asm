; =========================================================
; Game Engine Function: sub_109F36
; Address            : 0x109F36 - 0x109F5E
; =========================================================

109F36:  LDR             R0, [R0,#0xC]
109F38:  CBZ             R0, loc_109F5A
109F3A:  LDRH            R1, [R0,#0x26]
109F3C:  MOVS            R0, #1
109F3E:  SUBW            R2, R1, #0x219
109F42:  CMP             R2, #2
109F44:  ITT CS
109F46:  SUBWCS          R2, R1, #0x239
109F4A:  CMPCS           R2, #2
109F4C:  BCS             loc_109F50
109F4E:  BX              LR
109F50:  MOVW            R2, #0x1C1
109F54:  CMP             R1, R2
109F56:  IT EQ
109F58:  BXEQ            LR
109F5A:  MOVS            R0, #0
109F5C:  BX              LR
