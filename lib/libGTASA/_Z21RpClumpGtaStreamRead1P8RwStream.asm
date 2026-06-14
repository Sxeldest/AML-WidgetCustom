; =========================================================
; Game Engine Function: _Z21RpClumpGtaStreamRead1P8RwStream
; Address            : 0x5D079C - 0x5D08C6
; =========================================================

5D079C:  PUSH            {R4-R7,LR}
5D079E:  ADD             R7, SP, #0xC
5D07A0:  PUSH.W          {R8,R9,R11}
5D07A4:  SUB             SP, SP, #0x18
5D07A6:  ADD             R2, SP, #0x30+var_28
5D07A8:  ADD             R3, SP, #0x30+var_2C
5D07AA:  MOVS            R1, #1
5D07AC:  MOV             R4, R0
5D07AE:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D07B2:  CMP             R0, #0
5D07B4:  BEQ.W           loc_5D08BA
5D07B8:  LDR             R1, =(dword_A838A4 - 0x5D07C2)
5D07BA:  MOV             R0, R4; int
5D07BC:  MOVS            R2, #0xC; size_t
5D07BE:  ADD             R1, PC; dword_A838A4 ; void *
5D07C0:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
5D07C4:  MOVS            R5, #0
5D07C6:  CMP             R0, #0xC
5D07C8:  BNE             loc_5D08BC
5D07CA:  MOV             R3, SP
5D07CC:  MOV             R0, R4; int
5D07CE:  MOVS            R1, #0xE
5D07D0:  MOVS            R2, #0
5D07D2:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D07D6:  CMP             R0, #0
5D07D8:  BEQ             loc_5D08BC
5D07DA:  LDR             R1, =(dword_A838B0 - 0x5D07E2)
5D07DC:  MOV             R0, R4
5D07DE:  ADD             R1, PC; dword_A838B0
5D07E0:  BLX.W           j__Z22_rwFrameListStreamReadP8RwStreamP11rwFrameList; _rwFrameListStreamRead(RwStream *,rwFrameList *)
5D07E4:  MOVS            R5, #0
5D07E6:  CMP             R0, #0
5D07E8:  BEQ             loc_5D08BC
5D07EA:  MOV             R3, SP
5D07EC:  MOV             R0, R4; int
5D07EE:  MOVS            R1, #0x1A
5D07F0:  MOVS            R2, #0
5D07F2:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D07F6:  CBZ             R0, loc_5D085A
5D07F8:  LDR             R0, =(dword_6B2BE0 - 0x5D0804)
5D07FA:  ADD             R2, SP, #0x30+var_20
5D07FC:  ADD             R3, SP, #0x30+var_24
5D07FE:  MOVS            R1, #1
5D0800:  ADD             R0, PC; dword_6B2BE0
5D0802:  STR             R5, [R0]
5D0804:  MOV             R0, R4; int
5D0806:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D080A:  CMP             R0, #0
5D080C:  BEQ             loc_5D08B2
5D080E:  ADD             R1, SP, #0x30+var_1C; void *
5D0810:  MOV             R0, R4; int
5D0812:  MOVS            R2, #4; size_t
5D0814:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
5D0818:  CMP             R0, #4
5D081A:  BNE             loc_5D08B2
5D081C:  LDR             R0, =(dword_A838B8 - 0x5D0824)
5D081E:  LDR             R1, [SP,#0x30+var_1C]; unsigned int
5D0820:  ADD             R0, PC; dword_A838B8
5D0822:  LDR             R2, =(dword_6B2BE0 - 0x5D0830)
5D0824:  CMP             R1, #1
5D0826:  STR             R1, [R0,#(dword_A838BC - 0xA838B8)]
5D0828:  ADD.W           R0, R1, R1,LSR#31
5D082C:  ADD             R2, PC; dword_6B2BE0
5D082E:  MOV.W           R0, R0,ASR#1
5D0832:  STR             R0, [R2]
5D0834:  BLT             loc_5D0860
5D0836:  LSLS            R0, R1, #2; byte_count
5D0838:  BLX.W           j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
5D083C:  LDR             R1, =(dword_A838B8 - 0x5D0844)
5D083E:  CMP             R0, #0
5D0840:  ADD             R1, PC; dword_A838B8
5D0842:  STR             R0, [R1]
5D0844:  BEQ             loc_5D08B2
5D0846:  LDR             R1, [SP,#0x30+var_1C]
5D0848:  LSLS            R1, R1, #2
5D084A:  BLX.W           j___aeabi_memclr8_0
5D084E:  LDR             R0, =(dword_6B2BE0 - 0x5D0854)
5D0850:  ADD             R0, PC; dword_6B2BE0
5D0852:  LDR             R0, [R0]
5D0854:  CMP             R0, #1
5D0856:  BGE             loc_5D086C
5D0858:  B               loc_5D08A6
5D085A:  LDR             R0, =(dword_A838B0 - 0x5D0860)
5D085C:  ADD             R0, PC; dword_A838B0
5D085E:  B               loc_5D08B6
5D0860:  LDR             R1, =(dword_A838B8 - 0x5D0868)
5D0862:  MOVS            R2, #0
5D0864:  ADD             R1, PC; dword_A838B8
5D0866:  STR             R2, [R1]
5D0868:  CMP             R0, #1
5D086A:  BLT             loc_5D08A6
5D086C:  LDR.W           R8, =(dword_A838B8 - 0x5D087C)
5D0870:  MOVS            R6, #0
5D0872:  LDR.W           R9, =(dword_6B2BE0 - 0x5D087E)
5D0876:  ADD             R5, SP, #0x30+var_24
5D0878:  ADD             R8, PC; dword_A838B8
5D087A:  ADD             R9, PC; dword_6B2BE0
5D087C:  MOV             R0, R4; int
5D087E:  MOVS            R1, #0xF
5D0880:  MOVS            R2, #0
5D0882:  MOV             R3, R5
5D0884:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D0888:  CBZ             R0, loc_5D08B2
5D088A:  MOV             R0, R4
5D088C:  BLX.W           j__Z20RpGeometryStreamReadP8RwStream; RpGeometryStreamRead(RwStream *)
5D0890:  LDR.W           R1, [R8]
5D0894:  CMP             R0, #0
5D0896:  STR.W           R0, [R1,R6,LSL#2]
5D089A:  BEQ             loc_5D08B2
5D089C:  LDR.W           R0, [R9]
5D08A0:  ADDS            R6, #1
5D08A2:  CMP             R6, R0
5D08A4:  BLT             loc_5D087C
5D08A6:  LDR             R0, =(dword_A838C0 - 0x5D08B0)
5D08A8:  MOVS            R5, #1
5D08AA:  LDR             R1, [R4,#0xC]
5D08AC:  ADD             R0, PC; dword_A838C0
5D08AE:  STR             R1, [R0]
5D08B0:  B               loc_5D08BC
5D08B2:  LDR             R0, =(dword_A838B0 - 0x5D08B8)
5D08B4:  ADD             R0, PC; dword_A838B0
5D08B6:  BLX.W           j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
5D08BA:  MOVS            R5, #0
5D08BC:  MOV             R0, R5
5D08BE:  ADD             SP, SP, #0x18
5D08C0:  POP.W           {R8,R9,R11}
5D08C4:  POP             {R4-R7,PC}
