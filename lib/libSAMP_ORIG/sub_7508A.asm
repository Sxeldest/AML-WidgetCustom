; =========================================================
; Game Engine Function: sub_7508A
; Address            : 0x7508A - 0x750B8
; =========================================================

7508A:  LDR             R2, [R0,#0x18]
7508C:  LDR             R1, [R0,#0x2C]
7508E:  CMP             R1, R2
75090:  ITT CC
75092:  STRCC           R2, [R0,#0x2C]
75094:  MOVCC           R1, R2
75096:  LDRB.W          R2, [R0,#0x30]
7509A:  LSLS            R2, R2, #0x1C
7509C:  BPL             loc_750B2
7509E:  LDR             R2, [R0,#0x10]
750A0:  CMP             R2, R1
750A2:  ITT CC
750A4:  STRCC           R1, [R0,#0x10]
750A6:  MOVCC           R2, R1
750A8:  LDR             R0, [R0,#0xC]
750AA:  CMP             R0, R2
750AC:  ITT CC
750AE:  LDRBCC          R0, [R0]
750B0:  BXCC            LR
750B2:  MOV.W           R0, #0xFFFFFFFF
750B6:  BX              LR
