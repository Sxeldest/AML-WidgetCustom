; =========================================================
; Game Engine Function: _ZN13CEventHandler5FlushEv
; Address            : 0x37C5F6 - 0x37C678
; =========================================================

37C5F6:  PUSH            {R4,R5,R7,LR}
37C5F8:  ADD             R7, SP, #8
37C5FA:  MOV             R4, R0
37C5FC:  LDR             R0, [R4,#0x20]
37C5FE:  CMP             R0, #0
37C600:  ITTT NE
37C602:  LDRNE           R1, [R0]
37C604:  LDRNE           R1, [R1,#4]
37C606:  BLXNE           R1
37C608:  LDR             R0, [R4,#0x24]
37C60A:  MOVS            R5, #0
37C60C:  STR             R5, [R4,#0x20]
37C60E:  CMP             R0, #0
37C610:  ITTT NE
37C612:  LDRNE           R1, [R0]
37C614:  LDRNE           R1, [R1,#4]
37C616:  BLXNE           R1
37C618:  LDR             R0, [R4,#0x28]
37C61A:  STR             R5, [R4,#0x24]
37C61C:  CMP             R0, #0
37C61E:  ITTT NE
37C620:  LDRNE           R1, [R0]
37C622:  LDRNE           R1, [R1,#4]
37C624:  BLXNE           R1
37C626:  LDR             R0, [R4,#0x2C]
37C628:  MOVS            R5, #0
37C62A:  STR             R5, [R4,#0x28]
37C62C:  CMP             R0, #0
37C62E:  ITTT NE
37C630:  LDRNE           R1, [R0]
37C632:  LDRNE           R1, [R1,#4]
37C634:  BLXNE           R1
37C636:  LDR             R0, [R4,#0x30]
37C638:  STR             R5, [R4,#0x2C]
37C63A:  CMP             R0, #0
37C63C:  ITTT NE
37C63E:  LDRNE           R1, [R0]
37C640:  LDRNE           R1, [R1,#4]
37C642:  BLXNE           R1
37C644:  LDR             R0, [R4,#0xC]
37C646:  MOVS            R5, #0
37C648:  STR             R5, [R4,#0x30]
37C64A:  CMP             R0, #0
37C64C:  ITTT NE
37C64E:  LDRNE           R1, [R0]
37C650:  LDRNE           R1, [R1,#4]
37C652:  BLXNE           R1
37C654:  LDR             R0, [R4,#8]
37C656:  STR             R5, [R4,#0xC]
37C658:  CMP             R0, #0
37C65A:  ITTT NE
37C65C:  LDRNE           R1, [R0]
37C65E:  LDRNE           R1, [R1,#4]
37C660:  BLXNE           R1
37C662:  LDR             R0, [R4,#0x10]
37C664:  MOVS            R5, #0
37C666:  STR             R5, [R4,#8]
37C668:  CMP             R0, #0
37C66A:  IT EQ
37C66C:  POPEQ           {R4,R5,R7,PC}
37C66E:  LDR             R1, [R0]
37C670:  LDR             R1, [R1,#4]
37C672:  BLX             R1
37C674:  STR             R5, [R4,#0x10]
37C676:  POP             {R4,R5,R7,PC}
