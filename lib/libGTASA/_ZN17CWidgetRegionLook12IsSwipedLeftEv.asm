; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook12IsSwipedLeftEv
; Address            : 0x2C13B6 - 0x2C13F2
; =========================================================

2C13B6:  PUSH            {R4,R6,R7,LR}
2C13B8:  ADD             R7, SP, #8
2C13BA:  MOV             R4, R0
2C13BC:  MOVS            R0, #0x51 ; 'Q'
2C13BE:  BLX             j__ZN4CHID8ReplacesE10HIDMapping; CHID::Replaces(HIDMapping)
2C13C2:  CMP             R0, #1
2C13C4:  BNE             loc_2C13D0
2C13C6:  MOVS            R0, #0x51 ; 'Q'
2C13C8:  POP.W           {R4,R6,R7,LR}
2C13CC:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
2C13D0:  MOVS            R0, #0x51 ; 'Q'
2C13D2:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C13D6:  CMP             R0, #1
2C13D8:  BNE             loc_2C13E8
2C13DA:  MOVS            R0, #0x51 ; 'Q'
2C13DC:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C13E0:  CMP             R0, #0
2C13E2:  ITT NE
2C13E4:  MOVNE           R0, #1
2C13E6:  POPNE           {R4,R6,R7,PC}
2C13E8:  MOV             R0, R4; this
2C13EA:  POP.W           {R4,R6,R7,LR}
2C13EE:  B.W             j_j__ZN7CWidget12IsSwipedLeftEv; j_CWidget::IsSwipedLeft(void)
