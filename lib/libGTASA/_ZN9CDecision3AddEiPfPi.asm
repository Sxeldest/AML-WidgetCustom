; =========================================================
; Game Engine Function: _ZN9CDecision3AddEiPfPi
; Address            : 0x4BD620 - 0x4BD86C
; =========================================================

4BD620:  LDR.W           R12, [R0]
4BD624:  ADDS.W          R12, R12, #1
4BD628:  ITT EQ
4BD62A:  LDRBEQ.W        R12, [R0,#0x18]
4BD62E:  CMPEQ.W         R12, #0
4BD632:  BEQ             loc_4BD6D2
4BD634:  LDR.W           R12, [R0,#4]
4BD638:  ADDS.W          R12, R12, #1
4BD63C:  BNE             loc_4BD652
4BD63E:  LDRB.W          R12, [R0,#0x1C]
4BD642:  CMP.W           R12, #0
4BD646:  ITT EQ
4BD648:  LDRBEQ.W        R12, [R0,#0x1D]
4BD64C:  CMPEQ.W         R12, #0
4BD650:  BEQ             loc_4BD738
4BD652:  LDR.W           R12, [R0,#8]
4BD656:  ADDS.W          R12, R12, #1
4BD65A:  BNE             loc_4BD670
4BD65C:  LDRB.W          R12, [R0,#0x20]
4BD660:  CMP.W           R12, #0
4BD664:  ITT EQ
4BD666:  LDRBEQ.W        R12, [R0,#0x21]
4BD66A:  CMPEQ.W         R12, #0
4BD66E:  BEQ             loc_4BD76A
4BD670:  LDR.W           R12, [R0,#0xC]
4BD674:  ADDS.W          R12, R12, #1
4BD678:  BNE             loc_4BD690
4BD67A:  LDRB.W          R12, [R0,#0x24]
4BD67E:  CMP.W           R12, #0
4BD682:  ITT EQ
4BD684:  LDRBEQ.W        R12, [R0,#0x25]
4BD688:  CMPEQ.W         R12, #0
4BD68C:  BEQ.W           loc_4BD79C
4BD690:  LDR.W           R12, [R0,#0x10]
4BD694:  ADDS.W          R12, R12, #1
4BD698:  BNE             loc_4BD6B0
4BD69A:  LDRB.W          R12, [R0,#0x28]
4BD69E:  CMP.W           R12, #0
4BD6A2:  ITT EQ
4BD6A4:  LDRBEQ.W        R12, [R0,#0x29]
4BD6A8:  CMPEQ.W         R12, #0
4BD6AC:  BEQ.W           loc_4BD7CE
4BD6B0:  LDR.W           R12, [R0,#0x14]
4BD6B4:  ADDS.W          R12, R12, #1
4BD6B8:  IT NE
4BD6BA:  BXNE            LR
4BD6BC:  LDRB.W          R12, [R0,#0x2C]
4BD6C0:  CMP.W           R12, #0
4BD6C4:  ITT EQ
4BD6C6:  LDRBEQ.W        R12, [R0,#0x2D]
4BD6CA:  CMPEQ.W         R12, #0
4BD6CE:  BEQ             loc_4BD70A
4BD6D0:  BX              LR
4BD6D2:  LDRB.W          R12, [R0,#0x19]
4BD6D6:  CMP.W           R12, #0
4BD6DA:  ITT EQ
4BD6DC:  LDRBEQ.W        R12, [R0,#0x1A]
4BD6E0:  CMPEQ.W         R12, #0
4BD6E4:  BNE             loc_4BD634
4BD6E6:  LDRB.W          R12, [R0,#0x1B]
4BD6EA:  CMP.W           R12, #0
4BD6EE:  ITT EQ
4BD6F0:  LDRBEQ.W        R12, [R0,#0x30]
4BD6F4:  CMPEQ.W         R12, #0
4BD6F8:  BNE             loc_4BD634
4BD6FA:  LDRB.W          R12, [R0,#0x31]
4BD6FE:  CMP.W           R12, #0
4BD702:  BNE             loc_4BD634
4BD704:  MOV.W           R12, #0
4BD708:  B               loc_4BD7FE
4BD70A:  LDRB.W          R12, [R0,#0x2E]
4BD70E:  CMP.W           R12, #0
4BD712:  ITT EQ
4BD714:  LDRBEQ.W        R12, [R0,#0x2F]
4BD718:  CMPEQ.W         R12, #0
4BD71C:  BNE             locret_4BD6D0
4BD71E:  LDRB.W          R12, [R0,#0x3A]
4BD722:  CMP.W           R12, #0
4BD726:  ITT EQ
4BD728:  LDRBEQ.W        R12, [R0,#0x3B]
4BD72C:  CMPEQ.W         R12, #0
4BD730:  BNE             locret_4BD6D0
4BD732:  MOV.W           R12, #5
4BD736:  B               loc_4BD7FE
4BD738:  LDRB.W          R12, [R0,#0x1E]
4BD73C:  CMP.W           R12, #0
4BD740:  ITT EQ
4BD742:  LDRBEQ.W        R12, [R0,#0x1F]
4BD746:  CMPEQ.W         R12, #0
4BD74A:  BNE.W           loc_4BD652
4BD74E:  LDRB.W          R12, [R0,#0x32]
4BD752:  CMP.W           R12, #0
4BD756:  ITT EQ
4BD758:  LDRBEQ.W        R12, [R0,#0x33]
4BD75C:  CMPEQ.W         R12, #0
4BD760:  BNE.W           loc_4BD652
4BD764:  MOV.W           R12, #1
4BD768:  B               loc_4BD7FE
4BD76A:  LDRB.W          R12, [R0,#0x22]
4BD76E:  CMP.W           R12, #0
4BD772:  ITT EQ
4BD774:  LDRBEQ.W        R12, [R0,#0x23]
4BD778:  CMPEQ.W         R12, #0
4BD77C:  BNE.W           loc_4BD670
4BD780:  LDRB.W          R12, [R0,#0x34]
4BD784:  CMP.W           R12, #0
4BD788:  ITT EQ
4BD78A:  LDRBEQ.W        R12, [R0,#0x35]
4BD78E:  CMPEQ.W         R12, #0
4BD792:  BNE.W           loc_4BD670
4BD796:  MOV.W           R12, #2
4BD79A:  B               loc_4BD7FE
4BD79C:  LDRB.W          R12, [R0,#0x26]
4BD7A0:  CMP.W           R12, #0
4BD7A4:  ITT EQ
4BD7A6:  LDRBEQ.W        R12, [R0,#0x27]
4BD7AA:  CMPEQ.W         R12, #0
4BD7AE:  BNE.W           loc_4BD690
4BD7B2:  LDRB.W          R12, [R0,#0x36]
4BD7B6:  CMP.W           R12, #0
4BD7BA:  ITT EQ
4BD7BC:  LDRBEQ.W        R12, [R0,#0x37]
4BD7C0:  CMPEQ.W         R12, #0
4BD7C4:  BNE.W           loc_4BD690
4BD7C8:  MOV.W           R12, #3
4BD7CC:  B               loc_4BD7FE
4BD7CE:  LDRB.W          R12, [R0,#0x2A]
4BD7D2:  CMP.W           R12, #0
4BD7D6:  ITT EQ
4BD7D8:  LDRBEQ.W        R12, [R0,#0x2B]
4BD7DC:  CMPEQ.W         R12, #0
4BD7E0:  BNE.W           loc_4BD6B0
4BD7E4:  LDRB.W          R12, [R0,#0x38]
4BD7E8:  CMP.W           R12, #0
4BD7EC:  ITT EQ
4BD7EE:  LDRBEQ.W        R12, [R0,#0x39]
4BD7F2:  CMPEQ.W         R12, #0
4BD7F6:  BNE.W           loc_4BD6B0
4BD7FA:  MOV.W           R12, #4
4BD7FE:  PUSH            {R7,LR}
4BD800:  MOV             R7, SP
4BD802:  STR.W           R1, [R0,R12,LSL#2]
4BD806:  ADD.W           LR, R0, R12,LSL#2
4BD80A:  ADD.W           R0, R0, R12,LSL#1
4BD80E:  VLDR            S0, [R2]
4BD812:  VCVT.U32.F32    S0, S0
4BD816:  VMOV            R1, S0
4BD81A:  STRB.W          R1, [LR,#0x18]
4BD81E:  VLDR            S0, [R2,#4]
4BD822:  VCVT.U32.F32    S0, S0
4BD826:  VMOV            R1, S0
4BD82A:  STRB.W          R1, [LR,#0x19]
4BD82E:  VLDR            S0, [R2,#8]
4BD832:  VCVT.U32.F32    S0, S0
4BD836:  VMOV            R1, S0
4BD83A:  STRB.W          R1, [LR,#0x1A]
4BD83E:  VLDR            S0, [R2,#0xC]
4BD842:  VCVT.U32.F32    S0, S0
4BD846:  VMOV            R1, S0
4BD84A:  STRB.W          R1, [LR,#0x1B]
4BD84E:  LDR             R1, [R3]
4BD850:  CMP             R1, #0
4BD852:  IT NE
4BD854:  MOVNE           R1, #1
4BD856:  STRB.W          R1, [R0,#0x30]
4BD85A:  LDR             R1, [R3,#4]
4BD85C:  CMP             R1, #0
4BD85E:  IT NE
4BD860:  MOVNE           R1, #1
4BD862:  STRB.W          R1, [R0,#0x31]
4BD866:  POP.W           {R7,LR}
4BD86A:  BX              LR
