; =========================================================
; Game Engine Function: _ZN24CWidgetRegionPoolEnglishC2EPKcRK14WidgetPosition
; Address            : 0x2C1DB8 - 0x2C1DD6
; =========================================================

2C1DB8:  PUSH            {R7,LR}
2C1DBA:  MOV             R7, SP
2C1DBC:  SUB             SP, SP, #8
2C1DBE:  MOVS            R3, #0
2C1DC0:  STR             R3, [SP,#0x10+var_10]
2C1DC2:  MOVS            R3, #4
2C1DC4:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C1DC8:  LDR             R1, =(_ZTV24CWidgetRegionPoolEnglish_ptr - 0x2C1DCE)
2C1DCA:  ADD             R1, PC; _ZTV24CWidgetRegionPoolEnglish_ptr
2C1DCC:  LDR             R1, [R1]; `vtable for'CWidgetRegionPoolEnglish ...
2C1DCE:  ADDS            R1, #8
2C1DD0:  STR             R1, [R0]
2C1DD2:  ADD             SP, SP, #8
2C1DD4:  POP             {R7,PC}
