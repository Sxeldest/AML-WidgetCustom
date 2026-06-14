; =========================================================
; Game Engine Function: _Z22IsBuildingPointerValidP9CBuilding
; Address            : 0x280158 - 0x280190
; =========================================================

280158:  CBZ             R0, loc_28018C
28015A:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x280160)
28015C:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
28015E:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
280160:  LDR             R1, [R1]; CPools::ms_pBuildingPool
280162:  LDR             R2, [R1]
280164:  SUBS            R0, R0, R2
280166:  CMP             R0, #0
280168:  BLT             loc_28018C
28016A:  MOVW            R2, #0xEEEF
28016E:  ASRS            R0, R0, #2
280170:  MOVT            R2, #0xEEEE
280174:  MULS            R0, R2
280176:  LDR             R2, [R1,#8]
280178:  CMP             R0, R2
28017A:  BGE             loc_28018C
28017C:  LDR             R1, [R1,#4]
28017E:  LDRSB           R1, [R1,R0]
280180:  MOVS            R0, #0
280182:  CMP.W           R1, #0xFFFFFFFF
280186:  IT GT
280188:  MOVGT           R0, #1
28018A:  BX              LR
28018C:  MOVS            R0, #0
28018E:  BX              LR
