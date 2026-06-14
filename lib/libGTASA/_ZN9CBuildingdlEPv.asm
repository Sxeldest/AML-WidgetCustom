; =========================================================
; Game Engine Function: _ZN9CBuildingdlEPv
; Address            : 0x2800F8 - 0x280124
; =========================================================

2800F8:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2800FE)
2800FA:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2800FC:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
2800FE:  LDR             R1, [R1]; CPools::ms_pBuildingPool
280100:  LDRD.W          R2, R3, [R1]
280104:  SUBS            R0, R0, R2
280106:  MOV             R2, #0xEEEEEEEF
28010E:  ASRS            R0, R0, #2
280110:  MULS            R0, R2
280112:  LDRB            R2, [R3,R0]
280114:  ORR.W           R2, R2, #0x80
280118:  STRB            R2, [R3,R0]
28011A:  LDR             R2, [R1,#0xC]
28011C:  CMP             R0, R2
28011E:  IT LT
280120:  STRLT           R0, [R1,#0xC]
280122:  BX              LR
