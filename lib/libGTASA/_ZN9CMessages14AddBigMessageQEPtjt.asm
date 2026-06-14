; =========================================================
; Game Engine Function: _ZN9CMessages14AddBigMessageQEPtjt
; Address            : 0x54C608 - 0x54C6A8
; =========================================================

54C608:  PUSH            {R4,R5,R7,LR}
54C60A:  ADD             R7, SP, #8
54C60C:  LDR             R3, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C61A)
54C60E:  RSB.W           R4, R2, R2,LSL#3
54C612:  MOV.W           R12, #0
54C616:  ADD             R3, PC; _ZN9CMessages11BIGMessagesE_ptr
54C618:  LDR             R3, [R3]; CMessages::BIGMessages ...
54C61A:  ADD.W           R2, R3, R4,LSL#5
54C61E:  LDR.W           R3, [R2,#8]!
54C622:  CBZ             R3, loc_54C65E
54C624:  LDR             R2, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C62A)
54C626:  ADD             R2, PC; _ZN9CMessages11BIGMessagesE_ptr
54C628:  LDR             R2, [R2]; CMessages::BIGMessages ...
54C62A:  ADD.W           R2, R2, R4,LSL#5
54C62E:  LDR.W           R3, [R2,#0x40]!
54C632:  CBZ             R3, loc_54C664
54C634:  LDR             R2, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C63A)
54C636:  ADD             R2, PC; _ZN9CMessages11BIGMessagesE_ptr
54C638:  LDR             R2, [R2]; CMessages::BIGMessages ...
54C63A:  ADD.W           R2, R2, R4,LSL#5
54C63E:  LDR.W           R3, [R2,#0x78]!
54C642:  CBZ             R3, loc_54C66A
54C644:  LDR             R2, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C64A)
54C646:  ADD             R2, PC; _ZN9CMessages11BIGMessagesE_ptr
54C648:  LDR             R2, [R2]; CMessages::BIGMessages ...
54C64A:  ADD.W           R2, R2, R4,LSL#5
54C64E:  LDR.W           R3, [R2,#0xB0]!
54C652:  CMP             R3, #0
54C654:  IT NE
54C656:  POPNE           {R4,R5,R7,PC}
54C658:  MOV.W           LR, #3
54C65C:  B               loc_54C66E
54C65E:  MOV.W           LR, #0
54C662:  B               loc_54C66E
54C664:  MOV.W           LR, #1
54C668:  B               loc_54C66E
54C66A:  MOV.W           LR, #2
54C66E:  LDR             R3, =(_ZN9CMessages11BIGMessagesE_ptr - 0x54C676)
54C670:  LDR             R5, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54C67A)
54C672:  ADD             R3, PC; _ZN9CMessages11BIGMessagesE_ptr
54C674:  STR             R0, [R2]
54C676:  ADD             R5, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54C678:  LDR             R0, [R3]; CMessages::BIGMessages ...
54C67A:  RSB.W           R3, LR, LR,LSL#3
54C67E:  LDR             R2, [R5]; CTimer::m_snTimeInMilliseconds ...
54C680:  ADD.W           R0, R0, R4,LSL#5
54C684:  ADD.W           R0, R0, R3,LSL#3
54C688:  MOV.W           R3, #0xFFFFFFFF
54C68C:  ADD.W           LR, R0, #0x10
54C690:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
54C692:  STRH.W          R12, [R0,#0xC]
54C696:  STM.W           LR, {R1-R3}
54C69A:  STRD.W          R3, R3, [R0,#0x1C]
54C69E:  STRD.W          R3, R3, [R0,#0x24]
54C6A2:  STRD.W          R3, R12, [R0,#0x2C]
54C6A6:  POP             {R4,R5,R7,PC}
