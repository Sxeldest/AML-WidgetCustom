; =========================================================
; Game Engine Function: _ZN9CColModel22RemoveCollisionVolumesEv
; Address            : 0x2E1A88 - 0x2E1B00
; =========================================================

2E1A88:  PUSH            {R4,R6,R7,LR}
2E1A8A:  ADD             R7, SP, #8
2E1A8C:  MOV             R4, R0
2E1A8E:  LDR             R0, [R4,#0x2C]
2E1A90:  CMP             R0, #0
2E1A92:  IT EQ
2E1A94:  POPEQ           {R4,R6,R7,PC}
2E1A96:  LDRB.W          R1, [R4,#0x29]
2E1A9A:  TST.W           R1, #4
2E1A9E:  BEQ             loc_2E1ADC
2E1AA0:  LDR             R1, [R0,#0x14]
2E1AA2:  CBZ             R1, loc_2E1AAC
2E1AA4:  MOV             R0, R1; p
2E1AA6:  BLX             free
2E1AAA:  LDR             R0, [R4,#0x2C]
2E1AAC:  LDR             R1, [R0,#0x18]
2E1AAE:  CBZ             R1, loc_2E1AB8
2E1AB0:  MOV             R0, R1; p
2E1AB2:  BLX             free
2E1AB6:  LDR             R0, [R4,#0x2C]
2E1AB8:  LDR             R1, [R0,#0x28]
2E1ABA:  CBZ             R1, loc_2E1AC4
2E1ABC:  MOV             R0, R1; p
2E1ABE:  BLX             free
2E1AC2:  LDR             R0, [R4,#0x2C]
2E1AC4:  LDR             R1, [R0,#0x2C]
2E1AC6:  CBZ             R1, loc_2E1AD0
2E1AC8:  MOV             R0, R1; p
2E1ACA:  BLX             free
2E1ACE:  LDR             R0, [R4,#0x2C]; this
2E1AD0:  LDRB.W          R1, [R4,#0x29]
2E1AD4:  BIC.W           R1, R1, #4
2E1AD8:  STRB.W          R1, [R4,#0x29]
2E1ADC:  LSLS            R1, R1, #0x1E; CCollisionData *
2E1ADE:  BMI             loc_2E1AF0
2E1AE0:  BLX             j__ZN14CCollisionData22RemoveCollisionVolumesEv; CCollisionData::RemoveCollisionVolumes(void)
2E1AE4:  LDR             R0, [R4,#0x2C]; void *
2E1AE6:  CMP             R0, #0
2E1AE8:  IT NE
2E1AEA:  BLXNE           _ZdlPv; operator delete(void *)
2E1AEE:  B               loc_2E1AFA
2E1AF0:  BLX             j__ZN10CCollision20RemoveTrianglePlanesEP14CCollisionData; CCollision::RemoveTrianglePlanes(CCollisionData *)
2E1AF4:  LDR             R0, [R4,#0x2C]; this
2E1AF6:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1AFA:  MOVS            R0, #0
2E1AFC:  STR             R0, [R4,#0x2C]
2E1AFE:  POP             {R4,R6,R7,PC}
