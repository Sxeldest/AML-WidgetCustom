; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline29pluginEnvMatCopyConstructorCBEPvPKvii
; Address            : 0x2CC84C - 0x2CC8DC
; =========================================================

2CC84C:  PUSH            {R4-R7,LR}
2CC84E:  ADD             R7, SP, #0xC
2CC850:  PUSH.W          {R8}
2CC854:  LDR             R1, [R1,R2]; void *
2CC856:  MOV             R8, R0
2CC858:  CBZ             R1, loc_2CC8D4
2CC85A:  LDR.W           R0, [R8,R2]
2CC85E:  CBNZ            R0, loc_2CC8BE
2CC860:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC86A)
2CC862:  MOV.W           LR, #0
2CC866:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC868:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC86A:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC86C:  LDRD.W          R12, R4, [R0,#8]
2CC870:  ADDS            R4, #1
2CC872:  STR             R4, [R0,#0xC]
2CC874:  CMP             R4, R12
2CC876:  BNE             loc_2CC886
2CC878:  MOVS            R4, #0
2CC87A:  MOVS.W          R6, LR,LSL#31
2CC87E:  STR             R4, [R0,#0xC]
2CC880:  BNE             loc_2CC8C6
2CC882:  MOV.W           LR, #1
2CC886:  LDR             R5, [R0,#4]
2CC888:  LDRSB           R6, [R5,R4]
2CC88A:  CMP.W           R6, #0xFFFFFFFF
2CC88E:  BGT             loc_2CC870
2CC890:  AND.W           R6, R6, #0x7F
2CC894:  STRB            R6, [R5,R4]
2CC896:  LDR             R6, [R0,#4]
2CC898:  LDR             R5, [R0,#0xC]
2CC89A:  LDRB            R4, [R6,R5]
2CC89C:  AND.W           R12, R4, #0x80
2CC8A0:  ADDS            R4, #1
2CC8A2:  AND.W           R4, R4, #0x7F
2CC8A6:  ORR.W           R4, R4, R12
2CC8AA:  STRB            R4, [R6,R5]
2CC8AC:  LDR             R6, [R0]
2CC8AE:  LDR             R0, [R0,#0xC]
2CC8B0:  ADD.W           R0, R0, R0,LSL#1
2CC8B4:  ADD.W           R0, R6, R0,LSL#2; void *
2CC8B8:  STR.W           R0, [R8,R2]
2CC8BC:  CBZ             R0, loc_2CC8CA
2CC8BE:  MOV             R2, R3; size_t
2CC8C0:  BLX             memcpy_0
2CC8C4:  B               loc_2CC8D4
2CC8C6:  STR.W           R4, [R8,R2]
2CC8CA:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC8D0)
2CC8CC:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC8CE:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC8D0:  STR.W           R0, [R8,R2]
2CC8D4:  MOV             R0, R8
2CC8D6:  POP.W           {R8}
2CC8DA:  POP             {R4-R7,PC}
