; =========================================================
; Game Engine Function: _ZN8CGarages14ActivateGarageEs
; Address            : 0x313960 - 0x31399C
; =========================================================

313960:  LDR             R2, =(_ZN8CGarages8aGaragesE_ptr - 0x31396A)
313962:  MOV.W           R12, #0xD8
313966:  ADD             R2, PC; _ZN8CGarages8aGaragesE_ptr
313968:  LDR             R2, [R2]; CGarages::aGarages ...
31396A:  SMLABB.W        R2, R0, R12, R2
31396E:  LDRB.W          R3, [R2,#0x4C]
313972:  LDRB.W          R1, [R2,#0x4E]
313976:  CMP             R3, #0xB
313978:  AND.W           R1, R1, #0xFD
31397C:  STRB.W          R1, [R2,#0x4E]
313980:  IT NE
313982:  BXNE            LR
313984:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x31398A)
313986:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
313988:  LDR             R1, [R1]; CGarages::aGarages ...
31398A:  SMLABB.W        R0, R0, R12, R1
31398E:  LDRB.W          R1, [R0,#0x4D]!
313992:  CMP             R1, #0
313994:  ITT EQ
313996:  MOVEQ           R1, #3
313998:  STRBEQ          R1, [R0]
31399A:  BX              LR
