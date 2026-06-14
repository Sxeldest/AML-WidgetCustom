; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager32DeleteMatching1rstPersonControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E9884 - 0x3E990A
; =========================================================

3E9884:  PUSH            {R4-R7,LR}
3E9886:  ADD             R7, SP, #0xC
3E9888:  PUSH.W          {R8}
3E988C:  MOV             R5, R3
3E988E:  MOV             R6, R2
3E9890:  MOV             R8, R0
3E9892:  CMP             R5, #2
3E9894:  BCC             loc_3E98A0
3E9896:  IT NE
3E9898:  CMPNE           R5, #3
3E989A:  BNE             loc_3E9904
3E989C:  CBNZ            R6, loc_3E98A6
3E989E:  B               loc_3E9904
3E98A0:  CMP.W           R6, #0x420
3E98A4:  BEQ             loc_3E9904
3E98A6:  ADD.W           R4, R8, R5,LSL#3
3E98AA:  MOVW            R0, #0x3A10
3E98AE:  LDR             R1, [R4,R0]
3E98B0:  CMP             R1, R6
3E98B2:  BNE             loc_3E98D4
3E98B4:  CMP             R5, #3
3E98B6:  BHI             loc_3E98CC
3E98B8:  LDR             R1, =(unk_616F5C - 0x3E98C0)
3E98BA:  ADD             R0, R4
3E98BC:  ADD             R1, PC; unk_616F5C
3E98BE:  LDR.W           R1, [R1,R5,LSL#2]
3E98C2:  STR             R1, [R0]
3E98C4:  MOVW            R0, #0x3A14
3E98C8:  MOVS            R1, #0
3E98CA:  STR             R1, [R4,R0]
3E98CC:  MOV             R0, R8
3E98CE:  MOVS            R1, #8
3E98D0:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E98D4:  MOVW            R0, #0x3A30
3E98D8:  LDR             R1, [R4,R0]
3E98DA:  CMP             R1, R6
3E98DC:  BNE             loc_3E9904
3E98DE:  CMP             R5, #3
3E98E0:  BHI             loc_3E98F6
3E98E2:  LDR             R1, =(unk_616F5C - 0x3E98EA)
3E98E4:  ADD             R0, R4
3E98E6:  ADD             R1, PC; unk_616F5C
3E98E8:  LDR.W           R1, [R1,R5,LSL#2]
3E98EC:  STR             R1, [R0]
3E98EE:  MOVW            R0, #0x3A34
3E98F2:  MOVS            R1, #0
3E98F4:  STR             R1, [R4,R0]
3E98F6:  MOV             R0, R8
3E98F8:  MOVS            R1, #9
3E98FA:  POP.W           {R8}
3E98FE:  POP.W           {R4-R7,LR}
3E9902:  B               _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9904:  POP.W           {R8}
3E9908:  POP             {R4-R7,PC}
