; =========================================================
; Game Engine Function: _ZN4Fx_c17ExitStaticSystemsEv
; Address            : 0x363CF4 - 0x363D8C
; =========================================================

363CF4:  PUSH            {R4,R5,R7,LR}
363CF6:  ADD             R7, SP, #8
363CF8:  MOV             R4, R0
363CFA:  LDR             R0, =(g_fxMan_ptr - 0x363D02)
363CFC:  LDR             R1, [R4]; FxSystem_c *
363CFE:  ADD             R0, PC; g_fxMan_ptr
363D00:  LDR             R5, [R0]; g_fxMan
363D02:  MOV             R0, R5; this
363D04:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D08:  LDR             R1, [R4,#4]; FxSystem_c *
363D0A:  MOV             R0, R5; this
363D0C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D10:  LDR             R1, [R4,#8]; FxSystem_c *
363D12:  MOV             R0, R5; this
363D14:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D18:  LDR             R1, [R4,#0xC]; FxSystem_c *
363D1A:  MOV             R0, R5; this
363D1C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D20:  LDR             R1, [R4,#0x10]; FxSystem_c *
363D22:  MOV             R0, R5; this
363D24:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D28:  LDR             R1, [R4,#0x14]; FxSystem_c *
363D2A:  MOV             R0, R5; this
363D2C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D30:  LDR             R1, [R4,#0x18]; FxSystem_c *
363D32:  MOV             R0, R5; this
363D34:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D38:  LDR             R1, [R4,#0x1C]; FxSystem_c *
363D3A:  MOV             R0, R5; this
363D3C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D40:  LDR             R1, [R4,#0x20]; FxSystem_c *
363D42:  MOV             R0, R5; this
363D44:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D48:  LDR             R1, [R4,#0x24]; FxSystem_c *
363D4A:  MOV             R0, R5; this
363D4C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D50:  LDR             R1, [R4,#0x28]; FxSystem_c *
363D52:  MOV             R0, R5; this
363D54:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D58:  LDR             R1, [R4,#0x2C]; FxSystem_c *
363D5A:  MOV             R0, R5; this
363D5C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D60:  LDR             R1, [R4,#0x30]; FxSystem_c *
363D62:  MOV             R0, R5; this
363D64:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D68:  LDR             R1, [R4,#0x34]; FxSystem_c *
363D6A:  MOV             R0, R5; this
363D6C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D70:  LDR             R1, [R4,#0x38]; FxSystem_c *
363D72:  MOV             R0, R5; this
363D74:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D78:  LDR             R1, [R4,#0x3C]; FxSystem_c *
363D7A:  MOV             R0, R5; this
363D7C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363D80:  LDR             R1, [R4,#0x40]; FxSystem_c *
363D82:  MOV             R0, R5; this
363D84:  POP.W           {R4,R5,R7,LR}
363D88:  B.W             j_j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; j_FxManager_c::DestroyFxSystem(FxSystem_c *)
