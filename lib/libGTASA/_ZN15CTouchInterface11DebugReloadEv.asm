; =========================================================
; Game Engine Function: _ZN15CTouchInterface11DebugReloadEv
; Address            : 0x2B2874 - 0x2B2888
; =========================================================

2B2874:  PUSH            {R7,LR}
2B2876:  MOV             R7, SP
2B2878:  BLX             j__ZN15CWidgetListShop12LoadFromFileEv; CWidgetListShop::LoadFromFile(void)
2B287C:  BLX             j__ZN15CTouchInterface17LoadTouchControlsEv; CTouchInterface::LoadTouchControls(void)
2B2880:  POP.W           {R7,LR}
2B2884:  B.W             _ZN15CTouchInterface9CreateAllEv; CTouchInterface::CreateAll(void)
