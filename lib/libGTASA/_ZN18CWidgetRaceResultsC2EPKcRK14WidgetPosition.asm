; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResultsC2EPKcRK14WidgetPosition
; Address            : 0x2BEA10 - 0x2BEA8C
; =========================================================

2BEA10:  PUSH            {R4,R6,R7,LR}
2BEA12:  ADD             R7, SP, #8
2BEA14:  SUB             SP, SP, #8
2BEA16:  MOVS            R4, #0
2BEA18:  MOVS            R3, #4
2BEA1A:  STR             R4, [SP,#0x10+var_10]
2BEA1C:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2BEA20:  LDR             R1, =(_ZTV18CWidgetRaceResults_ptr - 0x2BEA2C)
2BEA22:  ADR             R2, dword_2BEA90
2BEA24:  STRB.W          R4, [R0,#0x90]
2BEA28:  ADD             R1, PC; _ZTV18CWidgetRaceResults_ptr
2BEA2A:  STRB.W          R4, [R0,#0x110]
2BEA2E:  STR.W           R4, [R0,#0x190]
2BEA32:  LDR             R1, [R1]; `vtable for'CWidgetRaceResults ...
2BEA34:  STR.W           R4, [R0,#0x199]
2BEA38:  ADDS            R1, #8
2BEA3A:  STR.W           R4, [R0,#0x195]
2BEA3E:  STR.W           R4, [R0,#0x194]
2BEA42:  STRB.W          R4, [R0,#0x21C]
2BEA46:  STR.W           R4, [R0,#0x2A1]
2BEA4A:  STRD.W          R4, R4, [R0,#0x29C]
2BEA4E:  STR             R1, [R0]
2BEA50:  ADD.W           R1, R0, #0x5C0
2BEA54:  VLD1.64         {D16-D17}, [R2@128]
2BEA58:  STR.W           R4, [R0,#0x2A5]
2BEA5C:  STRB.W          R4, [R0,#0x328]
2BEA60:  STRD.W          R4, R4, [R0,#0x3A8]
2BEA64:  STR.W           R4, [R0,#0x3B1]
2BEA68:  STR.W           R4, [R0,#0x3AD]
2BEA6C:  STR.W           R4, [R0,#0x4B4]
2BEA70:  STR.W           R4, [R0,#0x4B8]
2BEA74:  STRB.W          R4, [R0,#0x434]
2BEA78:  STR.W           R4, [R0,#0x4BD]
2BEA7C:  STR.W           R4, [R0,#0x4B9]
2BEA80:  VST1.32         {D16-D17}, [R1]
2BEA84:  STRB.W          R4, [R0,#0x540]
2BEA88:  ADD             SP, SP, #8
2BEA8A:  POP             {R4,R6,R7,PC}
