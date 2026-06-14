; =========================================================
; Game Engine Function: sub_273CF8
; Address            : 0x273CF8 - 0x273D38
; =========================================================

273CF8:  LDR             R0, =(IsAndroidPaused_ptr - 0x273CFE)
273CFA:  ADD             R0, PC; IsAndroidPaused_ptr
273CFC:  LDR             R0, [R0]; IsAndroidPaused
273CFE:  LDR             R0, [R0]
273D00:  CBZ             R0, loc_273D06
273D02:  MOVS            R0, #1
273D04:  BX              LR
273D06:  PUSH            {R7,LR}
273D08:  MOV             R7, SP
273D0A:  SUB             SP, SP, #0x18
273D0C:  VMOV            S4, R2
273D10:  VLDR            S0, [R7,#8]
273D14:  VMOV            S2, R3
273D18:  MOVS            R0, #5
273D1A:  VSTR            S4, [SP,#0x20+var_1C]
273D1E:  STR             R0, [SP,#0x20+var_20]
273D20:  MOV             R0, SP
273D22:  VSTR            S0, [SP,#0x20+var_14]
273D26:  VSTR            S2, [SP,#0x20+var_18]
273D2A:  BL              sub_27C4F0
273D2E:  ADD             SP, SP, #0x18
273D30:  POP.W           {R7,LR}
273D34:  MOVS            R0, #1
273D36:  BX              LR
