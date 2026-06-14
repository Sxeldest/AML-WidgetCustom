; =========================================================
; Game Engine Function: _ZN25CWidgetButtonVehicleShootC2EPKcRK14WidgetPosition10HIDMapping
; Address            : 0x2B5E08 - 0x2B5E2A
; =========================================================

2B5E08:  PUSH            {R7,LR}
2B5E0A:  MOV             R7, SP
2B5E0C:  SUB             SP, SP, #8
2B5E0E:  MOV.W           R12, #0
2B5E12:  STRD.W          R12, R3, [SP,#0x10+var_10]
2B5E16:  MOVS            R3, #1
2B5E18:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B5E1C:  LDR             R1, =(_ZTV25CWidgetButtonVehicleShoot_ptr - 0x2B5E22)
2B5E1E:  ADD             R1, PC; _ZTV25CWidgetButtonVehicleShoot_ptr
2B5E20:  LDR             R1, [R1]; `vtable for'CWidgetButtonVehicleShoot ...
2B5E22:  ADDS            R1, #8
2B5E24:  STR             R1, [R0]
2B5E26:  ADD             SP, SP, #8
2B5E28:  POP             {R7,PC}
