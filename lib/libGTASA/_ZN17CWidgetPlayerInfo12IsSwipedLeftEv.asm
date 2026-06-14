; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo12IsSwipedLeftEv
; Address            : 0x2BE340 - 0x2BE37C
; =========================================================

2BE340:  PUSH            {R4,R6,R7,LR}
2BE342:  ADD             R7, SP, #8
2BE344:  MOV             R4, R0
2BE346:  MOVS            R0, #0x10
2BE348:  BLX             j__ZN4CHID8ReplacesE10HIDMapping; CHID::Replaces(HIDMapping)
2BE34C:  CMP             R0, #1
2BE34E:  BNE             loc_2BE35A
2BE350:  MOVS            R0, #0x10
2BE352:  POP.W           {R4,R6,R7,LR}
2BE356:  B.W             j_j__ZN4CHID13IsJustPressedE10HIDMapping; j_CHID::IsJustPressed(HIDMapping)
2BE35A:  MOVS            R0, #0x10
2BE35C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2BE360:  CMP             R0, #1
2BE362:  BNE             loc_2BE372
2BE364:  MOVS            R0, #0x10
2BE366:  BLX             j__ZN4CHID13IsJustPressedE10HIDMapping; CHID::IsJustPressed(HIDMapping)
2BE36A:  CMP             R0, #0
2BE36C:  ITT NE
2BE36E:  MOVNE           R0, #1
2BE370:  POPNE           {R4,R6,R7,PC}
2BE372:  MOV             R0, R4; this
2BE374:  POP.W           {R4,R6,R7,LR}
2BE378:  B.W             j_j__ZN7CWidget12IsSwipedLeftEv; j_CWidget::IsSwipedLeft(void)
