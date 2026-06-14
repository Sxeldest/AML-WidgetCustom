; =========================================================
; Game Engine Function: _ZN9CPlantMgr16MoveColEntToListEPP17CPlantColEntEntryS2_S1_
; Address            : 0x2CEEDC - 0x2CEF1C
; =========================================================

2CEEDC:  LDRD.W          R12, R3, [R2,#0xC]
2CEEE0:  CBZ             R3, loc_2CEEF6
2CEEE2:  CMP.W           R12, #0
2CEEE6:  ITTE NE
2CEEE8:  STRNE.W         R3, [R12,#0x10]
2CEEEC:  LDRDNE.W        R0, R3, [R2,#0xC]
2CEEF0:  MOVEQ           R0, #0
2CEEF2:  STR             R0, [R3,#0xC]
2CEEF4:  B               loc_2CEF06
2CEEF6:  CMP.W           R12, #0
2CEEFA:  STR.W           R12, [R0]
2CEEFE:  ITT NE
2CEF00:  MOVNE           R0, #0
2CEF02:  STRNE.W         R0, [R12,#0x10]
2CEF06:  MOVS            R0, #0
2CEF08:  LDR             R3, [R1]
2CEF0A:  STRD.W          R3, R0, [R2,#0xC]
2CEF0E:  STR             R2, [R1]
2CEF10:  LDR             R0, [R2,#0xC]
2CEF12:  CMP             R0, #0
2CEF14:  IT NE
2CEF16:  STRNE           R2, [R0,#0x10]
2CEF18:  MOV             R0, R2
2CEF1A:  BX              LR
