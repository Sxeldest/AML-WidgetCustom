; =========================================================
; Game Engine Function: _ZN22CWidgetButtonTargetingC2EPKcRK14WidgetPosition
; Address            : 0x2B5DA8 - 0x2B5DCC
; =========================================================

2B5DA8:  PUSH            {R7,LR}; Alternative name is 'CWidgetButtonTargeting::CWidgetButtonTargeting(char const*, WidgetPosition const&)'
2B5DAA:  MOV             R7, SP
2B5DAC:  SUB             SP, SP, #8
2B5DAE:  MOV.W           R12, #0x24 ; '$'
2B5DB2:  MOVS            R3, #0
2B5DB4:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B5DB8:  MOVS            R3, #1
2B5DBA:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5DBE:  LDR             R1, =(_ZTV22CWidgetButtonTargeting_ptr - 0x2B5DC4)
2B5DC0:  ADD             R1, PC; _ZTV22CWidgetButtonTargeting_ptr
2B5DC2:  LDR             R1, [R1]; `vtable for'CWidgetButtonTargeting ...
2B5DC4:  ADDS            R1, #8
2B5DC6:  STR             R1, [R0]
2B5DC8:  ADD             SP, SP, #8
2B5DCA:  POP             {R7,PC}
