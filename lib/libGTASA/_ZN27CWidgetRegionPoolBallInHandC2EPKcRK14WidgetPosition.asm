; =========================================================
; Game Engine Function: _ZN27CWidgetRegionPoolBallInHandC2EPKcRK14WidgetPosition
; Address            : 0x2C1C20 - 0x2C1C3E
; =========================================================

2C1C20:  PUSH            {R7,LR}
2C1C22:  MOV             R7, SP
2C1C24:  SUB             SP, SP, #8
2C1C26:  MOVS            R3, #0
2C1C28:  STR             R3, [SP,#0x10+var_10]
2C1C2A:  MOVS            R3, #4
2C1C2C:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C1C30:  LDR             R1, =(_ZTV27CWidgetRegionPoolBallInHand_ptr - 0x2C1C36)
2C1C32:  ADD             R1, PC; _ZTV27CWidgetRegionPoolBallInHand_ptr
2C1C34:  LDR             R1, [R1]; `vtable for'CWidgetRegionPoolBallInHand ...
2C1C36:  ADDS            R1, #8
2C1C38:  STR             R1, [R0]
2C1C3A:  ADD             SP, SP, #8
2C1C3C:  POP             {R7,PC}
