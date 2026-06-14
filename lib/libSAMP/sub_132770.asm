; =========================================================
; Game Engine Function: sub_132770
; Address            : 0x132770 - 0x132D76
; =========================================================

132770:  PUSH            {R4-R7,LR}
132772:  ADD             R7, SP, #0xC
132774:  PUSH.W          {R11}
132778:  VPUSH           {D8}
13277C:  SUB             SP, SP, #0x10
13277E:  MOV             R4, R0
132780:  LDR             R0, =(off_2349A8 - 0x13278A)
132782:  VLDR            S16, [R4,#0x14]
132786:  ADD             R0, PC; off_2349A8
132788:  LDR             R0, [R0]; dword_381BF4
13278A:  LDR             R0, [R0]
13278C:  LDRB.W          R0, [R0,#0x81]
132790:  CBZ             R0, loc_1327AC
132792:  B               loc_13279C
132794:  DCD off_2349A8 - 0x13278A
132798:  DCFS -100.0
13279C:  VLDR            S0, =-100.0
1327A0:  VMOV.F32        S2, #27.0
1327A4:  VDIV.F32        S0, S16, S0
1327A8:  VMLA.F32        S16, S0, S2
1327AC:  LDR             R5, [R4,#0x6C]
1327AE:  VMOV.I32        Q8, #0
1327B2:  LDR             R1, =(unk_8D197 - 0x1327C4)
1327B4:  ADD             R6, SP, #0x28+var_24
1327B6:  ADD.W           R0, R5, #0x58 ; 'X'
1327BA:  MOVS            R2, #0
1327BC:  VST1.32         {D16-D17}, [R0]!
1327C0:  ADD             R1, PC; unk_8D197 ; src
1327C2:  STR             R2, [R0]
1327C4:  MOV             R0, R6; int
1327C6:  BL              sub_13055C
1327CA:  MOV             R0, R5
1327CC:  MOV             R1, R6
1327CE:  MOVS            R2, #0x31 ; '1'
1327D0:  BL              sub_130FE8
1327D4:  B               loc_1327DC
1327D6:  ALIGN 4
1327D8:  DCD unk_8D197 - 0x1327C4
1327DC:  LDRB.W          R0, [SP,#0x28+var_24]
1327E0:  LSLS            R0, R0, #0x1F
1327E2:  ITT NE
1327E4:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1327E6:  BLXNE           j__ZdlPv; operator delete(void *)
1327EA:  LDR             R5, [R4,#0x6C]
1327EC:  ADD             R6, SP, #0x28+var_24
1327EE:  LDR             R1, =(a2 - 0x1327F6); "2" ...
1327F0:  MOV             R0, R6; int
1327F2:  ADD             R1, PC; "2"
1327F4:  BL              sub_13055C
1327F8:  MOV             R0, R5
1327FA:  MOV             R1, R6
1327FC:  MOVS            R2, #0x32 ; '2'
1327FE:  BL              sub_130FE8
132802:  B               loc_132808
132804:  DCD a2 - 0x1327F6
132808:  LDRB.W          R0, [SP,#0x28+var_24]
13280C:  LSLS            R0, R0, #0x1F
13280E:  ITT NE
132810:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132812:  BLXNE           j__ZdlPv; operator delete(void *)
132816:  LDR             R5, [R4,#0x6C]
132818:  ADD             R6, SP, #0x28+var_24
13281A:  LDR             R1, =(unk_82C57 - 0x132822)
13281C:  MOV             R0, R6; int
13281E:  ADD             R1, PC; unk_82C57 ; src
132820:  BL              sub_13055C
132824:  MOV             R0, R5
132826:  MOV             R1, R6
132828:  MOVS            R2, #0x33 ; '3'
13282A:  BL              sub_130FE8
13282E:  B               loc_132834
132830:  DCD unk_82C57 - 0x132822
132834:  LDRB.W          R0, [SP,#0x28+var_24]
132838:  LSLS            R0, R0, #0x1F
13283A:  ITT NE
13283C:  LDRNE           R0, [SP,#0x28+var_1C]; void *
13283E:  BLXNE           j__ZdlPv; operator delete(void *)
132842:  LDR             R5, [R4,#0x6C]
132844:  ADD             R6, SP, #0x28+var_24
132846:  LDR             R1, =(unk_90981 - 0x13284E)
132848:  MOV             R0, R6; int
13284A:  ADD             R1, PC; unk_90981 ; src
13284C:  BL              sub_13055C
132850:  MOV             R0, R5
132852:  MOV             R1, R6
132854:  MOVS            R2, #0x34 ; '4'
132856:  BL              sub_130FE8
13285A:  B               loc_132860
13285C:  DCD unk_90981 - 0x13284E
132860:  LDRB.W          R0, [SP,#0x28+var_24]
132864:  LSLS            R0, R0, #0x1F
132866:  ITT NE
132868:  LDRNE           R0, [SP,#0x28+var_1C]; void *
13286A:  BLXNE           j__ZdlPv; operator delete(void *)
13286E:  LDR             R5, [R4,#0x6C]
132870:  ADD             R6, SP, #0x28+var_24
132872:  LDR             R1, =(a5 - 0x13287A); "5#[" ...
132874:  MOV             R0, R6; int
132876:  ADD             R1, PC; "5#["
132878:  BL              sub_13055C
13287C:  MOV             R0, R5
13287E:  MOV             R1, R6
132880:  MOVS            R2, #0x35 ; '5'
132882:  BL              sub_130FE8
132886:  B               loc_13288C
132888:  DCD a5 - 0x13287A
13288C:  LDRB.W          R0, [SP,#0x28+var_24]
132890:  LSLS            R0, R0, #0x1F
132892:  ITT NE
132894:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132896:  BLXNE           j__ZdlPv; operator delete(void *)
13289A:  LDR             R5, [R4,#0x6C]
13289C:  ADD             R6, SP, #0x28+var_24
13289E:  LDR             R1, =(unk_8C314 - 0x1328A6)
1328A0:  MOV             R0, R6; int
1328A2:  ADD             R1, PC; unk_8C314 ; src
1328A4:  BL              sub_13055C
1328A8:  MOV             R0, R5
1328AA:  MOV             R1, R6
1328AC:  MOVS            R2, #0x36 ; '6'
1328AE:  BL              sub_130FE8
1328B2:  B               loc_1328B8
1328B4:  DCD unk_8C314 - 0x1328A6
1328B8:  LDRB.W          R0, [SP,#0x28+var_24]
1328BC:  LSLS            R0, R0, #0x1F
1328BE:  ITT NE
1328C0:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1328C2:  BLXNE           j__ZdlPv; operator delete(void *)
1328C6:  LDR             R5, [R4,#0x6C]
1328C8:  ADD             R6, SP, #0x28+var_24
1328CA:  LDR             R1, =(aW7+2 - 0x1328D2); "7@>" ...
1328CC:  MOV             R0, R6; int
1328CE:  ADD             R1, PC; "7@>" ; src
1328D0:  BL              sub_13055C
1328D4:  MOV             R0, R5
1328D6:  MOV             R1, R6
1328D8:  MOVS            R2, #0x37 ; '7'
1328DA:  BL              sub_130FE8
1328DE:  B               loc_1328E4
1328E0:  DCD aW7+2 - 0x1328D2
1328E4:  LDRB.W          R0, [SP,#0x28+var_24]
1328E8:  LSLS            R0, R0, #0x1F
1328EA:  ITT NE
1328EC:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1328EE:  BLXNE           j__ZdlPv; operator delete(void *)
1328F2:  LDR             R5, [R4,#0x6C]
1328F4:  ADD             R6, SP, #0x28+var_24
1328F6:  LDR             R1, =(unk_8A59F - 0x1328FE)
1328F8:  MOV             R0, R6; int
1328FA:  ADD             R1, PC; unk_8A59F ; src
1328FC:  BL              sub_13055C
132900:  MOV             R0, R5
132902:  MOV             R1, R6
132904:  MOVS            R2, #0x38 ; '8'
132906:  BL              sub_130FE8
13290A:  B               loc_132910
13290C:  DCD unk_8A59F - 0x1328FE
132910:  LDRB.W          R0, [SP,#0x28+var_24]
132914:  LSLS            R0, R0, #0x1F
132916:  ITT NE
132918:  LDRNE           R0, [SP,#0x28+var_1C]; void *
13291A:  BLXNE           j__ZdlPv; operator delete(void *)
13291E:  LDR             R5, [R4,#0x6C]
132920:  ADD             R6, SP, #0x28+var_24
132922:  LDR             R1, =(unk_8D732 - 0x13292A)
132924:  MOV             R0, R6; int
132926:  ADD             R1, PC; unk_8D732 ; src
132928:  BL              sub_13055C
13292C:  MOV             R0, R5
13292E:  MOV             R1, R6
132930:  MOVS            R2, #0x39 ; '9'
132932:  BL              sub_130FE8
132936:  B               loc_13293C
132938:  DCD unk_8D732 - 0x13292A
13293C:  LDRB.W          R0, [SP,#0x28+var_24]
132940:  LSLS            R0, R0, #0x1F
132942:  ITT NE
132944:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132946:  BLXNE           j__ZdlPv; operator delete(void *)
13294A:  LDR             R5, [R4,#0x6C]
13294C:  ADD             R6, SP, #0x28+var_24
13294E:  LDR             R1, =(a0 - 0x132956); "0;!" ...
132950:  MOV             R0, R6; int
132952:  ADD             R1, PC; "0;!"
132954:  BL              sub_13055C
132958:  MOV             R0, R5
13295A:  MOV             R1, R6
13295C:  MOVS            R2, #0x30 ; '0'
13295E:  BL              sub_130FE8
132962:  B               loc_132968
132964:  DCD a0 - 0x132956
132968:  LDRB.W          R0, [SP,#0x28+var_24]
13296C:  LSLS            R0, R0, #0x1F
13296E:  ITT NE
132970:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132972:  BLXNE           j__ZdlPv; operator delete(void *)
132976:  LDR             R5, [R4,#0x70]
132978:  VMOV.I32        Q8, #0
13297C:  LDR             R1, =(aW7+4 - 0x13298E); "@>" ...
13297E:  ADD             R6, SP, #0x28+var_24
132980:  ADD.W           R0, R5, #0x58 ; 'X'
132984:  MOVS            R2, #0
132986:  VST1.32         {D16-D17}, [R0]!
13298A:  ADD             R1, PC; "@>" ; src
13298C:  STR             R2, [R0]
13298E:  MOV             R0, R6; int
132990:  BL              sub_13055C
132994:  MOV             R0, R5
132996:  MOV             R1, R6
132998:  MOVS            R2, #0x40 ; '@'
13299A:  BL              sub_130FE8
13299E:  LDRB.W          R0, [SP,#0x28+var_24]
1329A2:  LSLS            R0, R0, #0x1F
1329A4:  ITT NE
1329A6:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1329A8:  BLXNE           j__ZdlPv; operator delete(void *)
1329AC:  LDR             R5, [R4,#0x70]
1329AE:  ADD             R6, SP, #0x28+var_24
1329B0:  LDR             R1, =(a5+2 - 0x1329B8); "#[" ...
1329B2:  MOV             R0, R6; int
1329B4:  ADD             R1, PC; "#[" ; src
1329B6:  BL              sub_13055C
1329BA:  MOV             R0, R5
1329BC:  MOV             R1, R6
1329BE:  MOVS            R2, #0x23 ; '#'
1329C0:  BL              sub_130FE8
1329C4:  LDRB.W          R0, [SP,#0x28+var_24]
1329C8:  LSLS            R0, R0, #0x1F
1329CA:  ITT NE
1329CC:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1329CE:  BLXNE           j__ZdlPv; operator delete(void *)
1329D2:  LDR             R5, [R4,#0x70]
1329D4:  ADD             R6, SP, #0x28+var_24
1329D6:  LDR             R1, =(unk_901BF - 0x1329DE)
1329D8:  MOV             R0, R6; int
1329DA:  ADD             R1, PC; unk_901BF ; src
1329DC:  BL              sub_13055C
1329E0:  MOV             R0, R5
1329E2:  MOV             R1, R6
1329E4:  MOVS            R2, #0x24 ; '$'
1329E6:  BL              sub_130FE8
1329EA:  LDRB.W          R0, [SP,#0x28+var_24]
1329EE:  LSLS            R0, R0, #0x1F
1329F0:  ITT NE
1329F2:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1329F4:  BLXNE           j__ZdlPv; operator delete(void *)
1329F8:  LDR             R5, [R4,#0x70]
1329FA:  ADD             R6, SP, #0x28+var_24
1329FC:  LDR             R1, =(asc_9174A - 0x132A04); "%" ...
1329FE:  MOV             R0, R6; int
132A00:  ADD             R1, PC; "%"
132A02:  BL              sub_13055C
132A06:  MOV             R0, R5
132A08:  MOV             R1, R6
132A0A:  MOVS            R2, #0x25 ; '%'
132A0C:  BL              sub_130FE8
132A10:  LDRB.W          R0, [SP,#0x28+var_24]
132A14:  LSLS            R0, R0, #0x1F
132A16:  ITT NE
132A18:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132A1A:  BLXNE           j__ZdlPv; operator delete(void *)
132A1E:  LDR             R5, [R4,#0x70]
132A20:  ADD             R6, SP, #0x28+var_24
132A22:  LDR             R1, =(unk_89198 - 0x132A2A)
132A24:  MOV             R0, R6; int
132A26:  ADD             R1, PC; unk_89198 ; src
132A28:  BL              sub_13055C
132A2C:  MOV             R0, R5
132A2E:  MOV             R1, R6
132A30:  MOVS            R2, #0x22 ; '"'
132A32:  BL              sub_130FE8
132A36:  LDRB.W          R0, [SP,#0x28+var_24]
132A3A:  LSLS            R0, R0, #0x1F
132A3C:  ITT NE
132A3E:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132A40:  BLXNE           j__ZdlPv; operator delete(void *)
132A44:  LDR             R5, [R4,#0x70]
132A46:  ADD             R6, SP, #0x28+var_24
132A48:  LDR             R1, =(asc_879DB - 0x132A50); "*" ...
132A4A:  MOV             R0, R6; int
132A4C:  ADD             R1, PC; "*"
132A4E:  BL              sub_13055C
132A52:  MOV             R0, R5
132A54:  MOV             R1, R6
132A56:  MOVS            R2, #0x2A ; '*'
132A58:  BL              sub_130FE8
132A5C:  LDRB.W          R0, [SP,#0x28+var_24]
132A60:  LSLS            R0, R0, #0x1F
132A62:  ITT NE
132A64:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132A66:  BLXNE           j__ZdlPv; operator delete(void *)
132A6A:  LDR             R5, [R4,#0x70]
132A6C:  ADD             R6, SP, #0x28+var_24
132A6E:  LDR             R1, =(aQjk+6 - 0x132A76); "(" ...
132A70:  MOV             R0, R6; int
132A72:  ADD             R1, PC; "(" ; src
132A74:  BL              sub_13055C
132A78:  MOV             R0, R5
132A7A:  MOV             R1, R6
132A7C:  MOVS            R2, #0x28 ; '('
132A7E:  BL              sub_130FE8
132A82:  LDRB.W          R0, [SP,#0x28+var_24]
132A86:  LSLS            R0, R0, #0x1F
132A88:  ITT NE
132A8A:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132A8C:  BLXNE           j__ZdlPv; operator delete(void *)
132A90:  LDR             R5, [R4,#0x70]
132A92:  ADD             R6, SP, #0x28+var_24
132A94:  LDR             R1, =(unk_901C1 - 0x132A9C)
132A96:  MOV             R0, R6; int
132A98:  ADD             R1, PC; unk_901C1 ; src
132A9A:  BL              sub_13055C
132A9E:  MOV             R0, R5
132AA0:  MOV             R1, R6
132AA2:  MOVS            R2, #0x29 ; ')'
132AA4:  BL              sub_130FE8
132AA8:  LDRB.W          R0, [SP,#0x28+var_24]
132AAC:  LSLS            R0, R0, #0x1F
132AAE:  ITT NE
132AB0:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132AB2:  BLXNE           j__ZdlPv; operator delete(void *)
132AB6:  LDR             R5, [R4,#0x70]
132AB8:  ADD             R6, SP, #0x28+var_24
132ABA:  LDR             R1, =(unk_86B5A - 0x132AC2)
132ABC:  MOV             R0, R6; int
132ABE:  ADD             R1, PC; unk_86B5A ; src
132AC0:  BL              sub_13055C
132AC4:  MOV             R0, R5
132AC6:  MOV             R1, R6
132AC8:  MOVS            R2, #0x2D ; '-'
132ACA:  BL              sub_130FE8
132ACE:  LDRB.W          R0, [SP,#0x28+var_24]
132AD2:  LSLS            R0, R0, #0x1F
132AD4:  ITT NE
132AD6:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132AD8:  BLXNE           j__ZdlPv; operator delete(void *)
132ADC:  LDR             R5, [R4,#0x70]
132ADE:  ADD             R6, SP, #0x28+var_24
132AE0:  LDR             R1, =(unk_8480C - 0x132AE8)
132AE2:  MOV             R0, R6; int
132AE4:  ADD             R1, PC; unk_8480C ; src
132AE6:  BL              sub_13055C
132AEA:  MOV             R0, R5
132AEC:  MOV             R1, R6
132AEE:  MOVS            R2, #0x5F ; '_'
132AF0:  BL              sub_130FE8
132AF4:  LDRB.W          R0, [SP,#0x28+var_24]
132AF8:  LSLS            R0, R0, #0x1F
132AFA:  ITT NE
132AFC:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132AFE:  BLXNE           j__ZdlPv; operator delete(void *)
132B02:  LDR             R5, [R4,#0x74]
132B04:  VMOV.I32        Q8, #0
132B08:  LDR             R1, =(asc_836CD - 0x132B1A); "." ...
132B0A:  ADD             R6, SP, #0x28+var_24
132B0C:  ADD.W           R0, R5, #0x58 ; 'X'
132B10:  MOVS            R2, #0
132B12:  VST1.32         {D16-D17}, [R0]!
132B16:  ADD             R1, PC; "."
132B18:  STR             R2, [R0]
132B1A:  MOV             R0, R6; int
132B1C:  BL              sub_13055C
132B20:  MOV             R0, R5
132B22:  MOV             R1, R6
132B24:  MOVS            R2, #0x2E ; '.'
132B26:  BL              sub_130FE8
132B2A:  LDRB.W          R0, [SP,#0x28+var_24]
132B2E:  LSLS            R0, R0, #0x1F
132B30:  ITT NE
132B32:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132B34:  BLXNE           j__ZdlPv; operator delete(void *)
132B38:  LDR             R5, [R4,#0x74]
132B3A:  ADD             R6, SP, #0x28+var_24
132B3C:  LDR             R1, =(unk_90FE6 - 0x132B44)
132B3E:  MOV             R0, R6; int
132B40:  ADD             R1, PC; unk_90FE6 ; src
132B42:  BL              sub_13055C
132B46:  MOV             R0, R5
132B48:  MOV             R1, R6
132B4A:  MOVS            R2, #0x3A ; ':'
132B4C:  BL              sub_130FE8
132B50:  LDRB.W          R0, [SP,#0x28+var_24]
132B54:  LSLS            R0, R0, #0x1F
132B56:  ITT NE
132B58:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132B5A:  BLXNE           j__ZdlPv; operator delete(void *)
132B5E:  LDR             R5, [R4,#0x74]
132B60:  ADD             R6, SP, #0x28+var_24
132B62:  LDR             R1, =(a0+2 - 0x132B6A); ";!" ...
132B64:  MOV             R0, R6; int
132B66:  ADD             R1, PC; ";!" ; src
132B68:  BL              sub_13055C
132B6C:  MOV             R0, R5
132B6E:  MOV             R1, R6
132B70:  MOVS            R2, #0x3B ; ';'
132B72:  BL              sub_130FE8
132B76:  LDRB.W          R0, [SP,#0x28+var_24]
132B7A:  LSLS            R0, R0, #0x1F
132B7C:  ITT NE
132B7E:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132B80:  BLXNE           j__ZdlPv; operator delete(void *)
132B84:  LDR             R5, [R4,#0x74]
132B86:  ADD             R6, SP, #0x28+var_24
132B88:  LDR             R1, =(unk_8BBBD - 0x132B90)
132B8A:  MOV             R0, R6; int
132B8C:  ADD             R1, PC; unk_8BBBD ; src
132B8E:  BL              sub_13055C
132B92:  MOV             R0, R5
132B94:  MOV             R1, R6
132B96:  MOVS            R2, #0x2B ; '+'
132B98:  BL              sub_130FE8
132B9C:  LDRB.W          R0, [SP,#0x28+var_24]
132BA0:  LSLS            R0, R0, #0x1F
132BA2:  ITT NE
132BA4:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132BA6:  BLXNE           j__ZdlPv; operator delete(void *)
132BAA:  LDR             R5, [R4,#0x74]
132BAC:  ADD             R6, SP, #0x28+var_24
132BAE:  LDR             R1, =(unk_8B3DF - 0x132BB6)
132BB0:  MOV             R0, R6; int
132BB2:  ADD             R1, PC; unk_8B3DF ; src
132BB4:  BL              sub_13055C
132BB8:  MOV             R0, R5
132BBA:  MOV             R1, R6
132BBC:  MOVS            R2, #0x3D ; '='
132BBE:  BL              sub_130FE8
132BC2:  LDRB.W          R0, [SP,#0x28+var_24]
132BC6:  LSLS            R0, R0, #0x1F
132BC8:  ITT NE
132BCA:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132BCC:  BLXNE           j__ZdlPv; operator delete(void *)
132BD0:  LDR             R5, [R4,#0x74]
132BD2:  ADD             R6, SP, #0x28+var_24
132BD4:  LDR             R1, =(unk_82C59 - 0x132BDC)
132BD6:  MOV             R0, R6; int
132BD8:  ADD             R1, PC; unk_82C59 ; src
132BDA:  BL              sub_13055C
132BDE:  MOV             R0, R5
132BE0:  MOV             R1, R6
132BE2:  MOVS            R2, #0x3C ; '<'
132BE4:  BL              sub_130FE8
132BE8:  LDRB.W          R0, [SP,#0x28+var_24]
132BEC:  LSLS            R0, R0, #0x1F
132BEE:  ITT NE
132BF0:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132BF2:  BLXNE           j__ZdlPv; operator delete(void *)
132BF6:  LDR             R5, [R4,#0x74]
132BF8:  ADD             R6, SP, #0x28+var_24
132BFA:  LDR             R1, =(aW7+6 - 0x132C02); ">" ...
132BFC:  MOV             R0, R6; int
132BFE:  ADD             R1, PC; ">" ; src
132C00:  BL              sub_13055C
132C04:  MOV             R0, R5
132C06:  MOV             R1, R6
132C08:  MOVS            R2, #0x3E ; '>'
132C0A:  BL              sub_130FE8
132C0E:  LDRB.W          R0, [SP,#0x28+var_24]
132C12:  LSLS            R0, R0, #0x1F
132C14:  ITT NE
132C16:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132C18:  BLXNE           j__ZdlPv; operator delete(void *)
132C1C:  LDR             R5, [R4,#0x74]
132C1E:  ADD             R6, SP, #0x28+var_24
132C20:  LDR             R1, =(a5+4 - 0x132C28); "[" ...
132C22:  MOV             R0, R6; int
132C24:  ADD             R1, PC; "[" ; src
132C26:  BL              sub_13055C
132C2A:  MOV             R0, R5
132C2C:  MOV             R1, R6
132C2E:  MOVS            R2, #0x5B ; '['
132C30:  BL              sub_130FE8
132C34:  LDRB.W          R0, [SP,#0x28+var_24]
132C38:  LSLS            R0, R0, #0x1F
132C3A:  ITT NE
132C3C:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132C3E:  BLXNE           j__ZdlPv; operator delete(void *)
132C42:  LDR             R5, [R4,#0x74]
132C44:  ADD             R6, SP, #0x28+var_24
132C46:  LDR             R1, =(unk_8919A - 0x132C4E)
132C48:  MOV             R0, R6; int
132C4A:  ADD             R1, PC; unk_8919A ; src
132C4C:  BL              sub_13055C
132C50:  MOV             R0, R5
132C52:  MOV             R1, R6
132C54:  MOVS            R2, #0x5D ; ']'
132C56:  BL              sub_130FE8
132C5A:  LDRB.W          R0, [SP,#0x28+var_24]
132C5E:  LSLS            R0, R0, #0x1F
132C60:  ITT NE
132C62:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132C64:  BLXNE           j__ZdlPv; operator delete(void *)
132C68:  LDR             R0, [R4,#0x74]
132C6A:  MOVS            R1, #3
132C6C:  BL              sub_12FFFC
132C70:  LDR             R5, [R4,#0x78]
132C72:  VMOV.I32        Q8, #0
132C76:  LDR             R1, =(asc_83A7E - 0x132C88); "/" ...
132C78:  ADD             R6, SP, #0x28+var_24
132C7A:  ADD.W           R0, R5, #0x58 ; 'X'
132C7E:  MOVS            R2, #0
132C80:  VST1.32         {D16-D17}, [R0]!
132C84:  ADD             R1, PC; "/"
132C86:  STR             R2, [R0]
132C88:  MOV             R0, R6; int
132C8A:  BL              sub_13055C
132C8E:  MOV             R0, R5
132C90:  MOV             R1, R6
132C92:  MOVS            R2, #0x2F ; '/'
132C94:  BL              sub_130FE8
132C98:  LDRB.W          R0, [SP,#0x28+var_24]
132C9C:  LSLS            R0, R0, #0x1F
132C9E:  ITT NE
132CA0:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132CA2:  BLXNE           j__ZdlPv; operator delete(void *)
132CA6:  LDR             R0, [R4,#0x78]
132CA8:  MOVS            R1, #8
132CAA:  BL              sub_12FFFC
132CAE:  LDR             R5, [R4,#0x78]
132CB0:  ADD             R6, SP, #0x28+var_24
132CB2:  LDR             R1, =(unk_88380 - 0x132CBA)
132CB4:  MOV             R0, R6; int
132CB6:  ADD             R1, PC; unk_88380 ; src
132CB8:  BL              sub_13055C
132CBC:  MOV             R0, R5
132CBE:  MOV             R1, R6
132CC0:  MOVS            R2, #0x2C ; ','
132CC2:  BL              sub_130FE8
132CC6:  VMOV.F32        S0, #10.0
132CCA:  LDRB.W          R0, [SP,#0x28+var_24]
132CCE:  LSLS            R0, R0, #0x1F
132CD0:  VDIV.F32        S16, S16, S0
132CD4:  ITT NE
132CD6:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132CD8:  BLXNE           j__ZdlPv; operator delete(void *)
132CDC:  LDR             R0, [R4,#0x78]
132CDE:  MOVS            R1, #9
132CE0:  BL              sub_12FFFC
132CE4:  VMOV.F32        S0, #4.0
132CE8:  MOVS            R1, #0
132CEA:  STR             R1, [R0,#0x28]
132CEC:  ADD             R6, SP, #0x28+var_24
132CEE:  STR             R1, [R0,#0x20]
132CF0:  STR             R1, [R0,#0x18]
132CF2:  VMUL.F32        S0, S16, S0
132CF6:  VSTR            S0, [R0,#0x24]
132CFA:  VSTR            S0, [R0,#0x1C]
132CFE:  VSTR            S0, [R0,#0x14]
132D02:  MOV             R0, R6; int
132D04:  LDR             R5, [R4,#0x78]
132D06:  LDR             R1, =(asc_887EB - 0x132D0C); "?" ...
132D08:  ADD             R1, PC; "?"
132D0A:  BL              sub_13055C
132D0E:  MOV             R0, R5
132D10:  MOV             R1, R6
132D12:  MOVS            R2, #0x3F ; '?'
132D14:  BL              sub_130FE8
132D18:  LDRB.W          R0, [SP,#0x28+var_24]
132D1C:  LSLS            R0, R0, #0x1F
132D1E:  ITT NE
132D20:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132D22:  BLXNE           j__ZdlPv; operator delete(void *)
132D26:  LDR             R5, [R4,#0x78]
132D28:  ADD             R6, SP, #0x28+var_24
132D2A:  LDR             R1, =(a0+4 - 0x132D32); "!" ...
132D2C:  MOV             R0, R6; int
132D2E:  ADD             R1, PC; "!" ; src
132D30:  BL              sub_13055C
132D34:  MOV             R0, R5
132D36:  MOV             R1, R6
132D38:  MOVS            R2, #0x21 ; '!'
132D3A:  BL              sub_130FE8
132D3E:  LDRB.W          R0, [SP,#0x28+var_24]
132D42:  LSLS            R0, R0, #0x1F
132D44:  ITT NE
132D46:  LDRNE           R0, [SP,#0x28+var_1C]; void *
132D48:  BLXNE           j__ZdlPv; operator delete(void *)
132D4C:  LDR             R0, [R4,#0x78]
132D4E:  MOVS            R1, #0xC
132D50:  BL              sub_12FFFC
132D54:  LDR             R0, [R4,#0x78]
132D56:  MOVS            R1, #0xB
132D58:  BL              sub_12FFFC
132D5C:  LDR             R0, [R4,#0x78]
132D5E:  MOVS            R1, #0xA
132D60:  BL              sub_12FFFC
132D64:  MOV             R0, R4
132D66:  BL              sub_13D758
132D6A:  ADD             SP, SP, #0x10
132D6C:  VPOP            {D8}
132D70:  POP.W           {R11}
132D74:  POP             {R4-R7,PC}
