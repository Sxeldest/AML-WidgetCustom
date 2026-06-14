; =========================================================
; Game Engine Function: _Z21RwTexDictionaryCreatev
; Address            : 0x1DB580 - 0x1DB5F4
; =========================================================

1DB580:  PUSH            {R4,R6,R7,LR}
1DB582:  ADD             R7, SP, #8
1DB584:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB58C)
1DB586:  LDR             R1, =(dword_6BCF84 - 0x1DB58E)
1DB588:  ADD             R0, PC; RwEngineInstance_ptr
1DB58A:  ADD             R1, PC; dword_6BCF84
1DB58C:  LDR             R0, [R0]; RwEngineInstance
1DB58E:  LDR             R1, [R1]
1DB590:  LDR             R0, [R0]
1DB592:  LDR.W           R2, [R0,#0x13C]
1DB596:  ADD             R0, R1
1DB598:  LDR             R0, [R0,#0xC]
1DB59A:  BLX             R2
1DB59C:  MOV             R4, R0
1DB59E:  MOVS            R0, #0
1DB5A0:  CMP             R4, #0
1DB5A2:  IT EQ
1DB5A4:  POPEQ           {R4,R6,R7,PC}
1DB5A6:  LDR             R2, =(RwEngineInstance_ptr - 0x1DB5AE)
1DB5A8:  LDR             R1, =(dword_6BCF84 - 0x1DB5B6)
1DB5AA:  ADD             R2, PC; RwEngineInstance_ptr
1DB5AC:  STRB            R0, [R4,#7]
1DB5AE:  STRH.W          R0, [R4,#5]
1DB5B2:  ADD             R1, PC; dword_6BCF84
1DB5B4:  STR.W           R0, [R4,#1]
1DB5B8:  LDR             R0, [R2]; RwEngineInstance
1DB5BA:  MOVS            R2, #6
1DB5BC:  STRB            R2, [R4]
1DB5BE:  LDR             R1, [R1]
1DB5C0:  LDR             R2, [R0]
1DB5C2:  LDR.W           R12, =(texDictTKList_ptr - 0x1DB5CE)
1DB5C6:  ADDS            R3, R2, R1
1DB5C8:  LDR             R0, [R2,R1]
1DB5CA:  ADD             R12, PC; texDictTKList_ptr
1DB5CC:  STRD.W          R0, R3, [R4,#0x10]
1DB5D0:  LDR.W           LR, [R2,R1]
1DB5D4:  ADD.W           R3, R4, #0x10
1DB5D8:  LDR.W           R0, [R12]; texDictTKList
1DB5DC:  STR.W           R3, [LR,#4]
1DB5E0:  STR             R3, [R2,R1]
1DB5E2:  ADD.W           R1, R4, #8
1DB5E6:  STRD.W          R1, R1, [R4,#8]
1DB5EA:  MOV             R1, R4
1DB5EC:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DB5F0:  MOV             R0, R4
1DB5F2:  POP             {R4,R6,R7,PC}
