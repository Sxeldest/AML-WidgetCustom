; =========================================================
; Game Engine Function: _ZN8CGarages16DeActivateGarageEs
; Address            : 0x313940 - 0x31395A
; =========================================================

313940:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x313948)
313942:  MOVS            R2, #0xD8
313944:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
313946:  LDR             R1, [R1]; CGarages::aGarages ...
313948:  SMLABB.W        R0, R0, R2, R1
31394C:  LDRB.W          R1, [R0,#0x4E]
313950:  ORR.W           R1, R1, #2
313954:  STRB.W          R1, [R0,#0x4E]
313958:  BX              LR
