; =========================================================
; Game Engine Function: _ZN6CGangs27SetWillAttackPlayerWithCopsE8ePedTypeb
; Address            : 0x49EE50 - 0x49EE62
; =========================================================

49EE50:  SUBS            R0, #7
49EE52:  CMP             R0, #9
49EE54:  IT HI
49EE56:  BXHI            LR
49EE58:  LDR             R2, =(_ZN6CGangs18GangAttackWithCopsE_ptr - 0x49EE5E)
49EE5A:  ADD             R2, PC; _ZN6CGangs18GangAttackWithCopsE_ptr
49EE5C:  LDR             R2, [R2]; CGangs::GangAttackWithCops ...
49EE5E:  STRB            R1, [R2,R0]
49EE60:  BX              LR
