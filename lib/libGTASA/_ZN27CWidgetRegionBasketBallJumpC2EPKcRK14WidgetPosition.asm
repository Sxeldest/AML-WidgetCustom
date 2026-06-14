; =========================================================
; Game Engine Function: _ZN27CWidgetRegionBasketBallJumpC2EPKcRK14WidgetPosition
; Address            : 0x2BFEA8 - 0x2BFED6
; =========================================================

2BFEA8:  PUSH            {R4,R6,R7,LR}
2BFEAA:  ADD             R7, SP, #8
2BFEAC:  SUB             SP, SP, #8
2BFEAE:  MOVS            R4, #0
2BFEB0:  MOVS            R3, #0
2BFEB2:  STR             R4, [SP,#0x10+var_10]
2BFEB4:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2BFEB8:  LDR             R1, =(_ZTV27CWidgetRegionBasketBallJump_ptr - 0x2BFEC2)
2BFEBA:  STRB.W          R4, [R0,#0x90]
2BFEBE:  ADD             R1, PC; _ZTV27CWidgetRegionBasketBallJump_ptr
2BFEC0:  LDR.W           R2, [R0,#0x80]
2BFEC4:  LDR             R1, [R1]; `vtable for'CWidgetRegionBasketBallJump ...
2BFEC6:  ADDS            R1, #8
2BFEC8:  STR             R1, [R0]
2BFECA:  ORR.W           R1, R2, #4
2BFECE:  STR.W           R1, [R0,#0x80]
2BFED2:  ADD             SP, SP, #8
2BFED4:  POP             {R4,R6,R7,PC}
