; =========================================================
; Game Engine Function: _ZN28CWidgetButtonBasketballShootC2EPKcRK14WidgetPosition
; Address            : 0x2B5180 - 0x2B51A4
; =========================================================

2B5180:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonBasketballShoot::CWidgetButtonBasketballShoot(char const*, WidgetPosition const&)'
2B5182:  MOV             R7, SP
2B5184:  SUB             SP, SP, #8
2B5186:  MOV.W           R12, #0x5E ; '^'
2B518A:  MOVS            R3, #4
2B518C:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B5190:  MOVS            R3, #1
2B5192:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5196:  LDR             R1, =(_ZTV28CWidgetButtonBasketballShoot_ptr - 0x2B519C)
2B5198:  ADD             R1, PC; _ZTV28CWidgetButtonBasketballShoot_ptr
2B519A:  LDR             R1, [R1]; `vtable for'CWidgetButtonBasketballShoot ...
2B519C:  ADDS            R1, #8
2B519E:  STR             R1, [R0]
2B51A0:  ADD             SP, SP, #8
2B51A2:  POP             {R7,PC}
