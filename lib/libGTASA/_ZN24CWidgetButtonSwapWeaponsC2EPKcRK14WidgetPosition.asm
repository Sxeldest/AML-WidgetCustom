; =========================================================
; Game Engine Function: _ZN24CWidgetButtonSwapWeaponsC2EPKcRK14WidgetPosition
; Address            : 0x2B5D00 - 0x2B5D26
; =========================================================

2B5D00:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonSwapWeapons::CWidgetButtonSwapWeapons(char const*, WidgetPosition const&)'
2B5D02:  MOV             R7, SP
2B5D04:  SUB             SP, SP, #8
2B5D06:  MOV.W           R12, #0x21 ; '!'
2B5D0A:  MOV.W           R3, #0xC00
2B5D0E:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B5D12:  MOVS            R3, #1
2B5D14:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5D18:  LDR             R1, =(_ZTV24CWidgetButtonSwapWeapons_ptr - 0x2B5D1E)
2B5D1A:  ADD             R1, PC; _ZTV24CWidgetButtonSwapWeapons_ptr
2B5D1C:  LDR             R1, [R1]; `vtable for'CWidgetButtonSwapWeapons ...
2B5D1E:  ADDS            R1, #8
2B5D20:  STR             R1, [R0]
2B5D22:  ADD             SP, SP, #8
2B5D24:  POP             {R7,PC}
