; =========================================================
; Game Engine Function: INT123_decclass
; Address            : 0x2255D4 - 0x2255F6
; =========================================================

2255D4:  SUBS            R1, R0, #7
2255D6:  CMP             R1, #6
2255D8:  BCS             loc_2255EA
2255DA:  UXTB            R1, R1
2255DC:  MOVS            R2, #0x35 ; '5'
2255DE:  LSR.W           R1, R2, R1
2255E2:  LSLS            R1, R1, #0x1F
2255E4:  ITT NE
2255E6:  MOVNE           R0, #2
2255E8:  BXNE            LR
2255EA:  MOVS            R1, #1
2255EC:  CMP             R0, #0xE
2255EE:  IT EQ
2255F0:  MOVEQ           R1, #2
2255F2:  MOV             R0, R1
2255F4:  BX              LR
