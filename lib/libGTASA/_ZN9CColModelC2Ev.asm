; =========================================================
; Game Engine Function: _ZN9CColModelC2Ev
; Address            : 0x2E1720 - 0x2E174C
; =========================================================

2E1720:  ADR             R1, dword_2E1750; Alternative name is 'CColModel::CColModel(void)'
2E1722:  MOVS            R2, #0
2E1724:  VLD1.64         {D16-D17}, [R1@128]
2E1728:  MOV             R1, R0
2E172A:  MOVT            R2, #0xBF80
2E172E:  VST1.32         {D16-D17}, [R1]!
2E1732:  STR             R2, [R1]
2E1734:  STR             R2, [R0,#0x14]
2E1736:  MOVS            R2, #0
2E1738:  LDRB.W          R1, [R0,#0x29]
2E173C:  STR             R2, [R0,#0x2C]
2E173E:  STRB.W          R2, [R0,#0x28]
2E1742:  AND.W           R1, R1, #0xF8
2E1746:  STRB.W          R1, [R0,#0x29]
2E174A:  BX              LR
