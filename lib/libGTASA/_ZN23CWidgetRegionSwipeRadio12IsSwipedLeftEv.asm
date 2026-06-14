; =========================================================
; Game Engine Function: _ZN23CWidgetRegionSwipeRadio12IsSwipedLeftEv
; Address            : 0x2C5220 - 0x2C525C
; =========================================================

2C5220:  PUSH            {R4,R6,R7,LR}
2C5222:  ADD             R7, SP, #8
2C5224:  MOV             R4, R0
2C5226:  MOVS            R0, #0xC
2C5228:  BLX             j__ZN4CHID8ReplacesE10HIDMapping; CHID::Replaces(HIDMapping)
2C522C:  CMP             R0, #1
2C522E:  BNE             loc_2C523A
2C5230:  MOVS            R0, #0xC
2C5232:  POP.W           {R4,R6,R7,LR}
2C5236:  B.W             j_j__ZN4CHID10IsReleasedE10HIDMapping; j_CHID::IsReleased(HIDMapping)
2C523A:  MOVS            R0, #0xC
2C523C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C5240:  CMP             R0, #1
2C5242:  BNE             loc_2C5252
2C5244:  MOVS            R0, #0xC
2C5246:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2C524A:  CMP             R0, #0
2C524C:  ITT NE
2C524E:  MOVNE           R0, #1
2C5250:  POPNE           {R4,R6,R7,PC}
2C5252:  MOV             R0, R4; this
2C5254:  POP.W           {R4,R6,R7,LR}
2C5258:  B.W             j_j__ZN7CWidget12IsSwipedLeftEv; j_CWidget::IsSwipedLeft(void)
