; =========================================================
; Game Engine Function: _ZN6CGangs23SetGangPedModelOverrideEsa
; Address            : 0x49EF24 - 0x49EF30
; =========================================================

49EF24:  LDR             R2, =(_ZN6CGangs4GangE_ptr - 0x49EF2C)
49EF26:  LSLS            R0, R0, #4
49EF28:  ADD             R2, PC; _ZN6CGangs4GangE_ptr
49EF2A:  LDR             R2, [R2]; CGangs::Gang ...
49EF2C:  STRB            R1, [R2,R0]
49EF2E:  BX              LR
