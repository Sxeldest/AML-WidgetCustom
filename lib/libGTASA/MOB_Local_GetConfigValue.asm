; =========================================================
; Game Engine Function: MOB_Local_GetConfigValue
; Address            : 0x2617BC - 0x2617E6
; =========================================================

2617BC:  LDR             R2, =(g_mob_configGlobals_ptr - 0x2617C2)
2617BE:  ADD             R2, PC; g_mob_configGlobals_ptr
2617C0:  LDR             R2, [R2]; g_mob_configGlobals
2617C2:  LDR             R2, [R2]
2617C4:  CMP             R2, #0
2617C6:  ITT NE
2617C8:  LDRNE           R3, [R2]
2617CA:  CMPNE           R3, #0
2617CC:  BEQ             loc_2617DC
2617CE:  ADDS            R2, #4
2617D0:  CMP             R3, R0
2617D2:  BEQ             loc_2617E0
2617D4:  LDR             R3, [R2,#4]
2617D6:  ADDS            R2, #8
2617D8:  CMP             R3, #0
2617DA:  BNE             loc_2617D0
2617DC:  MOV             R0, R1
2617DE:  BX              LR
2617E0:  LDR             R1, [R2]
2617E2:  MOV             R0, R1
2617E4:  BX              LR
