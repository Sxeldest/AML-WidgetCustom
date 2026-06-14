; =========================================================
; Game Engine Function: _ZN4CPeddlEPvi
; Address            : 0x49F978 - 0x49F9A4
; =========================================================

49F978:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x49F97E)
49F97A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
49F97C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
49F97E:  LDR             R1, [R1]; CPools::ms_pPedPool
49F980:  LDRD.W          R2, R3, [R1]
49F984:  SUBS            R0, R0, R2
49F986:  MOV             R2, #0xBED87F3B
49F98E:  ASRS            R0, R0, #2
49F990:  MULS            R0, R2
49F992:  LDRB            R2, [R3,R0]
49F994:  ORR.W           R2, R2, #0x80
49F998:  STRB            R2, [R3,R0]
49F99A:  LDR             R2, [R1,#0xC]
49F99C:  CMP             R0, R2
49F99E:  IT LT
49F9A0:  STRLT           R0, [R1,#0xC]
49F9A2:  BX              LR
