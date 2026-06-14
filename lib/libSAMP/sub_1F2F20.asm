; =========================================================
; Game Engine Function: sub_1F2F20
; Address            : 0x1F2F20 - 0x1F2F4C
; =========================================================

1F2F20:  CMP             R0, R1
1F2F22:  BEQ             loc_1F2F48
1F2F24:  LDRB            R2, [R0]
1F2F26:  CMP             R2, #0x2F ; '/'
1F2F28:  BNE             loc_1F2F48
1F2F2A:  MOV.W           R2, #0xFFFFFFFF
1F2F2E:  CMP             R0, R1
1F2F30:  IT CC
1F2F32:  MOVCC           R2, #1
1F2F34:  ADD             R0, R2
1F2F36:  CMP             R0, R1
1F2F38:  ITT EQ
1F2F3A:  MOVEQ           R0, R1
1F2F3C:  BXEQ            LR
1F2F3E:  LDRB            R3, [R0]
1F2F40:  CMP             R3, #0x2F ; '/'
1F2F42:  IT NE
1F2F44:  BXNE            LR
1F2F46:  B               loc_1F2F34
1F2F48:  MOVS            R0, #0
1F2F4A:  BX              LR
