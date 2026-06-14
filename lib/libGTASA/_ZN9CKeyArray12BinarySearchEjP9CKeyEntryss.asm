; =========================================================
; Game Engine Function: _ZN9CKeyArray12BinarySearchEjP9CKeyEntryss
; Address            : 0x54D53A - 0x54D58A
; =========================================================

54D53A:  PUSH            {R4,R5,R7,LR}
54D53C:  ADD             R7, SP, #8
54D53E:  LDR.W           R12, [R7,#arg_0]
54D542:  CMP             R3, R12
54D544:  ITT GT
54D546:  MOVGT           R0, #0
54D548:  POPGT           {R4,R5,R7,PC}
54D54A:  MOVW            LR, #0xFFFF
54D54E:  SXTH            R3, R3
54D550:  SXTAH.W         R0, R3, R12
54D554:  ADD.W           R0, R0, R0,LSR#31
54D558:  ASRS            R4, R0, #1
54D55A:  UXTH            R0, R4
54D55C:  ADD.W           R0, R2, R0,LSL#3
54D560:  LDR             R5, [R0,#4]
54D562:  CMP             R5, R1
54D564:  BEQ             locret_54D584
54D566:  BCC             loc_54D576
54D568:  ADD.W           R0, R4, LR
54D56C:  SXTH.W          R12, R0
54D570:  CMP             R3, R12
54D572:  BLE             loc_54D550
54D574:  B               loc_54D586
54D576:  ADDS            R0, R4, #1
54D578:  SXTH.W          R5, R12
54D57C:  SXTH            R3, R0
54D57E:  MOVS            R0, #0
54D580:  CMP             R5, R3
54D582:  BGE             loc_54D54E
54D584:  POP             {R4,R5,R7,PC}
54D586:  MOVS            R0, #0
54D588:  POP             {R4,R5,R7,PC}
