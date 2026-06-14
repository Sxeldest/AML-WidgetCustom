; =========================================================
; Game Engine Function: _ZN21CWidgetButtonHelpTextC2EPKcRK14WidgetPosition
; Address            : 0x2B5360 - 0x2B5384
; =========================================================

2B5360:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonHelpText::CWidgetButtonHelpText(char const*, WidgetPosition const&)'
2B5362:  MOV             R7, SP
2B5364:  SUB             SP, SP, #8
2B5366:  MOV.W           R12, #0
2B536A:  MOVS            R3, #4
2B536C:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B5370:  MOVS            R3, #1
2B5372:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5376:  LDR             R1, =(_ZTV21CWidgetButtonHelpText_ptr - 0x2B537C)
2B5378:  ADD             R1, PC; _ZTV21CWidgetButtonHelpText_ptr
2B537A:  LDR             R1, [R1]; `vtable for'CWidgetButtonHelpText ...
2B537C:  ADDS            R1, #8
2B537E:  STR             R1, [R0]
2B5380:  ADD             SP, SP, #8
2B5382:  POP             {R7,PC}
