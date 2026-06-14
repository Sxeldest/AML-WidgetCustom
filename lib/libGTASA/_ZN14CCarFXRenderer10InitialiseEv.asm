; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer10InitialiseEv
; Address            : 0x2C9D68 - 0x2C9D78
; =========================================================

2C9D68:  PUSH            {R7,LR}
2C9D6A:  MOV             R7, SP
2C9D6C:  BLX             j__ZN24CCustomCarEnvMapPipeline10CreatePipeEv; CCustomCarEnvMapPipeline::CreatePipe(void)
2C9D70:  CMP             R0, #0
2C9D72:  IT NE
2C9D74:  MOVNE           R0, #1
2C9D76:  POP             {R7,PC}
