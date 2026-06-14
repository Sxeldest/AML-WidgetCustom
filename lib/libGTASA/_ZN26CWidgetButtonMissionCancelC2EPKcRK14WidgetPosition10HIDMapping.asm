; =========================================================
; Game Engine Function: _ZN26CWidgetButtonMissionCancelC2EPKcRK14WidgetPosition10HIDMapping
; Address            : 0x2B6850 - 0x2B6872
; =========================================================

2B6850:  PUSH            {R7,LR}
2B6852:  MOV             R7, SP
2B6854:  SUB             SP, SP, #8
2B6856:  MOV.W           R12, #0x2C00
2B685A:  STRD.W          R12, R3, [SP,#0x10+var_10]
2B685E:  MOVS            R3, #1
2B6860:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B6864:  LDR             R1, =(_ZTV26CWidgetButtonMissionCancel_ptr - 0x2B686A)
2B6866:  ADD             R1, PC; _ZTV26CWidgetButtonMissionCancel_ptr
2B6868:  LDR             R1, [R1]; `vtable for'CWidgetButtonMissionCancel ...
2B686A:  ADDS            R1, #8
2B686C:  STR             R1, [R0]
2B686E:  ADD             SP, SP, #8
2B6870:  POP             {R7,PC}
