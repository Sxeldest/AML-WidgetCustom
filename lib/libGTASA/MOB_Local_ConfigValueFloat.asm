; =========================================================
; Game Engine Function: MOB_Local_ConfigValueFloat
; Address            : 0x261820 - 0x261858
; =========================================================

261820:  LDR             R2, =(g_mob_configGlobals_ptr - 0x261826)
261822:  ADD             R2, PC; g_mob_configGlobals_ptr
261824:  LDR             R2, [R2]; g_mob_configGlobals
261826:  LDR             R3, [R2]
261828:  CMP             R3, #0
26182A:  ITT NE
26182C:  LDRNE           R2, [R3]
26182E:  CMPNE           R2, #0
261830:  BEQ             loc_261854
261832:  ADDS            R3, #4
261834:  CMP             R2, R0
261836:  BEQ             loc_26184C
261838:  LDR             R2, [R3,#4]
26183A:  ADD.W           R12, R3, #8
26183E:  CMP             R2, #0
261840:  MOV             R3, R12
261842:  ITT EQ
261844:  MOVEQ           R0, #0
261846:  BXEQ            LR
261848:  CMP             R2, R0
26184A:  BNE             loc_261838
26184C:  LDR             R0, [R3]
26184E:  STR             R0, [R1]
261850:  MOVS            R0, #1
261852:  BX              LR
261854:  MOVS            R0, #0
261856:  BX              LR
