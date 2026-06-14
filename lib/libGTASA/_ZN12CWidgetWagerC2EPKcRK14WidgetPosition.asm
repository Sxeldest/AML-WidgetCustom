; =========================================================
; Game Engine Function: _ZN12CWidgetWagerC2EPKcRK14WidgetPosition
; Address            : 0x2C8BE4 - 0x2C8CC6
; =========================================================

2C8BE4:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetWager::CWidgetWager(char const*, WidgetPosition const&)'
2C8BE6:  ADD             R7, SP, #0xC
2C8BE8:  PUSH.W          {R11}
2C8BEC:  SUB             SP, SP, #0x118
2C8BEE:  MOV             R4, R0
2C8BF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C8BFA)
2C8BF2:  MOVS            R6, #0
2C8BF4:  MOVS            R3, #4
2C8BF6:  ADD             R0, PC; __stack_chk_guard_ptr
2C8BF8:  LDR             R0, [R0]; __stack_chk_guard
2C8BFA:  LDR             R0, [R0]
2C8BFC:  STR             R0, [SP,#0x128+var_14]
2C8BFE:  MOV             R0, R4
2C8C00:  STR             R6, [SP,#0x128+var_128]
2C8C02:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C8C06:  LDR             R0, =(_ZTV12CWidgetWager_ptr - 0x2C8C16)
2C8C08:  ADD             R5, SP, #0x128+var_120
2C8C0A:  STRB.W          R6, [R4,#0x434]
2C8C0E:  MOV.W           R2, #0x10C; size_t
2C8C12:  ADD             R0, PC; _ZTV12CWidgetWager_ptr
2C8C14:  MOV             R1, R5; void *
2C8C16:  LDR             R0, [R0]; `vtable for'CWidgetWager ...
2C8C18:  ADDS            R0, #8
2C8C1A:  STR             R0, [R4]
2C8C1C:  MOVW            R0, #0x4157
2C8C20:  STR.W           R6, [R4,#0x534]
2C8C24:  MOVT            R0, #0x4547
2C8C28:  STRB.W          R6, [R4,#0x4B4]
2C8C2C:  STR.W           R0, [R4,#0x90]
2C8C30:  MOVW            R0, #0x3152
2C8C34:  STRB.W          R6, [R4,#0x96]
2C8C38:  STRH.W          R0, [R4,#0x94]
2C8C3C:  ADD.W           R0, R4, #0x110; void *
2C8C40:  STRB.W          R6, [R4,#0x540]
2C8C44:  STRB.W          R6, [SP,#0x128+var_A0]
2C8C48:  STRB.W          R6, [SP,#0x128+var_120]
2C8C4C:  STRD.W          R6, R6, [SP,#0x128+var_20]
2C8C50:  STR             R6, [SP,#0x128+var_18]
2C8C52:  BLX             memcpy_0
2C8C56:  ADD.W           R0, R4, #0x21C; void *
2C8C5A:  MOV             R1, R5; void *
2C8C5C:  MOV.W           R2, #0x10C; size_t
2C8C60:  STRB.W          R6, [SP,#0x128+var_A0]
2C8C64:  STRB.W          R6, [SP,#0x128+var_120]
2C8C68:  STRD.W          R6, R6, [SP,#0x128+var_20]
2C8C6C:  STR             R6, [SP,#0x128+var_18]
2C8C6E:  BLX             memcpy_0
2C8C72:  ADD.W           R0, R4, #0x328; void *
2C8C76:  MOV             R1, R5; void *
2C8C78:  MOV.W           R2, #0x10C; size_t
2C8C7C:  STRB.W          R6, [SP,#0x128+var_A0]
2C8C80:  STRB.W          R6, [SP,#0x128+var_120]
2C8C84:  STRD.W          R6, R6, [SP,#0x128+var_20]
2C8C88:  STR             R6, [SP,#0x128+var_18]
2C8C8A:  BLX             memcpy_0
2C8C8E:  ADDW            R0, R4, #0x434; void *
2C8C92:  MOV             R1, R5; void *
2C8C94:  MOV.W           R2, #0x10C; size_t
2C8C98:  STRB.W          R6, [SP,#0x128+var_A0]
2C8C9C:  STRB.W          R6, [SP,#0x128+var_120]
2C8CA0:  STRD.W          R6, R6, [SP,#0x128+var_20]
2C8CA4:  STR             R6, [SP,#0x128+var_18]
2C8CA6:  BLX             memcpy_0
2C8CAA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C8CB2)
2C8CAC:  LDR             R1, [SP,#0x128+var_14]
2C8CAE:  ADD             R0, PC; __stack_chk_guard_ptr
2C8CB0:  LDR             R0, [R0]; __stack_chk_guard
2C8CB2:  LDR             R0, [R0]
2C8CB4:  SUBS            R0, R0, R1
2C8CB6:  ITTTT EQ
2C8CB8:  MOVEQ           R0, R4
2C8CBA:  ADDEQ           SP, SP, #0x118
2C8CBC:  POPEQ.W         {R11}
2C8CC0:  POPEQ           {R4-R7,PC}
2C8CC2:  BLX             __stack_chk_fail
