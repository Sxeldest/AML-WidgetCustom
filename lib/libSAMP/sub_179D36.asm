; =========================================================
; Game Engine Function: sub_179D36
; Address            : 0x179D36 - 0x179D84
; =========================================================

179D36:  LDR             R3, [R0,#0x1C]
179D38:  CMP             R3, R1
179D3A:  BGE             loc_179D40
179D3C:  STR             R1, [R0,#0x1C]
179D3E:  B               loc_179D48
179D40:  LDR             R3, [R0,#4]
179D42:  CMP             R3, #0
179D44:  IT EQ
179D46:  STREQ           R1, [R0,#0x1C]
179D48:  LDR             R3, [R0,#0x24]
179D4A:  CMP             R3, R2
179D4C:  BGE             loc_179D52
179D4E:  STR             R2, [R0,#0x24]
179D50:  B               loc_179D5A
179D52:  LDR             R3, [R0,#4]
179D54:  CMP             R3, #0
179D56:  IT EQ
179D58:  STREQ           R2, [R0,#0x24]
179D5A:  LDR             R3, [R0,#0x18]
179D5C:  CMP             R3, R1
179D5E:  BLE             loc_179D64
179D60:  STR             R1, [R0,#0x18]
179D62:  B               loc_179D6C
179D64:  LDR             R3, [R0,#4]
179D66:  CMP             R3, #0
179D68:  IT EQ
179D6A:  STREQ           R1, [R0,#0x18]
179D6C:  LDR             R1, [R0,#0x20]
179D6E:  CMP             R1, R2
179D70:  BLE             loc_179D76
179D72:  STR             R2, [R0,#0x20]
179D74:  B               loc_179D7E
179D76:  LDR             R1, [R0,#4]
179D78:  CMP             R1, #0
179D7A:  IT EQ
179D7C:  STREQ           R2, [R0,#0x20]
179D7E:  MOVS            R1, #1
179D80:  STR             R1, [R0,#4]
179D82:  BX              LR
