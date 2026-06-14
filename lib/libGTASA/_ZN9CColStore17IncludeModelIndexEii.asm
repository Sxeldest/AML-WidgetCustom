; =========================================================
; Game Engine Function: _ZN9CColStore17IncludeModelIndexEii
; Address            : 0x2E26A8 - 0x2E26DA
; =========================================================

2E26A8:  LDR             R2, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E26AE)
2E26AA:  ADD             R2, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E26AC:  LDR             R2, [R2]; CColStore::ms_pColPool ...
2E26AE:  LDR             R2, [R2]; CColStore::ms_pColPool
2E26B0:  LDR             R3, [R2,#4]
2E26B2:  LDRSB           R3, [R3,R0]
2E26B4:  CMP             R3, #0
2E26B6:  BLT             loc_2E26C2
2E26B8:  MOVS            R3, #0x2C ; ','
2E26BA:  LDR             R2, [R2]
2E26BC:  MLA.W           R0, R0, R3, R2
2E26C0:  B               loc_2E26C4
2E26C2:  MOVS            R0, #0
2E26C4:  LDRSH.W         R2, [R0,#0x22]
2E26C8:  CMP             R2, R1
2E26CA:  IT GT
2E26CC:  STRHGT          R1, [R0,#0x22]
2E26CE:  LDRSH.W         R2, [R0,#0x24]
2E26D2:  CMP             R2, R1
2E26D4:  IT LT
2E26D6:  STRHLT          R1, [R0,#0x24]
2E26D8:  BX              LR
