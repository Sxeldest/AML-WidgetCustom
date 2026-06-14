; =========================================================
; Game Engine Function: sub_1F2F4C
; Address            : 0x1F2F4C - 0x1F2F78
; =========================================================

1F2F4C:  CMP             R0, R1
1F2F4E:  ITT NE
1F2F50:  LDRBNE          R2, [R0]
1F2F52:  CMPNE           R2, #0x2F ; '/'
1F2F54:  BNE             loc_1F2F5A
1F2F56:  MOVS            R0, #0
1F2F58:  BX              LR
1F2F5A:  MOV.W           R2, #0xFFFFFFFF
1F2F5E:  CMP             R0, R1
1F2F60:  IT CC
1F2F62:  MOVCC           R2, #1
1F2F64:  ADD             R0, R2
1F2F66:  CMP             R0, R1
1F2F68:  ITT EQ
1F2F6A:  MOVEQ           R0, R1
1F2F6C:  BXEQ            LR
1F2F6E:  LDRB            R3, [R0]
1F2F70:  CMP             R3, #0x2F ; '/'
1F2F72:  IT EQ
1F2F74:  BXEQ            LR
1F2F76:  B               loc_1F2F64
