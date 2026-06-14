; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager50AffectControllerStateOn_ButtonDown_ThirdPersonOnlyEi15eControllerTypeR16CControllerState
; Address            : 0x3E84C0 - 0x3E8546
; =========================================================

3E84C0:  ADD.W           R0, R0, R2,LSL#3
3E84C4:  MOVW            R2, #0x3AD0
3E84C8:  LDR             R2, [R0,R2]
3E84CA:  CMP             R2, R1
3E84CC:  ITT EQ
3E84CE:  MOVEQ           R2, #0xFF
3E84D0:  STRHEQ          R2, [R3,#0x26]
3E84D2:  MOVW            R2, #0x3A90
3E84D6:  LDR             R2, [R0,R2]
3E84D8:  CMP             R2, R1
3E84DA:  ITT EQ
3E84DC:  MOVEQ           R2, #0xFF
3E84DE:  STRHEQ          R2, [R3,#0x1C]
3E84E0:  MOVW            R2, #0x3B10
3E84E4:  LDR             R2, [R0,R2]
3E84E6:  CMP             R2, R1
3E84E8:  ITT EQ
3E84EA:  MOVEQ           R2, #0xFF
3E84EC:  STRHEQ          R2, [R3,#8]
3E84EE:  MOVW            R2, #0x3970
3E84F2:  LDR             R2, [R0,R2]
3E84F4:  CMP             R2, R1
3E84F6:  ITT EQ
3E84F8:  MOVEQ           R2, #0xFF
3E84FA:  STRHEQ          R2, [R3,#0xA]
3E84FC:  MOVW            R2, #0x3950
3E8500:  LDR             R2, [R0,R2]
3E8502:  CMP             R2, R1
3E8504:  ITT EQ
3E8506:  MOVEQ           R2, #0xFF
3E8508:  STRHEQ          R2, [R3,#0xE]
3E850A:  MOVW            R2, #0x3AB0
3E850E:  LDR             R2, [R0,R2]
3E8510:  CMP             R2, R1
3E8512:  ITT EQ
3E8514:  MOVEQ           R2, #0xFF
3E8516:  STRHEQ          R2, [R3,#0x20]
3E8518:  MOVW            R2, #0x3AF0
3E851C:  LDR             R2, [R0,R2]
3E851E:  CMP             R2, R1
3E8520:  ITT EQ
3E8522:  MOVEQ           R2, #0xFF
3E8524:  STRHEQ          R2, [R3,#0x24]
3E8526:  LDR             R2, =(FrontEndMenuManager_ptr - 0x3E852C)
3E8528:  ADD             R2, PC; FrontEndMenuManager_ptr
3E852A:  LDR             R2, [R2]; FrontEndMenuManager
3E852C:  LDRB.W          R2, [R2,#(byte_98F18C - 0x98F0F8)]
3E8530:  CMP             R2, #1
3E8532:  IT NE
3E8534:  BXNE            LR
3E8536:  MOVW            R2, #0x3E90
3E853A:  LDR             R0, [R0,R2]
3E853C:  CMP             R0, R1
3E853E:  ITT EQ
3E8540:  MOVEQ           R0, #0xFF
3E8542:  STRHEQ          R0, [R3,#8]
3E8544:  BX              LR
