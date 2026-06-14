; =========================================================
; Game Engine Function: _ZN11CPlayerInfo6GetPosEv
; Address            : 0x40BA90 - 0x40BACA
; =========================================================

40BA90:  LDR             R1, [R1]
40BA92:  LDRB.W          R2, [R1,#0x485]
40BA96:  LSLS            R2, R2, #0x1F
40BA98:  ITT NE
40BA9A:  LDRNE.W         R2, [R1,#0x590]
40BA9E:  CMPNE           R2, #0
40BAA0:  BNE             loc_40BAB0
40BAA2:  LDR             R2, [R1,#0x14]
40BAA4:  ADD.W           R3, R2, #0x30 ; '0'
40BAA8:  CMP             R2, #0
40BAAA:  IT EQ
40BAAC:  ADDEQ           R3, R1, #4
40BAAE:  B               loc_40BABC
40BAB0:  LDR             R1, [R2,#0x14]
40BAB2:  ADD.W           R3, R1, #0x30 ; '0'
40BAB6:  CMP             R1, #0
40BAB8:  IT EQ
40BABA:  ADDEQ           R3, R2, #4
40BABC:  VLDR            D16, [R3]
40BAC0:  LDR             R1, [R3,#8]
40BAC2:  STR             R1, [R0,#8]
40BAC4:  VSTR            D16, [R0]
40BAC8:  BX              LR
