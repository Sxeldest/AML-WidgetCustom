; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadClumpFileEPKc
; Address            : 0x4670B4 - 0x46710C
; =========================================================

4670B4:  PUSH            {R4,R5,R7,LR}
4670B6:  ADD             R7, SP, #8
4670B8:  MOV             R2, R0
4670BA:  MOVS            R0, #2
4670BC:  MOVS            R1, #1
4670BE:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
4670C2:  MOV             R4, R0
4670C4:  B               loc_4670CE
4670C6:  LDR             R1, [R0]
4670C8:  LDR             R2, [R1,#0x44]
4670CA:  MOV             R1, R5
4670CC:  BLX             R2
4670CE:  MOV             R0, R4; int
4670D0:  MOVS            R1, #0x10
4670D2:  MOVS            R2, #0
4670D4:  MOVS            R3, #0
4670D6:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
4670DA:  CBZ             R0, loc_467100
4670DC:  MOV             R0, R4
4670DE:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
4670E2:  MOV             R5, R0
4670E4:  CMP             R5, #0
4670E6:  BEQ             loc_4670CE
4670E8:  LDR             R0, [R5,#4]
4670EA:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
4670EE:  MOVS            R1, #0; char *
4670F0:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4670F4:  CMP             R0, #0
4670F6:  BNE             loc_4670C6
4670F8:  MOV             R0, R5
4670FA:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
4670FE:  B               loc_4670CE
467100:  MOV             R0, R4
467102:  MOVS            R1, #0
467104:  POP.W           {R4,R5,R7,LR}
467108:  B.W             sub_1962BC
