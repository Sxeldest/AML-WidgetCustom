; =========================================================
; Game Engine Function: _ZN9CPathFind26SwitchOffNodeAndNeighboursEP9CPathNodePS1_S2_bb
; Address            : 0x3186E8 - 0x3188A0
; =========================================================

3186E8:  PUSH            {R4-R7,LR}
3186EA:  ADD             R7, SP, #0xC
3186EC:  PUSH.W          {R8-R11}
3186F0:  SUB             SP, SP, #0xC
3186F2:  STR             R2, [SP,#0x28+var_20]
3186F4:  MOV             R4, R1
3186F6:  LDRD.W          R5, R2, [R7,#arg_0]
3186FA:  CMP             R2, #1
3186FC:  BNE             loc_31870E
3186FE:  LDRH.W          R2, [R4,#0x18]!
318702:  LDRB            R6, [R4,#2]
318704:  ORR.W           R6, R2, R6,LSL#16
318708:  UBFX.W          R5, R6, #8, #1
31870C:  B               loc_318718
31870E:  LDRH.W          R2, [R4,#0x18]!
318712:  LDRB            R6, [R4,#2]
318714:  ORR.W           R6, R2, R6,LSL#16
318718:  LSRS            R2, R6, #0x10
31871A:  CMP             R3, #0
31871C:  STRB            R2, [R4,#2]
31871E:  MOVW            R2, #0xFFDF
318722:  AND.W           R2, R2, R6
318726:  ORR.W           R2, R2, R5,LSL#5
31872A:  STRH            R2, [R4]
31872C:  LDR             R6, [SP,#0x28+var_20]
31872E:  MOV.W           R2, #0
318732:  STR             R2, [R6]
318734:  IT NE
318736:  STRNE           R2, [R3]
318738:  STR             R3, [SP,#0x28+var_24]
31873A:  LDRB            R3, [R4,#2]
31873C:  STR             R4, [SP,#0x28+var_28]
31873E:  LDRH            R6, [R4]
318740:  ORR.W           R9, R6, R3,LSL#16
318744:  ANDS.W          R10, R9, #0xF
318748:  BEQ.W           loc_318898
31874C:  LDRH            R3, [R1,#0x12]
31874E:  BIC.W           R4, R10, #0xFF000000
318752:  LDRSH.W         R6, [R1,#0x10]
318756:  MOV.W           R12, #0
31875A:  MOV.W           LR, #0xFFFFFFFF
31875E:  ADD.W           R3, R0, R3,LSL#2
318762:  LDR.W           R3, [R3,#0xA44]
318766:  ADD.W           R5, R3, R6,LSL#2
31876A:  LDR             R6, [R5]
31876C:  UXTH            R3, R6
31876E:  ADD.W           R3, R0, R3,LSL#2
318772:  LDR.W           R3, [R3,#0x804]
318776:  CBZ             R3, loc_318798
318778:  LSRS            R2, R6, #0x10
31877A:  LSLS            R2, R2, #3
31877C:  SUB.W           R2, R2, R6,LSR#16
318780:  ADD.W           R2, R3, R2,LSL#2
318784:  LDRB            R2, [R2,#0x1A]
318786:  LSLS            R2, R2, #0x10
318788:  ADD.W           R2, LR, R2,LSR#20
31878C:  BIC.W           R2, R2, #0xFF000000
318790:  CMP             R2, #1
318792:  IT HI
318794:  ADDHI.W         R12, R12, #1
318798:  SUBS            R4, #1
31879A:  ADD.W           R5, R5, #4
31879E:  BNE             loc_31876A
3187A0:  CMP.W           R12, #2
3187A4:  BGT             loc_318898
3187A6:  CMP.W           R10, #0
3187AA:  BEQ             loc_318898
3187AC:  MOV.W           R8, #0
3187B0:  MOV.W           R10, #0xFFFFFFFF
3187B4:  LDRH            R2, [R1,#0x12]
3187B6:  LDRSH.W         R3, [R1,#0x10]
3187BA:  ADD.W           R2, R0, R2,LSL#2
3187BE:  ADD             R3, R8
3187C0:  LDR.W           R2, [R2,#0xA44]
3187C4:  LDR.W           R4, [R2,R3,LSL#2]
3187C8:  UXTH            R2, R4
3187CA:  ADD.W           R2, R0, R2,LSL#2
3187CE:  LDR.W           R5, [R2,#0x804]
3187D2:  CMP             R5, #0
3187D4:  BEQ             loc_31888C
3187D6:  MOV.W           LR, R4,LSR#16
3187DA:  MOV.W           R2, LR,LSL#3
3187DE:  SUB.W           R2, R2, R4,LSR#16
3187E2:  ADD.W           R11, R5, R2,LSL#2
3187E6:  LDRB.W          R2, [R11,#0x1A]
3187EA:  LDRH.W          R3, [R11,#0x18]
3187EE:  ORR.W           R4, R3, R2,LSL#16
3187F2:  ADD.W           R2, R10, R4,LSR#20
3187F6:  BIC.W           R2, R2, #0xFF000000
3187FA:  CMP             R2, #2
3187FC:  BCC             loc_31888C
3187FE:  LDR             R2, [R7,#arg_4]
318800:  UBFX.W          R6, R4, #5, #1
318804:  CMP             R2, #0
318806:  ITE NE
318808:  UBFXNE.W        R2, R4, #8, #1
31880C:  LDREQ           R2, [R7,#arg_0]
31880E:  CMP             R6, R2
318810:  BEQ             loc_31888C
318812:  ANDS.W          R12, R4, #0xF
318816:  BEQ             loc_318872
318818:  RSB.W           R2, LR, LR,LSL#3
31881C:  BIC.W           LR, R12, #0xFF000000
318820:  ADD.W           R2, R5, R2,LSL#2
318824:  MOVS            R5, #0
318826:  LDRH            R3, [R2,#0x12]
318828:  LDRSH.W         R2, [R2,#0x10]
31882C:  ADD.W           R3, R0, R3,LSL#2
318830:  LDR.W           R3, [R3,#0xA44]
318834:  ADD.W           R4, R3, R2,LSL#2
318838:  LDR             R6, [R4]
31883A:  UXTH            R2, R6
31883C:  ADD.W           R2, R0, R2,LSL#2
318840:  LDR.W           R3, [R2,#0x804]
318844:  CBZ             R3, loc_318864
318846:  LSRS            R2, R6, #0x10
318848:  LSLS            R2, R2, #3
31884A:  SUB.W           R2, R2, R6,LSR#16
31884E:  ADD.W           R2, R3, R2,LSL#2
318852:  LDRB            R2, [R2,#0x1A]
318854:  LSLS            R2, R2, #0x10
318856:  ADD.W           R2, R10, R2,LSR#20
31885A:  BIC.W           R2, R2, #0xFF000000
31885E:  CMP             R2, #1
318860:  IT HI
318862:  ADDHI           R5, #1
318864:  SUBS.W          LR, LR, #1
318868:  ADD.W           R4, R4, #4
31886C:  BNE             loc_318838
31886E:  CMP             R5, #2
318870:  BGT             loc_31888C
318872:  LDR             R3, [SP,#0x28+var_20]
318874:  LDR             R2, [R3]
318876:  CMP             R2, #0
318878:  LDR             R2, [SP,#0x28+var_24]
31887A:  IT EQ
31887C:  MOVEQ           R2, R3
31887E:  STR.W           R11, [R2]
318882:  LDR             R3, [SP,#0x28+var_28]
318884:  LDRB            R2, [R3,#2]
318886:  LDRH            R3, [R3]
318888:  ORR.W           R9, R3, R2,LSL#16
31888C:  ADD.W           R8, R8, #1
318890:  AND.W           R2, R9, #0xF
318894:  CMP             R8, R2
318896:  BLT             loc_3187B4
318898:  ADD             SP, SP, #0xC
31889A:  POP.W           {R8-R11}
31889E:  POP             {R4-R7,PC}
