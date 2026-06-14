; =========================================================
; Game Engine Function: _ZN10FxSystem_c17SetBoundingSphereEP10FxSphere_c
; Address            : 0x36F27A - 0x36F2B2
; =========================================================

36F27A:  PUSH            {R4,R5,R7,LR}
36F27C:  ADD             R7, SP, #8
36F27E:  MOV             R4, R0
36F280:  MOV             R5, R1
36F282:  LDR             R0, [R4,#0x78]; this
36F284:  CBZ             R5, loc_36F2A2
36F286:  CBNZ            R0, loc_36F294
36F288:  MOVS            R0, #0x14; byte_count
36F28A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
36F28E:  MOVS            R1, #0
36F290:  STR             R1, [R0,#0x10]
36F292:  STR             R0, [R4,#0x78]
36F294:  VLD1.32         {D16-D17}, [R5]!
36F298:  LDR             R1, [R5]; void *
36F29A:  VST1.32         {D16-D17}, [R0]!
36F29E:  STR             R1, [R0]
36F2A0:  POP             {R4,R5,R7,PC}
36F2A2:  CMP             R0, #0
36F2A4:  IT EQ
36F2A6:  POPEQ           {R4,R5,R7,PC}
36F2A8:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
36F2AC:  MOVS            R0, #0
36F2AE:  STR             R0, [R4,#0x78]
36F2B0:  POP             {R4,R5,R7,PC}
