; =========================================================
; Game Engine Function: _Z14InitialiseGamev
; Address            : 0x3F6E98 - 0x3F6ED0
; =========================================================

3F6E98:  PUSH            {R7,LR}
3F6E9A:  MOV             R7, SP
3F6E9C:  BLX             j__Z18ProcessShaderCachev; ProcessShaderCache(void)
3F6EA0:  LDR             R0, =(aDataGtaDat - 0x3F6EA6); "DATA\\GTA.DAT"
3F6EA2:  ADD             R0, PC; "DATA\\GTA.DAT"
3F6EA4:  BLX             j__ZN5CGame10InitialiseEPKc; CGame::Initialise(char const*)
3F6EA8:  LDR             R0, =(AudioEngine_ptr - 0x3F6EAE)
3F6EAA:  ADD             R0, PC; AudioEngine_ptr
3F6EAC:  LDR             R0, [R0]; AudioEngine ; this
3F6EAE:  BLX             j__ZN12CAudioEngine7RestartEv; CAudioEngine::Restart(void)
3F6EB2:  LDR             R0, =(gMobileMenu_ptr - 0x3F6EB8)
3F6EB4:  ADD             R0, PC; gMobileMenu_ptr
3F6EB6:  LDR             R0, [R0]; gMobileMenu
3F6EB8:  LDRB.W          R0, [R0,#(byte_6E00B9 - 0x6E006C)]
3F6EBC:  CMP             R0, #0
3F6EBE:  IT EQ
3F6EC0:  POPEQ           {R7,PC}
3F6EC2:  LDR             R0, =(gMobileMenu_ptr - 0x3F6ECA)
3F6EC4:  MOVS            R1, #1
3F6EC6:  ADD             R0, PC; gMobileMenu_ptr
3F6EC8:  LDR             R0, [R0]; gMobileMenu
3F6ECA:  STRB.W          R1, [R0,#(byte_6E00B8 - 0x6E006C)]
3F6ECE:  POP             {R7,PC}
