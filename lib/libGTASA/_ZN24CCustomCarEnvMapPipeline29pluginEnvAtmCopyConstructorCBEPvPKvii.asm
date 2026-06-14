; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline29pluginEnvAtmCopyConstructorCBEPvPKvii
; Address            : 0x2CCB40 - 0x2CCBC6
; =========================================================

2CCB40:  PUSH            {R4-R7,LR}
2CCB42:  ADD             R7, SP, #0xC
2CCB44:  PUSH.W          {R8}
2CCB48:  LDR             R1, [R1,R2]; void *
2CCB4A:  MOV             R8, R0
2CCB4C:  CBZ             R1, loc_2CCBB8
2CCB4E:  LDR.W           R0, [R8,R2]
2CCB52:  CBNZ            R0, loc_2CCBB2
2CCB54:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr - 0x2CCB5E)
2CCB56:  MOV.W           LR, #0
2CCB5A:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr
2CCB5C:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool ...
2CCB5E:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool
2CCB60:  LDRD.W          R12, R4, [R0,#8]
2CCB64:  ADDS            R4, #1
2CCB66:  STR             R4, [R0,#0xC]
2CCB68:  CMP             R4, R12
2CCB6A:  BNE             loc_2CCB7A
2CCB6C:  MOVS            R4, #0
2CCB6E:  MOVS.W          R6, LR,LSL#31
2CCB72:  STR             R4, [R0,#0xC]
2CCB74:  BNE             loc_2CCBC0
2CCB76:  MOV.W           LR, #1
2CCB7A:  LDR             R5, [R0,#4]
2CCB7C:  LDRSB           R6, [R5,R4]
2CCB7E:  CMP.W           R6, #0xFFFFFFFF
2CCB82:  BGT             loc_2CCB64
2CCB84:  AND.W           R6, R6, #0x7F
2CCB88:  STRB            R6, [R5,R4]
2CCB8A:  LDR             R6, [R0,#4]
2CCB8C:  LDR             R5, [R0,#0xC]
2CCB8E:  LDRB            R4, [R6,R5]
2CCB90:  AND.W           R12, R4, #0x80
2CCB94:  ADDS            R4, #1
2CCB96:  AND.W           R4, R4, #0x7F
2CCB9A:  ORR.W           R4, R4, R12
2CCB9E:  STRB            R4, [R6,R5]
2CCBA0:  LDR             R6, [R0]
2CCBA2:  LDR             R0, [R0,#0xC]
2CCBA4:  ADD.W           R0, R0, R0,LSL#1
2CCBA8:  ADD.W           R0, R6, R0,LSL#2; void *
2CCBAC:  STR.W           R0, [R8,R2]
2CCBB0:  CBZ             R0, loc_2CCBB8
2CCBB2:  MOV             R2, R3; size_t
2CCBB4:  BLX             memcpy_0
2CCBB8:  MOV             R0, R8
2CCBBA:  POP.W           {R8}
2CCBBE:  POP             {R4-R7,PC}
2CCBC0:  STR.W           R4, [R8,R2]
2CCBC4:  B               loc_2CCBB8
