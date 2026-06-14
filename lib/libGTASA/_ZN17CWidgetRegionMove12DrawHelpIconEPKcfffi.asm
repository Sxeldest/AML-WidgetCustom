; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove12DrawHelpIconEPKcfffi
; Address            : 0x2C19A4 - 0x2C1A48
; =========================================================

2C19A4:  PUSH            {R4-R7,LR}
2C19A6:  ADD             R7, SP, #0xC
2C19A8:  PUSH.W          {R8}
2C19AC:  VPUSH           {D8}
2C19B0:  SUB             SP, SP, #0x10; float
2C19B2:  MOV             R6, R1
2C19B4:  ADR             R1, aWidgetPedMoveL_5; "widget_ped_move_left"
2C19B6:  MOV             R0, R6; haystack
2C19B8:  MOV             R4, R3
2C19BA:  MOV             R5, R2
2C19BC:  BLX             strstr
2C19C0:  LDR.W           R8, [R7,#arg_4]
2C19C4:  CMP             R0, #0
2C19C6:  VLDR            S16, [R7,#arg_0]
2C19CA:  BNE             loc_2C19D6
2C19CC:  ADR             R1, aWidgetVehicleS_11; "widget_vehicle_steer_left"
2C19CE:  MOV             R0, R6; haystack
2C19D0:  BLX             strstr
2C19D4:  CBZ             R0, loc_2C19F8
2C19D6:  MOVS            R0, #1
2C19D8:  STRD.W          R8, R0, [SP,#0x28+var_24]; int
2C19DC:  MOV             R0, R6; int
2C19DE:  MOVS            R1, #0x1E; int
2C19E0:  VSTR            S16, [SP,#0x28+var_28]
2C19E4:  MOV             R2, R5; int
2C19E6:  MOV             R3, R4; int
2C19E8:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2C19EC:  ADD             SP, SP, #0x10
2C19EE:  VPOP            {D8}
2C19F2:  POP.W           {R8}
2C19F6:  POP             {R4-R7,PC}
2C19F8:  ADR             R1, aWidgetPedMoveR_5; "widget_ped_move_right"
2C19FA:  MOV             R0, R6; haystack
2C19FC:  BLX             strstr
2C1A00:  CBNZ            R0, loc_2C1A0C
2C1A02:  ADR             R1, aWidgetVehicleS_12; "widget_vehicle_steer_right"
2C1A04:  MOV             R0, R6; haystack
2C1A06:  BLX             strstr
2C1A0A:  CBZ             R0, loc_2C1A10
2C1A0C:  MOVS            R0, #0
2C1A0E:  B               loc_2C19D8
2C1A10:  ADR             R1, aWidgetPedMoveU_5; "widget_ped_move_up"
2C1A12:  MOV             R0, R6; haystack
2C1A14:  BLX             strstr
2C1A18:  CBZ             R0, loc_2C1A1E
2C1A1A:  MOVS            R0, #1
2C1A1C:  B               loc_2C1A2A
2C1A1E:  ADR             R1, aWidgetPedMoveD_5; "widget_ped_move_down"
2C1A20:  MOV             R0, R6; haystack
2C1A22:  BLX             strstr
2C1A26:  CBZ             R0, loc_2C1A38
2C1A28:  MOVS            R0, #0
2C1A2A:  STRD.W          R8, R0, [SP,#0x28+var_24]
2C1A2E:  MOV             R0, R6
2C1A30:  VSTR            S16, [SP,#0x28+var_28]
2C1A34:  MOVS            R1, #0x1F
2C1A36:  B               loc_2C19E4
2C1A38:  LDR             R1, =(aWidgetPedMove - 0x2C1A40); "widget_ped_move"
2C1A3A:  MOV             R0, R6; haystack
2C1A3C:  ADD             R1, PC; "widget_ped_move"
2C1A3E:  BLX             strstr
2C1A42:  CMP             R0, #0
2C1A44:  BNE             loc_2C1A0C
2C1A46:  B               loc_2C19EC
