; =========================================================
; Game Engine Function: _Z31IsObjectPointerValid_NotInWorldP7CObject
; Address            : 0x455FCC - 0x456004
; =========================================================

455FCC:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x455FD2)
455FCE:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
455FD0:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
455FD2:  LDR             R1, [R1]; CPools::ms_pObjectPool
455FD4:  LDR             R2, [R1]
455FD6:  SUBS            R0, R0, R2
455FD8:  CMP             R0, #0
455FDA:  ITT LT
455FDC:  MOVLT           R0, #0
455FDE:  BXLT            LR
455FE0:  MOVW            R2, #0x8FD9
455FE4:  ASRS            R0, R0, #2
455FE6:  MOVT            R2, #0xD8FD
455FEA:  LDR             R3, [R1,#8]
455FEC:  MULS            R2, R0
455FEE:  MOVS            R0, #0
455FF0:  CMP             R2, R3
455FF2:  IT GE
455FF4:  BXGE            LR
455FF6:  LDR             R1, [R1,#4]
455FF8:  LDRSB           R1, [R1,R2]
455FFA:  CMP.W           R1, #0xFFFFFFFF
455FFE:  IT GT
456000:  MOVGT           R0, #1
456002:  BX              LR
