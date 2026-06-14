; =========================================================
; Game Engine Function: _ZN10FxSystem_c19ResetBoundingSphereEv
; Address            : 0x36F2B2 - 0x36F2F0
; =========================================================

36F2B2:  PUSH            {R4,R6,R7,LR}
36F2B4:  ADD             R7, SP, #8
36F2B6:  MOV             R4, R0
36F2B8:  LDR             R1, [R4,#8]; void *
36F2BA:  LDR             R0, [R4,#0x78]; this
36F2BC:  LDR             R2, [R1,#0x20]
36F2BE:  CBZ             R2, loc_36F2E0
36F2C0:  CBNZ            R0, loc_36F2D0
36F2C2:  MOVS            R0, #0x14; byte_count
36F2C4:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
36F2C8:  MOVS            R1, #0
36F2CA:  STR             R1, [R0,#0x10]
36F2CC:  LDR             R1, [R4,#8]
36F2CE:  STR             R0, [R4,#0x78]
36F2D0:  LDR             R1, [R1,#0x20]
36F2D2:  VLD1.32         {D16-D17}, [R1]!
36F2D6:  LDR             R1, [R1]
36F2D8:  VST1.32         {D16-D17}, [R0]!
36F2DC:  STR             R1, [R0]
36F2DE:  POP             {R4,R6,R7,PC}
36F2E0:  CMP             R0, #0
36F2E2:  IT EQ
36F2E4:  POPEQ           {R4,R6,R7,PC}
36F2E6:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
36F2EA:  MOVS            R0, #0
36F2EC:  STR             R0, [R4,#0x78]
36F2EE:  POP             {R4,R6,R7,PC}
