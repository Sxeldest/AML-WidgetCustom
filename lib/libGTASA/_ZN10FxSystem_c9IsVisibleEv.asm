; =========================================================
; Game Engine Function: _ZN10FxSystem_c9IsVisibleEv
; Address            : 0x36E760 - 0x36E790
; =========================================================

36E760:  PUSH            {R7,LR}
36E762:  MOV             R7, SP
36E764:  SUB             SP, SP, #0x18
36E766:  MOVS            R1, #0
36E768:  STR             R1, [SP,#0x20+var_C]
36E76A:  ADD             R1, SP, #0x20+var_1C; FxSphere_c *
36E76C:  BLX             j__ZN10FxSystem_c20GetBoundingSphereWldEP10FxSphere_c; FxSystem_c::GetBoundingSphereWld(FxSphere_c *)
36E770:  CBZ             R0, loc_36E784
36E772:  LDR             R0, =(g_fxMan_ptr - 0x36E778)
36E774:  ADD             R0, PC; g_fxMan_ptr
36E776:  LDR             R0, [R0]; g_fxMan ; this
36E778:  BLX             j__ZN11FxManager_c14GetFrustumInfoEv; FxManager_c::GetFrustumInfo(void)
36E77C:  ADD             R1, SP, #0x20+var_1C; FxSphere_c *
36E77E:  BLX             j__ZN15FxFrustumInfo_c11IsCollisionEP10FxSphere_c; FxFrustumInfo_c::IsCollision(FxSphere_c *)
36E782:  CBZ             R0, loc_36E78A
36E784:  MOVS            R0, #1
36E786:  ADD             SP, SP, #0x18
36E788:  POP             {R7,PC}
36E78A:  MOVS            R0, #0
36E78C:  ADD             SP, SP, #0x18
36E78E:  POP             {R7,PC}
