; =========================================================
; Game Engine Function: _Z22emu_CustomShaderDeletePv
; Address            : 0x1B4DE0 - 0x1B4DF6
; =========================================================

1B4DE0:  CMP             R0, #0
1B4DE2:  IT EQ
1B4DE4:  BXEQ            LR
1B4DE6:  PUSH            {R7,LR}
1B4DE8:  MOV             R7, SP
1B4DEA:  BLX             j__ZN9EmuShaderD2Ev; EmuShader::~EmuShader()
1B4DEE:  POP.W           {R7,LR}
1B4DF2:  B.W             j__ZdlPv; operator delete(void *)
