; =========================================================
; Game Engine Function: png_set_interlace_handling
; Address            : 0x203252 - 0x203272
; =========================================================

203252:  CMP             R0, #0
203254:  ITT NE
203256:  LDRBNE.W        R1, [R0,#0x20C]
20325A:  CMPNE           R1, #0
20325C:  BEQ             loc_20326E
20325E:  LDR.W           R1, [R0,#0x13C]
203262:  ORR.W           R1, R1, #2
203266:  STR.W           R1, [R0,#0x13C]
20326A:  MOVS            R0, #7
20326C:  BX              LR
20326E:  MOVS            R0, #1
203270:  BX              LR
