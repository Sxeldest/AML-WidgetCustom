; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook12DrawHelpIconEPKcfffi
; Address            : 0x2C1430 - 0x2C1474
; =========================================================

2C1430:  PUSH            {R4-R7,LR}
2C1432:  ADD             R7, SP, #0xC
2C1434:  PUSH.W          {R11}
2C1438:  SUB             SP, SP, #0x10; float
2C143A:  MOV             R6, R1
2C143C:  ADR             R1, aWidgetLookLeft; "widget_look_left"
2C143E:  MOV             R0, R6; haystack
2C1440:  MOV             R4, R3
2C1442:  MOV             R5, R2
2C1444:  BLX             strstr
2C1448:  VLDR            S0, [R7,#arg_0]
2C144C:  CMP             R0, #0
2C144E:  LDR             R1, [R7,#arg_4]
2C1450:  MOV.W           R0, #0
2C1454:  STRD.W          R1, R0, [SP,#0x20+var_1C]; int
2C1458:  MOV             R0, R6; int
2C145A:  VSTR            S0, [SP,#0x20+var_20]
2C145E:  ITE NE
2C1460:  MOVNE           R1, #0x13
2C1462:  MOVEQ           R1, #0x14; int
2C1464:  MOV             R2, R5; int
2C1466:  MOV             R3, R4; int
2C1468:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2C146C:  ADD             SP, SP, #0x10
2C146E:  POP.W           {R11}
2C1472:  POP             {R4-R7,PC}
