; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager39DeleteMatchingVehicle_3rdPersonControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E9830 - 0x3E987E
; =========================================================

3E9830:  PUSH            {R7,LR}
3E9832:  MOV             R7, SP
3E9834:  CMP             R3, #2
3E9836:  BCC             loc_3E9876
3E9838:  IT NE
3E983A:  CMPNE           R3, #3
3E983C:  BNE             locret_3E987C
3E983E:  CBZ             R2, locret_3E987C
3E9840:  ADD.W           LR, R0, R3,LSL#3
3E9844:  MOVW            R12, #0x3A50
3E9848:  LDR.W           R1, [LR,R12]
3E984C:  CMP             R1, R2
3E984E:  IT NE
3E9850:  POPNE           {R7,PC}
3E9852:  CMP             R3, #3
3E9854:  BHI             loc_3E986E
3E9856:  LDR             R2, =(unk_616F5C - 0x3E9860)
3E9858:  ADD.W           R1, LR, R12
3E985C:  ADD             R2, PC; unk_616F5C
3E985E:  LDR.W           R2, [R2,R3,LSL#2]
3E9862:  STR             R2, [R1]
3E9864:  MOVW            R1, #0x3A54
3E9868:  MOVS            R2, #0
3E986A:  STR.W           R2, [LR,R1]
3E986E:  MOVS            R1, #0xA
3E9870:  POP.W           {R7,LR}
3E9874:  B               _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9876:  CMP.W           R2, #0x420
3E987A:  BNE             loc_3E9840
3E987C:  POP             {R7,PC}
