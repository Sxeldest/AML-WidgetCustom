; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager30GetFirstKeyboardControllerTextE18e_ControllerAction
; Address            : 0x3EA648 - 0x3EA67C
; =========================================================

3EA648:  PUSH            {R4,R5,R7,LR}
3EA64A:  ADD             R7, SP, #8
3EA64C:  MOV             R4, R1
3EA64E:  MOV             R5, R0
3EA650:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3EA654:  ADD.W           R0, R5, R4,LSL#5
3EA658:  MOVW            R1, #0x3914
3EA65C:  LDR             R1, [R0,R1]
3EA65E:  CBZ             R1, loc_3EA664
3EA660:  MOVS            R2, #0
3EA662:  B               loc_3EA66E
3EA664:  MOVW            R1, #0x391C
3EA668:  LDR             R0, [R0,R1]
3EA66A:  CBZ             R0, loc_3EA678
3EA66C:  MOVS            R2, #1
3EA66E:  MOV             R0, R5
3EA670:  MOV             R1, R4
3EA672:  POP.W           {R4,R5,R7,LR}
3EA676:  B               _ZN24CControllerConfigManager32GetControllerSettingTextKeyBoardE18e_ControllerAction15eControllerType; CControllerConfigManager::GetControllerSettingTextKeyBoard(e_ControllerAction,eControllerType)
3EA678:  MOVS            R0, #0
3EA67A:  POP             {R4,R5,R7,PC}
