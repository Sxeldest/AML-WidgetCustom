; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove14IsDoubleTappedEv
; Address            : 0x2C1958 - 0x2C19A4
; =========================================================

2C1958:  PUSH            {R4,R6,R7,LR}
2C195A:  ADD             R7, SP, #8
2C195C:  MOV             R4, R0
2C195E:  MOVS            R0, #4
2C1960:  BLX             j__ZN4CHID8ReplacesE10HIDMapping; CHID::Replaces(HIDMapping)
2C1964:  CMP             R0, #1
2C1966:  BNE             loc_2C1972
2C1968:  MOVS            R0, #4
2C196A:  POP.W           {R4,R6,R7,LR}
2C196E:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
2C1972:  MOVS            R0, #4
2C1974:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C1978:  CMP             R0, #1
2C197A:  BNE             loc_2C198A
2C197C:  MOVS            R0, #4
2C197E:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C1982:  CMP             R0, #0
2C1984:  ITT NE
2C1986:  MOVNE           R0, #1
2C1988:  POPNE           {R4,R6,R7,PC}
2C198A:  MOVW            R1, #0xF5C3
2C198E:  MOV             R0, R4; this
2C1990:  MOVT            R1, #0x3EA8; float
2C1994:  BLX             j__ZN7CWidget16GetNumTapsInTimeEf; CWidget::GetNumTapsInTime(float)
2C1998:  MOV             R1, R0
2C199A:  MOVS            R0, #0
2C199C:  CMP             R1, #1
2C199E:  IT GT
2C19A0:  MOVGT           R0, #1
2C19A2:  POP             {R4,R6,R7,PC}
