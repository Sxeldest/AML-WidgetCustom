; =========================================================
; Game Engine Function: sub_8A600
; Address            : 0x8A600 - 0x8A9AA
; =========================================================

8A600:  PUSH            {R4-R7,LR}
8A602:  ADD             R7, SP, #0xC
8A604:  PUSH.W          {R8-R11}
8A608:  SUB             SP, SP, #4
8A60A:  VPUSH           {D8-D11}
8A60E:  SUB             SP, SP, #0x18
8A610:  VMOV.I32        Q5, #0
8A614:  MOV             R8, R0
8A616:  ADD.W           R9, R8, #0xC
8A61A:  MOV             R5, R1
8A61C:  ADR             R0, dword_8A9E0
8A61E:  MOVS            R1, #0x24 ; '$'
8A620:  VST1.32         {D10-D11}, [R9]!
8A624:  MOV             R11, R2
8A626:  MOVS            R6, #0
8A628:  ADD.W           R4, R8, #0x1C0
8A62C:  VST1.32         {D10-D11}, [R9]!
8A630:  VST1.32         {D10-D11}, [R9],R1
8A634:  VLD1.64         {D16-D17}, [R0@128]
8A638:  ADR             R0, dword_8A9F0
8A63A:  VLD1.64         {D18-D19}, [R0@128]
8A63E:  ADR             R0, dword_8AA00
8A640:  VST1.32         {D10-D11}, [R9]!
8A644:  ADD.W           R2, R9, #0xC0
8A648:  VLD1.64         {D8-D9}, [R0@128]
8A64C:  ADD.W           R0, R8, #0x188
8A650:  VST1.32         {D8-D9}, [R2]
8A654:  ADD.W           R2, R8, #0xB8
8A658:  VST1.32         {D10-D11}, [R2]!
8A65C:  ADD.W           R3, R2, #0x58 ; 'X'
8A660:  VLD1.32         {D20-D21}, [R3],R1
8A664:  ADD.W           R1, R2, #0xB0
8A668:  VST1.32         {D10-D11}, [R1]
8A66C:  MOV             R1, R9
8A66E:  VST1.32         {D10-D11}, [R1]!
8A672:  STR             R6, [R1]
8A674:  ADD.W           R1, R2, #0x48 ; 'H'
8A678:  VST1.32         {D10-D11}, [R2]!
8A67C:  VST1.32         {D10-D11}, [R2]!
8A680:  VST1.32         {D10-D11}, [R2]!
8A684:  VST1.32         {D10-D11}, [R2]!
8A688:  VST1.32         {D10-D11}, [R0]!
8A68C:  VST1.32         {D10-D11}, [R0]!
8A690:  STR             R6, [R2]
8A692:  MOVS            R2, #0xA4
8A694:  VST1.32         {D20-D21}, [R1],R2
8A698:  MOVS            R2, #0xBF800000
8A69E:  STR             R6, [R0]
8A6A0:  MOVS            R0, #4
8A6A2:  VST1.32         {D10-D11}, [R1]
8A6A6:  MOVS            R1, #0x18
8A6A8:  VST1.32         {D10-D11}, [R4],R0
8A6AC:  ADD.W           R0, R8, #0x1D0
8A6B0:  VST1.32         {D8-D9}, [R0]!
8A6B4:  VST1.32         {D8-D9}, [R0]!
8A6B8:  VST1.32         {D8-D9}, [R0]!
8A6BC:  VST1.32         {D8-D9}, [R0]!
8A6C0:  VST1.32         {D8-D9}, [R0]!
8A6C4:  STRD.W          R6, R2, [R8,#0x170]
8A6C8:  ADD.W           R2, R8, #0x130
8A6CC:  STRD.W          R6, R6, [R3]
8A6D0:  STRD.W          R6, R6, [R3,#8]
8A6D4:  ADD.W           R3, R8, #0x15C
8A6D8:  VST1.32         {D18-D19}, [R2]!
8A6DC:  VST1.32         {D16-D17}, [R3]!
8A6E0:  VST1.32         {D8-D9}, [R0],R1
8A6E4:  STR.W           R6, [R8,#0x74]
8A6E8:  STR.W           R6, [R8,#0x10C]
8A6EC:  STR.W           R6, [R8,#0x154]
8A6F0:  STRB.W          R6, [R8,#0x142]
8A6F4:  STR.W           R6, [R8,#0x158]
8A6F8:  STRD.W          R6, R6, [R8,#0x1AC]
8A6FC:  STR             R6, [R3]
8A6FE:  STRH            R6, [R2]
8A700:  BL              sub_AEA38
8A704:  ADD.W           R0, R8, #0x25C
8A708:  STR             R0, [SP,#0x58+var_58]
8A70A:  VST1.32         {D10-D11}, [R0]!
8A70E:  STR             R6, [R0]
8A710:  MOVW            R0, #0x18D0
8A714:  ADDS            R1, R5, R0
8A716:  ADD.W           R0, R8, #0x280
8A71A:  STR.W           R6, [R8,#0x270]
8A71E:  STR             R0, [SP,#0x58+var_48]
8A720:  BL              sub_8AA58
8A724:  ADD.W           R0, R8, #0x314
8A728:  STR             R0, [SP,#0x58+var_4C]
8A72A:  VST1.32         {D8-D9}, [R0]!
8A72E:  VST1.32         {D8-D9}, [R0]
8A732:  MOV             R0, R11; char *
8A734:  MOV.W           R1, #0xFFFFFFFF; size_t
8A738:  BLX             __strlen_chk
8A73C:  LDR             R1, =(dword_1ACF68 - 0x8A744)
8A73E:  ADDS            R5, R0, #1
8A740:  ADD             R1, PC; dword_1ACF68
8A742:  STR             R1, [SP,#0x58+var_44]
8A744:  LDR             R1, [R1]
8A746:  CMP             R1, #0
8A748:  ITTT NE
8A74A:  LDRNE.W         R0, [R1,#0x370]
8A74E:  ADDNE           R0, #1
8A750:  STRNE.W         R0, [R1,#0x370]
8A754:  LDR             R0, =(dword_1ACF70 - 0x8A75C)
8A756:  LDR             R2, =(off_117248 - 0x8A760)
8A758:  ADD             R0, PC; dword_1ACF70
8A75A:  STR             R0, [SP,#0x58+var_50]
8A75C:  ADD             R2, PC; off_117248
8A75E:  STR             R2, [SP,#0x58+var_54]
8A760:  LDR             R1, [R0]
8A762:  LDR             R2, [R2]; sub_9A720
8A764:  MOV             R0, R5
8A766:  BLX             R2; sub_9A720
8A768:  MOV             R1, R11; src
8A76A:  MOV             R2, R5; n
8A76C:  MOV             R6, R0
8A76E:  BLX             j_memcpy
8A772:  STR.W           R6, [R8]
8A776:  LDRB.W          R2, [R11]
8A77A:  LDR             R6, =(unk_52D88 - 0x8A780)
8A77C:  ADD             R6, PC; unk_52D88
8A77E:  CBZ             R2, loc_8A7BA
8A780:  ADD.W           R1, R11, #1
8A784:  MOV.W           R0, #0xFFFFFFFF
8A788:  B               loc_8A79A
8A78A:  UXTB            R5, R0
8A78C:  EORS            R3, R5
8A78E:  ADDS            R1, #1
8A790:  LDR.W           R3, [R6,R3,LSL#2]
8A794:  EOR.W           R0, R3, R0,LSR#8
8A798:  CBZ             R2, loc_8A7B6
8A79A:  MOV             R3, R2
8A79C:  LDRB            R2, [R1]
8A79E:  CMP             R3, #0x23 ; '#'
8A7A0:  IT EQ
8A7A2:  CMPEQ           R2, #0x23 ; '#'
8A7A4:  BNE             loc_8A78A
8A7A6:  LDRB            R2, [R1,#1]
8A7A8:  CMP             R2, #0x23 ; '#'
8A7AA:  MOV.W           R2, #0x23 ; '#'
8A7AE:  IT EQ
8A7B0:  MOVEQ.W         R0, #0xFFFFFFFF
8A7B4:  B               loc_8A78A
8A7B6:  MVNS            R1, R0
8A7B8:  B               loc_8A7BC
8A7BA:  MOVS            R1, #0
8A7BC:  LDRD.W          R0, R2, [R8,#0x1C4]
8A7C0:  STR.W           R1, [R8,#4]
8A7C4:  CMP             R0, R2
8A7C6:  BNE             loc_8A846
8A7C8:  CMP             R0, #0
8A7CA:  ADD.W           R10, R0, #1
8A7CE:  ITTE NE
8A7D0:  ADDNE.W         R1, R0, R0,LSR#31
8A7D4:  ADDNE.W         R1, R0, R1,ASR#1
8A7D8:  MOVEQ           R1, #8
8A7DA:  CMP             R1, R10
8A7DC:  IT GT
8A7DE:  MOVGT           R10, R1
8A7E0:  CMP             R0, R10
8A7E2:  BGE             loc_8A846
8A7E4:  LDR             R0, [SP,#0x58+var_44]
8A7E6:  LDR             R1, [R0]
8A7E8:  MOV.W           R0, R10,LSL#2
8A7EC:  CMP             R1, #0
8A7EE:  ITTT NE
8A7F0:  LDRNE.W         R2, [R1,#0x370]
8A7F4:  ADDNE           R2, #1
8A7F6:  STRNE.W         R2, [R1,#0x370]
8A7FA:  LDR             R1, [SP,#0x58+var_50]
8A7FC:  LDR             R2, [SP,#0x58+var_54]
8A7FE:  LDR             R1, [R1]
8A800:  LDR             R2, [R2]
8A802:  BLX             R2; sub_9A720
8A804:  LDR.W           R1, [R8,#0x1CC]; src
8A808:  MOV             R5, R0
8A80A:  CBZ             R1, loc_8A83E
8A80C:  LDR.W           R0, [R8,#0x1C4]
8A810:  LSLS            R2, R0, #2; n
8A812:  MOV             R0, R5; dest
8A814:  BLX             j_memcpy
8A818:  LDR.W           R0, [R8,#0x1CC]
8A81C:  CMP             R0, #0
8A81E:  ITTTT NE
8A820:  LDRNE           R1, [SP,#0x58+var_44]
8A822:  LDRNE           R1, [R1]
8A824:  CMPNE           R1, #0
8A826:  LDRNE.W         R2, [R1,#0x370]
8A82A:  ITT NE
8A82C:  SUBNE           R2, #1
8A82E:  STRNE.W         R2, [R1,#0x370]
8A832:  LDR             R2, =(off_11724C - 0x8A83A)
8A834:  LDR             R1, [SP,#0x58+var_50]
8A836:  ADD             R2, PC; off_11724C
8A838:  LDR             R1, [R1]
8A83A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8A83C:  BLX             R2; j_opus_decoder_destroy_0
8A83E:  LDR.W           R0, [R8,#0x1C4]
8A842:  STRD.W          R10, R5, [R8,#0x1C8]
8A846:  LDR.W           R2, [R8,#0x1CC]
8A84A:  VMOV.I32        Q8, #0
8A84E:  LDR.W           R1, [R8,#4]
8A852:  STR.W           R1, [R2,R0,LSL#2]
8A856:  ADD.W           R0, R8, #8
8A85A:  MOVS            R1, #0xC
8A85C:  VST1.32         {D16-D17}, [R0]!
8A860:  VST1.32         {D16-D17}, [R0]!
8A864:  VST1.32         {D16-D17}, [R0],R1
8A868:  MOV.W           R1, #0x190
8A86C:  VST1.32         {D16-D17}, [R0],R1
8A870:  LDR             R1, [R0]
8A872:  ADDS            R1, #1
8A874:  STR             R1, [R0]
8A876:  MOV             R0, R11; char *
8A878:  MOV.W           R1, #0xFFFFFFFF; size_t
8A87C:  BLX             __strlen_chk
8A880:  LDR.W           R1, [R8,#0x1C4]
8A884:  ADDS            R0, #1
8A886:  LDR.W           R2, [R8,#0x1CC]
8A88A:  LDR             R3, =(aMove - 0x8A898); "#MOVE" ...
8A88C:  STR.W           R0, [R8,#0x44]
8A890:  ADD.W           R0, R2, R1,LSL#2
8A894:  ADD             R3, PC; "#MOVE"
8A896:  LDR.W           R1, [R0,#-4]
8A89A:  ADDS            R0, R3, #1
8A89C:  MOVS            R3, #0x23 ; '#'
8A89E:  MVNS            R1, R1
8A8A0:  MOV             R2, R1
8A8A2:  B               loc_8A8B4
8A8A4:  UXTB            R4, R2
8A8A6:  EORS            R5, R4
8A8A8:  ADDS            R0, #1
8A8AA:  LDR.W           R5, [R6,R5,LSL#2]
8A8AE:  EOR.W           R2, R5, R2,LSR#8
8A8B2:  CBZ             R3, loc_8A8CE
8A8B4:  MOV             R5, R3
8A8B6:  LDRB            R3, [R0]; "MOVE"
8A8B8:  CMP             R5, #0x23 ; '#'
8A8BA:  IT EQ
8A8BC:  CMPEQ           R3, #0x23 ; '#'
8A8BE:  BNE             loc_8A8A4
8A8C0:  LDRB            R3, [R0,#1]; "OVE"
8A8C2:  CMP             R3, #0x23 ; '#'
8A8C4:  MOV.W           R3, #0x23 ; '#'
8A8C8:  IT EQ
8A8CA:  MOVEQ           R2, R1
8A8CC:  B               loc_8A8A4
8A8CE:  LDR             R0, [SP,#0x58+var_44]
8A8D0:  MOVW            R3, #0x19D0
8A8D4:  VMOV.I32        Q8, #0
8A8D8:  MOVS            R6, #0xF
8A8DA:  LDR             R1, [R0]
8A8DC:  ADDS            R0, R1, R3
8A8DE:  LDR             R3, [R1,R3]
8A8E0:  MVNS            R1, R2
8A8E2:  CMP             R3, R1
8A8E4:  IT EQ
8A8E6:  STREQ           R1, [R0,#4]
8A8E8:  LDR             R2, [R0,#0x2C]
8A8EA:  ADD.W           R3, R8, #0x70 ; 'p'
8A8EE:  CMP             R2, R1
8A8F0:  ITT EQ
8A8F2:  MOVEQ           R2, #1
8A8F4:  STRBEQ.W        R2, [R0,#0x30]
8A8F8:  MOVS            R2, #0
8A8FA:  ADR             R0, dword_8AA10
8A8FC:  VLD1.64         {D18-D19}, [R0@128]
8A900:  ADR             R0, dword_8AA20
8A902:  MOVT            R2, #0xFFFF
8A906:  VLD1.64         {D20-D21}, [R0@128]
8A90A:  ADR             R0, dword_8AA30
8A90C:  STR.W           R2, [R8,#0x84]
8A910:  MOVS            R2, #0xFF
8A912:  VST1.32         {D16-D17}, [R3],R6
8A916:  VLD1.64         {D22-D23}, [R0@128]
8A91A:  MOVS            R0, #0
8A91C:  STRB.W          R2, [R8,#0x83]
8A920:  MOV             R2, #0x7F7FFFFF
8A928:  STR             R0, [R3]
8A92A:  MOVS            R3, #0x3C ; '<'
8A92C:  STRD.W          R1, R0, [R8,#0x48]
8A930:  MOV.W           R1, #0xFFFFFFFF
8A934:  VST1.32         {D22-D23}, [R9],R3
8A938:  STRD.W          R2, R2, [R8,#0xBC]
8A93C:  STR.W           R2, [R8,#0xC4]
8A940:  MOV.W           R2, #0x3F800000
8A944:  LDR             R3, [SP,#0x58+var_4C]
8A946:  STRD.W          R2, R1, [R8,#0x274]
8A94A:  LDR             R2, [SP,#0x58+var_48]
8A94C:  STR.W           R2, [R8,#0x27C]
8A950:  ADD.W           R2, R3, #0x10
8A954:  STRH.W          R1, [R8,#0x88]
8A958:  STRD.W          R0, R1, [R8,#0x8C]
8A95C:  STR.W           R1, [R8,#0x94]
8A960:  STRD.W          R1, R0, [R8,#0x230]
8A964:  LDR.W           R1, [R8]
8A968:  STR.W           R1, [R8,#0x2AC]
8A96C:  ADD.W           R1, R8, #0x2F8
8A970:  VST1.32         {D8-D9}, [R2]
8A974:  ADD.W           R2, R8, #0x324
8A978:  VST1.32         {D16-D17}, [R1]!
8A97C:  VST1.32         {D18-D19}, [R9]!
8A980:  VLD1.32         {D16-D17}, [R2]
8A984:  STRD.W          R0, R0, [R8,#0x50]
8A988:  STRB.W          R0, [R8,#0x98]
8A98C:  VST1.32         {D20-D21}, [R9]
8A990:  STRD.W          R0, R0, [R8,#0x30C]
8A994:  STR             R0, [R1]
8A996:  MOV             R0, R8
8A998:  VST1.32         {D16-D17}, [R3]
8A99C:  ADD             SP, SP, #0x18
8A99E:  VPOP            {D8-D11}
8A9A2:  ADD             SP, SP, #4
8A9A4:  POP.W           {R8-R11}
8A9A8:  POP             {R4-R7,PC}
