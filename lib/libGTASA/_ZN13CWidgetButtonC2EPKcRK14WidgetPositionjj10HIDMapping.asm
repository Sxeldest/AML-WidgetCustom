; =========================================================
; Game Engine Function: _ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping
; Address            : 0x2B4104 - 0x2B4148
; =========================================================

2B4104:  PUSH            {R4,R5,R7,LR}
2B4106:  ADD             R7, SP, #8
2B4108:  SUB             SP, SP, #8
2B410A:  MOV             R4, R3
2B410C:  MOV             R5, R0
2B410E:  LDRD.W          R3, R0, [R7,#arg_0]
2B4112:  ORR.W           R3, R3, #3
2B4116:  STR             R0, [SP,#0x10+var_10]
2B4118:  MOV             R0, R5
2B411A:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2B411E:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B4124)
2B4120:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B4122:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B4124:  ADDS            R0, #8
2B4126:  STR             R0, [R5]
2B4128:  ADD.W           R0, R5, #0x98; this
2B412C:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2B4130:  MOVS            R0, #0
2B4132:  MOV.W           R1, #0x3F800000
2B4136:  STRD.W          R4, R0, [R5,#0x90]
2B413A:  STRD.W          R0, R0, [R5,#0x9C]
2B413E:  MOV             R0, R5
2B4140:  STR.W           R1, [R5,#0xA4]
2B4144:  ADD             SP, SP, #8
2B4146:  POP             {R4,R5,R7,PC}
