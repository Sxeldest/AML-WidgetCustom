; =========================================================
; Game Engine Function: sub_231732
; Address            : 0x231732 - 0x2318D8
; =========================================================

231732:  PUSH            {R4-R7,LR}
231734:  ADD             R7, SP, #0xC
231736:  PUSH.W          {R8-R10}
23173A:  MOV             R4, R0
23173C:  MOVW            R8, #0xB2D0
231740:  MOVW            R0, #0xB2D8
231744:  MOVW            R9, #0x9314
231748:  LDR             R5, [R4,R0]
23174A:  MOVW            R12, #0xB2A8
23174E:  LDR.W           R3, [R4,R8]
231752:  LDR.W           R2, [R4,R9]
231756:  MOVS            R0, #0
231758:  CMP             R5, #0
23175A:  MOV.W           R6, #0
23175E:  STR.W           R0, [R4,R12]
231762:  IT GT
231764:  MOVGT           R6, R5
231766:  CMP             R2, R3
231768:  BGE             loc_231776
23176A:  MOVW            R1, #0xB2C8
23176E:  CMP             R2, R6
231770:  STR             R0, [R4,R1]
231772:  BGT.W           loc_2318D2
231776:  CMP             R2, R6
231778:  BNE             loc_23178E
23177A:  MOVW            R0, #0xB2C8
23177E:  LDR             R1, [R4,R0]
231780:  MOVS            R0, #0
231782:  CMP             R1, #0
231784:  BNE.W           loc_2318D2
231788:  CMP             R6, R3
23178A:  BLT.W           loc_2318D2
23178E:  SUBS            R0, R6, #1
231790:  CMP             R2, R0
231792:  BNE             loc_2317A2
231794:  MOVW            R1, #0xB2C8
231798:  MOVS            R0, #0
23179A:  STR             R0, [R4,R1]
23179C:  POP.W           {R8-R10}
2317A0:  POP             {R4-R7,PC}
2317A2:  ADD.W           R0, R4, R12
2317A6:  MOV.W           R10, #0
2317AA:  MOVW            R1, #0xB288
2317AE:  MOVW            R2, #0xB28C
2317B2:  STR.W           R10, [R0]
2317B6:  MOVW            R0, #0xA308
2317BA:  ADD             R0, R4
2317BC:  STR             R0, [R4,R1]
2317BE:  MOVW            R1, #0xB290
2317C2:  STR.W           R10, [R4,R1]
2317C6:  MOVW            R1, #0x4834
2317CA:  LDR             R1, [R4,R1]
2317CC:  STR             R0, [R4,R2]
2317CE:  MOVW            R0, #0x4830
2317D2:  LDR             R0, [R4,R0]
2317D4:  MOVW            R2, #0x9384
2317D8:  STR.W           R10, [R4,R2]
2317DC:  BLX             j___aeabi_memclr8_1
2317E0:  MOVW            R0, #0x9388
2317E4:  MOV.W           R1, #0x1F00
2317E8:  ADD             R0, R4
2317EA:  BLX             j___aeabi_memclr8
2317EE:  MOVW            R0, #0x4A70
2317F2:  VMOV.I32        Q8, #0
2317F6:  STRH.W          R10, [R4,R0]
2317FA:  MOVW            R0, #0x4A60
2317FE:  ADD             R0, R4
231800:  MOVW            R1, #0x4808
231804:  VST1.64         {D16-D17}, [R0]
231808:  MOVW            R0, #0x4A50
23180C:  ADD             R0, R4
23180E:  VST1.64         {D16-D17}, [R0]
231812:  ADD.W           R0, R4, #8
231816:  BLX             j___aeabi_memclr8
23181A:  MOVW            R0, #0x92D0
23181E:  LDR             R0, [R4,R0]
231820:  CMP             R0, #3
231822:  BNE             loc_2318A0
231824:  CMP             R5, #1
231826:  BLT             loc_231890
231828:  MOVW            R0, #0x9190
23182C:  MOVW            R1, #0x92D8
231830:  LDR             R0, [R4,R0]
231832:  MOVW            R2, #0x92CC
231836:  LDR             R1, [R4,R1]
231838:  ADD.W           R12, R4, R2
23183C:  MOVW            R2, #0x92C8
231840:  ADD.W           LR, R4, R2
231844:  MOV.W           R2, #0x4000
231848:  MOVW            R10, #0x7FFF
23184C:  MOV             R5, R6
23184E:  CMP             R1, #1
231850:  BEQ             loc_23185C
231852:  CMP             R1, #2
231854:  BNE             loc_231862
231856:  MOV.W           R3, #0x480
23185A:  B               loc_231876
23185C:  MOV.W           R3, #0x180
231860:  B               loc_231876
231862:  LDR.W           R3, [LR]
231866:  CMP             R3, #0
231868:  ITT EQ
23186A:  LDREQ.W         R3, [R12]
23186E:  CMPEQ           R3, #0
231870:  BEQ             loc_231856
231872:  MOV.W           R3, #0x240
231876:  MLA.W           R2, R3, R0, R2
23187A:  SUBS            R5, #1
23187C:  MOV.W           R3, R2,ASR#31
231880:  ADD.W           R3, R2, R3,LSR#17
231884:  BIC.W           R3, R3, R10
231888:  SUB.W           R2, R2, R3
23188C:  BNE             loc_23184E
23188E:  B               loc_231894
231890:  MOV.W           R2, #0x4000
231894:  MOVW            R0, #0x918C
231898:  STR             R2, [R4,R0]
23189A:  MOVW            R0, #0x9188
23189E:  STR             R2, [R4,R0]
2318A0:  MOVW            R0, #0xB2E0
2318A4:  MOV             R1, R6
2318A6:  LDR             R0, [R4,R0]
2318A8:  LDR             R2, [R0,#0x20]
2318AA:  MOV             R0, R4
2318AC:  BLX             R2
2318AE:  CMP             R0, #0
2318B0:  BLT             loc_2318D2
2318B2:  ADD.W           R1, R4, R8
2318B6:  ADD.W           R0, R4, R9
2318BA:  LDR             R0, [R0]
2318BC:  LDR             R1, [R1]
2318BE:  CMP             R0, R1
2318C0:  ITTT LT
2318C2:  MOVWLT          R1, #0xB2C8
2318C6:  MOVLT           R2, #0
2318C8:  STRLT           R2, [R4,R1]
2318CA:  MOVW            R1, #0x9318
2318CE:  STR             R0, [R4,R1]
2318D0:  MOVS            R0, #0
2318D2:  POP.W           {R8-R10}
2318D6:  POP             {R4-R7,PC}
