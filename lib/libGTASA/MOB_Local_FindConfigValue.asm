; =========================================================
; Game Engine Function: MOB_Local_FindConfigValue
; Address            : 0x26175C - 0x26178C
; =========================================================

26175C:  LDR             R2, =(g_mob_configGlobals_ptr - 0x261762)
26175E:  ADD             R2, PC; g_mob_configGlobals_ptr
261760:  LDR             R2, [R2]; g_mob_configGlobals
261762:  LDR             R3, [R2]
261764:  CMP             R3, #0
261766:  ITT NE
261768:  LDRNE           R2, [R3]
26176A:  CMPNE           R2, #0
26176C:  BEQ             loc_261780
26176E:  ADDS            R3, #4
261770:  CMP             R2, R0
261772:  BEQ             loc_261784
261774:  LDR             R2, [R3,#4]
261776:  ADD.W           R12, R3, #8
26177A:  CMP             R2, #0
26177C:  MOV             R3, R12
26177E:  BNE             loc_261770
261780:  MOVS            R0, #0
261782:  BX              LR
261784:  LDR             R0, [R3]
261786:  STR             R0, [R1]
261788:  MOVS            R0, #1
26178A:  BX              LR
