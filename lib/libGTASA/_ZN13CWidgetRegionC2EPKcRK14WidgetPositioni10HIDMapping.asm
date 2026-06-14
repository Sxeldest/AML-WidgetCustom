; =========================================================
; Game Engine Function: _ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping
; Address            : 0x2BF8B0 - 0x2BF8D0
; =========================================================

2BF8B0:  PUSH            {R7,LR}; Alternative name is 'CWidgetRegion::CWidgetRegion(char const*, WidgetPosition const&, int, HIDMapping)'
2BF8B2:  MOV             R7, SP
2BF8B4:  SUB             SP, SP, #8
2BF8B6:  LDR.W           R12, [R7,#8]
2BF8BA:  STR.W           R12, [SP,#0x10+var_10]
2BF8BE:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2BF8C2:  LDR             R1, =(_ZTV13CWidgetRegion_ptr - 0x2BF8C8)
2BF8C4:  ADD             R1, PC; _ZTV13CWidgetRegion_ptr
2BF8C6:  LDR             R1, [R1]; `vtable for'CWidgetRegion ...
2BF8C8:  ADDS            R1, #8
2BF8CA:  STR             R1, [R0]
2BF8CC:  ADD             SP, SP, #8
2BF8CE:  POP             {R7,PC}
