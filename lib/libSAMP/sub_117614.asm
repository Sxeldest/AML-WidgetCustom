; =========================================================
; Game Engine Function: sub_117614
; Address            : 0x117614 - 0x117684
; =========================================================

117614:  PUSH            {R4-R7,LR}
117616:  ADD             R7, SP, #0xC
117618:  PUSH.W          {R11}
11761C:  MOV             R6, R1
11761E:  MOV             R5, R0
117620:  LDRB            R3, [R6]
117622:  LDRB.W          R4, [R5,#0x10]!
117626:  LDR             R1, [R1,#4]
117628:  ANDS.W          LR, R3, #1
11762C:  LDR             R2, [R5,#4]
11762E:  IT EQ
117630:  LSREQ           R1, R3, #1
117632:  ANDS.W          R12, R4, #1
117636:  IT EQ
117638:  LSREQ           R2, R4, #1; n
11763A:  CMP             R2, R1
11763C:  BNE             loc_117676
11763E:  LDR             R1, [R6,#8]
117640:  CMP.W           LR, #0
117644:  ADD.W           R3, R5, #1
117648:  LDR             R0, [R0,#0x18]
11764A:  IT EQ
11764C:  ADDEQ           R1, R6, #1; s2
11764E:  CMP.W           R12, #0
117652:  IT EQ
117654:  MOVEQ           R0, R3; s1
117656:  BNE             loc_11766E
117658:  CBZ             R2, loc_11767E
11765A:  LSRS            R0, R4, #1
11765C:  LDRB            R2, [R1]
11765E:  LDRB            R4, [R3]
117660:  CMP             R4, R2
117662:  BNE             loc_117676
117664:  ADDS            R1, #1
117666:  ADDS            R3, #1
117668:  SUBS            R0, #1
11766A:  BNE             loc_11765C
11766C:  B               loc_11767E
11766E:  CBZ             R2, loc_11767E
117670:  BLX             memcmp
117674:  CBZ             R0, loc_11767E
117676:  MOV             R0, R5
117678:  MOV             R1, R6
11767A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
11767E:  POP.W           {R11}
117682:  POP             {R4-R7,PC}
