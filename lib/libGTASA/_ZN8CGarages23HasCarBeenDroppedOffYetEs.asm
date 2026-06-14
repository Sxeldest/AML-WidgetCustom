; =========================================================
; Game Engine Function: _ZN8CGarages23HasCarBeenDroppedOffYetEs
; Address            : 0x313920 - 0x31393A
; =========================================================

313920:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x313928)
313922:  MOVS            R2, #0xD8
313924:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
313926:  LDR             R1, [R1]; CGarages::aGarages ...
313928:  SMLABB.W        R0, R0, R2, R1
31392C:  LDRB.W          R1, [R0,#0x4D]
313930:  MOVS            R0, #0
313932:  CMP             R1, #5
313934:  IT EQ
313936:  MOVEQ           R0, #1
313938:  BX              LR
