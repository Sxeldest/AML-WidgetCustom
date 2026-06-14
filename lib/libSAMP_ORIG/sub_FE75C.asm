; =========================================================
; Game Engine Function: sub_FE75C
; Address            : 0xFE75C - 0xFE7AA
; =========================================================

FE75C:  PUSH            {R4,R5,R7,LR}
FE75E:  ADD             R7, SP, #8
FE760:  LDRD.W          R3, R4, [R1]
FE764:  CMP             R2, #0
FE766:  MOV             R2, R3
FE768:  BEQ             loc_FE77A
FE76A:  CMP             R3, R4
FE76C:  BEQ             loc_FE788
FE76E:  LDRB            R2, [R3]
FE770:  CMP             R2, #0x6E ; 'n'
FE772:  MOV             R2, R3
FE774:  ITT EQ
FE776:  ADDEQ           R2, R3, #1
FE778:  STREQ           R2, [R1]
FE77A:  CMP             R4, R2
FE77C:  BEQ             loc_FE788
FE77E:  LDRB            R5, [R2]
FE780:  SUBS            R5, #0x3A ; ':'
FE782:  CMN.W           R5, #0xA
FE786:  BCS             loc_FE792
FE788:  MOVS            R3, #0
FE78A:  MOVS            R4, #0
FE78C:  STRD.W          R3, R4, [R0]
FE790:  POP             {R4,R5,R7,PC}
FE792:  CMP             R2, R4
FE794:  BEQ             loc_FE78C
FE796:  LDRB            R5, [R2]
FE798:  SUBS            R5, #0x3A ; ':'
FE79A:  CMN.W           R5, #0xA
FE79E:  BCC             loc_FE7A6
FE7A0:  ADDS            R2, #1
FE7A2:  STR             R2, [R1]
FE7A4:  B               loc_FE792
FE7A6:  MOV             R4, R2
FE7A8:  B               loc_FE78C
