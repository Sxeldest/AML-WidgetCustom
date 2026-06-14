; =========================================================
; Game Engine Function: _ZN25CWidgetButtonMissionStartC2EPKcRK14WidgetPosition10HIDMapping
; Address            : 0x2B594C - 0x2B596E
; =========================================================

2B594C:  PUSH            {R7,LR}
2B594E:  MOV             R7, SP
2B5950:  SUB             SP, SP, #8
2B5952:  MOV.W           R12, #0xC80
2B5956:  STRD.W          R12, R3, [SP,#0x10+var_10]
2B595A:  MOVS            R3, #1
2B595C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5960:  LDR             R1, =(_ZTV25CWidgetButtonMissionStart_ptr - 0x2B5966)
2B5962:  ADD             R1, PC; _ZTV25CWidgetButtonMissionStart_ptr
2B5964:  LDR             R1, [R1]; `vtable for'CWidgetButtonMissionStart ...
2B5966:  ADDS            R1, #8
2B5968:  STR             R1, [R0]
2B596A:  ADD             SP, SP, #8
2B596C:  POP             {R7,PC}
