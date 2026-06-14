; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence5FlushEv
; Address            : 0x4EE718 - 0x4EE79E
; =========================================================

4EE718:  PUSH            {R4,R5,R7,LR}
4EE71A:  ADD             R7, SP, #8
4EE71C:  MOV             R4, R0
4EE71E:  LDR             R0, [R4,#0x10]
4EE720:  CMP             R0, #0
4EE722:  ITTT NE
4EE724:  LDRNE           R1, [R0]
4EE726:  LDRNE           R1, [R1,#4]
4EE728:  BLXNE           R1
4EE72A:  LDR             R0, [R4,#0x14]
4EE72C:  MOVS            R5, #0
4EE72E:  STR             R5, [R4,#0x10]
4EE730:  CMP             R0, #0
4EE732:  ITTT NE
4EE734:  LDRNE           R1, [R0]
4EE736:  LDRNE           R1, [R1,#4]
4EE738:  BLXNE           R1
4EE73A:  LDR             R0, [R4,#0x18]
4EE73C:  STR             R5, [R4,#0x14]
4EE73E:  CMP             R0, #0
4EE740:  ITTT NE
4EE742:  LDRNE           R1, [R0]
4EE744:  LDRNE           R1, [R1,#4]
4EE746:  BLXNE           R1
4EE748:  LDR             R0, [R4,#0x1C]
4EE74A:  MOVS            R5, #0
4EE74C:  STR             R5, [R4,#0x18]
4EE74E:  CMP             R0, #0
4EE750:  ITTT NE
4EE752:  LDRNE           R1, [R0]
4EE754:  LDRNE           R1, [R1,#4]
4EE756:  BLXNE           R1
4EE758:  LDR             R0, [R4,#0x20]
4EE75A:  STR             R5, [R4,#0x1C]
4EE75C:  CMP             R0, #0
4EE75E:  ITTT NE
4EE760:  LDRNE           R1, [R0]
4EE762:  LDRNE           R1, [R1,#4]
4EE764:  BLXNE           R1
4EE766:  LDR             R0, [R4,#0x24]
4EE768:  MOVS            R5, #0
4EE76A:  STR             R5, [R4,#0x20]
4EE76C:  CMP             R0, #0
4EE76E:  ITTT NE
4EE770:  LDRNE           R1, [R0]
4EE772:  LDRNE           R1, [R1,#4]
4EE774:  BLXNE           R1
4EE776:  LDR             R0, [R4,#0x28]
4EE778:  STR             R5, [R4,#0x24]
4EE77A:  CMP             R0, #0
4EE77C:  ITTT NE
4EE77E:  LDRNE           R1, [R0]
4EE780:  LDRNE           R1, [R1,#4]
4EE782:  BLXNE           R1
4EE784:  LDR             R0, [R4,#0x2C]
4EE786:  MOVS            R5, #0
4EE788:  STR             R5, [R4,#0x28]
4EE78A:  CMP             R0, #0
4EE78C:  ITTT NE
4EE78E:  LDRNE           R1, [R0]
4EE790:  LDRNE           R1, [R1,#4]
4EE792:  BLXNE           R1
4EE794:  STR             R5, [R4,#0xC]
4EE796:  STRD.W          R5, R5, [R4,#0x2C]
4EE79A:  STR             R5, [R4,#0x34]
4EE79C:  POP             {R4,R5,R7,PC}
