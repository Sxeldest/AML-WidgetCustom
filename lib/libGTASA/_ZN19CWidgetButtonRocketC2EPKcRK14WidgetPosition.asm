; =========================================================
; Game Engine Function: _ZN19CWidgetButtonRocketC2EPKcRK14WidgetPosition
; Address            : 0x2B5A00 - 0x2B5A24
; =========================================================

2B5A00:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonRocket::CWidgetButtonRocket(char const*, WidgetPosition const&)'
2B5A02:  MOV             R7, SP
2B5A04:  SUB             SP, SP, #8
2B5A06:  MOV.W           R12, #0x59 ; 'Y'
2B5A0A:  MOVS            R3, #0
2B5A0C:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B5A10:  MOVS            R3, #1
2B5A12:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5A16:  LDR             R1, =(_ZTV19CWidgetButtonRocket_ptr - 0x2B5A1C)
2B5A18:  ADD             R1, PC; _ZTV19CWidgetButtonRocket_ptr
2B5A1A:  LDR             R1, [R1]; `vtable for'CWidgetButtonRocket ...
2B5A1C:  ADDS            R1, #8
2B5A1E:  STR             R1, [R0]
2B5A20:  ADD             SP, SP, #8
2B5A22:  POP             {R7,PC}
