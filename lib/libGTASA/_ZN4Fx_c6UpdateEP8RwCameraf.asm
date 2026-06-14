; =========================================================
; Game Engine Function: _ZN4Fx_c6UpdateEP8RwCameraf
; Address            : 0x363D90 - 0x363D9A
; =========================================================

363D90:  LDR             R0, =(g_fxMan_ptr - 0x363D96)
363D92:  ADD             R0, PC; g_fxMan_ptr
363D94:  LDR             R0, [R0]; g_fxMan
363D96:  B.W             j_j__ZN11FxManager_c6UpdateEP8RwCameraf; j_FxManager_c::Update(RwCamera *,float)
