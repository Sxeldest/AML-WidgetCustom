; =========================================================
; Game Engine Function: _ZN13CCarEnterExit16RemoveGetInAnimsERK4CPed
; Address            : 0x5090E2 - 0x509110
; =========================================================

5090E2:  PUSH            {R4,R6,R7,LR}
5090E4:  ADD             R7, SP, #8
5090E6:  LDR             R0, [R0,#0x18]
5090E8:  MOVS            R1, #0x10
5090EA:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
5090EE:  CMP             R0, #0
5090F0:  IT EQ
5090F2:  POPEQ           {R4,R6,R7,PC}
5090F4:  MOVS            R4, #0xC47A0000
5090FA:  LDRH            R1, [R0,#0x2E]
5090FC:  STR             R4, [R0,#0x1C]
5090FE:  ORR.W           R1, R1, #4
509102:  STRH            R1, [R0,#0x2E]
509104:  MOVS            R1, #0x10; unsigned int
509106:  BLX             j__Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociationj; RpAnimBlendGetNextAssociation(CAnimBlendAssociation *,uint)
50910A:  CMP             R0, #0
50910C:  BNE             loc_5090FA
50910E:  POP             {R4,R6,R7,PC}
