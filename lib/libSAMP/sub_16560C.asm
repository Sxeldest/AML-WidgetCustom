; =========================================================
; Game Engine Function: sub_16560C
; Address            : 0x16560C - 0x16568C
; =========================================================

16560C:  PUSH            {R4,R5,R7,LR}
16560E:  ADD             R7, SP, #8
165610:  MVN.W           R12, R2
165614:  CBZ             R1, loc_165650
165616:  LDR             R5, =(unk_BAF58 - 0x165622)
165618:  ADDS            R3, R0, #1
16561A:  SUBS            R1, #1
16561C:  MOV             R0, R12
16561E:  ADD             R5, PC; unk_BAF58
165620:  LDRB.W          R2, [R3,#-1]
165624:  CMP             R2, #0x23 ; '#'
165626:  BNE             loc_16563A
165628:  CMP             R1, #2
16562A:  BCC             loc_16563A
16562C:  LDRB            R4, [R3]
16562E:  CMP             R4, #0x23 ; '#'
165630:  BNE             loc_16563A
165632:  LDRB            R4, [R3,#1]
165634:  CMP             R4, #0x23 ; '#'
165636:  IT EQ
165638:  MOVEQ           R0, R12
16563A:  UXTB            R4, R0
16563C:  EORS            R2, R4
16563E:  ADDS            R3, #1
165640:  SUBS            R1, #1
165642:  LDR.W           R2, [R5,R2,LSL#2]
165646:  EOR.W           R0, R2, R0,LSR#8
16564A:  ADDS            R2, R1, #1
16564C:  BNE             loc_165620
16564E:  B               loc_165688
165650:  LDRB            R4, [R0]
165652:  CBZ             R4, loc_165686
165654:  LDR             R3, =(unk_BAF58 - 0x16565E)
165656:  ADDS            R1, R0, #1
165658:  MOV             R0, R12
16565A:  ADD             R3, PC; unk_BAF58
16565C:  MOV             R2, R4
16565E:  LDRB            R4, [R1]
165660:  CMP             R2, #0x23 ; '#'
165662:  IT EQ
165664:  CMPEQ           R4, #0x23 ; '#'
165666:  BNE             loc_165672
165668:  LDRB            R5, [R1,#1]
16566A:  MOVS            R4, #0x23 ; '#'
16566C:  CMP             R5, #0x23 ; '#'
16566E:  IT EQ
165670:  MOVEQ           R0, R12
165672:  UXTB            R5, R0
165674:  EORS            R2, R5
165676:  ADDS            R1, #1
165678:  CMP             R4, #0
16567A:  LDR.W           R2, [R3,R2,LSL#2]
16567E:  EOR.W           R0, R2, R0,LSR#8
165682:  BNE             loc_16565C
165684:  B               loc_165688
165686:  MOV             R0, R12
165688:  MVNS            R0, R0
16568A:  POP             {R4,R5,R7,PC}
