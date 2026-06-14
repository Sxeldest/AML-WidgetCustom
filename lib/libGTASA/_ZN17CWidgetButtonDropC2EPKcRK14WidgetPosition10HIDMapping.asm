; =========================================================
; Game Engine Function: _ZN17CWidgetButtonDropC2EPKcRK14WidgetPosition10HIDMapping
; Address            : 0x2B5FA0 - 0x2B5FC2
; =========================================================

2B5FA0:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonDrop::CWidgetButtonDrop(char const*, WidgetPosition const&, HIDMapping)'
2B5FA2:  MOV             R7, SP
2B5FA4:  SUB             SP, SP, #8
2B5FA6:  MOV.W           R12, #0xC00
2B5FAA:  STRD.W          R12, R3, [SP,#0x10+var_10]
2B5FAE:  MOVS            R3, #1
2B5FB0:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5FB4:  LDR             R1, =(_ZTV17CWidgetButtonDrop_ptr - 0x2B5FBA)
2B5FB6:  ADD             R1, PC; _ZTV17CWidgetButtonDrop_ptr
2B5FB8:  LDR             R1, [R1]; `vtable for'CWidgetButtonDrop ...
2B5FBA:  ADDS            R1, #8
2B5FBC:  STR             R1, [R0]
2B5FBE:  ADD             SP, SP, #8
2B5FC0:  POP             {R7,PC}
