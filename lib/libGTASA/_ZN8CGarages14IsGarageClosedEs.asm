; =========================================================
; Game Engine Function: _ZN8CGarages14IsGarageClosedEs
; Address            : 0x3139CC - 0x3139E6
; =========================================================

3139CC:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3139D4)
3139CE:  MOVS            R2, #0xD8
3139D0:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3139D2:  LDR             R1, [R1]; CGarages::aGarages ...
3139D4:  SMLABB.W        R0, R0, R2, R1
3139D8:  LDRB.W          R1, [R0,#0x4D]
3139DC:  MOVS            R0, #0
3139DE:  CMP             R1, #0
3139E0:  IT EQ
3139E2:  MOVEQ           R0, #1
3139E4:  BX              LR
