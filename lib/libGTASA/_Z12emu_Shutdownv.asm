; =========================================================
; Game Engine Function: _Z12emu_Shutdownv
; Address            : 0x1C07EC - 0x1C0800
; =========================================================

1C07EC:  PUSH            {R7,LR}
1C07EE:  MOV             R7, SP
1C07F0:  BLX             j__Z19emu_ShutdownShadersv; emu_ShutdownShaders(void)
1C07F4:  BLX             j__Z27emu_ShutdownAltRenderTargetv; emu_ShutdownAltRenderTarget(void)
1C07F8:  POP.W           {R7,LR}
1C07FC:  B.W             j_j__Z15emu_ShutdownImmv; j_emu_ShutdownImm(void)
