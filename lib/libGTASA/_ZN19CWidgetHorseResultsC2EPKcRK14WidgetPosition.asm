; =========================================================
; Game Engine Function: _ZN19CWidgetHorseResultsC2EPKcRK14WidgetPosition
; Address            : 0x2B8770 - 0x2B8812
; =========================================================

2B8770:  PUSH            {R4,R6,R7,LR}
2B8772:  ADD             R7, SP, #8
2B8774:  SUB             SP, SP, #8
2B8776:  MOVS            R4, #0
2B8778:  MOVS            R3, #0x14
2B877A:  STR             R4, [SP,#0x10+var_10]
2B877C:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2B8780:  LDR             R1, =(_ZTV19CWidgetHorseResults_ptr - 0x2B878A)
2B8782:  STRB.W          R4, [R0,#0x90]
2B8786:  ADD             R1, PC; _ZTV19CWidgetHorseResults_ptr
2B8788:  STRB.W          R4, [R0,#0x110]
2B878C:  STR.W           R4, [R0,#0x190]
2B8790:  LDR             R1, [R1]; `vtable for'CWidgetHorseResults ...
2B8792:  STR.W           R4, [R0,#0x199]
2B8796:  STR.W           R4, [R0,#0x195]
2B879A:  ADDS            R1, #8
2B879C:  STR.W           R4, [R0,#0x194]
2B87A0:  STRB.W          R4, [R0,#0x21C]
2B87A4:  STR.W           R4, [R0,#0x2A1]
2B87A8:  STRD.W          R4, R4, [R0,#0x29C]
2B87AC:  STR             R1, [R0]
2B87AE:  STR.W           R4, [R0,#0x2A5]
2B87B2:  STRB.W          R4, [R0,#0x328]
2B87B6:  STRD.W          R4, R4, [R0,#0x3A8]
2B87BA:  STR.W           R4, [R0,#0x3B1]
2B87BE:  STR.W           R4, [R0,#0x3AD]
2B87C2:  STRB.W          R4, [R0,#0x434]
2B87C6:  STR.W           R4, [R0,#0x4B4]
2B87CA:  STR.W           R4, [R0,#0x4B8]
2B87CE:  STR.W           R4, [R0,#0x4BD]
2B87D2:  STR.W           R4, [R0,#0x4B9]
2B87D6:  STRB.W          R4, [R0,#0x540]
2B87DA:  STR.W           R4, [R0,#0x5C0]
2B87DE:  STR.W           R4, [R0,#0x5C4]
2B87E2:  STR.W           R4, [R0,#0x5C9]
2B87E6:  STR.W           R4, [R0,#0x5C5]
2B87EA:  STRB.W          R4, [R0,#0x64C]
2B87EE:  STR.W           R4, [R0,#0x6CC]
2B87F2:  STR.W           R4, [R0,#0x6D0]
2B87F6:  STR.W           R4, [R0,#0x6D5]
2B87FA:  STR.W           R4, [R0,#0x6D1]
2B87FE:  STRB.W          R4, [R0,#0x758]
2B8802:  STR.W           R4, [R0,#0x7D8]
2B8806:  STR.W           R4, [R0,#0x7DC]
2B880A:  STR.W           R4, [R0,#0x7E0]
2B880E:  ADD             SP, SP, #8
2B8810:  POP             {R4,R6,R7,PC}
