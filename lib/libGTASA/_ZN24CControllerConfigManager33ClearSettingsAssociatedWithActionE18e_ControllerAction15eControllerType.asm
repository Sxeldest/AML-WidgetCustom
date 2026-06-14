; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager33ClearSettingsAssociatedWithActionE18e_ControllerAction15eControllerType
; Address            : 0x3E37C4 - 0x3E37FA
; =========================================================

3E37C4:  CMP             R2, #3
3E37C6:  IT HI
3E37C8:  BHI.W           _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E37CC:  PUSH            {R4,R6,R7,LR}
3E37CE:  ADD             R7, SP, #0x10+var_8
3E37D0:  LDR.W           R12, =(unk_616F5C - 0x3E37E4)
3E37D4:  ADD.W           R3, R0, R1,LSL#5
3E37D8:  ADD.W           R3, R3, R2,LSL#3
3E37DC:  MOVW            LR, #0x3914
3E37E0:  ADD             R12, PC; unk_616F5C
3E37E2:  MOVS            R4, #0
3E37E4:  STR.W           R4, [R3,LR]
3E37E8:  MOVW            R4, #0x3910
3E37EC:  LDR.W           R2, [R12,R2,LSL#2]
3E37F0:  STR             R2, [R3,R4]
3E37F2:  POP.W           {R4,R6,R7,LR}
3E37F6:  B.W             _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
