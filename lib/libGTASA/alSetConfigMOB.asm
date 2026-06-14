; =========================================================
; Game Engine Function: alSetConfigMOB
; Address            : 0x26164C - 0x261656
; =========================================================

26164C:  LDR             R1, =(g_mob_configGlobals_ptr - 0x261652)
26164E:  ADD             R1, PC; g_mob_configGlobals_ptr
261650:  LDR             R1, [R1]; g_mob_configGlobals
261652:  STR             R0, [R1]
261654:  BX              LR
