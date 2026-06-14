; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline25AllocEnvMapPipeAtomicDataEP8RpAtomic
; Address            : 0x2CCE58 - 0x2CCEDE
; =========================================================

2CCE58:  PUSH            {R4,R5,R7,LR}
2CCE5A:  ADD             R7, SP, #8
2CCE5C:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline24ms_envMapAtmPluginOffsetE_ptr - 0x2CCE62)
2CCE5E:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline24ms_envMapAtmPluginOffsetE_ptr
2CCE60:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapAtmPluginOffset ...
2CCE62:  LDR.W           R12, [R1]; CCustomCarEnvMapPipeline::ms_envMapAtmPluginOffset
2CCE66:  LDR.W           R1, [R0,R12]
2CCE6A:  CBZ             R1, loc_2CCE70
2CCE6C:  MOV             R0, R1
2CCE6E:  POP             {R4,R5,R7,PC}
2CCE70:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr - 0x2CCE78)
2CCE72:  MOVS            R2, #0
2CCE74:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr
2CCE76:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool ...
2CCE78:  LDR             R3, [R1]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool
2CCE7A:  LDRD.W          LR, R1, [R3,#8]
2CCE7E:  ADDS            R1, #1
2CCE80:  STR             R1, [R3,#0xC]
2CCE82:  CMP             R1, LR
2CCE84:  BNE             loc_2CCE90
2CCE86:  MOVS            R1, #0
2CCE88:  LSLS            R2, R2, #0x1F
2CCE8A:  STR             R1, [R3,#0xC]
2CCE8C:  BNE             loc_2CCED6
2CCE8E:  MOVS            R2, #1
2CCE90:  LDR             R4, [R3,#4]
2CCE92:  LDRSB           R5, [R4,R1]
2CCE94:  CMP.W           R5, #0xFFFFFFFF
2CCE98:  BGT             loc_2CCE7E
2CCE9A:  AND.W           R2, R5, #0x7F
2CCE9E:  STRB            R2, [R4,R1]
2CCEA0:  LDR             R1, [R3,#4]
2CCEA2:  LDR             R2, [R3,#0xC]
2CCEA4:  LDRB            R5, [R1,R2]
2CCEA6:  AND.W           R4, R5, #0x80
2CCEAA:  ADDS            R5, #1
2CCEAC:  AND.W           R5, R5, #0x7F
2CCEB0:  ORRS            R5, R4
2CCEB2:  STRB            R5, [R1,R2]
2CCEB4:  LDR             R2, [R3,#0xC]
2CCEB6:  LDR             R1, [R3]
2CCEB8:  ADD.W           R2, R2, R2,LSL#1
2CCEBC:  ADD.W           R2, R1, R2,LSL#2
2CCEC0:  MOVS            R1, #0
2CCEC2:  CMP             R2, #0
2CCEC4:  STR.W           R2, [R0,R12]
2CCEC8:  ITTT NE
2CCECA:  STRDNE.W        R1, R1, [R2]
2CCECE:  STRNE           R1, [R2,#8]
2CCED0:  MOVNE           R1, R2
2CCED2:  MOV             R0, R1
2CCED4:  POP             {R4,R5,R7,PC}
2CCED6:  STR.W           R1, [R0,R12]
2CCEDA:  MOV             R0, R1
2CCEDC:  POP             {R4,R5,R7,PC}
