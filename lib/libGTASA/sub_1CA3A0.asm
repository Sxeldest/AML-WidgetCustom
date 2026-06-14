; =========================================================
; Game Engine Function: sub_1CA3A0
; Address            : 0x1CA3A0 - 0x1CA408
; =========================================================

1CA3A0:  PUSH            {R4-R7,LR}
1CA3A2:  ADD             R7, SP, #0xC
1CA3A4:  PUSH.W          {R11}
1CA3A8:  SUB             SP, SP, #8
1CA3AA:  LDR             R1, =(dword_67A250 - 0x1CA3B8)
1CA3AC:  MOV             R4, R0
1CA3AE:  LDR             R0, =(dword_67A254 - 0x1CA3BA)
1CA3B0:  MOVS            R2, #4
1CA3B2:  LDR             R6, =(dword_6B8AE8 - 0x1CA3BC)
1CA3B4:  ADD             R1, PC; dword_67A250
1CA3B6:  ADD             R0, PC; dword_67A254
1CA3B8:  ADD             R6, PC; dword_6B8AE8
1CA3BA:  LDR             R1, [R1]
1CA3BC:  LDR             R3, [R0]
1CA3BE:  LDR             R0, [R6]
1CA3C0:  STR             R0, [SP,#0x18+var_18]
1CA3C2:  MOVS            R0, #0x44 ; 'D'
1CA3C4:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1CA3C8:  MOV             R5, R0
1CA3CA:  LDR             R0, =(_rpUVAnimDictSchema_ptr - 0x1CA3D2)
1CA3CC:  STR             R5, [R6]
1CA3CE:  ADD             R0, PC; _rpUVAnimDictSchema_ptr
1CA3D0:  LDR             R0, [R0]; _rpUVAnimDictSchema
1CA3D2:  BLX             j__Z16RtDictSchemaInitP12RtDictSchema; RtDictSchemaInit(RtDictSchema *)
1CA3D6:  LDR             R0, =(_rpUVAnimLinearInterpolatorInfo_ptr - 0x1CA3DC)
1CA3D8:  ADD             R0, PC; _rpUVAnimLinearInterpolatorInfo_ptr
1CA3DA:  LDR             R0, [R0]; _rpUVAnimLinearInterpolatorInfo
1CA3DC:  BLX             j__Z33RtAnimRegisterInterpolationSchemeP22RtAnimInterpolatorInfo; RtAnimRegisterInterpolationScheme(RtAnimInterpolatorInfo *)
1CA3E0:  LDR             R0, =(_rpUVAnimParamInterpolatorInfo_ptr - 0x1CA3E6)
1CA3E2:  ADD             R0, PC; _rpUVAnimParamInterpolatorInfo_ptr
1CA3E4:  LDR             R0, [R0]; _rpUVAnimParamInterpolatorInfo
1CA3E6:  BLX             j__Z33RtAnimRegisterInterpolationSchemeP22RtAnimInterpolatorInfo; RtAnimRegisterInterpolationScheme(RtAnimInterpolatorInfo *)
1CA3EA:  LDR             R0, =(rpUVAnimModule_ptr - 0x1CA3F2)
1CA3EC:  CMP             R5, #0
1CA3EE:  ADD             R0, PC; rpUVAnimModule_ptr
1CA3F0:  LDR             R0, [R0]; rpUVAnimModule
1CA3F2:  LDR             R1, [R0,#(dword_6B8AE0 - 0x6B8ADC)]
1CA3F4:  ADD.W           R1, R1, #1
1CA3F8:  STR             R1, [R0,#(dword_6B8AE0 - 0x6B8ADC)]
1CA3FA:  IT EQ
1CA3FC:  MOVEQ           R4, R5
1CA3FE:  MOV             R0, R4
1CA400:  ADD             SP, SP, #8
1CA402:  POP.W           {R11}
1CA406:  POP             {R4-R7,PC}
