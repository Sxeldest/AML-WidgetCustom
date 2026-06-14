; =========================================================
; Game Engine Function: _ZN27CWidgetButtonAnimatedArcadeC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping
; Address            : 0x2B4C70 - 0x2B4C98
; =========================================================

2B4C70:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CWidgetButtonAnimatedArcade::CWidgetButtonAnimatedArcade(char const*, char const*, WidgetPosition const&, unsigned int, unsigned int, char const*, HIDMapping)'
2B4C72:  ADD             R7, SP, #8
2B4C74:  SUB             SP, SP, #0x10
2B4C76:  LDRD.W          LR, R12, [R7,#arg_0]
2B4C7A:  LDRD.W          R4, R5, [R7,#arg_8]
2B4C7E:  STRD.W          LR, R12, [SP,#0x18+var_18]; int
2B4C82:  STRD.W          R4, R5, [SP,#0x18+var_10]; char *
2B4C86:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping_0; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2B4C8A:  LDR             R1, =(_ZTV27CWidgetButtonAnimatedArcade_ptr - 0x2B4C90)
2B4C8C:  ADD             R1, PC; _ZTV27CWidgetButtonAnimatedArcade_ptr
2B4C8E:  LDR             R1, [R1]; `vtable for'CWidgetButtonAnimatedArcade ...
2B4C90:  ADDS            R1, #8
2B4C92:  STR             R1, [R0]
2B4C94:  ADD             SP, SP, #0x10
2B4C96:  POP             {R4,R5,R7,PC}
