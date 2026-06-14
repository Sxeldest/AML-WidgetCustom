; =========================================================
; Game Engine Function: _ZN9CColModel20RemoveTrianglePlanesEv
; Address            : 0x2E1B6A - 0x2E1B86
; =========================================================

2E1B6A:  PUSH            {R4,R6,R7,LR}
2E1B6C:  ADD             R7, SP, #8
2E1B6E:  LDR             R4, [R0,#0x2C]
2E1B70:  CMP             R4, #0
2E1B72:  IT EQ
2E1B74:  POPEQ           {R4,R6,R7,PC}
2E1B76:  LDR             R0, [R4,#0x1C]; this
2E1B78:  CMP             R0, #0
2E1B7A:  IT NE
2E1B7C:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2E1B80:  MOVS            R0, #0
2E1B82:  STR             R0, [R4,#0x1C]
2E1B84:  POP             {R4,R6,R7,PC}
