; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook13IsSwipedRightEv
; Address            : 0x2C13F2 - 0x2C142E
; =========================================================

2C13F2:  PUSH            {R4,R6,R7,LR}
2C13F4:  ADD             R7, SP, #8
2C13F6:  MOV             R4, R0
2C13F8:  MOVS            R0, #0x50 ; 'P'
2C13FA:  BLX             j__ZN4CHID8ReplacesE10HIDMapping; CHID::Replaces(HIDMapping)
2C13FE:  CMP             R0, #1
2C1400:  BNE             loc_2C140C
2C1402:  MOVS            R0, #0x50 ; 'P'
2C1404:  POP.W           {R4,R6,R7,LR}
2C1408:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
2C140C:  MOVS            R0, #0x50 ; 'P'
2C140E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C1412:  CMP             R0, #1
2C1414:  BNE             loc_2C1424
2C1416:  MOVS            R0, #0x50 ; 'P'
2C1418:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C141C:  CMP             R0, #0
2C141E:  ITT NE
2C1420:  MOVNE           R0, #1
2C1422:  POPNE           {R4,R6,R7,PC}
2C1424:  MOV             R0, R4; this
2C1426:  POP.W           {R4,R6,R7,LR}
2C142A:  B.W             j_j__ZN7CWidget13IsSwipedRightEv; j_CWidget::IsSwipedRight(void)
