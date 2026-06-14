; =========================================================
; Game Engine Function: sub_109FFC
; Address            : 0x109FFC - 0x10A010
; =========================================================

109FFC:  LDR             R2, [R0,#0xC]
109FFE:  CMP             R1, #0
10A000:  IT NE
10A002:  MOVNE           R1, #1
10A004:  LSLS            R3, R1, #1
10A006:  STR.W           R3, [R2,#0x508]
10A00A:  STRB.W          R1, [R0,#0x22]
10A00E:  BX              LR
