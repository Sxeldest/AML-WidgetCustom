; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStickC2EPKcRK14WidgetPositioni10HIDMapping
; Address            : 0x2BFB9C - 0x2BFBC2
; =========================================================

2BFB9C:  PUSH            {R7,LR}; Alternative name is 'CWidgetRegionArcadeStick::CWidgetRegionArcadeStick(char const*, WidgetPosition const&, int, HIDMapping)'
2BFB9E:  MOV             R7, SP
2BFBA0:  SUB             SP, SP, #8
2BFBA2:  LDR.W           R12, [R7,#8]
2BFBA6:  STR.W           R12, [SP,#0x10+var_10]
2BFBAA:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2BFBAE:  LDR             R1, =(_ZTV24CWidgetRegionArcadeStick_ptr - 0x2BFBBA)
2BFBB0:  MOVS            R2, #1
2BFBB2:  STRD.W          R2, R2, [R0,#0x90]
2BFBB6:  ADD             R1, PC; _ZTV24CWidgetRegionArcadeStick_ptr
2BFBB8:  LDR             R1, [R1]; `vtable for'CWidgetRegionArcadeStick ...
2BFBBA:  ADDS            R1, #8
2BFBBC:  STR             R1, [R0]
2BFBBE:  ADD             SP, SP, #8
2BFBC0:  POP             {R7,PC}
