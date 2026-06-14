; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer15RegisterPluginsEv
; Address            : 0x2C9F84 - 0x2C9F94
; =========================================================

2C9F84:  PUSH            {R7,LR}
2C9F86:  MOV             R7, SP
2C9F88:  BLX             j__ZN24CCustomCarEnvMapPipeline14RegisterPluginEv; CCustomCarEnvMapPipeline::RegisterPlugin(void)
2C9F8C:  CMP             R0, #0
2C9F8E:  IT NE
2C9F90:  MOVNE           R0, #1
2C9F92:  POP             {R7,PC}
