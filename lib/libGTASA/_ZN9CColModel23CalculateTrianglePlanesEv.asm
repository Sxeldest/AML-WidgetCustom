; =========================================================
; Game Engine Function: _ZN9CColModel23CalculateTrianglePlanesEv
; Address            : 0x2E1B00 - 0x2E1B6A
; =========================================================

2E1B00:  PUSH            {R4-R7,LR}
2E1B02:  ADD             R7, SP, #0xC
2E1B04:  PUSH.W          {R8}
2E1B08:  LDR.W           R8, [R0,#0x2C]
2E1B0C:  CMP.W           R8, #0
2E1B10:  BEQ             loc_2E1B64
2E1B12:  LDRSH.W         R0, [R8,#4]
2E1B16:  MOVS            R1, #0x14; unsigned int
2E1B18:  ADD.W           R0, R0, R0,LSL#2
2E1B1C:  ADD.W           R0, R1, R0,LSL#2; byte_count
2E1B20:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2E1B24:  LDRSH.W         R1, [R8,#4]
2E1B28:  STR.W           R0, [R8,#0x1C]
2E1B2C:  CMP             R1, #1
2E1B2E:  BLT             loc_2E1B64
2E1B30:  LDRD.W          R1, R2, [R8,#0x14]
2E1B34:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
2E1B38:  LDRSH.W         R0, [R8,#4]
2E1B3C:  CMP             R0, #2
2E1B3E:  BLT             loc_2E1B64
2E1B40:  MOVS            R5, #1
2E1B42:  MOVS            R6, #0x14
2E1B44:  MOVS            R4, #0x10
2E1B46:  LDRD.W          R1, R2, [R8,#0x14]
2E1B4A:  LDR.W           R0, [R8,#0x1C]
2E1B4E:  ADD             R2, R4
2E1B50:  ADD             R0, R6
2E1B52:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
2E1B56:  LDRSH.W         R0, [R8,#4]
2E1B5A:  ADDS            R5, #1
2E1B5C:  ADDS            R4, #0x10
2E1B5E:  ADDS            R6, #0x14
2E1B60:  CMP             R5, R0
2E1B62:  BLT             loc_2E1B46
2E1B64:  POP.W           {R8}
2E1B68:  POP             {R4-R7,PC}
