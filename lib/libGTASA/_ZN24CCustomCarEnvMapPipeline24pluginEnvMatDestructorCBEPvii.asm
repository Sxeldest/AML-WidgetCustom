; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline24pluginEnvMatDestructorCBEPvii
; Address            : 0x2CC7F0 - 0x2CC844
; =========================================================

2CC7F0:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC7F8)
2CC7F2:  LDR             R3, [R0,R1]
2CC7F4:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC7F6:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC7F8:  CMP             R3, R2
2CC7FA:  IT NE
2CC7FC:  CMPNE           R3, #0
2CC7FE:  BEQ             locret_2CC842
2CC800:  PUSH            {R4,R6,R7,LR}
2CC802:  ADD             R7, SP, #0x10+var_8
2CC804:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC80A)
2CC806:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC808:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC80A:  LDR             R4, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC80C:  LDRD.W          R12, LR, [R4]
2CC810:  SUB.W           R3, R3, R12
2CC814:  MOV.W           R12, R3,ASR#2
2CC818:  MOV             R3, #0xAAAAAAAB
2CC820:  MUL.W           R3, R12, R3
2CC824:  LDRB.W          R2, [LR,R3]
2CC828:  ORR.W           R2, R2, #0x80
2CC82C:  STRB.W          R2, [LR,R3]
2CC830:  LDR             R2, [R4,#0xC]
2CC832:  CMP             R3, R2
2CC834:  MOV.W           R2, #0
2CC838:  IT LT
2CC83A:  STRLT           R3, [R4,#0xC]
2CC83C:  STR             R2, [R0,R1]
2CC83E:  POP.W           {R4,R6,R7,LR}
2CC842:  BX              LR
