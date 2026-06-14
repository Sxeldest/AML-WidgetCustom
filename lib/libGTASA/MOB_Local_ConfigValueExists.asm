; =========================================================
; Game Engine Function: MOB_Local_ConfigValueExists
; Address            : 0x261790 - 0x2617B8
; =========================================================

261790:  LDR             R1, =(g_mob_configGlobals_ptr - 0x261796)
261792:  ADD             R1, PC; g_mob_configGlobals_ptr
261794:  LDR             R1, [R1]; g_mob_configGlobals
261796:  LDR             R1, [R1]
261798:  CMP             R1, #0
26179A:  ITT NE
26179C:  LDRNE           R2, [R1]
26179E:  CMPNE           R2, #0
2617A0:  BEQ             loc_2617B4
2617A2:  ADDS            R1, #8
2617A4:  CMP             R2, R0
2617A6:  ITT EQ
2617A8:  MOVEQ           R0, #1
2617AA:  BXEQ            LR
2617AC:  LDR.W           R2, [R1],#8
2617B0:  CMP             R2, #0
2617B2:  BNE             loc_2617A4
2617B4:  MOVS            R0, #0
2617B6:  BX              LR
