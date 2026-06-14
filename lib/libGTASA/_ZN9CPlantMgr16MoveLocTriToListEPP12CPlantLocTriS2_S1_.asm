; =========================================================
; Game Engine Function: _ZN9CPlantMgr16MoveLocTriToListEPP12CPlantLocTriS2_S1_
; Address            : 0x2CEE9C - 0x2CEEDC
; =========================================================

2CEE9C:  LDRD.W          R12, R3, [R2,#0x4C]
2CEEA0:  CBZ             R3, loc_2CEEB6
2CEEA2:  CMP.W           R12, #0
2CEEA6:  ITTE NE
2CEEA8:  STRNE.W         R3, [R12,#0x50]
2CEEAC:  LDRDNE.W        R0, R3, [R2,#0x4C]
2CEEB0:  MOVEQ           R0, #0
2CEEB2:  STR             R0, [R3,#0x4C]
2CEEB4:  B               loc_2CEEC6
2CEEB6:  CMP.W           R12, #0
2CEEBA:  STR.W           R12, [R0]
2CEEBE:  ITT NE
2CEEC0:  MOVNE           R0, #0
2CEEC2:  STRNE.W         R0, [R12,#0x50]
2CEEC6:  MOVS            R0, #0
2CEEC8:  LDR             R3, [R1]
2CEECA:  STRD.W          R3, R0, [R2,#0x4C]
2CEECE:  STR             R2, [R1]
2CEED0:  LDR             R0, [R2,#0x4C]
2CEED2:  CMP             R0, #0
2CEED4:  IT NE
2CEED6:  STRNE           R2, [R0,#0x50]
2CEED8:  MOV             R0, R2
2CEEDA:  BX              LR
