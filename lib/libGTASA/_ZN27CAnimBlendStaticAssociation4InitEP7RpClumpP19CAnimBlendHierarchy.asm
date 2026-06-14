; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy
; Address            : 0x38993C - 0x389A00
; =========================================================

38993C:  PUSH            {R4-R7,LR}
38993E:  ADD             R7, SP, #0xC
389940:  PUSH.W          {R8-R11}
389944:  SUB             SP, SP, #4
389946:  MOV             R11, R1
389948:  MOV             R4, R2
38994A:  MOV             R9, R0
38994C:  CMP.W           R11, #0
389950:  BEQ             loc_3899F4
389952:  LDR             R0, =(ClumpOffset_ptr - 0x389958)
389954:  ADD             R0, PC; ClumpOffset_ptr
389956:  LDR             R0, [R0]; ClumpOffset
389958:  LDR             R0, [R0]
38995A:  LDR.W           R8, [R11,R0]
38995E:  LDR.W           R5, [R8,#8]
389962:  STRH.W          R5, [R9,#4]
389966:  LSLS            R6, R5, #0x10
389968:  ASRS            R0, R6, #0xE; byte_count
38996A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38996E:  CMP             R6, #1
389970:  STR.W           R0, [R9,#0xC]
389974:  BLT             loc_389990
389976:  SXTH            R1, R5
389978:  MOVS            R2, #0
38997A:  CMP             R1, #1
38997C:  STR             R2, [R0]
38997E:  BEQ             loc_389990
389980:  MOVS            R0, #1
389982:  LDR.W           R3, [R9,#0xC]
389986:  STR.W           R2, [R3,R0,LSL#2]
38998A:  ADDS            R0, #1
38998C:  CMP             R1, R0
38998E:  BNE             loc_389982
389990:  STR.W           R4, [R9,#0x10]
389994:  LDRSH.W         R0, [R4,#8]
389998:  CMP             R0, #1
38999A:  BLT             loc_3899F8
38999C:  MOVS            R5, #0
38999E:  MOVS            R6, #0
3899A0:  LDR             R0, [R4,#4]
3899A2:  ADD.W           R10, R0, R5
3899A6:  LDRB.W          R1, [R10,#4]
3899AA:  LSLS            R1, R1, #0x1B
3899AC:  BMI             loc_3899BA
3899AE:  LDR             R1, [R0,R5]
3899B0:  MOV             R0, R11
3899B2:  BLX             j__Z36RpAnimBlendClumpFindFrameFromHashKeyP7RpClumpj; RpAnimBlendClumpFindFrameFromHashKey(RpClump *,uint)
3899B6:  CBNZ            R0, loc_3899C4
3899B8:  B               loc_3899E6
3899BA:  LDRSH           R1, [R0,R5]
3899BC:  MOV             R0, R11
3899BE:  BLX             j__Z24RpAnimBlendClumpFindBoneP7RpClumpj; RpAnimBlendClumpFindBone(RpClump *,uint)
3899C2:  CBZ             R0, loc_3899E6
3899C4:  LDRSH.W         R1, [R10,#6]
3899C8:  CMP             R1, #1
3899CA:  BLT             loc_3899E6
3899CC:  LDR.W           R1, [R8,#0x10]
3899D0:  SUBS            R0, R0, R1
3899D2:  MOV             R1, #0xAAAAAAAC
3899DA:  ASRS            R0, R0, #3
3899DC:  MULS            R0, R1
3899DE:  LDR.W           R1, [R9,#0xC]
3899E2:  STR.W           R10, [R1,R0]
3899E6:  LDRSH.W         R0, [R4,#8]
3899EA:  ADDS            R6, #1
3899EC:  ADDS            R5, #0xC
3899EE:  CMP             R6, R0
3899F0:  BLT             loc_3899A0
3899F2:  B               loc_3899F8
3899F4:  STR.W           R4, [R9,#0x10]
3899F8:  ADD             SP, SP, #4
3899FA:  POP.W           {R8-R11}
3899FE:  POP             {R4-R7,PC}
