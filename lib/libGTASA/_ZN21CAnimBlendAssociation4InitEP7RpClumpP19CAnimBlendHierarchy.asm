; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation4InitEP7RpClumpP19CAnimBlendHierarchy
; Address            : 0x389B54 - 0x389C34
; =========================================================

389B54:  PUSH            {R4-R7,LR}
389B56:  ADD             R7, SP, #0xC
389B58:  PUSH.W          {R8-R11}
389B5C:  SUB             SP, SP, #4
389B5E:  MOV             R11, R0
389B60:  LDR             R0, =(ClumpOffset_ptr - 0x389B6A)
389B62:  MOV             R9, R1
389B64:  MOVS            R1, #0x3F ; '?'
389B66:  ADD             R0, PC; ClumpOffset_ptr
389B68:  MOV             R10, R2
389B6A:  LDR             R0, [R0]; ClumpOffset
389B6C:  LDR             R0, [R0]
389B6E:  LDR.W           R8, [R9,R0]
389B72:  LDR.W           R5, [R8,#8]
389B76:  STRH.W          R5, [R11,#0xC]
389B7A:  SXTH            R4, R5
389B7C:  ADD.W           R0, R4, R4,LSL#1
389B80:  ADD.W           R0, R1, R0,LSL#3
389B84:  MOVS            R1, #0x40 ; '@'; unsigned int
389B86:  BIC.W           R0, R0, #0x3F ; '?'; this
389B8A:  BLX             j__ZN10CMemoryMgr11MallocAlignEjj; CMemoryMgr::MallocAlign(uint,uint)
389B8E:  LSLS            R1, R5, #0x10
389B90:  CMP             R1, #1
389B92:  STR.W           R0, [R11,#0x10]
389B96:  BLT             loc_389BB6
389B98:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389B9C:  CMP             R4, #1
389B9E:  BEQ             loc_389BB6
389BA0:  SUBS            R4, #1
389BA2:  MOVS            R5, #0x18
389BA4:  LDR.W           R0, [R11,#0x10]
389BA8:  ADD             R0, R5; this
389BAA:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389BAE:  SUBS            R4, #1
389BB0:  ADD.W           R5, R5, #0x18
389BB4:  BNE             loc_389BA4
389BB6:  LDRSH.W         R0, [R11,#0xC]
389BBA:  CMP             R0, #1
389BBC:  BLT             loc_389BD6
389BBE:  MOVS            R0, #0
389BC0:  MOVS            R1, #0x14
389BC2:  LDR.W           R2, [R11,#0x10]
389BC6:  ADDS            R0, #1
389BC8:  STR.W           R11, [R2,R1]
389BCC:  ADDS            R1, #0x18
389BCE:  LDRSH.W         R2, [R11,#0xC]
389BD2:  CMP             R0, R2
389BD4:  BLT             loc_389BC2
389BD6:  STR.W           R10, [R11,#0x14]
389BDA:  LDRSH.W         R0, [R10,#8]
389BDE:  CMP             R0, #1
389BE0:  BLT             loc_389C2C
389BE2:  MOVS            R5, #0
389BE4:  MOVS            R4, #0
389BE6:  LDR.W           R0, [R10,#4]
389BEA:  ADDS            R6, R0, R5
389BEC:  LDRB            R1, [R6,#4]
389BEE:  LSLS            R1, R1, #0x1B
389BF0:  BMI             loc_389BFE
389BF2:  LDR             R1, [R0,R5]
389BF4:  MOV             R0, R9
389BF6:  BLX             j__Z36RpAnimBlendClumpFindFrameFromHashKeyP7RpClumpj; RpAnimBlendClumpFindFrameFromHashKey(RpClump *,uint)
389BFA:  CBNZ            R0, loc_389C08
389BFC:  B               loc_389C20
389BFE:  LDRSH           R1, [R0,R5]
389C00:  MOV             R0, R9
389C02:  BLX             j__Z24RpAnimBlendClumpFindBoneP7RpClumpj; RpAnimBlendClumpFindBone(RpClump *,uint)
389C06:  CBZ             R0, loc_389C20
389C08:  LDRSH.W         R1, [R6,#6]
389C0C:  CMP             R1, #1
389C0E:  ITTTT GE
389C10:  LDRGE.W         R1, [R8,#0x10]
389C14:  LDRGE.W         R2, [R11,#0x10]
389C18:  SUBGE           R0, R0, R1
389C1A:  ADDGE           R0, R2
389C1C:  IT GE
389C1E:  STRGE           R6, [R0,#0x10]
389C20:  LDRSH.W         R0, [R10,#8]
389C24:  ADDS            R4, #1
389C26:  ADDS            R5, #0xC
389C28:  CMP             R4, R0
389C2A:  BLT             loc_389BE6
389C2C:  ADD             SP, SP, #4
389C2E:  POP.W           {R8-R11}
389C32:  POP             {R4-R7,PC}
