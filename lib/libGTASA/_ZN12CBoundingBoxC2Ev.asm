; =========================================================
; Game Engine Function: _ZN12CBoundingBoxC2Ev
; Address            : 0x2E1110 - 0x2E1128
; =========================================================

2E1110:  ADR             R1, dword_2E1130; Alternative name is 'CBoundingBox::CBoundingBox(void)'
2E1112:  MOV             R2, R0
2E1114:  VLD1.64         {D16-D17}, [R1@128]
2E1118:  MOVS            R1, #0xBF800000
2E111E:  STR             R1, [R0,#0x14]
2E1120:  VST1.32         {D16-D17}, [R2]!
2E1124:  STR             R1, [R2]
2E1126:  BX              LR
