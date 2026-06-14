; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline24pluginEnvAtmDestructorCBEPvii
; Address            : 0x2CCAF0 - 0x2CCB3C
; =========================================================

2CCAF0:  LDR             R3, [R0,R1]
2CCAF2:  CMP             R3, #0
2CCAF4:  IT EQ
2CCAF6:  BXEQ            LR
2CCAF8:  PUSH            {R4,R6,R7,LR}
2CCAFA:  ADD             R7, SP, #0x10+var_8
2CCAFC:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr - 0x2CCB02)
2CCAFE:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr
2CCB00:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool ...
2CCB02:  LDR             R4, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool
2CCB04:  LDRD.W          R12, LR, [R4]
2CCB08:  SUB.W           R3, R3, R12
2CCB0C:  MOV.W           R12, R3,ASR#2
2CCB10:  MOV             R3, #0xAAAAAAAB
2CCB18:  MUL.W           R3, R12, R3
2CCB1C:  LDRB.W          R2, [LR,R3]
2CCB20:  ORR.W           R2, R2, #0x80
2CCB24:  STRB.W          R2, [LR,R3]
2CCB28:  LDR             R2, [R4,#0xC]
2CCB2A:  CMP             R3, R2
2CCB2C:  MOV.W           R2, #0
2CCB30:  IT LT
2CCB32:  STRLT           R3, [R4,#0xC]
2CCB34:  STR             R2, [R0,R1]
2CCB36:  POP.W           {R4,R6,R7,LR}
2CCB3A:  BX              LR
