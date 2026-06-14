; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager26MakeControllerActionsBlankEv
; Address            : 0x3E371C - 0x3E37C4
; =========================================================

3E371C:  PUSH            {R4-R7,LR}
3E371E:  ADD             R7, SP, #0xC
3E3720:  PUSH.W          {R8,R9,R11}
3E3724:  MOV             R4, R0
3E3726:  MOVW            R0, #0x3914
3E372A:  ADDS            R6, R4, R0
3E372C:  MOV.W           R8, #0
3E3730:  MOV.W           R9, #0x420
3E3734:  MOVS            R5, #0
3E3736:  MOV             R0, R4
3E3738:  MOV             R1, R5
3E373A:  STR.W           R9, [R6,#-4]
3E373E:  STR.W           R8, [R6]
3E3742:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E3746:  ADDS            R5, #1
3E3748:  ADDS            R6, #0x20 ; ' '
3E374A:  CMP             R5, #0xB6
3E374C:  BNE             loc_3E3736
3E374E:  MOVW            R0, #0x391C
3E3752:  ADDS            R6, R4, R0
3E3754:  MOV.W           R8, #0
3E3758:  MOV.W           R9, #0x420
3E375C:  MOVS            R5, #0
3E375E:  MOV             R0, R4
3E3760:  MOV             R1, R5
3E3762:  STR.W           R9, [R6,#-4]
3E3766:  STR.W           R8, [R6]
3E376A:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E376E:  ADDS            R5, #1
3E3770:  ADDS            R6, #0x20 ; ' '
3E3772:  CMP             R5, #0xB6
3E3774:  BNE             loc_3E375E
3E3776:  MOVW            R0, #0x3924
3E377A:  ADDS            R6, R4, R0
3E377C:  MOV.W           R8, #0
3E3780:  MOVS            R5, #0
3E3782:  MOV             R0, R4
3E3784:  MOV             R1, R5
3E3786:  STR.W           R8, [R6,#-4]
3E378A:  STR.W           R8, [R6]
3E378E:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E3792:  ADDS            R5, #1
3E3794:  ADDS            R6, #0x20 ; ' '
3E3796:  CMP             R5, #0xB6
3E3798:  BNE             loc_3E3782
3E379A:  MOVW            R0, #0x392C
3E379E:  ADDS            R6, R4, R0
3E37A0:  MOV.W           R8, #0
3E37A4:  MOVS            R5, #0
3E37A6:  MOV             R0, R4
3E37A8:  MOV             R1, R5
3E37AA:  STR.W           R8, [R6,#-4]
3E37AE:  STR.W           R8, [R6]
3E37B2:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E37B6:  ADDS            R5, #1
3E37B8:  ADDS            R6, #0x20 ; ' '
3E37BA:  CMP             R5, #0xB6
3E37BC:  BNE             loc_3E37A6
3E37BE:  POP.W           {R8,R9,R11}
3E37C2:  POP             {R4-R7,PC}
