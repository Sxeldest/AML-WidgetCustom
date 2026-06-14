; =========================================================
; Game Engine Function: _Z21ApplyPanelDamageToCarjP11CAutomobileb
; Address            : 0x450C74 - 0x450D64
; =========================================================

450C74:  PUSH            {R4-R7,LR}
450C76:  ADD             R7, SP, #0xC
450C78:  PUSH.W          {R11}
450C7C:  MOV             R5, R1
450C7E:  MOV             R6, R0
450C80:  LDR.W           R0, [R5,#0x5C8]
450C84:  MOV             R4, R2
450C86:  AND.W           R1, R6, #0xF
450C8A:  AND.W           R2, R0, #0xF
450C8E:  CMP             R2, R1
450C90:  BEQ             loc_450CAA
450C92:  BIC.W           R0, R0, #0xF
450C96:  MOV             R2, R4
450C98:  ORRS            R0, R1
450C9A:  STR.W           R0, [R5,#0x5C8]
450C9E:  MOV             R0, R5
450CA0:  MOVS            R1, #0
450CA2:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
450CA6:  LDR.W           R0, [R5,#0x5C8]
450CAA:  EOR.W           R1, R0, R6
450CAE:  TST.W           R1, #0xF0
450CB2:  BEQ             loc_450CCC
450CB4:  LSRS            R1, R6, #4
450CB6:  MOV             R2, R4
450CB8:  BFI.W           R0, R1, #4, #4
450CBC:  STR.W           R0, [R5,#0x5C8]
450CC0:  MOV             R0, R5
450CC2:  MOVS            R1, #1
450CC4:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
450CC8:  LDR.W           R0, [R5,#0x5C8]
450CCC:  EOR.W           R1, R0, R6
450CD0:  TST.W           R1, #0xF00
450CD4:  ITTT NE
450CD6:  LSRNE           R1, R6, #8
450CD8:  BFINE.W         R0, R1, #8, #4
450CDC:  STRNE.W         R0, [R5,#0x5C8]
450CE0:  EOR.W           R1, R0, R6
450CE4:  TST.W           R1, #0xF000
450CE8:  ITTT NE
450CEA:  LSRNE           R1, R6, #0xC
450CEC:  BFINE.W         R0, R1, #0xC, #4
450CF0:  STRNE.W         R0, [R5,#0x5C8]
450CF4:  EOR.W           R1, R0, R6
450CF8:  TST.W           R1, #0xF0000
450CFC:  BEQ             loc_450D16
450CFE:  LSRS            R1, R6, #0x10
450D00:  MOV             R2, R4
450D02:  BFI.W           R0, R1, #0x10, #4
450D06:  STR.W           R0, [R5,#0x5C8]
450D0A:  MOV             R0, R5
450D0C:  MOVS            R1, #4
450D0E:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
450D12:  LDR.W           R0, [R5,#0x5C8]
450D16:  EOR.W           R1, R0, R6
450D1A:  TST.W           R1, #0xF00000
450D1E:  BEQ             loc_450D38
450D20:  LSRS            R1, R6, #0x14
450D22:  MOV             R2, R4
450D24:  BFI.W           R0, R1, #0x14, #4
450D28:  STR.W           R0, [R5,#0x5C8]
450D2C:  MOV             R0, R5
450D2E:  MOVS            R1, #5
450D30:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
450D34:  LDR.W           R0, [R5,#0x5C8]
450D38:  EOR.W           R1, R0, R6
450D3C:  TST.W           R1, #0xF000000
450D40:  BEQ             loc_450D5E
450D42:  LSRS            R1, R6, #0x18
450D44:  MOV             R2, R4
450D46:  BFI.W           R0, R1, #0x18, #4
450D4A:  STR.W           R0, [R5,#0x5C8]
450D4E:  MOV             R0, R5
450D50:  MOVS            R1, #6
450D52:  POP.W           {R11}
450D56:  POP.W           {R4-R7,LR}
450D5A:  B.W             j_j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; j_CAutomobile::SetBumperDamage(ePanels,bool)
450D5E:  POP.W           {R11}
450D62:  POP             {R4-R7,PC}
