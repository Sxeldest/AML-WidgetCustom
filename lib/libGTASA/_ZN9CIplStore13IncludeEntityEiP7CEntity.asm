; =========================================================
; Game Engine Function: _ZN9CIplStore13IncludeEntityEiP7CEntity
; Address            : 0x2810CC - 0x281158
; =========================================================

2810CC:  LDR             R2, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2810D2)
2810CE:  ADD             R2, PC; _ZN9CIplStore8ms_pPoolE_ptr
2810D0:  LDR             R2, [R2]; CIplStore::ms_pPool ...
2810D2:  LDR             R2, [R2]; CIplStore::ms_pPool
2810D4:  LDR             R3, [R2,#4]
2810D6:  LDRSB           R3, [R3,R0]
2810D8:  CMP             R3, #0
2810DA:  BLT             loc_2810E6
2810DC:  MOVS            R3, #0x34 ; '4'
2810DE:  LDR             R2, [R2]
2810E0:  MLA.W           R0, R0, R3, R2
2810E4:  B               loc_2810E8
2810E6:  MOVS            R0, #0
2810E8:  LDRB.W          R2, [R1,#0x3A]
2810EC:  AND.W           R2, R2, #7
2810F0:  CMP             R2, #5
2810F2:  BEQ             loc_28112A
2810F4:  CMP             R2, #1
2810F6:  IT NE
2810F8:  BXNE            LR
2810FA:  LDR             R2, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x281100)
2810FC:  ADD             R2, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2810FE:  LDR             R2, [R2]; CPools::ms_pBuildingPool ...
281100:  LDR             R2, [R2]; CPools::ms_pBuildingPool
281102:  LDR             R2, [R2]
281104:  SUBS            R1, R1, R2
281106:  MOV             R2, #0xEEEEEEEF
28110E:  ASRS            R1, R1, #2
281110:  MULS            R1, R2
281112:  LDRSH.W         R2, [R0,#0x22]
281116:  CMP             R1, R2
281118:  IT LT
28111A:  STRHLT          R1, [R0,#0x22]
28111C:  LDRSH.W         R2, [R0,#0x24]
281120:  CMP             R1, R2
281122:  ITT GT
281124:  STRHGT          R1, [R0,#0x24]
281126:  BXGT            LR
281128:  BX              LR
28112A:  LDR             R2, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x281130)
28112C:  ADD             R2, PC; _ZN6CPools13ms_pDummyPoolE_ptr
28112E:  LDR             R2, [R2]; CPools::ms_pDummyPool ...
281130:  LDR             R2, [R2]; CPools::ms_pDummyPool
281132:  LDR             R2, [R2]
281134:  SUBS            R1, R1, R2
281136:  MOV             R2, #0xEEEEEEEF
28113E:  ASRS            R1, R1, #2
281140:  MULS            R1, R2
281142:  LDRSH.W         R2, [R0,#0x26]
281146:  CMP             R1, R2
281148:  IT LT
28114A:  STRHLT          R1, [R0,#0x26]
28114C:  LDRSH.W         R2, [R0,#0x28]
281150:  CMP             R1, R2
281152:  IT GT
281154:  STRHGT          R1, [R0,#0x28]
281156:  BX              LR
