; =========================================================
; Game Engine Function: _ZN4Fx_c5ResetEv
; Address            : 0x363DB0 - 0x363DC8
; =========================================================

363DB0:  PUSH            {R4,R6,R7,LR}
363DB2:  ADD             R7, SP, #8
363DB4:  MOV             R4, R0
363DB6:  LDR             R0, =(g_fxMan_ptr - 0x363DBC)
363DB8:  ADD             R0, PC; g_fxMan_ptr
363DBA:  LDR             R0, [R0]; g_fxMan ; this
363DBC:  BLX             j__ZN11FxManager_c19DestroyAllFxSystemsEv; FxManager_c::DestroyAllFxSystems(void)
363DC0:  MOV             R0, R4; this
363DC2:  POP.W           {R4,R6,R7,LR}
363DC6:  B               _ZN4Fx_c17InitStaticSystemsEv; Fx_c::InitStaticSystems(void)
