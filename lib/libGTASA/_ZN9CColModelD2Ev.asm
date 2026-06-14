; =========================================================
; Game Engine Function: _ZN9CColModelD2Ev
; Address            : 0x2E1760 - 0x2E17D4
; =========================================================

2E1760:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CColModel::~CColModel()'
2E1762:  ADD             R7, SP, #8
2E1764:  MOV             R4, R0
2E1766:  LDR             R0, [R4,#0x2C]
2E1768:  CBZ             R0, loc_2E17C2
2E176A:  LDRB.W          R1, [R4,#0x29]
2E176E:  TST.W           R1, #4
2E1772:  BEQ             loc_2E17B0
2E1774:  LDR             R1, [R0,#0x14]
2E1776:  CBZ             R1, loc_2E1780
2E1778:  MOV             R0, R1; p
2E177A:  BLX             free
2E177E:  LDR             R0, [R4,#0x2C]
2E1780:  LDR             R1, [R0,#0x18]
2E1782:  CBZ             R1, loc_2E178C
2E1784:  MOV             R0, R1; p
2E1786:  BLX             free
2E178A:  LDR             R0, [R4,#0x2C]
2E178C:  LDR             R1, [R0,#0x28]
2E178E:  CBZ             R1, loc_2E1798
2E1790:  MOV             R0, R1; p
2E1792:  BLX             free
2E1796:  LDR             R0, [R4,#0x2C]
2E1798:  LDR             R1, [R0,#0x2C]
2E179A:  CBZ             R1, loc_2E17A4
2E179C:  MOV             R0, R1; p
2E179E:  BLX             free
2E17A2:  LDR             R0, [R4,#0x2C]; this
2E17A4:  LDRB.W          R1, [R4,#0x29]
2E17A8:  BIC.W           R1, R1, #4
2E17AC:  STRB.W          R1, [R4,#0x29]
2E17B0:  LSLS            R1, R1, #0x1E; CCollisionData *
2E17B2:  BMI             loc_2E17C6
2E17B4:  BLX             j__ZN14CCollisionData22RemoveCollisionVolumesEv; CCollisionData::RemoveCollisionVolumes(void)
2E17B8:  LDR             R0, [R4,#0x2C]; void *
2E17BA:  CMP             R0, #0
2E17BC:  IT NE
2E17BE:  BLXNE           _ZdlPv; operator delete(void *)
2E17C2:  MOV             R0, R4
2E17C4:  POP             {R4,R6,R7,PC}
2E17C6:  BLX             j__ZN10CCollision20RemoveTrianglePlanesEP14CCollisionData; CCollision::RemoveTrianglePlanes(CCollisionData *)
2E17CA:  LDR             R0, [R4,#0x2C]; this
2E17CC:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E17D0:  MOV             R0, R4
2E17D2:  POP             {R4,R6,R7,PC}
