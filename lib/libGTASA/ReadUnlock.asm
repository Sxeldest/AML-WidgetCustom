; =========================================================
; Game Engine Function: ReadUnlock
; Address            : 0x246C3C - 0x246C72
; =========================================================

246C3C:  DMB.W           ISH
246C40:  LDREX.W         R1, [R0]
246C44:  SUBS            R2, R1, #1
246C46:  STREX.W         R3, R2, [R0]
246C4A:  CMP             R3, #0
246C4C:  BNE             loc_246C40
246C4E:  CMP             R1, #1
246C50:  DMB.W           ISH
246C54:  IT NE
246C56:  BXNE            LR
246C58:  ADDS            R0, #0x10
246C5A:  MOVS            R1, #0
246C5C:  DMB.W           ISH
246C60:  LDREX.W         R2, [R0]
246C64:  STREX.W         R2, R1, [R0]
246C68:  CMP             R2, #0
246C6A:  BNE             loc_246C60
246C6C:  DMB.W           ISH
246C70:  BX              LR
