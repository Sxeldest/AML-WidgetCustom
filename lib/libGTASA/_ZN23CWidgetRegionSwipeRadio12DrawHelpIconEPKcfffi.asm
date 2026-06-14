; =========================================================
; Game Engine Function: _ZN23CWidgetRegionSwipeRadio12DrawHelpIconEPKcfffi
; Address            : 0x2C5298 - 0x2C52DC
; =========================================================

2C5298:  PUSH            {R4-R7,LR}
2C529A:  ADD             R7, SP, #0xC
2C529C:  PUSH.W          {R11}
2C52A0:  SUB             SP, SP, #0x10; float
2C52A2:  MOV             R6, R1
2C52A4:  ADR             R1, aWidgetSwipeRad; "widget_swipe_radio_up"
2C52A6:  MOV             R0, R6; haystack
2C52A8:  MOV             R4, R3
2C52AA:  MOV             R5, R2
2C52AC:  BLX             strstr
2C52B0:  VLDR            S0, [R7,#arg_0]
2C52B4:  CMP             R0, #0
2C52B6:  LDR             R1, [R7,#arg_4]
2C52B8:  MOV.W           R0, #0
2C52BC:  STRD.W          R1, R0, [SP,#0x20+var_1C]; int
2C52C0:  MOV             R0, R6; int
2C52C2:  VSTR            S0, [SP,#0x20+var_20]
2C52C6:  ITE NE
2C52C8:  MOVNE           R1, #0xC
2C52CA:  MOVEQ           R1, #0xD; int
2C52CC:  MOV             R2, R5; int
2C52CE:  MOV             R3, R4; int
2C52D0:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2C52D4:  ADD             SP, SP, #0x10
2C52D6:  POP.W           {R11}
2C52DA:  POP             {R4-R7,PC}
