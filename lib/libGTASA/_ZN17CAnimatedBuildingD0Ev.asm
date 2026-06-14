; =========================================================
; Game Engine Function: _ZN17CAnimatedBuildingD0Ev
; Address            : 0x2801B8 - 0x2801EC
; =========================================================

2801B8:  PUSH            {R7,LR}
2801BA:  MOV             R7, SP
2801BC:  BLX             j__ZN7CEntityD2Ev; CEntity::~CEntity()
2801C0:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2801C6)
2801C2:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2801C4:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
2801C6:  LDR             R1, [R1]; CPools::ms_pBuildingPool
2801C8:  LDRD.W          R2, R3, [R1]
2801CC:  SUBS            R0, R0, R2
2801CE:  MOV             R2, #0xEEEEEEEF
2801D6:  ASRS            R0, R0, #2
2801D8:  MULS            R0, R2
2801DA:  LDRB            R2, [R3,R0]
2801DC:  ORR.W           R2, R2, #0x80
2801E0:  STRB            R2, [R3,R0]
2801E2:  LDR             R2, [R1,#0xC]
2801E4:  CMP             R0, R2
2801E6:  IT LT
2801E8:  STRLT           R0, [R1,#0xC]
2801EA:  POP             {R7,PC}
