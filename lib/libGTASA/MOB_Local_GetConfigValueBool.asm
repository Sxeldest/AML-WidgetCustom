; =========================================================
; Game Engine Function: MOB_Local_GetConfigValueBool
; Address            : 0x2617EC - 0x26181C
; =========================================================

2617EC:  LDR             R2, =(g_mob_configGlobals_ptr - 0x2617F2)
2617EE:  ADD             R2, PC; g_mob_configGlobals_ptr
2617F0:  LDR             R2, [R2]; g_mob_configGlobals
2617F2:  LDR             R2, [R2]
2617F4:  CMP             R2, #0
2617F6:  ITT NE
2617F8:  LDRNE           R3, [R2]
2617FA:  CMPNE           R3, #0
2617FC:  BEQ             loc_26180C
2617FE:  ADDS            R2, #4
261800:  CMP             R3, R0
261802:  BEQ             loc_261810
261804:  LDR             R3, [R2,#4]
261806:  ADDS            R2, #8
261808:  CMP             R3, #0
26180A:  BNE             loc_261800
26180C:  MOV             R0, R1
26180E:  BX              LR
261810:  LDR             R1, [R2]
261812:  CMP             R1, #0
261814:  IT NE
261816:  MOVNE           R1, #1
261818:  MOV             R0, R1
26181A:  BX              LR
