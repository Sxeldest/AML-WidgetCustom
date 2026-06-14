; =========================================================
; Game Engine Function: _ZN12CFireManager20PlentyFiresAvailableEv
; Address            : 0x3F2B3C - 0x3F2B62
; =========================================================

3F2B3C:  MOVS            R1, #0
3F2B3E:  MOV.W           R2, #0xFFFFFFFF
3F2B42:  B               loc_3F2B50
3F2B44:  ADDS            R2, #1
3F2B46:  ADDS            R0, #0x28 ; '('
3F2B48:  CMP             R2, #0x3B ; ';'
3F2B4A:  ITT GE
3F2B4C:  MOVGE           R0, #0
3F2B4E:  BXGE            LR
3F2B50:  LDRB            R3, [R0]
3F2B52:  LSLS            R3, R3, #0x1F
3F2B54:  BNE             loc_3F2B44
3F2B56:  CMP             R1, #4
3F2B58:  ITT GT
3F2B5A:  MOVGT           R0, #1
3F2B5C:  BXGT            LR
3F2B5E:  ADDS            R1, #1
3F2B60:  B               loc_3F2B44
