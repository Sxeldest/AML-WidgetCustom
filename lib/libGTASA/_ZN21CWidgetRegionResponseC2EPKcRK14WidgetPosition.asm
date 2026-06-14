; =========================================================
; Game Engine Function: _ZN21CWidgetRegionResponseC2EPKcRK14WidgetPosition
; Address            : 0x2C1E4C - 0x2C1E6E
; =========================================================

2C1E4C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CWidgetRegionResponse::CWidgetRegionResponse(char const*, WidgetPosition const&)'
2C1E4E:  ADD             R7, SP, #8
2C1E50:  SUB             SP, SP, #8
2C1E52:  MOVS            R4, #0
2C1E54:  MOVS            R3, #8
2C1E56:  STR             R4, [SP,#0x10+var_10]
2C1E58:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C1E5C:  LDR             R1, =(_ZTV21CWidgetRegionResponse_ptr - 0x2C1E66)
2C1E5E:  STRH.W          R4, [R0,#0x90]
2C1E62:  ADD             R1, PC; _ZTV21CWidgetRegionResponse_ptr
2C1E64:  LDR             R1, [R1]; `vtable for'CWidgetRegionResponse ...
2C1E66:  ADDS            R1, #8
2C1E68:  STR             R1, [R0]
2C1E6A:  ADD             SP, SP, #8
2C1E6C:  POP             {R4,R6,R7,PC}
