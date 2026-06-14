; =========================================================
; Game Engine Function: sub_15A730
; Address            : 0x15A730 - 0x15A7A8
; =========================================================

15A730:  PUSH            {R4-R7,LR}
15A732:  ADD             R7, SP, #0xC
15A734:  PUSH.W          {R11}
15A738:  SUB             SP, SP, #0x20
15A73A:  MOV             R5, R1
15A73C:  MOV             R4, R0
15A73E:  MOVS            R0, #0
15A740:  SUB.W           R1, R7, #-var_11; int
15A744:  STRB.W          R0, [R7,#var_11]
15A748:  MOV             R0, R5; int
15A74A:  MOVS            R2, #8
15A74C:  MOVS            R3, #1
15A74E:  BL              sub_17D786
15A752:  ADD             R6, SP, #0x30+var_20
15A754:  MOV             R1, R5; int
15A756:  MOV             R0, R6; int
15A758:  BL              sub_15B24E
15A75C:  LDRB.W          R5, [R7,#var_11]
15A760:  CBZ             R5, loc_15A792
15A762:  LDRB.W          R0, [SP,#0x30+var_20]
15A766:  LDRD.W          R2, R1, [SP,#0x30+var_1C]
15A76A:  ANDS.W          R3, R0, #1
15A76E:  ITT EQ
15A770:  ADDEQ           R1, R6, #1
15A772:  LSREQ           R2, R0, #1
15A774:  ADD             R0, SP, #0x30+var_2C
15A776:  BL              sub_164D04
15A77A:  ADD             R2, SP, #0x30+var_2C
15A77C:  MOV             R0, R4
15A77E:  MOV             R1, R5
15A780:  BL              sub_155B74
15A784:  LDRB.W          R0, [SP,#0x30+var_2C]
15A788:  LSLS            R0, R0, #0x1F
15A78A:  ITT NE
15A78C:  LDRNE           R0, [SP,#0x30+var_24]; void *
15A78E:  BLXNE           j__ZdlPv; operator delete(void *)
15A792:  LDRB.W          R0, [SP,#0x30+var_20]
15A796:  LSLS            R0, R0, #0x1F
15A798:  ITT NE
15A79A:  LDRNE           R0, [SP,#0x30+var_18]; void *
15A79C:  BLXNE           j__ZdlPv; operator delete(void *)
15A7A0:  ADD             SP, SP, #0x20 ; ' '
15A7A2:  POP.W           {R11}
15A7A6:  POP             {R4-R7,PC}
