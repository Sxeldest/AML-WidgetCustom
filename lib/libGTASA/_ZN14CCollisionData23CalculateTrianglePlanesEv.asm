; =========================================================
; Game Engine Function: _ZN14CCollisionData23CalculateTrianglePlanesEv
; Address            : 0x2E1628 - 0x2E168A
; =========================================================

2E1628:  PUSH            {R4-R7,LR}
2E162A:  ADD             R7, SP, #0xC
2E162C:  PUSH.W          {R8}
2E1630:  MOV             R8, R0
2E1632:  MOVS            R1, #0x14; unsigned int
2E1634:  LDRSH.W         R0, [R8,#4]
2E1638:  ADD.W           R0, R0, R0,LSL#2
2E163C:  ADD.W           R0, R1, R0,LSL#2; byte_count
2E1640:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E1644:  LDRSH.W         R1, [R8,#4]
2E1648:  STR.W           R0, [R8,#0x1C]
2E164C:  CMP             R1, #1
2E164E:  BLT             loc_2E1684
2E1650:  LDRD.W          R1, R2, [R8,#0x14]
2E1654:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
2E1658:  LDRSH.W         R0, [R8,#4]
2E165C:  CMP             R0, #2
2E165E:  BLT             loc_2E1684
2E1660:  MOVS            R5, #1
2E1662:  MOVS            R6, #0x10
2E1664:  MOVS            R4, #0x14
2E1666:  LDRD.W          R1, R2, [R8,#0x14]
2E166A:  LDR.W           R0, [R8,#0x1C]
2E166E:  ADD             R2, R6
2E1670:  ADD             R0, R4
2E1672:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
2E1676:  LDRSH.W         R0, [R8,#4]
2E167A:  ADDS            R5, #1
2E167C:  ADDS            R4, #0x14
2E167E:  ADDS            R6, #0x10
2E1680:  CMP             R5, R0
2E1682:  BLT             loc_2E1666
2E1684:  POP.W           {R8}
2E1688:  POP             {R4-R7,PC}
