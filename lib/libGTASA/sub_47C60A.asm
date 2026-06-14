; =========================================================
; Game Engine Function: sub_47C60A
; Address            : 0x47C60A - 0x47C66C
; =========================================================

47C60A:  PUSH            {R4-R7,LR}
47C60C:  ADD             R7, SP, #0xC
47C60E:  PUSH.W          {R8-R10}
47C612:  LDR.W           R12, [R7,#arg_0]
47C616:  CMP.W           R12, #1
47C61A:  BLT             loc_47C666
47C61C:  LDR.W           LR, [R0,#0x24]
47C620:  LDR.W           R9, [R0,#0x5C]
47C624:  SUB.W           R8, R12, #1
47C628:  CMP.W           LR, #1
47C62C:  BLT             loc_47C65A
47C62E:  MOV.W           R10, #0
47C632:  CMP.W           R9, #0
47C636:  BEQ             loc_47C652
47C638:  LDR.W           R0, [R1,R10,LSL#2]
47C63C:  LDR             R6, [R3]
47C63E:  LDR.W           R4, [R0,R2,LSL#2]
47C642:  MOV             R0, R9
47C644:  LDRB.W          R5, [R4],#1
47C648:  SUBS            R0, #1
47C64A:  STRB.W          R5, [R10,R6]
47C64E:  ADD             R6, LR
47C650:  BNE             loc_47C644
47C652:  ADD.W           R10, R10, #1
47C656:  CMP             R10, LR
47C658:  BNE             loc_47C632
47C65A:  ADDS            R3, #4
47C65C:  ADDS            R2, #1
47C65E:  CMP.W           R12, #1
47C662:  MOV             R12, R8
47C664:  BGT             loc_47C624
47C666:  POP.W           {R8-R10}
47C66A:  POP             {R4-R7,PC}
