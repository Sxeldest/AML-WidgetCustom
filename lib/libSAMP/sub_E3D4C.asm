; =========================================================
; Game Engine Function: sub_E3D4C
; Address            : 0xE3D4C - 0xE3D7A
; =========================================================

E3D4C:  LDR             R2, [R0,#0x18]
E3D4E:  LDR             R1, [R0,#0x2C]
E3D50:  CMP             R1, R2
E3D52:  ITT CC
E3D54:  STRCC           R2, [R0,#0x2C]
E3D56:  MOVCC           R1, R2
E3D58:  LDRB.W          R2, [R0,#0x30]
E3D5C:  LSLS            R2, R2, #0x1C
E3D5E:  BPL             loc_E3D74
E3D60:  LDR             R2, [R0,#0x10]
E3D62:  CMP             R2, R1
E3D64:  ITT CC
E3D66:  STRCC           R1, [R0,#0x10]
E3D68:  MOVCC           R2, R1
E3D6A:  LDR             R0, [R0,#0xC]
E3D6C:  CMP             R0, R2
E3D6E:  ITT CC
E3D70:  LDRBCC          R0, [R0]
E3D72:  BXCC            LR
E3D74:  MOV.W           R0, #0xFFFFFFFF
E3D78:  BX              LR
