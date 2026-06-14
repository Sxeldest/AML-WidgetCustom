; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager44AffectControllerStateOn_ButtonDown_AllStatesEi15eControllerTypeR16CControllerState
; Address            : 0x3E854C - 0x3E859E
; =========================================================

3E854C:  ADD.W           R0, R0, R2,LSL#3
3E8550:  MOVW            R2, #0x3A70
3E8554:  LDR             R2, [R0,R2]
3E8556:  CMP             R2, R1
3E8558:  ITT EQ
3E855A:  MOVEQ           R2, #0xFF
3E855C:  STRHEQ          R2, [R3,#0x1A]
3E855E:  MOVW            R2, #0x3F10
3E8562:  LDR             R2, [R0,R2]
3E8564:  CMP             R2, R1
3E8566:  BNE             loc_3E8576
3E8568:  LDRH            R2, [R3,#0x16]
3E856A:  CBZ             R2, loc_3E8572
3E856C:  MOVS            R2, #0
3E856E:  STR             R2, [R3,#0x14]
3E8570:  B               loc_3E8576
3E8572:  MOVS            R2, #0xFF
3E8574:  STRH            R2, [R3,#0x14]
3E8576:  MOVW            R2, #0x3EF0
3E857A:  LDR             R2, [R0,R2]
3E857C:  CMP             R2, R1
3E857E:  BNE             loc_3E858E
3E8580:  LDRH            R2, [R3,#0x14]
3E8582:  CMP             R2, #0
3E8584:  ITTE NE
3E8586:  MOVNE           R2, #0
3E8588:  STRHNE          R2, [R3,#0x14]
3E858A:  MOVEQ           R2, #0xFF
3E858C:  STRH            R2, [R3,#0x16]
3E858E:  MOVW            R2, #0x3ED0
3E8592:  LDR             R0, [R0,R2]
3E8594:  CMP             R0, R1
3E8596:  ITT EQ
3E8598:  MOVEQ           R0, #0xFF
3E859A:  STRHEQ          R0, [R3,#0x28]
3E859C:  BX              LR
