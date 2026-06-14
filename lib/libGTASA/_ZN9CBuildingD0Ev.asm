; =========================================================
; Game Engine Function: _ZN9CBuildingD0Ev
; Address            : 0x28021C - 0x280250
; =========================================================

28021C:  PUSH            {R7,LR}
28021E:  MOV             R7, SP
280220:  BLX             j__ZN7CEntityD2Ev; CEntity::~CEntity()
280224:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x28022A)
280226:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
280228:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
28022A:  LDR             R1, [R1]; CPools::ms_pBuildingPool
28022C:  LDRD.W          R2, R3, [R1]
280230:  SUBS            R0, R0, R2
280232:  MOV             R2, #0xEEEEEEEF
28023A:  ASRS            R0, R0, #2
28023C:  MULS            R0, R2
28023E:  LDRB            R2, [R3,R0]
280240:  ORR.W           R2, R2, #0x80
280244:  STRB            R2, [R3,R0]
280246:  LDR             R2, [R1,#0xC]
280248:  CMP             R0, R2
28024A:  IT LT
28024C:  STRLT           R0, [R1,#0xC]
28024E:  POP             {R7,PC}
