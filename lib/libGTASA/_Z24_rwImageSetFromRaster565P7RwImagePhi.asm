; =========================================================
; Game Engine Function: _Z24_rwImageSetFromRaster565P7RwImagePhi
; Address            : 0x1AA610 - 0x1AA75A
; =========================================================

1AA610:  PUSH            {R4-R7,LR}
1AA612:  ADD             R7, SP, #0xC
1AA614:  PUSH.W          {R8-R11}
1AA618:  SUB             SP, SP, #0x2C
1AA61A:  STR             R1, [SP,#0x48+var_2C]
1AA61C:  MOV             R9, R2
1AA61E:  STR             R0, [SP,#0x48+var_48]
1AA620:  LDR.W           R10, [R0,#8]
1AA624:  CMP.W           R10, #1
1AA628:  BLT.W           loc_1AA750
1AA62C:  LDR             R0, [SP,#0x48+var_48]
1AA62E:  VMOV.I8         D16, #0xFC
1AA632:  VMOV.I8         D17, #0xF8
1AA636:  MOV.W           LR, #0xFF
1AA63A:  VMOV.I8         D21, #0xFF
1AA63E:  MOV.W           R12, #0xF8
1AA642:  LDR.W           R11, [R0,#4]
1AA646:  MOV.W           R8, #0xFC
1AA64A:  LDRD.W          R1, R0, [R0,#0x10]
1AA64E:  BIC.W           R2, R11, #7
1AA652:  STR             R2, [SP,#0x48+var_28]
1AA654:  MOV.W           R2, R11,LSL#1
1AA658:  LDR             R3, [SP,#0x48+var_2C]
1AA65A:  STR             R2, [SP,#0x48+var_34]
1AA65C:  MOV.W           R2, R11,LSL#2
1AA660:  STR             R2, [SP,#0x48+var_38]
1AA662:  MOVS            R2, #0
1AA664:  STR             R0, [SP,#0x48+var_30]
1AA666:  STRD.W          R0, R3, [SP,#0x48+var_24]
1AA66A:  STR.W           R10, [SP,#0x48+var_3C]
1AA66E:  STRD.W          R11, R9, [SP,#0x48+var_44]
1AA672:  CMP.W           R11, #1
1AA676:  BLT             loc_1AA73E
1AA678:  MOVS            R3, #0
1AA67A:  CMP.W           R11, #8
1AA67E:  BCC             loc_1AA6B2
1AA680:  LDR             R0, [SP,#0x48+var_28]
1AA682:  CMP             R0, #0
1AA684:  LDRD.W          R6, R0, [SP,#0x48+var_24]
1AA688:  BEQ             loc_1AA714
1AA68A:  LDR             R0, [SP,#0x48+var_34]
1AA68C:  MOV             R4, R1
1AA68E:  MLA.W           R0, R2, R9, R0
1AA692:  LDR             R5, [SP,#0x48+var_30]
1AA694:  LDR             R6, [SP,#0x48+var_2C]
1AA696:  MLA.W           R3, R4, R2, R5
1AA69A:  ADD             R0, R6
1AA69C:  CMP             R3, R0
1AA69E:  BCS             loc_1AA6B8
1AA6A0:  LDR             R0, [SP,#0x48+var_38]
1AA6A2:  MLA.W           R3, R2, R9, R6
1AA6A6:  MLA.W           R0, R4, R2, R0
1AA6AA:  ADD             R0, R5
1AA6AC:  CMP             R3, R0
1AA6AE:  BCS             loc_1AA6B8
1AA6B0:  MOVS            R3, #0
1AA6B2:  LDRD.W          R6, R0, [SP,#0x48+var_24]
1AA6B6:  B               loc_1AA714
1AA6B8:  LDRD.W          R11, R9, [SP,#0x48+var_28]
1AA6BC:  LDR.W           R10, [SP,#0x48+var_20]
1AA6C0:  ADD.W           R6, R9, R11,LSL#2
1AA6C4:  ADD.W           R0, R10, R11,LSL#1
1AA6C8:  VLD1.16         {D22-D23}, [R10]!
1AA6CC:  SUBS.W          R11, R11, #8
1AA6D0:  VMOVL.U16       Q12, D23
1AA6D4:  VMOVL.U16       Q13, D22
1AA6D8:  VMOVN.I16       D22, Q11
1AA6DC:  VSHRN.I32       D29, Q12, #3
1AA6E0:  VSHRN.I32       D25, Q12, #8
1AA6E4:  VSHRN.I32       D28, Q13, #3
1AA6E8:  VSHRN.I32       D24, Q13, #8
1AA6EC:  VSHL.I8         D20, D22, #3
1AA6F0:  VMOVN.I16       D23, Q14
1AA6F4:  VMOVN.I16       D24, Q12
1AA6F8:  VAND            D19, D23, D16
1AA6FC:  VAND            D18, D24, D17
1AA700:  VST4.8          {D18-D21}, [R9]!
1AA704:  BNE             loc_1AA6C8
1AA706:  LDR.W           R11, [SP,#0x48+var_44]
1AA70A:  LDR             R3, [SP,#0x48+var_28]
1AA70C:  LDRD.W          R9, R10, [SP,#0x48+var_40]
1AA710:  CMP             R11, R3
1AA712:  BEQ             loc_1AA73E
1AA714:  SUB.W           R4, R11, R3
1AA718:  ADDS            R3, R6, #1
1AA71A:  LDRH.W          R5, [R0],#2
1AA71E:  SUBS            R4, #1
1AA720:  STRB.W          LR, [R3,#2]
1AA724:  AND.W           R6, R12, R5,LSR#8
1AA728:  STRB.W          R6, [R3,#-1]
1AA72C:  AND.W           R6, R8, R5,LSR#3
1AA730:  MOV.W           R5, R5,LSL#3
1AA734:  STRB            R6, [R3]
1AA736:  STRB            R5, [R3,#1]
1AA738:  ADD.W           R3, R3, #4
1AA73C:  BNE             loc_1AA71A
1AA73E:  LDR             R0, [SP,#0x48+var_20]
1AA740:  ADDS            R2, #1
1AA742:  CMP             R2, R10
1AA744:  ADD             R0, R9
1AA746:  STR             R0, [SP,#0x48+var_20]
1AA748:  LDR             R0, [SP,#0x48+var_24]
1AA74A:  ADD             R0, R1
1AA74C:  STR             R0, [SP,#0x48+var_24]
1AA74E:  BNE             loc_1AA672
1AA750:  LDR             R0, [SP,#0x48+var_48]
1AA752:  ADD             SP, SP, #0x2C ; ','
1AA754:  POP.W           {R8-R11}
1AA758:  POP             {R4-R7,PC}
