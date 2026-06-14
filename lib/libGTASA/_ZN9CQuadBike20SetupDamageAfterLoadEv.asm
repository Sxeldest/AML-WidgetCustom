; =========================================================
; Game Engine Function: _ZN9CQuadBike20SetupDamageAfterLoadEv
; Address            : 0x57AE78 - 0x57AEA6
; =========================================================

57AE78:  PUSH            {R4,R6,R7,LR}
57AE7A:  ADD             R7, SP, #8
57AE7C:  MOV             R4, R0
57AE7E:  LDR.W           R0, [R4,#0x68C]
57AE82:  CBZ             R0, loc_57AE8E
57AE84:  MOV             R0, R4
57AE86:  MOVS            R1, #5
57AE88:  MOVS            R2, #0
57AE8A:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
57AE8E:  LDR.W           R0, [R4,#0x690]
57AE92:  CMP             R0, #0
57AE94:  IT EQ
57AE96:  POPEQ           {R4,R6,R7,PC}
57AE98:  MOV             R0, R4
57AE9A:  MOVS            R1, #0
57AE9C:  MOVS            R2, #0
57AE9E:  POP.W           {R4,R6,R7,LR}
57AEA2:  B.W             sub_190F88
