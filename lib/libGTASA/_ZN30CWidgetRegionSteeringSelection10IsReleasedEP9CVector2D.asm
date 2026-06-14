; =========================================================
; Game Engine Function: _ZN30CWidgetRegionSteeringSelection10IsReleasedEP9CVector2D
; Address            : 0x2C50F8 - 0x2C5140
; =========================================================

2C50F8:  PUSH            {R4-R7,LR}
2C50FA:  ADD             R7, SP, #0xC
2C50FC:  PUSH.W          {R11}
2C5100:  MOV             R5, R0
2C5102:  MOVS            R0, #0
2C5104:  MOV             R4, R1
2C5106:  MOVS            R6, #0
2C5108:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
2C510C:  CMP             R0, #0
2C510E:  MOV             R0, R5
2C5110:  MOV             R1, R4
2C5112:  IT EQ
2C5114:  STREQ.W         R6, [R5,#0x90]
2C5118:  BLX             j__ZN7CWidget10IsReleasedEP9CVector2D; CWidget::IsReleased(CVector2D *)
2C511C:  CBNZ            R0, loc_2C5130
2C511E:  MOVS            R0, #0x38 ; '8'
2C5120:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C5124:  CMP             R0, #1
2C5126:  BNE             loc_2C5138
2C5128:  MOVS            R0, #0x38 ; '8'
2C512A:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C512E:  CBZ             R0, loc_2C5138
2C5130:  MOVS            R0, #1
2C5132:  POP.W           {R11}
2C5136:  POP             {R4-R7,PC}
2C5138:  MOVS            R0, #0
2C513A:  POP.W           {R11}
2C513E:  POP             {R4-R7,PC}
