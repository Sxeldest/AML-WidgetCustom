; =========================================================
; Game Engine Function: _Z22RpClumpGtaCancelStreamv
; Address            : 0x5D0B58 - 0x5D0BA4
; =========================================================

5D0B58:  PUSH            {R4,R5,R7,LR}
5D0B5A:  ADD             R7, SP, #8
5D0B5C:  LDR             R0, =(dword_A838B8 - 0x5D0B62)
5D0B5E:  ADD             R0, PC; dword_A838B8
5D0B60:  LDR             R2, [R0,#(dword_A838BC - 0xA838B8)]
5D0B62:  CBZ             R2, loc_5D0B8E
5D0B64:  LDR             R0, =(dword_A838B8 - 0x5D0B6C)
5D0B66:  CMP             R2, #1
5D0B68:  ADD             R0, PC; dword_A838B8
5D0B6A:  LDR             R0, [R0]
5D0B6C:  BLT             loc_5D0B8A
5D0B6E:  LDR             R5, =(dword_A838B8 - 0x5D0B76)
5D0B70:  MOVS            R4, #0
5D0B72:  ADD             R5, PC; dword_A838B8
5D0B74:  LDR.W           R1, [R0,R4,LSL#2]
5D0B78:  CBZ             R1, loc_5D0B84
5D0B7A:  MOV             R0, R1
5D0B7C:  BLX.W           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
5D0B80:  LDRD.W          R0, R2, [R5]; this
5D0B84:  ADDS            R4, #1
5D0B86:  CMP             R4, R2
5D0B88:  BLT             loc_5D0B74
5D0B8A:  BLX.W           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
5D0B8E:  LDR             R0, =(dword_A838B8 - 0x5D0B98)
5D0B90:  MOVS            R5, #0
5D0B92:  LDR             R4, =(dword_A838B0 - 0x5D0B9A)
5D0B94:  ADD             R0, PC; dword_A838B8
5D0B96:  ADD             R4, PC; dword_A838B0
5D0B98:  STR             R5, [R0,#(dword_A838BC - 0xA838B8)]
5D0B9A:  MOV             R0, R4
5D0B9C:  BLX.W           j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
5D0BA0:  STR             R5, [R4,#(dword_A838B4 - 0xA838B0)]
5D0BA2:  POP             {R4,R5,R7,PC}
