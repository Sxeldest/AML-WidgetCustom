; =========================================================
; Game Engine Function: _ZN4Fx_c4InitEv
; Address            : 0x3639CC - 0x363A06
; =========================================================

3639CC:  PUSH            {R4,R5,R7,LR}
3639CE:  ADD             R7, SP, #8
3639D0:  MOV             R4, R0
3639D2:  LDR             R0, =(g_fxMan_ptr - 0x3639D8)
3639D4:  ADD             R0, PC; g_fxMan_ptr
3639D6:  LDR             R5, [R0]; g_fxMan
3639D8:  MOV             R0, R5; this
3639DA:  BLX             j__ZN11FxManager_c4InitEv; FxManager_c::Init(void)
3639DE:  ADR             R1, aModelsEffectsF; "models\\effects.fxp"
3639E0:  MOV             R0, R5; this
3639E2:  BLX             j__ZN11FxManager_c13LoadFxProjectEPc; FxManager_c::LoadFxProject(char *)
3639E6:  LDR             R0, =(_ZN8CWeather7WindDirE_ptr - 0x3639EE)
3639E8:  LDR             R2, =(_ZN8CWeather4WindE_ptr - 0x3639F0)
3639EA:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
3639EC:  ADD             R2, PC; _ZN8CWeather4WindE_ptr
3639EE:  LDR             R1, [R0]; CWeather::WindDir ...
3639F0:  MOV             R0, R5
3639F2:  LDR             R2, [R2]; CWeather::Wind ...
3639F4:  BLX             j__ZN11FxManager_c11SetWindDataEP5RwV3dPf; FxManager_c::SetWindData(RwV3d *,float *)
3639F8:  MOV             R0, R4; this
3639FA:  BLX             j__ZN4Fx_c17InitStaticSystemsEv; Fx_c::InitStaticSystems(void)
3639FE:  MOVS            R0, #0
363A00:  STR             R0, [R4,#0x50]
363A02:  MOVS            R0, #1
363A04:  POP             {R4,R5,R7,PC}
