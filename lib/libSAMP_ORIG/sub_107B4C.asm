; =========================================================
; Game Engine Function: sub_107B4C
; Address            : 0x107B4C - 0x107B7C
; =========================================================

107B4C:  LDR             R0, [R1,#0x10]
107B4E:  CBZ             R0, loc_107B66
107B50:  CMP             R0, R2
107B52:  BEQ             loc_107B70
107B54:  MOVS            R0, #1
107B56:  STRB.W          R0, [R1,#0x36]
107B5A:  MOVS            R0, #2
107B5C:  STR             R0, [R1,#0x18]
107B5E:  LDR             R0, [R1,#0x24]
107B60:  ADDS            R0, #1
107B62:  STR             R0, [R1,#0x24]
107B64:  B               locret_107B7A
107B66:  MOVS            R0, #1
107B68:  STR             R3, [R1,#0x18]
107B6A:  STR             R0, [R1,#0x24]
107B6C:  STR             R2, [R1,#0x10]
107B6E:  BX              LR
107B70:  LDR             R0, [R1,#0x18]
107B72:  CMP             R0, #2
107B74:  ITT EQ
107B76:  STREQ           R3, [R1,#0x18]
107B78:  BXEQ            LR
107B7A:  BX              LR
