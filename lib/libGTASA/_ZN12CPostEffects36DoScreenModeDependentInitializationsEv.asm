; =========================================================
; Game Engine Function: _ZN12CPostEffects36DoScreenModeDependentInitializationsEv
; Address            : 0x5B28A4 - 0x5B28B2
; =========================================================

5B28A4:  PUSH            {R7,LR}
5B28A6:  MOV             R7, SP
5B28A8:  BLX.W           j__ZN12CPostEffects34ImmediateModeFilterStuffInitializeEv; CPostEffects::ImmediateModeFilterStuffInitialize(void)
5B28AC:  POP.W           {R7,LR}
5B28B0:  B               _ZN12CPostEffects14HeatHazeFXInitEv; CPostEffects::HeatHazeFXInit(void)
