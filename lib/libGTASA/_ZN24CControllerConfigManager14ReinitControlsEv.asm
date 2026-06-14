; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager14ReinitControlsEv
; Address            : 0x3E5224 - 0x3E5258
; =========================================================

3E5224:  PUSH            {R4,R5,R7,LR}
3E5226:  ADD             R7, SP, #8
3E5228:  SUB             SP, SP, #0x18
3E522A:  LDR             R0, =(ControlsManager_ptr - 0x3E5230)
3E522C:  ADD             R0, PC; ControlsManager_ptr
3E522E:  LDR             R4, [R0]; ControlsManager
3E5230:  MOV             R0, R4; this
3E5232:  BLX             j__ZN24CControllerConfigManager26MakeControllerActionsBlankEv; CControllerConfigManager::MakeControllerActionsBlank(void)
3E5236:  MOV             R0, R4; this
3E5238:  BLX             j__ZN24CControllerConfigManager31InitDefaultControlConfigurationEv; CControllerConfigManager::InitDefaultControlConfiguration(void)
3E523C:  LDR             R0, =(MousePointerStateHelper_ptr - 0x3E5244)
3E523E:  ADD             R5, SP, #0x20+var_1C
3E5240:  ADD             R0, PC; MousePointerStateHelper_ptr
3E5242:  LDR             R1, [R0]; MousePointerStateHelper
3E5244:  MOV             R0, R5; this
3E5246:  BLX             j__ZN24CMousePointerStateHelper13GetMouseSetUpEv; CMousePointerStateHelper::GetMouseSetUp(void)
3E524A:  MOV             R0, R4; this
3E524C:  MOV             R1, R5; CMouseControllerState *
3E524E:  MOVS            R2, #0; bool
3E5250:  BLX             j__ZN24CControllerConfigManager29InitDefaultControlConfigMouseERK21CMouseControllerStateb; CControllerConfigManager::InitDefaultControlConfigMouse(CMouseControllerState const&,bool)
3E5254:  ADD             SP, SP, #0x18
3E5256:  POP             {R4,R5,R7,PC}
