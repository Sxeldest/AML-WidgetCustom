; =========================================================
; Game Engine Function: _ZN27CWidgetButtonAutoHydraulicsC2EPKcRK14WidgetPosition
; Address            : 0x2B6744 - 0x2B6770
; =========================================================

2B6744:  PUSH            {R7,LR}
2B6746:  MOV             R7, SP
2B6748:  SUB             SP, SP, #8
2B674A:  MOV.W           R12, #0x20 ; ' '
2B674E:  MOV.W           R3, #0xC00
2B6752:  STRD.W          R3, R12, [SP,#0x10+var_10]
2B6756:  MOVS            R3, #1
2B6758:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B675C:  LDR             R1, =(_ZTV27CWidgetButtonAutoHydraulics_ptr - 0x2B6768)
2B675E:  MOVS            R2, #0
2B6760:  STRB.W          R2, [R0,#0xA8]
2B6764:  ADD             R1, PC; _ZTV27CWidgetButtonAutoHydraulics_ptr
2B6766:  LDR             R1, [R1]; `vtable for'CWidgetButtonAutoHydraulics ...
2B6768:  ADDS            R1, #8
2B676A:  STR             R1, [R0]
2B676C:  ADD             SP, SP, #8
2B676E:  POP             {R7,PC}
