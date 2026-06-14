; =========================================================
; Game Engine Function: _Z17_rwpathisabsolutePKc
; Address            : 0x1C2014 - 0x1C203A
; =========================================================

1C2014:  MOV             R1, R0
1C2016:  LDRB            R0, [R1]
1C2018:  CMP             R0, #0x5C ; '\'
1C201A:  ITT EQ
1C201C:  MOVEQ           R0, #1
1C201E:  BXEQ            LR
1C2020:  AND.W           R0, R0, #0xDF
1C2024:  SUBS            R0, #0x41 ; 'A'
1C2026:  UXTB            R2, R0
1C2028:  MOVS            R0, #0
1C202A:  CMP             R2, #0x19
1C202C:  IT HI
1C202E:  BXHI            LR
1C2030:  LDRB            R1, [R1,#1]
1C2032:  CMP             R1, #0x3A ; ':'
1C2034:  IT EQ
1C2036:  MOVEQ           R0, #1
1C2038:  BX              LR
