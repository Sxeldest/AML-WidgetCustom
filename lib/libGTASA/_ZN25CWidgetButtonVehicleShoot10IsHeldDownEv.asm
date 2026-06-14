; =========================================================
; Game Engine Function: _ZN25CWidgetButtonVehicleShoot10IsHeldDownEv
; Address            : 0x2B5F1E - 0x2B5F60
; =========================================================

2B5F1E:  PUSH            {R4,R6,R7,LR}
2B5F20:  ADD             R7, SP, #8
2B5F22:  MOV             R4, R0
2B5F24:  LDR             R0, [R4,#4]
2B5F26:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2B5F2A:  CMP             R0, #1
2B5F2C:  BNE             loc_2B5F54
2B5F2E:  MOVS            R0, #1
2B5F30:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2B5F34:  CMP             R0, #1
2B5F36:  BNE             loc_2B5F54
2B5F38:  LDR             R0, [R4,#4]
2B5F3A:  MOVS            R1, #0
2B5F3C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2B5F40:  CMP             R0, #1
2B5F42:  ITT NE
2B5F44:  MOVNE           R0, #0
2B5F46:  POPNE           {R4,R6,R7,PC}
2B5F48:  MOVS            R0, #1
2B5F4A:  MOVS            R1, #0
2B5F4C:  POP.W           {R4,R6,R7,LR}
2B5F50:  B.W             sub_196BF4
2B5F54:  MOV             R0, R4
2B5F56:  MOVS            R1, #0
2B5F58:  POP.W           {R4,R6,R7,LR}
2B5F5C:  B.W             j_j__ZN7CWidget9IsTouchedEP9CVector2D; j_CWidget::IsTouched(CVector2D *)
