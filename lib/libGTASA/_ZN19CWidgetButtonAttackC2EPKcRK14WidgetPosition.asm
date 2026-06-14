; =========================================================
; Game Engine Function: _ZN19CWidgetButtonAttackC2EPKcRK14WidgetPosition
; Address            : 0x2B4E04 - 0x2B4E2A
; =========================================================

2B4E04:  PUSH            {R7,LR}
2B4E06:  MOV             R7, SP
2B4E08:  SUB             SP, SP, #8
2B4E0A:  MOV.W           R12, #1
2B4E0E:  MOV.W           R3, #0x100
2B4E12:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B4E16:  MOVS            R3, #1
2B4E18:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B4E1C:  LDR             R1, =(_ZTV19CWidgetButtonAttack_ptr - 0x2B4E22)
2B4E1E:  ADD             R1, PC; _ZTV19CWidgetButtonAttack_ptr
2B4E20:  LDR             R1, [R1]; `vtable for'CWidgetButtonAttack ...
2B4E22:  ADDS            R1, #8
2B4E24:  STR             R1, [R0]
2B4E26:  ADD             SP, SP, #8
2B4E28:  POP             {R7,PC}
