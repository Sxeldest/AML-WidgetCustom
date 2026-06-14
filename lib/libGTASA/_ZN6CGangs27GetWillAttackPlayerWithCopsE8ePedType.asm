; =========================================================
; Game Engine Function: _ZN6CGangs27GetWillAttackPlayerWithCopsE8ePedType
; Address            : 0x49EE68 - 0x49EE82
; =========================================================

49EE68:  SUBS            R0, #7
49EE6A:  CMP             R0, #9
49EE6C:  ITT HI
49EE6E:  MOVHI           R0, #0
49EE70:  BXHI            LR
49EE72:  LDR             R1, =(_ZN6CGangs18GangAttackWithCopsE_ptr - 0x49EE78)
49EE74:  ADD             R1, PC; _ZN6CGangs18GangAttackWithCopsE_ptr
49EE76:  LDR             R1, [R1]; CGangs::GangAttackWithCops ...
49EE78:  LDRB            R0, [R1,R0]
49EE7A:  CMP             R0, #0
49EE7C:  IT NE
49EE7E:  MOVNE           R0, #1
49EE80:  BX              LR
