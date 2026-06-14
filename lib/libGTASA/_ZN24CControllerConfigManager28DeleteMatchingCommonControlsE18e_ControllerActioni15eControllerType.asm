; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager28DeleteMatchingCommonControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E8D48 - 0x3E8E7C
; =========================================================

3E8D48:  PUSH            {R4-R7,LR}
3E8D4A:  ADD             R7, SP, #0xC
3E8D4C:  PUSH.W          {R8}
3E8D50:  MOV             R5, R3
3E8D52:  MOV             R6, R2
3E8D54:  MOV             R8, R0
3E8D56:  CMP             R5, #2
3E8D58:  BCC             loc_3E8D66
3E8D5A:  IT NE
3E8D5C:  CMPNE           R5, #3
3E8D5E:  BNE.W           loc_3E8E76
3E8D62:  CBNZ            R6, loc_3E8D6E
3E8D64:  B               loc_3E8E76
3E8D66:  CMP.W           R6, #0x420
3E8D6A:  BEQ.W           loc_3E8E76
3E8D6E:  ADD.W           R4, R8, R5,LSL#3
3E8D72:  MOVW            R0, #0x3A70
3E8D76:  LDR             R1, [R4,R0]
3E8D78:  CMP             R1, R6
3E8D7A:  BNE             loc_3E8D9C
3E8D7C:  CMP             R5, #3
3E8D7E:  BHI             loc_3E8D94
3E8D80:  LDR             R1, =(unk_616F5C - 0x3E8D88)
3E8D82:  ADD             R0, R4
3E8D84:  ADD             R1, PC; unk_616F5C
3E8D86:  LDR.W           R1, [R1,R5,LSL#2]
3E8D8A:  STR             R1, [R0]
3E8D8C:  MOVW            R0, #0x3A74
3E8D90:  MOVS            R1, #0
3E8D92:  STR             R1, [R4,R0]
3E8D94:  MOV             R0, R8
3E8D96:  MOVS            R1, #0xB
3E8D98:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8D9C:  MOVW            R0, #0x3ED0
3E8DA0:  LDR             R1, [R4,R0]
3E8DA2:  CMP             R1, R6
3E8DA4:  BNE             loc_3E8DC6
3E8DA6:  CMP             R5, #3
3E8DA8:  BHI             loc_3E8DBE
3E8DAA:  LDR             R1, =(unk_616F5C - 0x3E8DB2)
3E8DAC:  ADD             R0, R4
3E8DAE:  ADD             R1, PC; unk_616F5C
3E8DB0:  LDR.W           R1, [R1,R5,LSL#2]
3E8DB4:  STR             R1, [R0]
3E8DB6:  MOVW            R0, #0x3ED4
3E8DBA:  MOVS            R1, #0
3E8DBC:  STR             R1, [R4,R0]
3E8DBE:  MOV             R0, R8
3E8DC0:  MOVS            R1, #0x2E ; '.'
3E8DC2:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8DC6:  MOVW            R0, #0x3FF0
3E8DCA:  LDR             R1, [R4,R0]
3E8DCC:  CMP             R1, R6
3E8DCE:  BNE             loc_3E8DF0
3E8DD0:  CMP             R5, #3
3E8DD2:  BHI             loc_3E8DE8
3E8DD4:  LDR             R1, =(unk_616F5C - 0x3E8DDC)
3E8DD6:  ADD             R0, R4
3E8DD8:  ADD             R1, PC; unk_616F5C
3E8DDA:  LDR.W           R1, [R1,R5,LSL#2]
3E8DDE:  STR             R1, [R0]
3E8DE0:  MOVW            R0, #0x3FF4
3E8DE4:  MOVS            R1, #0
3E8DE6:  STR             R1, [R4,R0]
3E8DE8:  MOV             R0, R8
3E8DEA:  MOVS            R1, #0x37 ; '7'
3E8DEC:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8DF0:  MOVW            R0, #0x3FD0
3E8DF4:  LDR             R1, [R4,R0]
3E8DF6:  CMP             R1, R6
3E8DF8:  BNE             loc_3E8E1A
3E8DFA:  CMP             R5, #3
3E8DFC:  BHI             loc_3E8E12
3E8DFE:  LDR             R1, =(unk_616F5C - 0x3E8E06)
3E8E00:  ADD             R0, R4
3E8E02:  ADD             R1, PC; unk_616F5C
3E8E04:  LDR.W           R1, [R1,R5,LSL#2]
3E8E08:  STR             R1, [R0]
3E8E0A:  MOVW            R0, #0x3FD4
3E8E0E:  MOVS            R1, #0
3E8E10:  STR             R1, [R4,R0]
3E8E12:  MOV             R0, R8
3E8E14:  MOVS            R1, #0x36 ; '6'
3E8E16:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8E1A:  MOVW            R0, #0x4010
3E8E1E:  LDR             R1, [R4,R0]
3E8E20:  CMP             R1, R6
3E8E22:  BNE             loc_3E8E44
3E8E24:  CMP             R5, #3
3E8E26:  BHI             loc_3E8E3C
3E8E28:  LDR             R1, =(unk_616F5C - 0x3E8E30)
3E8E2A:  ADD             R0, R4
3E8E2C:  ADD             R1, PC; unk_616F5C
3E8E2E:  LDR.W           R1, [R1,R5,LSL#2]
3E8E32:  STR             R1, [R0]
3E8E34:  MOVW            R0, #0x4014
3E8E38:  MOVS            R1, #0
3E8E3A:  STR             R1, [R4,R0]
3E8E3C:  MOV             R0, R8
3E8E3E:  MOVS            R1, #0x38 ; '8'
3E8E40:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8E44:  MOVW            R0, #0x4030
3E8E48:  LDR             R1, [R4,R0]
3E8E4A:  CMP             R1, R6
3E8E4C:  BNE             loc_3E8E76
3E8E4E:  CMP             R5, #3
3E8E50:  BHI             loc_3E8E66
3E8E52:  LDR             R1, =(unk_616F5C - 0x3E8E5A)
3E8E54:  ADD             R0, R4
3E8E56:  ADD             R1, PC; unk_616F5C
3E8E58:  LDR.W           R1, [R1,R5,LSL#2]
3E8E5C:  STR             R1, [R0]
3E8E5E:  MOVW            R0, #0x4034
3E8E62:  MOVS            R1, #0
3E8E64:  STR             R1, [R4,R0]
3E8E66:  MOV             R0, R8
3E8E68:  MOVS            R1, #0x39 ; '9'
3E8E6A:  POP.W           {R8}
3E8E6E:  POP.W           {R4-R7,LR}
3E8E72:  B.W             _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8E76:  POP.W           {R8}
3E8E7A:  POP             {R4-R7,PC}
