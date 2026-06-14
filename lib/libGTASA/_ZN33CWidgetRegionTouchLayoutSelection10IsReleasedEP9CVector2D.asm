; =========================================================
; Game Engine Function: _ZN33CWidgetRegionTouchLayoutSelection10IsReleasedEP9CVector2D
; Address            : 0x2C62A8 - 0x2C62CC
; =========================================================

2C62A8:  PUSH            {R7,LR}
2C62AA:  MOV             R7, SP
2C62AC:  BLX             j__ZN7CWidget10IsReleasedEP9CVector2D; CWidget::IsReleased(CVector2D *)
2C62B0:  CBNZ            R0, loc_2C62C4
2C62B2:  MOVS            R0, #0x38 ; '8'
2C62B4:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C62B8:  CMP             R0, #1
2C62BA:  BNE             loc_2C62C8
2C62BC:  MOVS            R0, #0x38 ; '8'
2C62BE:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C62C2:  CBZ             R0, loc_2C62C8
2C62C4:  MOVS            R0, #1
2C62C6:  POP             {R7,PC}
2C62C8:  MOVS            R0, #0
2C62CA:  POP             {R7,PC}
