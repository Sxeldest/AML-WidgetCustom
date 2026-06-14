; =========================================================
; Game Engine Function: _Z14RpUVAnimCreatePKcjjfPj20RpUVAnimKeyFrameType
; Address            : 0x1CA980 - 0x1CA9FC
; =========================================================

1CA980:  PUSH            {R4-R7,LR}
1CA982:  ADD             R7, SP, #0xC
1CA984:  PUSH.W          {R8-R10}
1CA988:  MOV             R9, R0
1CA98A:  LDR             R0, [R7,#arg_4]
1CA98C:  MOV             R8, R1
1CA98E:  CMP             R0, #1
1CA990:  BEQ             loc_1CA99A
1CA992:  CBNZ            R0, loc_1CA9F2
1CA994:  LDR             R0, =(_rpUVAnimLinearInterpolatorInfo_ptr - 0x1CA99A)
1CA996:  ADD             R0, PC; _rpUVAnimLinearInterpolatorInfo_ptr
1CA998:  B               loc_1CA99E
1CA99A:  LDR             R0, =(_rpUVAnimParamInterpolatorInfo_ptr - 0x1CA9A0)
1CA99C:  ADD             R0, PC; _rpUVAnimParamInterpolatorInfo_ptr
1CA99E:  LDR             R0, [R0]
1CA9A0:  MOV             R1, R2; int
1CA9A2:  MOVS            R2, #0; int
1CA9A4:  MOVS            R4, #0
1CA9A6:  LDR             R0, [R0]; int
1CA9A8:  BLX             j__Z21RtAnimAnimationCreateiiif; RtAnimAnimationCreate(int,int,int,float)
1CA9AC:  MOV             R6, R0
1CA9AE:  CBZ             R6, loc_1CA9F4
1CA9B0:  LDR             R0, =(RwEngineInstance_ptr - 0x1CA9B8)
1CA9B2:  LDR             R1, =(dword_6B8AE8 - 0x1CA9BA)
1CA9B4:  ADD             R0, PC; RwEngineInstance_ptr
1CA9B6:  ADD             R1, PC; dword_6B8AE8
1CA9B8:  LDR             R0, [R0]; RwEngineInstance
1CA9BA:  LDR             R2, [R0]
1CA9BC:  LDR             R0, [R1]
1CA9BE:  LDR.W           R1, [R2,#0x13C]
1CA9C2:  BLX             R1
1CA9C4:  MOV             R5, R0
1CA9C6:  MOVS            R4, #0
1CA9C8:  CBZ             R5, loc_1CA9F4
1CA9CA:  MOV             R0, R5; char *
1CA9CC:  MOV             R1, R9; char *
1CA9CE:  MOVS            R2, #0x20 ; ' '; size_t
1CA9D0:  LDR.W           R10, [R7,#arg_0]
1CA9D4:  BLX             strncpy
1CA9D8:  ADD.W           R0, R5, #0x20 ; ' '; void *
1CA9DC:  MOV.W           R2, R8,LSL#2; size_t
1CA9E0:  MOV             R1, R10; void *
1CA9E2:  STRB            R4, [R5,#0x1F]
1CA9E4:  BLX             memcpy_0
1CA9E8:  MOVS            R0, #1
1CA9EA:  MOV             R4, R6
1CA9EC:  STR             R0, [R5,#0x40]
1CA9EE:  STR             R5, [R6,#0x14]
1CA9F0:  B               loc_1CA9F4
1CA9F2:  MOVS            R4, #0
1CA9F4:  MOV             R0, R4
1CA9F6:  POP.W           {R8-R10}
1CA9FA:  POP             {R4-R7,PC}
