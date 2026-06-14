; =========================================================
; Game Engine Function: INT123_ntom_frameoff
; Address            : 0x2266F0 - 0x226768
; =========================================================

2266F0:  CMP             R1, #1
2266F2:  ITT LT
2266F4:  MOVLT           R0, #0
2266F6:  BXLT            LR
2266F8:  PUSH            {R4,R5,R7,LR}
2266FA:  ADD             R7, SP, #0x10+var_8
2266FC:  MOVW            R2, #0x9190
226700:  MOVW            R3, #0x92D8
226704:  LDR             R2, [R0,R2]
226706:  MOVW            R5, #0x92CC
22670A:  LDR             R3, [R0,R3]
22670C:  ADD.W           R12, R0, R5
226710:  MOVW            R5, #0x92C8
226714:  ADD.W           LR, R0, R5
226718:  MOV.W           R4, #0x4000
22671C:  MOVS            R0, #0
22671E:  CMP             R3, #1
226720:  BNE             loc_226732
226722:  B               loc_22673C
226724:  ASRS            R5, R5, #0xF
226726:  SUBS            R1, R1, R5
226728:  SUB.W           R4, R4, R5,LSL#15
22672C:  ADDS            R0, #1
22672E:  CMP             R3, #1
226730:  BEQ             loc_22673C
226732:  CMP             R3, #2
226734:  BNE             loc_226742
226736:  MOV.W           R5, #0x480
22673A:  B               loc_226756
22673C:  MOV.W           R5, #0x180
226740:  B               loc_226756
226742:  LDR.W           R5, [LR]
226746:  CMP             R5, #0
226748:  ITT EQ
22674A:  LDREQ.W         R5, [R12]
22674E:  CMPEQ           R5, #0
226750:  BEQ             loc_226736
226752:  MOV.W           R5, #0x240
226756:  MLA.W           R4, R2, R5, R4
22675A:  ASRS            R5, R4, #0x1F
22675C:  ADD.W           R5, R4, R5,LSR#17
226760:  CMP.W           R1, R5,ASR#15
226764:  BGE             loc_226724
226766:  POP             {R4,R5,R7,PC}
