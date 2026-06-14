; =========================================================
; Game Engine Function: _Z34RpBuildMeshGenerateDefaultTriStripP11RpBuildMeshPv
; Address            : 0x218710 - 0x219318
; =========================================================

218710:  MOVS            R1, #0
218712:  MOVS            R2, #1
218714:  B               loc_218718
218716:  ALIGN 4
218718:  PUSH            {R4-R7,LR}
21871A:  ADD             R7, SP, #0x14+var_8
21871C:  PUSH.W          {R8-R11}
218720:  SUB             SP, SP, #4
218722:  VPUSH           {D8-D9}
218726:  SUB             SP, SP, #0xE0
218728:  MOV             R9, R0
21872A:  LDR.W           R0, =(RwEngineInstance_ptr - 0x218736)
21872E:  STR             R2, [SP,#0x118+var_C4]
218730:  MOV             R11, R1
218732:  ADD             R0, PC; RwEngineInstance_ptr
218734:  LDR.W           R1, [R9,#4]
218738:  LDR             R0, [R0]; RwEngineInstance
21873A:  LDR             R0, [R0]
21873C:  LDR.W           R2, [R0,#0x12C]
218740:  LSLS            R0, R1, #2
218742:  BLX             R2
218744:  CBZ             R0, loc_218768
218746:  LDR.W           R1, [R9,#4]
21874A:  CBZ             R1, loc_21876E
21874C:  MOVS            R3, #0
21874E:  MOVS            R2, #0
218750:  LDR.W           R1, [R9,#8]
218754:  ADD             R1, R3
218756:  STR.W           R1, [R0,R2,LSL#2]
21875A:  ADDS            R3, #0xC
21875C:  LDR.W           R1, [R9,#4]
218760:  ADDS            R2, #1
218762:  CMP             R2, R1
218764:  BCC             loc_218750
218766:  B               loc_218770
218768:  MOVS            R0, #0
21876A:  B.W             loc_21930A
21876E:  MOVS            R1, #0; size_t
218770:  LDR.W           R3, =(sub_21AE78+1 - 0x21877C)
218774:  MOVS            R2, #4; size_t
218776:  MOV             R4, R0
218778:  ADD             R3, PC; sub_21AE78 ; int (*)(const void *, const void *)
21877A:  BLX             qsort
21877E:  LDR.W           R0, [R9,#4]
218782:  CMP             R0, #2
218784:  BCC             loc_2187A6
218786:  LDR             R1, [R4]
218788:  MOVS            R5, #1
21878A:  MOV             R6, R4
21878C:  LDR             R2, [R1,#8]
21878E:  MOVS            R1, #1
218790:  LDR.W           R3, [R6,R1,LSL#2]
218794:  ADDS            R1, #1
218796:  LDR             R3, [R3,#8]
218798:  CMP             R3, R2
21879A:  IT NE
21879C:  ADDNE           R5, #1
21879E:  CMP             R1, R0
2187A0:  MOV             R2, R3
2187A2:  BCC             loc_218790
2187A4:  B               loc_2187AA
2187A6:  MOVS            R5, #1
2187A8:  MOV             R6, R4
2187AA:  LDR.W           R0, =(RwEngineInstance_ptr - 0x2187B4)
2187AE:  STR             R6, [SP,#0x118+var_110]
2187B0:  ADD             R0, PC; RwEngineInstance_ptr
2187B2:  LDR             R4, [R0]; RwEngineInstance
2187B4:  LDR             R0, [R4]
2187B6:  LDR.W           R1, [R0,#0x12C]
2187BA:  LSLS            R0, R5, #2
2187BC:  BLX             R1
2187BE:  MOV             R10, R0
2187C0:  LDR             R0, [R4]
2187C2:  LDR.W           R1, [R0,#0x12C]
2187C6:  LSLS            R0, R5, #4
2187C8:  BLX             R1
2187CA:  LDR             R6, [SP,#0x118+var_110]
2187CC:  MOV.W           R12, #0
2187D0:  MOV.W           R8, #1
2187D4:  LDR             R1, [R6]
2187D6:  LDR             R2, [R1,#8]
2187D8:  MOVS            R1, #0
2187DA:  STR             R1, [R0]
2187DC:  STR             R1, [R0,#4]
2187DE:  MOV             R1, R0
2187E0:  STR             R1, [SP,#0x118+var_C0]
2187E2:  STR             R2, [R0,#8]
2187E4:  LDR.W           R0, [R9,#4]
2187E8:  CMP             R0, #2
2187EA:  BCC             loc_218830
2187EC:  MOVS            R1, #0
2187EE:  B               loc_218814
2187F0:  LDR             R2, [SP,#0x118+var_C0]
2187F2:  MOV.W           R0, R8,LSL#4
2187F6:  STR.W           R12, [R2,R0]
2187FA:  ADD.W           R0, R2, R8,LSL#4
2187FE:  ADD.W           R8, R8, #1
218802:  LDR.W           R2, [R0,#-0xC]
218806:  STRD.W          R1, R3, [R0,#4]
21880A:  SUBS            R2, R1, R2
21880C:  STR.W           R2, [R0,#-0xC]
218810:  LDR.W           R0, [R9,#4]
218814:  SUBS            R2, R0, #1
218816:  CMP             R1, R2
218818:  BCS             loc_218830
21881A:  ADD.W           R5, R6, R1,LSL#2
21881E:  LDR.W           R3, [R6,R1,LSL#2]
218822:  ADDS            R1, #1
218824:  LDR             R5, [R5,#4]
218826:  LDR             R4, [R3,#8]
218828:  LDR             R3, [R5,#8]
21882A:  CMP             R4, R3
21882C:  BEQ             loc_218816
21882E:  B               loc_2187F0
218830:  LDR             R1, [SP,#0x118+var_C0]
218832:  ADD.W           R1, R1, R8,LSL#4
218836:  LDR.W           R2, [R1,#-0xC]
21883A:  SUBS            R0, R0, R2
21883C:  STR.W           R0, [R1,#-0xC]
218840:  LDR.W           R0, [R9,#4]
218844:  MOV             R1, #0xCCCCCCCD
21884C:  MOVS            R2, #4; int
21884E:  UMULL.W         R0, R1, R0, R1
218852:  MOVS            R0, #5
218854:  ADD.W           R1, R0, R1,LSR#3; int
218858:  MOVS            R0, #0x10; int
21885A:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
21885E:  LDR.W           R1, =(meshModule_ptr - 0x218872)
218862:  MOV.W           R9, #0
218866:  LDR.W           R2, =(RwEngineInstance_ptr - 0x218874)
21886A:  CMP.W           R8, #0
21886E:  ADD             R1, PC; meshModule_ptr
218870:  ADD             R2, PC; RwEngineInstance_ptr
218872:  LDR             R1, [R1]; meshModule
218874:  LDR             R2, [R2]; RwEngineInstance
218876:  LDR             R1, [R1]
218878:  LDR             R3, [R2]
21887A:  ADD             R1, R3
21887C:  STR             R0, [R1,#4]
21887E:  LDR             R0, [R2]
218880:  STR.W           R9, [SP,#0x118+var_5C]
218884:  STR.W           R10, [SP,#0x118+var_E8]
218888:  BEQ.W           loc_21920E
21888C:  CMP.W           R11, #0
218890:  MOV.W           R1, #0
218894:  IT EQ
218896:  MOVEQ           R1, #3
218898:  LDR.W           R2, =(meshModule_ptr - 0x2188AE)
21889C:  STR             R1, [SP,#0x118+var_EC]
21889E:  ADD             R1, SP, #0x118+var_50
2188A0:  ORR.W           R1, R1, #4
2188A4:  STR             R1, [SP,#0x118+var_F0]
2188A6:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2188B6)
2188AA:  ADD             R2, PC; meshModule_ptr
2188AC:  VMOV.I32        Q4, #0
2188B0:  LDR             R5, [SP,#0x118+var_110]
2188B2:  ADD             R1, PC; RwEngineInstance_ptr
2188B4:  MOV.W           R10, #0
2188B8:  MOV.W           R9, #0
2188BC:  STR.W           R8, [SP,#0x118+var_E4]
2188C0:  LDR             R1, [R1]; RwEngineInstance
2188C2:  STR             R1, [SP,#0x118+var_C8]
2188C4:  LDR             R1, [R2]; meshModule
2188C6:  STR             R1, [SP,#0x118+var_CC]
2188C8:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2188D4)
2188CC:  LDR.W           R2, =(meshModule_ptr - 0x2188D6)
2188D0:  ADD             R1, PC; RwEngineInstance_ptr
2188D2:  ADD             R2, PC; meshModule_ptr
2188D4:  LDR             R1, [R1]; RwEngineInstance
2188D6:  STR             R1, [SP,#0x118+var_D0]
2188D8:  LDR.W           R1, =(meshModule_ptr - 0x2188E0)
2188DC:  ADD             R1, PC; meshModule_ptr
2188DE:  LDR             R1, [R1]; meshModule
2188E0:  STR             R1, [SP,#0x118+var_D4]
2188E2:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2188EA)
2188E6:  ADD             R1, PC; RwEngineInstance_ptr
2188E8:  LDR             R1, [R1]; RwEngineInstance
2188EA:  STR             R1, [SP,#0x118+var_D8]
2188EC:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2188F4)
2188F0:  ADD             R1, PC; RwEngineInstance_ptr
2188F2:  LDR             R1, [R1]; RwEngineInstance
2188F4:  STR             R1, [SP,#0x118+var_DC]
2188F6:  LDR.W           R1, =(RwEngineInstance_ptr - 0x2188FE)
2188FA:  ADD             R1, PC; RwEngineInstance_ptr
2188FC:  LDR             R1, [R1]; RwEngineInstance
2188FE:  STR             R1, [SP,#0x118+var_F4]
218900:  LDR.W           R1, =(RwEngineInstance_ptr - 0x218908)
218904:  ADD             R1, PC; RwEngineInstance_ptr
218906:  LDR             R1, [R1]; RwEngineInstance
218908:  STR             R1, [SP,#0x118+var_F8]
21890A:  LDR.W           R1, =(meshModule_ptr - 0x218912)
21890E:  ADD             R1, PC; meshModule_ptr
218910:  LDR.W           R11, [R1]; meshModule
218914:  LDR.W           R1, =(RwEngineInstance_ptr - 0x218920)
218918:  STR.W           R11, [SP,#0x118+var_FC]
21891C:  ADD             R1, PC; RwEngineInstance_ptr
21891E:  LDR             R1, [R1]; RwEngineInstance
218920:  STR             R1, [SP,#0x118+var_E0]
218922:  LDR.W           R1, =(RwEngineInstance_ptr - 0x21892A)
218926:  ADD             R1, PC; RwEngineInstance_ptr
218928:  LDR             R6, [R1]; RwEngineInstance
21892A:  LDR.W           R1, =(RwEngineInstance_ptr - 0x218934)
21892E:  STR             R6, [SP,#0x118+var_B4]
218930:  ADD             R1, PC; RwEngineInstance_ptr
218932:  LDR             R1, [R1]; RwEngineInstance
218934:  STR             R1, [SP,#0x118+var_100]
218936:  LDR             R1, [R2]; meshModule
218938:  STR             R1, [SP,#0x118+var_104]
21893A:  LDR.W           R1, =(RwEngineInstance_ptr - 0x218946)
21893E:  LDR.W           R2, =(meshModule_ptr - 0x218948)
218942:  ADD             R1, PC; RwEngineInstance_ptr
218944:  ADD             R2, PC; meshModule_ptr
218946:  LDR             R1, [R1]; RwEngineInstance
218948:  STR             R1, [SP,#0x118+var_108]
21894A:  LDR             R1, [R2]; meshModule
21894C:  STR             R1, [SP,#0x118+var_10C]
21894E:  LDR.W           R1, =(RwEngineInstance_ptr - 0x21895A)
218952:  LDR.W           R2, =(meshModule_ptr - 0x21895C)
218956:  ADD             R1, PC; RwEngineInstance_ptr
218958:  ADD             R2, PC; meshModule_ptr
21895A:  LDR             R1, [R1]; RwEngineInstance
21895C:  STR             R1, [SP,#0x118+var_98]
21895E:  LDR             R1, [R2]; meshModule
218960:  MOVS            R2, #0
218962:  STR             R1, [SP,#0x118+var_9C]
218964:  MOVS            R1, #0
218966:  STR             R1, [SP,#0x118+var_74]
218968:  LDR             R1, [SP,#0x118+var_C0]
21896A:  STR             R2, [SP,#0x118+var_B0]
21896C:  ADD.W           R8, R1, R2,LSL#4
218970:  LDR.W           R2, [R0,#0x12C]
218974:  MOV             R4, R8
218976:  LDR.W           R1, [R4,#4]!
21897A:  ADD.W           R0, R1, R1,LSL#1
21897E:  LSLS            R0, R0, #2
218980:  BLX             R2
218982:  LDR             R1, [R4]
218984:  STR             R0, [SP,#0x118+var_60]
218986:  CMP             R1, #0
218988:  STR.W           R8, [SP,#0x118+var_B8]
21898C:  BEQ             loc_2189AE
21898E:  MOVS            R3, #0
218990:  MOV             R1, R0
218992:  LDR.W           R2, [R5],#4
218996:  ADDS            R3, #1
218998:  VLDR            D16, [R2]
21899C:  LDR             R2, [R2,#8]
21899E:  STR             R2, [R1,#8]
2189A0:  VSTR            D16, [R1]
2189A4:  ADDS            R1, #0xC
2189A6:  LDR             R0, [R4]
2189A8:  CMP             R3, R0
2189AA:  BCC             loc_218992
2189AC:  B               loc_2189B0
2189AE:  MOVS            R0, #0
2189B0:  ADD             R4, SP, #0x118+var_50
2189B2:  STR             R0, [SP,#0x118+var_70]
2189B4:  STR             R5, [SP,#0x118+var_AC]
2189B6:  ADD             R1, SP, #0x118+var_58
2189B8:  STR.W           R10, [SP,#0x118+var_3C]
2189BC:  ADD             R2, SP, #0x118+var_3C
2189BE:  VST1.64         {D8-D9}, [R4]
2189C2:  STRD.W          R10, R10, [SP,#0x118+var_58]
2189C6:  LDR             R3, [SP,#0x118+var_60]
2189C8:  BL              sub_21C010
2189CC:  LDR             R1, [SP,#0x118+var_70]
2189CE:  CBZ             R1, loc_2189FC
2189D0:  MOV             R5, R0
2189D2:  LDR             R2, [R5]
2189D4:  LDRB.W          R3, [R2,#0x20]
2189D8:  LDR.W           R3, [R4,R3,LSL#2]
2189DC:  STR             R3, [R2,#0x10]
2189DE:  LDR             R2, [R5]
2189E0:  LDR             R3, [R2,#0x10]
2189E2:  CMP             R3, #0
2189E4:  ITT NE
2189E6:  STRNE           R2, [R3,#0x14]
2189E8:  LDRNE           R2, [R5]
2189EA:  ADDS            R5, #4
2189EC:  SUBS            R1, #1
2189EE:  LDRB.W          R3, [R2,#0x20]
2189F2:  STR.W           R2, [R4,R3,LSL#2]
2189F6:  STR.W           R10, [R2,#0x14]
2189FA:  BNE             loc_2189D2
2189FC:  LDR             R5, [SP,#0x118+var_C8]
2189FE:  LDR.W           R8, [SP,#0x118+var_CC]
218A02:  STR             R0, [SP,#0x118+var_8C]
218A04:  LDR             R0, [R5]
218A06:  LDR.W           R1, [R8]
218A0A:  LDR.W           R2, [R0,#0x13C]
218A0E:  ADD             R0, R1
218A10:  LDR             R0, [R0,#4]
218A12:  BLX             R2
218A14:  LDR             R1, [SP,#0x118+var_70]
218A16:  MOV             R11, R0
218A18:  MOVS            R0, #2
218A1A:  ADD.W           R4, R0, R1,LSL#1
218A1E:  STRD.W          R10, R4, [R11,#4]
218A22:  MOV.W           R10, R4,LSL#2
218A26:  LDR             R0, [R5]
218A28:  LDR.W           R1, [R0,#0x12C]
218A2C:  MOV             R0, R10
218A2E:  BLX             R1
218A30:  STR.W           R11, [SP,#0x118+var_80]
218A34:  STR.W           R0, [R11]
218A38:  LDR.W           R0, [R8]
218A3C:  LDR             R1, [R5]
218A3E:  ADD             R0, R1
218A40:  LDR.W           R1, [R1,#0x13C]
218A44:  LDR             R0, [R0,#4]
218A46:  BLX             R1
218A48:  MOV             R6, R0
218A4A:  MOVS            R0, #0
218A4C:  STRD.W          R0, R4, [R6,#4]
218A50:  LDR             R0, [R5]
218A52:  LDR.W           R1, [R0,#0x12C]
218A56:  MOV             R0, R10
218A58:  BLX             R1
218A5A:  STR             R6, [SP,#0x118+var_A0]
218A5C:  STR             R0, [R6]
218A5E:  LDR             R0, [SP,#0x118+var_70]
218A60:  LDR             R6, [SP,#0x118+var_B4]
218A62:  CMP             R0, #0
218A64:  BEQ.W           loc_21908E
218A68:  MOVS            R0, #0
218A6A:  MOVS            R1, #0
218A6C:  MOV.W           R11, #0
218A70:  STR             R0, [SP,#0x118+var_90]
218A72:  MOV             R10, R6
218A74:  LDR             R6, [SP,#0x118+var_5C]
218A76:  LDR             R5, [SP,#0x118+var_50]
218A78:  ADD.W           R0, R11, #1
218A7C:  LDR.W           R8, [SP,#0x118+var_8C]
218A80:  STR             R1, [SP,#0x118+var_88]
218A82:  STR             R0, [SP,#0x118+var_68]
218A84:  CBZ             R5, loc_218AF8
218A86:  LDR.W           R11, [SP,#0x118+var_98]
218A8A:  LDR             R1, [SP,#0x118+var_9C]
218A8C:  LDR             R4, [R5]
218A8E:  LDR.W           R0, [R11]
218A92:  LDR             R1, [R1]
218A94:  LDR.W           R2, [R0,#0x13C]
218A98:  ADD             R0, R1
218A9A:  LDR             R0, [R0,#4]
218A9C:  BLX             R2
218A9E:  MOV             R6, R0
218AA0:  MOVS            R0, #3
218AA2:  STRD.W          R0, R0, [R6,#4]
218AA6:  LDR             R0, [SP,#0x118+var_74]
218AA8:  STR             R0, [R6,#0xC]
218AAA:  LDR.W           R0, [R11]
218AAE:  LDR.W           R1, [R0,#0x12C]
218AB2:  MOVS            R0, #0xC
218AB4:  BLX             R1
218AB6:  STR             R0, [R6]
218AB8:  ADD.W           R1, R4, R4,LSL#1
218ABC:  LDR             R3, [SP,#0x118+var_60]
218ABE:  LDRH.W          R2, [R3,R1,LSL#2]
218AC2:  ADD.W           R1, R3, R1,LSL#2
218AC6:  STRH            R2, [R0]
218AC8:  LDR             R0, [R6]
218ACA:  LDRH            R2, [R1,#2]
218ACC:  STRH            R2, [R0,#2]
218ACE:  LDR             R0, [R6]
218AD0:  LDRH            R1, [R1,#4]
218AD2:  STRH            R1, [R0,#4]
218AD4:  MOVS            R1, #1
218AD6:  LDR             R0, [R5,#0x10]
218AD8:  STRD.W          R1, R1, [R5,#0x18]
218ADC:  CMP             R0, #0
218ADE:  MOV             R5, R0
218AE0:  ITT NE
218AE2:  MOVNE           R1, #0
218AE4:  STRNE           R1, [R0,#0x14]
218AE6:  LDR             R3, [SP,#0x118+var_68]
218AE8:  LDR             R2, [SP,#0x118+var_70]
218AEA:  ADDS            R1, R3, #1
218AEC:  STR             R1, [SP,#0x118+var_68]
218AEE:  CMP             R3, R2
218AF0:  MOV             R1, R6
218AF2:  STR             R1, [SP,#0x118+var_74]
218AF4:  BCC             loc_218A84
218AF6:  B               loc_219088
218AF8:  MOVS            R0, #0
218AFA:  STR             R6, [SP,#0x118+var_5C]
218AFC:  STR             R0, [SP,#0x118+var_50]
218AFE:  LDR             R0, [SP,#0x118+var_F0]
218B00:  MOV             R10, R0
218B02:  LDR.W           R6, [R10],#4
218B06:  CMP             R6, #0
218B08:  BEQ             loc_218B02
218B0A:  LDR             R0, [R6,#0xC]
218B0C:  LDR.W           LR, [R0,#4]
218B10:  CMP.W           LR, #0
218B14:  BEQ             loc_218B24
218B16:  LDR.W           R1, [LR,#0x18]
218B1A:  MOVS            R2, #0
218B1C:  CMP             R1, #0
218B1E:  IT EQ
218B20:  MOVEQ           R2, #1
218B22:  B               loc_218B26
218B24:  MOVS            R2, #0
218B26:  LDR.W           R12, [R0,#8]
218B2A:  CMP.W           R12, #0
218B2E:  BEQ             loc_218B40
218B30:  LDR.W           R0, [R12,#0x18]
218B34:  CMP             R0, #0
218B36:  MOV.W           R0, #0
218B3A:  IT EQ
218B3C:  MOVEQ           R0, #1
218B3E:  B               loc_218B42
218B40:  MOVS            R0, #0
218B42:  ADD             R0, R2
218B44:  STR.W           R9, [SP,#0x118+var_BC]
218B48:  CMP             R0, #2
218B4A:  BCC             loc_218B80
218B4C:  LDR             R0, [R6,#8]
218B4E:  LDR             R1, [R0,#4]
218B50:  CBZ             R1, loc_218B5E
218B52:  LDR             R1, [R1,#0x18]
218B54:  MOVS            R2, #0
218B56:  CMP             R1, #0
218B58:  IT EQ
218B5A:  MOVEQ           R2, #1
218B5C:  B               loc_218B60
218B5E:  MOVS            R2, #0
218B60:  LDR             R0, [R0,#8]
218B62:  CBZ             R0, loc_218B72
218B64:  LDR             R0, [R0,#0x18]
218B66:  CMP             R0, #0
218B68:  MOV.W           R0, #0
218B6C:  IT EQ
218B6E:  MOVEQ           R0, #1
218B70:  B               loc_218B74
218B72:  MOVS            R0, #0
218B74:  ADD             R0, R2
218B76:  CMP             R0, #1
218B78:  BLS             loc_218B80
218B7A:  MOVS            R4, #1
218B7C:  LDR             R6, [SP,#0x118+var_70]
218B7E:  B               loc_218D6C
218B80:  LDR             R0, [R6,#4]
218B82:  LDR             R5, [R0,#4]
218B84:  CBZ             R5, loc_218B94
218B86:  LDR             R1, [R5,#0x18]
218B88:  CMP             R1, #0
218B8A:  MOV.W           R1, #0
218B8E:  IT EQ
218B90:  MOVEQ           R1, #1
218B92:  B               loc_218B96
218B94:  MOVS            R1, #0
218B96:  LDR             R3, [R0,#8]
218B98:  CBZ             R3, loc_218BA8
218B9A:  LDR             R0, [R3,#0x18]
218B9C:  CMP             R0, #0
218B9E:  MOV.W           R0, #0
218BA2:  IT EQ
218BA4:  MOVEQ           R0, #1
218BA6:  B               loc_218BAA
218BA8:  MOVS            R0, #0
218BAA:  ADD             R0, R1
218BAC:  CMP             R0, #2
218BAE:  BCC             loc_218BF0
218BB0:  CMP.W           LR, #0
218BB4:  BEQ             loc_218BDA
218BB6:  LDR.W           R0, [LR,#0x18]
218BBA:  CMP             R0, #0
218BBC:  MOV.W           R0, #0
218BC0:  IT EQ
218BC2:  MOVEQ           R0, #1
218BC4:  CMP.W           R12, #0
218BC8:  BEQ             loc_218BE2
218BCA:  LDR.W           R1, [R12,#0x18]
218BCE:  CMP             R1, #0
218BD0:  MOV.W           R1, #0
218BD4:  IT EQ
218BD6:  MOVEQ           R1, #1
218BD8:  B               loc_218BE4
218BDA:  MOVS            R0, #0
218BDC:  CMP.W           R12, #0
218BE0:  BNE             loc_218BCA
218BE2:  MOVS            R1, #0
218BE4:  ADD             R0, R1
218BE6:  CMP             R0, #1
218BE8:  BLS             loc_218BF0
218BEA:  MOVS            R4, #2
218BEC:  LDR             R6, [SP,#0x118+var_70]
218BEE:  B               loc_218D6C
218BF0:  LDR             R0, [R6,#8]
218BF2:  LDR             R6, [R0,#4]
218BF4:  CBZ             R6, loc_218C02
218BF6:  LDR             R1, [R6,#0x18]
218BF8:  MOVS            R4, #0
218BFA:  CMP             R1, #0
218BFC:  IT EQ
218BFE:  MOVEQ           R4, #1
218C00:  B               loc_218C04
218C02:  MOVS            R4, #0
218C04:  LDR             R2, [R0,#8]
218C06:  CBZ             R2, loc_218C16
218C08:  LDR             R0, [R2,#0x18]
218C0A:  CMP             R0, #0
218C0C:  MOV.W           R0, #0
218C10:  IT EQ
218C12:  MOVEQ           R0, #1
218C14:  B               loc_218C18
218C16:  MOVS            R0, #0
218C18:  ADD             R0, R4
218C1A:  CMP             R0, #2
218C1C:  BCC             loc_218C50
218C1E:  CBZ             R5, loc_218C3C
218C20:  LDR             R0, [R5,#0x18]
218C22:  CMP             R0, #0
218C24:  MOV.W           R0, #0
218C28:  IT EQ
218C2A:  MOVEQ           R0, #1
218C2C:  CBZ             R3, loc_218C42
218C2E:  LDR             R1, [R3,#0x18]
218C30:  CMP             R1, #0
218C32:  MOV.W           R1, #0
218C36:  IT EQ
218C38:  MOVEQ           R1, #1
218C3A:  B               loc_218C44
218C3C:  MOVS            R0, #0
218C3E:  CMP             R3, #0
218C40:  BNE             loc_218C2E
218C42:  MOVS            R1, #0
218C44:  ADD             R0, R1
218C46:  CMP             R0, #1
218C48:  BLS             loc_218C50
218C4A:  MOVS            R4, #0
218C4C:  LDR             R6, [SP,#0x118+var_70]
218C4E:  B               loc_218D6C
218C50:  CBZ             R5, loc_218C78
218C52:  LDR             R0, [R5,#0x18]
218C54:  MOVS            R4, #0
218C56:  CMP             R0, #0
218C58:  IT EQ
218C5A:  MOVEQ           R4, #1
218C5C:  CBZ             R3, loc_218C7E
218C5E:  LDR             R0, [R3,#0x18]
218C60:  MOVS            R1, #0
218C62:  CMP             R0, #0
218C64:  IT EQ
218C66:  MOVEQ           R1, #1
218C68:  CBZ             R6, loc_218C84
218C6A:  LDR             R0, [R6,#0x18]
218C6C:  CMP             R0, #0
218C6E:  MOV.W           R0, #0
218C72:  IT EQ
218C74:  MOVEQ           R0, #1
218C76:  B               loc_218C86
218C78:  MOVS            R4, #0
218C7A:  CMP             R3, #0
218C7C:  BNE             loc_218C5E
218C7E:  MOVS            R1, #0
218C80:  CMP             R6, #0
218C82:  BNE             loc_218C6A
218C84:  MOVS            R0, #0
218C86:  ADD             R1, R4
218C88:  CBZ             R2, loc_218C98
218C8A:  LDR             R4, [R2,#0x18]
218C8C:  CMP             R4, #0
218C8E:  MOV.W           R4, #0
218C92:  IT EQ
218C94:  MOVEQ           R4, #1
218C96:  B               loc_218C9A
218C98:  MOVS            R4, #0
218C9A:  ADD             R0, R4
218C9C:  CMP             R1, R0
218C9E:  BLS             loc_218CCE
218CA0:  CBZ             R5, loc_218CFC
218CA2:  LDR             R0, [R5,#0x18]
218CA4:  MOVS            R2, #0
218CA6:  CMP             R0, #0
218CA8:  IT EQ
218CAA:  MOVEQ           R2, #1
218CAC:  CBZ             R3, loc_218D02
218CAE:  LDR             R0, [R3,#0x18]
218CB0:  MOVS            R1, #0
218CB2:  CMP             R0, #0
218CB4:  IT EQ
218CB6:  MOVEQ           R1, #1
218CB8:  CMP.W           LR, #0
218CBC:  BEQ             loc_218D0A
218CBE:  LDR.W           R0, [LR,#0x18]
218CC2:  CMP             R0, #0
218CC4:  MOV.W           R0, #0
218CC8:  IT EQ
218CCA:  MOVEQ           R0, #1
218CCC:  B               loc_218D0C
218CCE:  CBZ             R6, loc_218D24
218CD0:  LDR             R0, [R6,#0x18]
218CD2:  MOVS            R3, #0
218CD4:  CMP             R0, #0
218CD6:  IT EQ
218CD8:  MOVEQ           R3, #1
218CDA:  CBZ             R2, loc_218D2A
218CDC:  LDR             R0, [R2,#0x18]
218CDE:  MOVS            R1, #0
218CE0:  CMP             R0, #0
218CE2:  IT EQ
218CE4:  MOVEQ           R1, #1
218CE6:  CMP.W           LR, #0
218CEA:  BEQ             loc_218D32
218CEC:  LDR.W           R0, [LR,#0x18]
218CF0:  CMP             R0, #0
218CF2:  MOV.W           R0, #0
218CF6:  IT EQ
218CF8:  MOVEQ           R0, #1
218CFA:  B               loc_218D34
218CFC:  MOVS            R2, #0
218CFE:  CMP             R3, #0
218D00:  BNE             loc_218CAE
218D02:  MOVS            R1, #0
218D04:  CMP.W           LR, #0
218D08:  BNE             loc_218CBE
218D0A:  MOVS            R0, #0
218D0C:  ADD             R1, R2
218D0E:  CMP.W           R12, #0
218D12:  BEQ             loc_218D4C
218D14:  LDR.W           R2, [R12,#0x18]
218D18:  CMP             R2, #0
218D1A:  MOV.W           R2, #0
218D1E:  IT EQ
218D20:  MOVEQ           R2, #1
218D22:  B               loc_218D4E
218D24:  MOVS            R3, #0
218D26:  CMP             R2, #0
218D28:  BNE             loc_218CDC
218D2A:  MOVS            R1, #0
218D2C:  CMP.W           LR, #0
218D30:  BNE             loc_218CEC
218D32:  MOVS            R0, #0
218D34:  ADD             R1, R3
218D36:  CMP.W           R12, #0
218D3A:  BEQ             loc_218D5C
218D3C:  LDR.W           R2, [R12,#0x18]
218D40:  CMP             R2, #0
218D42:  MOV.W           R2, #0
218D46:  IT EQ
218D48:  MOVEQ           R2, #1
218D4A:  B               loc_218D5E
218D4C:  MOVS            R2, #0
218D4E:  ADD             R0, R2
218D50:  MOVS            R4, #1
218D52:  CMP             R1, R0
218D54:  LDR             R6, [SP,#0x118+var_70]
218D56:  IT HI
218D58:  MOVHI           R4, #2
218D5A:  B               loc_218D6C
218D5C:  MOVS            R2, #0
218D5E:  ADD             R0, R2
218D60:  LDR             R6, [SP,#0x118+var_70]
218D62:  CMP             R1, R0
218D64:  MOV.W           R4, #0
218D68:  IT LS
218D6A:  MOVLS           R4, #1
218D6C:  MOVW            R1, #0xAAAB
218D70:  ADDS            R0, R4, #2
218D72:  MOVT            R1, #0xAAAA
218D76:  STR             R4, [SP,#0x118+var_6C]
218D78:  MOV             R3, R1
218D7A:  STR.W           R10, [SP,#0x118+var_84]
218D7E:  UMULL.W         R1, R2, R0, R3
218D82:  STR             R4, [SP,#0x118+var_94]
218D84:  ADDS            R1, R4, #1
218D86:  UMULL.W         R3, R5, R1, R3
218D8A:  LDR             R3, [SP,#0x118+var_90]
218D8C:  LSRS            R2, R2, #1
218D8E:  ADD.W           R2, R2, R2,LSL#1
218D92:  SUBS            R0, R0, R2
218D94:  STR             R0, [SP,#0x118+var_A4]
218D96:  LSRS            R0, R5, #1
218D98:  LDR             R5, [SP,#0x118+var_EC]
218D9A:  ADD.W           R0, R0, R0,LSL#1
218D9E:  SUBS            R0, R1, R0
218DA0:  STR             R0, [SP,#0x118+var_A8]
218DA2:  MOVS            R0, #0
218DA4:  STR             R0, [SP,#0x118+var_7C]
218DA6:  MOVS            R0, #0
218DA8:  LDR.W           R1, [R8,R0,LSL#2]
218DAC:  ADDS            R0, #1
218DAE:  CMP             R6, R0
218DB0:  LDR             R2, [R1,#0x18]
218DB2:  STR             R2, [R1,#0x1C]
218DB4:  BNE             loc_218DA8
218DB6:  CMP             R5, #0
218DB8:  MOV             R9, R4
218DBA:  ADD.W           R0, R5, #1
218DBE:  STR             R0, [SP,#0x118+var_64]
218DC0:  BEQ             loc_218DD6
218DC2:  LDR.W           R9, [SP,#0x118+var_A4]
218DC6:  CMP             R5, #2
218DC8:  BEQ             loc_218DD6
218DCA:  LDR.W           R9, [SP,#0x118+var_A8]
218DCE:  CMP             R5, #1
218DD0:  IT NE
218DD2:  LDRNE.W         R9, [SP,#0x118+var_6C]
218DD6:  CMP.W           R9, #0
218DDA:  STR             R5, [SP,#0x118+var_78]
218DDC:  BEQ             loc_218DF6
218DDE:  CMP.W           R9, #1
218DE2:  BEQ             loc_218E02
218DE4:  CMP.W           R9, #2
218DE8:  BNE             loc_218E18
218DEA:  LDR.W           R0, [R10,#-4]
218DEE:  ADD.W           R1, R0, #0xC
218DF2:  ADDS            R2, R0, #4
218DF4:  B               loc_218E0E
218DF6:  LDR.W           R0, [R10,#-4]
218DFA:  ADDS            R1, R0, #4
218DFC:  ADD.W           R2, R0, #8
218E00:  B               loc_218E0E
218E02:  LDR.W           R0, [R10,#-4]
218E06:  ADD.W           R1, R0, #8
218E0A:  ADD.W           R2, R0, #0xC
218E0E:  LDR.W           R11, [R1]
218E12:  LDR.W           R10, [R2]
218E16:  B               loc_218E22
218E18:  LDR.W           R0, [R10,#-4]
218E1C:  MOV             R11, R3
218E1E:  LDR.W           R10, [SP,#0x118+var_88]
218E22:  MOVW            R1, #0xAAAB
218E26:  LDR             R3, [SP,#0x118+var_60]
218E28:  MOVT            R1, #0xAAAA
218E2C:  LDR.W           R8, [SP,#0x118+var_80]
218E30:  MOV             R6, R1
218E32:  UMULL.W         R1, R2, R9, R6
218E36:  LDR             R1, [R0]
218E38:  ADD.W           R1, R1, R1,LSL#1
218E3C:  LSRS            R2, R2, #1
218E3E:  ADD.W           R1, R3, R1,LSL#2
218E42:  ADD.W           R2, R2, R2,LSL#1
218E46:  LDR.W           R3, [R8]
218E4A:  SUB.W           R2, R9, R2
218E4E:  LDRH.W          R2, [R1,R2,LSL#1]
218E52:  STRH            R2, [R3]
218E54:  ADD.W           R3, R9, #2
218E58:  ADD.W           R2, R9, #1
218E5C:  UMULL.W         R4, R5, R3, R6
218E60:  UMULL.W         R4, R6, R2, R6
218E64:  LSRS            R6, R6, #1
218E66:  ADD.W           R6, R6, R6,LSL#1
218E6A:  SUBS            R2, R2, R6
218E6C:  LDR.W           R6, [R8]
218E70:  LDRH.W          R2, [R1,R2,LSL#1]
218E74:  STRH            R2, [R6,#2]
218E76:  LSRS            R2, R5, #1
218E78:  ADD.W           R2, R2, R2,LSL#1
218E7C:  LDR.W           R6, [R8]
218E80:  SUBS            R2, R3, R2
218E82:  LDRH.W          R1, [R1,R2,LSL#1]
218E86:  STRH            R1, [R6,#4]
218E88:  MOVS            R1, #3
218E8A:  STR.W           R1, [R8,#4]
218E8E:  ADD             R6, SP, #0x118+var_50
218E90:  LDR             R5, [SP,#0x118+var_64]
218E92:  MOV             R1, R6
218E94:  MOV             R2, R5
218E96:  BL              sub_21C24C
218E9A:  LDR             R3, [SP,#0x118+var_60]
218E9C:  MOV             R0, R8
218E9E:  MOV             R1, R10
218EA0:  MOV             R2, R6
218EA2:  STR             R5, [SP,#0x118+var_118]
218EA4:  BL              sub_21C32A
218EA8:  MOV             R5, R0
218EAA:  LDR.W           R0, [R11,#4]
218EAE:  LDR             R2, [SP,#0x118+var_78]
218EB0:  MOV             R3, R11
218EB2:  STR.W           R10, [SP,#0x118+var_88]
218EB6:  CMP             R2, #2
218EB8:  BGT             loc_218ECA
218EBA:  CBZ             R0, loc_218EDA
218EBC:  LDR             R0, [R0,#0x1C]
218EBE:  CMP             R0, #0
218EC0:  MOV.W           R0, #0
218EC4:  IT EQ
218EC6:  MOVEQ           R0, #1
218EC8:  B               loc_218EDC
218ECA:  CBZ             R0, loc_218EF0
218ECC:  LDR             R0, [R0,#0x18]
218ECE:  CMP             R0, #0
218ED0:  MOV.W           R0, #0
218ED4:  IT EQ
218ED6:  MOVEQ           R0, #1
218ED8:  B               loc_218EF2
218EDA:  MOVS            R0, #0
218EDC:  LDR             R1, [R3,#8]
218EDE:  LDR.W           R8, [SP,#0x118+var_8C]
218EE2:  LDR.W           R10, [SP,#0x118+var_84]
218EE6:  CMP             R1, #0
218EE8:  LDR             R4, [SP,#0x118+var_94]
218EEA:  BEQ             loc_218F34
218EEC:  LDR             R1, [R1,#0x1C]
218EEE:  B               loc_218F04
218EF0:  MOVS            R0, #0
218EF2:  LDR             R1, [R3,#8]
218EF4:  LDR.W           R8, [SP,#0x118+var_8C]
218EF8:  LDR.W           R10, [SP,#0x118+var_84]
218EFC:  CMP             R1, #0
218EFE:  LDR             R4, [SP,#0x118+var_94]
218F00:  BEQ             loc_218F34
218F02:  LDR             R1, [R1,#0x18]
218F04:  CMP             R1, #0
218F06:  MOV.W           R1, #0
218F0A:  IT EQ
218F0C:  MOVEQ           R1, #1
218F0E:  CMN             R0, R1
218F10:  BNE             loc_218F3A
218F12:  LDR             R0, [SP,#0x118+var_68]
218F14:  LDR             R1, [SP,#0x118+var_6C]
218F16:  ADD.W           R11, R0, R5
218F1A:  LDR             R0, [SP,#0x118+var_7C]
218F1C:  CMP             R11, R0
218F1E:  IT HI
218F20:  MOVHI           R1, R9
218F22:  STR             R1, [SP,#0x118+var_6C]
218F24:  IT HI
218F26:  MOVHI           R0, R11
218F28:  LDR             R5, [SP,#0x118+var_64]
218F2A:  CMP             R2, #3
218F2C:  LDR             R6, [SP,#0x118+var_70]
218F2E:  BLT.W           loc_218DA4
218F32:  B               loc_219030
218F34:  MOVS            R1, #0
218F36:  CMN             R0, R1
218F38:  BEQ             loc_218F12
218F3A:  MOV             R10, R2
218F3C:  LDR             R2, [SP,#0x118+var_80]
218F3E:  MOV             R12, R6
218F40:  LDR             R6, [SP,#0x118+var_A0]
218F42:  MOV             R1, R3
218F44:  LDR             R0, [R2]
218F46:  LDR             R3, [R6]
218F48:  LDRH            R0, [R0,#2]
218F4A:  STRH            R0, [R3]
218F4C:  LDR             R0, [R2]
218F4E:  LDR             R2, [R6]
218F50:  LDRH            R0, [R0]
218F52:  STRH            R0, [R2,#2]
218F54:  MOVS            R0, #2
218F56:  STR             R0, [R6,#4]
218F58:  MOV             R2, R1
218F5A:  LDR             R3, [SP,#0x118+var_60]
218F5C:  LDR             R0, [SP,#0x118+var_64]
218F5E:  STR             R0, [SP,#0x118+var_118]
218F60:  MOV             R0, R6
218F62:  STR             R2, [SP,#0x118+var_90]
218F64:  MOV             R2, R12
218F66:  BL              sub_21C32A
218F6A:  LDR             R1, [SP,#0x118+var_68]
218F6C:  ADD             R1, R0
218F6E:  LDR             R0, [R6,#4]
218F70:  ADD.W           R11, R1, R5
218F74:  TST.W           R0, #1
218F78:  BEQ             loc_218F90
218F7A:  LDR             R3, [SP,#0x118+var_A0]
218F7C:  LDR             R1, [R3]
218F7E:  ADD.W           R2, R1, R0,LSL#1
218F82:  LDRH.W          R2, [R2,#-4]
218F86:  STRH.W          R2, [R1,R0,LSL#1]
218F8A:  LDR             R0, [R3,#4]
218F8C:  ADDS            R0, #1
218F8E:  STR             R0, [R3,#4]
218F90:  LDR             R0, [SP,#0x118+var_7C]
218F92:  LDR             R1, [SP,#0x118+var_6C]
218F94:  CMP             R11, R0
218F96:  IT HI
218F98:  MOVHI           R1, R9
218F9A:  STR             R1, [SP,#0x118+var_6C]
218F9C:  IT HI
218F9E:  MOVHI           R0, R11
218FA0:  CMP.W           R10, #3
218FA4:  LDR             R5, [SP,#0x118+var_64]
218FA6:  LDR             R3, [SP,#0x118+var_90]
218FA8:  LDR             R6, [SP,#0x118+var_70]
218FAA:  LDR.W           R10, [SP,#0x118+var_84]
218FAE:  BLT.W           loc_218DA4
218FB2:  LDR.W           R8, [SP,#0x118+var_108]
218FB6:  LDR             R1, [SP,#0x118+var_10C]
218FB8:  LDR.W           R0, [R8]
218FBC:  LDR             R1, [R1]
218FBE:  LDR.W           R2, [R0,#0x13C]
218FC2:  ADD             R0, R1
218FC4:  LDR             R0, [R0,#4]
218FC6:  BLX             R2
218FC8:  MOV             R6, R0
218FCA:  LDR             R0, [SP,#0x118+var_74]
218FCC:  STR             R0, [R6,#0xC]
218FCE:  MOVS            R2, #0
218FD0:  LDR             R5, [SP,#0x118+var_A0]
218FD2:  LDR             R1, [SP,#0x118+var_80]
218FD4:  STR             R6, [SP,#0x118+var_5C]
218FD6:  LDR             R0, [R5,#4]
218FD8:  LDR             R1, [R1,#4]
218FDA:  STR             R2, [R6,#4]
218FDC:  ADD             R0, R1
218FDE:  SUBS            R0, #2
218FE0:  STR             R0, [R6,#8]
218FE2:  LDR.W           R1, [R8]
218FE6:  LSLS            R0, R0, #2
218FE8:  LDR.W           R1, [R1,#0x12C]
218FEC:  BLX             R1
218FEE:  STR             R0, [R6]
218FF0:  LDR             R1, [R5,#4]
218FF2:  CMP             R1, #3
218FF4:  BCC             loc_219018
218FF6:  LDR             R2, [R5]
218FF8:  LDR             R3, [R6,#4]
218FFA:  ADD.W           R1, R2, R1,LSL#1
218FFE:  LDRH.W          R1, [R1,#-2]
219002:  STRH.W          R1, [R0,R3,LSL#1]
219006:  LDR             R0, [R6,#4]
219008:  ADDS            R0, #1
21900A:  STR             R0, [R6,#4]
21900C:  LDR             R0, [R5,#4]
21900E:  SUBS            R1, R0, #1
219010:  STR             R1, [R5,#4]
219012:  LDR             R0, [R6]
219014:  CMP             R1, #2
219016:  BHI             loc_218FF6
219018:  LDR             R2, [R6,#4]
21901A:  LDR             R3, [SP,#0x118+var_80]
21901C:  LDRD.W          R1, R3, [R3]; void *
219020:  ADD.W           R0, R0, R2,LSL#1; void *
219024:  LSLS            R2, R3, #2; size_t
219026:  BLX             memcpy_1
21902A:  LDR             R0, [R6,#8]
21902C:  STR             R0, [R6,#4]
21902E:  B               loc_219074
219030:  LDR.W           R8, [SP,#0x118+var_100]
219034:  LDR             R1, [SP,#0x118+var_104]
219036:  STR             R3, [SP,#0x118+var_90]
219038:  LDR.W           R0, [R8]
21903C:  LDR             R1, [R1]
21903E:  LDR.W           R2, [R0,#0x13C]
219042:  ADD             R0, R1
219044:  LDR             R0, [R0,#4]
219046:  BLX             R2
219048:  MOV             R6, R0
21904A:  LDR             R0, [SP,#0x118+var_74]
21904C:  STR             R0, [R6,#0xC]
21904E:  LDR             R5, [SP,#0x118+var_80]
219050:  STR             R6, [SP,#0x118+var_5C]
219052:  LDR             R0, [R5,#4]
219054:  STR             R0, [R6,#8]
219056:  LDR             R0, [R5,#4]
219058:  STR             R0, [R6,#4]
21905A:  LDR.W           R0, [R8]
21905E:  LDR             R1, [R5,#4]
219060:  LDR.W           R2, [R0,#0x12C]
219064:  LSLS            R0, R1, #2
219066:  BLX             R2
219068:  STR             R0, [R6]
21906A:  LDRD.W          R1, R2, [R5]; void *
21906E:  LSLS            R2, R2, #2; size_t
219070:  BLX             memcpy_1
219074:  STR             R6, [SP,#0x118+var_74]
219076:  LDR             R0, [SP,#0x118+var_70]
219078:  LDR.W           R9, [SP,#0x118+var_BC]
21907C:  LDR             R6, [SP,#0x118+var_B4]
21907E:  CMP             R11, R0
219080:  LDR             R1, [SP,#0x118+var_88]
219082:  BCC.W           loc_218A72
219086:  B               loc_21908E
219088:  STR             R6, [SP,#0x118+var_5C]
21908A:  MOV             R6, R10
21908C:  STR             R0, [SP,#0x118+var_50]
21908E:  LDR             R4, [SP,#0x118+var_D0]
219090:  LDR             R5, [SP,#0x118+var_A0]
219092:  LDR             R1, [R4]
219094:  LDR             R0, [R5]
219096:  LDR.W           R1, [R1,#0x130]
21909A:  BLX             R1
21909C:  MOV.W           R10, #0
2190A0:  STR.W           R10, [R5]
2190A4:  LDR.W           R8, [SP,#0x118+var_D4]
2190A8:  LDR             R0, [R4]
2190AA:  LDR.W           R1, [R8]
2190AE:  LDR.W           R2, [R0,#0x140]
2190B2:  ADD             R0, R1
2190B4:  MOV             R1, R5
2190B6:  LDR             R0, [R0,#4]
2190B8:  BLX             R2
2190BA:  LDR             R1, [R4]
2190BC:  LDR             R5, [SP,#0x118+var_80]
2190BE:  LDR.W           R1, [R1,#0x130]
2190C2:  LDR             R0, [R5]
2190C4:  BLX             R1
2190C6:  STR.W           R10, [R5]
2190CA:  LDR             R0, [R4]
2190CC:  LDR.W           R1, [R8]
2190D0:  LDR.W           R2, [R0,#0x140]
2190D4:  ADD             R0, R1
2190D6:  MOV             R1, R5
2190D8:  LDR             R0, [R0,#4]
2190DA:  BLX             R2
2190DC:  LDR             R1, [SP,#0x118+var_3C]
2190DE:  LDR             R4, [SP,#0x118+var_54]
2190E0:  CBZ             R1, loc_2190F4
2190E2:  LDR             R0, [R6]
2190E4:  LDR             R5, [R1,#0xC]
2190E6:  LDR.W           R2, [R0,#0x140]
2190EA:  MOV             R0, R4
2190EC:  BLX             R2
2190EE:  CMP             R5, #0
2190F0:  MOV             R1, R5
2190F2:  BNE             loc_2190E2
2190F4:  MOV             R0, R4
2190F6:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
2190FA:  LDR             R4, [SP,#0x118+var_58]
2190FC:  LDR             R3, [SP,#0x118+var_70]
2190FE:  LDR.W           R11, [SP,#0x118+var_E0]
219102:  LDR.W           R8, [SP,#0x118+var_8C]
219106:  CMP             R3, #0
219108:  STR.W           R10, [SP,#0x118+var_54]
21910C:  BEQ             loc_21912A
21910E:  MOV             R5, R8
219110:  LDR.W           R0, [R11]
219114:  MOV             R6, R3
219116:  LDR             R1, [R5]
219118:  LDR.W           R2, [R0,#0x140]
21911C:  MOV             R0, R4
21911E:  BLX             R2
219120:  MOV             R3, R6
219122:  STR.W           R10, [R5],#4
219126:  SUBS            R3, #1
219128:  BNE             loc_219110
21912A:  MOV             R0, R4
21912C:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
219130:  LDR             R0, [SP,#0x118+var_D8]
219132:  LDR             R0, [R0]
219134:  LDR.W           R1, [R0,#0x130]
219138:  MOV             R0, R8
21913A:  BLX             R1
21913C:  LDR             R1, [SP,#0x118+var_C4]
21913E:  ADD             R0, SP, #0x118+var_5C
219140:  BL              sub_21BDA8
219144:  LDR             R4, [SP,#0x118+var_5C]
219146:  CMP             R4, #0
219148:  BEQ             loc_2191EC
21914A:  LDR             R0, [SP,#0x118+var_B8]
21914C:  MOV.W           R10, #0x10
219150:  LDR             R6, [SP,#0x118+var_E8]
219152:  LDR             R5, [SP,#0x118+var_F4]
219154:  ADD.W           R11, R0, #8
219158:  LDR             R0, [R5]
21915A:  LDR             R1, [R4,#4]
21915C:  LDR.W           R2, [R0,#0x12C]
219160:  ADD.W           R0, R10, R1,LSL#1
219164:  BLX             R2
219166:  LDR.W           R1, [R11]
21916A:  ADD.W           R2, R0, #0x10
21916E:  STR             R1, [R0,#8]
219170:  LDR             R1, [R4,#4]
219172:  CMP             R1, #0
219174:  STRD.W          R2, R1, [R0]
219178:  BEQ             loc_21919C
21917A:  LDR             R1, [R4]
21917C:  LDR             R2, [R0,#4]
21917E:  LDRH            R1, [R1]
219180:  CMP             R2, #2
219182:  STRH            R1, [R0,#0x10]
219184:  BCC             loc_21919C
219186:  MOVS            R1, #1
219188:  LDR             R2, [R4]
21918A:  LDR             R3, [R0]
21918C:  LDRH.W          R2, [R2,R1,LSL#1]
219190:  STRH.W          R2, [R3,R1,LSL#1]
219194:  ADDS            R1, #1
219196:  LDR             R2, [R0,#4]
219198:  CMP             R1, R2
21919A:  BCC             loc_219188
21919C:  UXTH.W          R1, R9
2191A0:  ADD.W           R9, R9, #1
2191A4:  STR.W           R0, [R6,R1,LSL#2]
2191A8:  LDR             R4, [R4,#0xC]
2191AA:  CMP             R4, #0
2191AC:  BNE             loc_219158
2191AE:  LDR             R5, [SP,#0x118+var_5C]
2191B0:  MOV.W           R10, #0
2191B4:  LDRD.W          R11, R4, [SP,#0x118+var_FC]
2191B8:  LDR             R6, [SP,#0x118+var_60]
2191BA:  CBZ             R5, loc_2191E6
2191BC:  LDR             R1, [R4]
2191BE:  LDR             R0, [R5,#0xC]
2191C0:  STR             R0, [SP,#0x118+var_5C]
2191C2:  LDR             R0, [R5]
2191C4:  LDR.W           R1, [R1,#0x130]
2191C8:  BLX             R1
2191CA:  STR.W           R10, [R5]
2191CE:  LDR             R0, [R4]
2191D0:  LDR.W           R1, [R11]
2191D4:  LDR.W           R2, [R0,#0x140]
2191D8:  ADD             R0, R1
2191DA:  MOV             R1, R5
2191DC:  LDR             R0, [R0,#4]
2191DE:  BLX             R2
2191E0:  LDR             R5, [SP,#0x118+var_5C]
2191E2:  CMP             R5, #0
2191E4:  BNE             loc_2191BC
2191E6:  STR             R5, [SP,#0x118+var_74]
2191E8:  LDR             R5, [SP,#0x118+var_E4]
2191EA:  B               loc_2191F4
2191EC:  MOVS            R0, #0
2191EE:  LDR             R5, [SP,#0x118+var_E4]
2191F0:  STR             R0, [SP,#0x118+var_74]
2191F2:  LDR             R6, [SP,#0x118+var_60]
2191F4:  LDR             R4, [SP,#0x118+var_DC]
2191F6:  LDR             R0, [R4]
2191F8:  LDR.W           R1, [R0,#0x130]
2191FC:  MOV             R0, R6
2191FE:  BLX             R1
219200:  LDR             R2, [SP,#0x118+var_B0]
219202:  LDR             R0, [R4]
219204:  ADDS            R2, #1
219206:  CMP             R2, R5
219208:  LDR             R5, [SP,#0x118+var_AC]
21920A:  BNE.W           loc_218968
21920E:  LDR             R1, =(meshModule_ptr - 0x219214)
219210:  ADD             R1, PC; meshModule_ptr
219212:  LDR             R4, [R1]; meshModule
219214:  LDR             R1, [R4]
219216:  ADD             R0, R1
219218:  LDR             R0, [R0,#4]
21921A:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
21921E:  LDR             R0, =(RwEngineInstance_ptr - 0x21922C)
219220:  MOVS            R5, #0
219222:  LDR             R1, [R4]
219224:  UXTH.W          R11, R9
219228:  ADD             R0, PC; RwEngineInstance_ptr
21922A:  MOVS            R4, #0
21922C:  CMP.W           R11, #0
219230:  LDR             R0, [R0]; RwEngineInstance
219232:  LDR             R0, [R0]
219234:  ADD             R0, R1
219236:  STR             R5, [R0,#4]
219238:  MOV.W           R0, #0x14
21923C:  BEQ             loc_219256
21923E:  LDR             R2, [SP,#0x118+var_E8]
219240:  MOV             R1, R11
219242:  LDR.W           R3, [R2],#4
219246:  SUBS            R1, #1
219248:  LDR             R3, [R3,#4]
21924A:  ADD             R4, R3
21924C:  ADD.W           R0, R0, R3,LSL#1
219250:  ADD.W           R0, R0, #0x10; unsigned int
219254:  BNE             loc_219242
219256:  BLX             j__Z19_rpMeshHeaderCreatej; _rpMeshHeaderCreate(uint)
21925A:  LDR             R2, =(meshModule_ptr - 0x219262)
21925C:  LDR             R1, =(RwEngineInstance_ptr - 0x219264)
21925E:  ADD             R2, PC; meshModule_ptr
219260:  ADD             R1, PC; RwEngineInstance_ptr
219262:  LDR             R3, [R2]; meshModule
219264:  MOVS            R2, #1
219266:  LDR             R1, [R1]; RwEngineInstance
219268:  STR             R2, [R0]
21926A:  STRH.W          R9, [R0,#4]
21926E:  LDR             R6, [R3]
219270:  MOV             R3, R0
219272:  LDR             R1, [R1]
219274:  LDRH            R2, [R1,R6]
219276:  STRD.W          R4, R5, [R0,#8]
21927A:  STR             R3, [SP,#0x118+var_60]
21927C:  STRH            R2, [R0,#6]
21927E:  MOVW            R0, #0xFFFF
219282:  LDRH            R2, [R1,R6]
219284:  TST.W           R9, R0
219288:  ADD.W           R2, R2, #1
21928C:  STRH            R2, [R1,R6]
21928E:  BEQ             loc_2192E4
219290:  LDR             R0, [SP,#0x118+var_60]
219292:  MOV.W           R10, #0
219296:  LDR             R6, [SP,#0x118+var_E8]
219298:  ADD.W           R4, R0, #0x14
21929C:  LDR             R0, =(RwEngineInstance_ptr - 0x2192A6)
21929E:  ADD.W           R5, R4, R11,LSL#4
2192A2:  ADD             R0, PC; RwEngineInstance_ptr
2192A4:  LDR.W           R9, [R0]; RwEngineInstance
2192A8:  STR             R5, [R4]
2192AA:  LDR             R0, [R6]
2192AC:  LDR             R0, [R0,#4]
2192AE:  STR             R0, [R4,#4]
2192B0:  LDR             R0, [R6]
2192B2:  LDR             R0, [R0,#8]
2192B4:  STR             R0, [R4,#8]
2192B6:  LDR             R0, [R6]
2192B8:  LDRD.W          R1, R0, [R0]; void *
2192BC:  LSLS            R2, R0, #1; size_t
2192BE:  MOV             R0, R5; void *
2192C0:  BLX             memcpy_1
2192C4:  LDR.W           R1, [R9]
2192C8:  LDR             R0, [R6]
2192CA:  LDR.W           R8, [R4,#4]
2192CE:  LDR.W           R1, [R1,#0x130]
2192D2:  BLX             R1
2192D4:  ADD.W           R5, R5, R8,LSL#1
2192D8:  STR.W           R10, [R6],#4
2192DC:  ADDS            R4, #0x10
2192DE:  SUBS.W          R11, R11, #1
2192E2:  BNE             loc_2192A8
2192E4:  LDR             R0, =(RwEngineInstance_ptr - 0x2192EA)
2192E6:  ADD             R0, PC; RwEngineInstance_ptr
2192E8:  LDR             R4, [R0]; RwEngineInstance
2192EA:  LDR             R0, [R4]
2192EC:  LDR.W           R1, [R0,#0x130]
2192F0:  LDR             R0, [SP,#0x118+var_110]
2192F2:  BLX             R1
2192F4:  LDR             R0, [R4]
2192F6:  LDR.W           R1, [R0,#0x130]
2192FA:  LDR             R0, [SP,#0x118+var_E8]
2192FC:  BLX             R1
2192FE:  LDR             R0, [R4]
219300:  LDR.W           R1, [R0,#0x130]
219304:  LDR             R0, [SP,#0x118+var_C0]
219306:  BLX             R1
219308:  LDR             R0, [SP,#0x118+var_60]
21930A:  ADD             SP, SP, #0xE0
21930C:  VPOP            {D8-D9}
219310:  ADD             SP, SP, #4
219312:  POP.W           {R8-R11}
219316:  POP             {R4-R7,PC}
