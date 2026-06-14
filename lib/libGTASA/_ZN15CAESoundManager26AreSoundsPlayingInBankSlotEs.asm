; =========================================================
; Game Engine Function: _ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs
; Address            : 0x3A8D3C - 0x3A8D78
; =========================================================

3A8D3C:  ADDS            R0, #0x5C ; '\'
3A8D3E:  MOV.W           R12, #0
3A8D42:  MOV.W           R2, #0xFFFFFFFF
3A8D46:  UXTH            R1, R1
3A8D48:  LDRH            R3, [R0]
3A8D4A:  CBZ             R3, loc_3A8D62
3A8D4C:  LDRH.W          R3, [R0,#-0x58]
3A8D50:  CMP             R3, R1
3A8D52:  BNE             loc_3A8D62
3A8D54:  LDRH            R3, [R0,#6]
3A8D56:  CMP             R3, #0
3A8D58:  ITT NE
3A8D5A:  MOVNE           R0, #2
3A8D5C:  BXNE            LR
3A8D5E:  MOV.W           R12, #1
3A8D62:  ADDS            R2, #1
3A8D64:  ADDS            R0, #0x74 ; 't'
3A8D66:  CMP.W           R2, #0x12A
3A8D6A:  BLE             loc_3A8D48
3A8D6C:  UXTB.W          R0, R12
3A8D70:  CMP             R0, #0
3A8D72:  IT NE
3A8D74:  MOVNE           R0, #1
3A8D76:  BX              LR
