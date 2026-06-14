; =========================================================
; Game Engine Function: sub_131718
; Address            : 0x131718 - 0x131E9E
; =========================================================

131718:  PUSH            {R4-R7,LR}
13171A:  ADD             R7, SP, #0xC
13171C:  PUSH.W          {R8}
131720:  VPUSH           {D8-D9}
131724:  SUB             SP, SP, #0x10
131726:  MOV             R8, R0
131728:  LDR             R0, =(off_2349A8 - 0x131732)
13172A:  VLDR            S16, [R8,#0x14]
13172E:  ADD             R0, PC; off_2349A8
131730:  LDR             R0, [R0]; dword_381BF4
131732:  LDR             R0, [R0]
131734:  LDRB.W          R0, [R0,#0x81]
131738:  CBZ             R0, loc_131754
13173A:  B               loc_131744
13173C:  DCD off_2349A8 - 0x131732
131740:  DCFS -100.0
131744:  VLDR            S0, =-100.0
131748:  VMOV.F32        S2, #27.0
13174C:  VDIV.F32        S0, S16, S0
131750:  VMLA.F32        S16, S0, S2
131754:  LDR.W           R5, [R8,#0x6C]
131758:  VMOV.I32        Q8, #0
13175C:  LDR             R1, =(unk_83307 - 0x13176E)
13175E:  ADD             R6, SP, #0x30+var_2C
131760:  ADD.W           R0, R5, #0x58 ; 'X'
131764:  MOVS            R2, #0
131766:  VST1.32         {D16-D17}, [R0]!
13176A:  ADD             R1, PC; unk_83307
13176C:  STR             R2, [R0]
13176E:  MOV             R0, R6
131770:  MOVS            R2, #1
131772:  BL              sub_164D04
131776:  MOV             R0, R5
131778:  MOV             R1, R6
13177A:  MOVS            R2, #0xE9
13177C:  BL              sub_12FF60
131780:  B               loc_131788
131782:  ALIGN 4
131784:  DCD unk_83307 - 0x13176E
131788:  LDRB.W          R0, [SP,#0x30+var_2C]
13178C:  LSLS            R0, R0, #0x1F
13178E:  ITT NE
131790:  LDRNE           R0, [SP,#0x30+var_24]; void *
131792:  BLXNE           j__ZdlPv; operator delete(void *)
131796:  LDR.W           R5, [R8,#0x6C]
13179A:  ADD             R6, SP, #0x30+var_2C
13179C:  LDR             R1, =(unk_874C1 - 0x1317A6)
13179E:  MOVS            R2, #1
1317A0:  MOV             R0, R6
1317A2:  ADD             R1, PC; unk_874C1
1317A4:  BL              sub_164D04
1317A8:  MOV             R0, R5
1317AA:  MOV             R1, R6
1317AC:  MOVS            R2, #0xF6
1317AE:  BL              sub_12FF60
1317B2:  B               loc_1317B8
1317B4:  DCD unk_874C1 - 0x1317A6
1317B8:  LDRB.W          R0, [SP,#0x30+var_2C]
1317BC:  LSLS            R0, R0, #0x1F
1317BE:  ITT NE
1317C0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1317C2:  BLXNE           j__ZdlPv; operator delete(void *)
1317C6:  LDR.W           R5, [R8,#0x6C]
1317CA:  ADD             R6, SP, #0x30+var_2C
1317CC:  LDR             R1, =(unk_8ED0E - 0x1317D6)
1317CE:  MOVS            R2, #1
1317D0:  MOV             R0, R6
1317D2:  ADD             R1, PC; unk_8ED0E
1317D4:  BL              sub_164D04
1317D8:  MOV             R0, R5
1317DA:  MOV             R1, R6
1317DC:  MOVS            R2, #0xF3
1317DE:  BL              sub_12FF60
1317E2:  B               loc_1317E8
1317E4:  DCD unk_8ED0E - 0x1317D6
1317E8:  LDRB.W          R0, [SP,#0x30+var_2C]
1317EC:  LSLS            R0, R0, #0x1F
1317EE:  ITT NE
1317F0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1317F2:  BLXNE           j__ZdlPv; operator delete(void *)
1317F6:  LDR.W           R5, [R8,#0x6C]
1317FA:  ADD             R6, SP, #0x30+var_2C
1317FC:  LDR             R1, =(unk_901BB - 0x131806)
1317FE:  MOVS            R2, #1
131800:  MOV             R0, R6
131802:  ADD             R1, PC; unk_901BB
131804:  BL              sub_164D04
131808:  MOV             R0, R5
13180A:  MOV             R1, R6
13180C:  MOVS            R2, #0xEA
13180E:  BL              sub_12FF60
131812:  B               loc_131818
131814:  DCD unk_901BB - 0x131806
131818:  LDRB.W          R0, [SP,#0x30+var_2C]
13181C:  LSLS            R0, R0, #0x1F
13181E:  ITT NE
131820:  LDRNE           R0, [SP,#0x30+var_24]; void *
131822:  BLXNE           j__ZdlPv; operator delete(void *)
131826:  LDR.W           R5, [R8,#0x6C]
13182A:  ADD             R6, SP, #0x30+var_2C
13182C:  LDR             R1, =(unk_8FCF4 - 0x131836)
13182E:  MOVS            R2, #1
131830:  MOV             R0, R6
131832:  ADD             R1, PC; unk_8FCF4
131834:  BL              sub_164D04
131838:  MOV             R0, R5
13183A:  MOV             R1, R6
13183C:  MOVS            R2, #0xE5
13183E:  BL              sub_12FF60
131842:  B               loc_131848
131844:  DCD unk_8FCF4 - 0x131836
131848:  LDRB.W          R0, [SP,#0x30+var_2C]
13184C:  LSLS            R0, R0, #0x1F
13184E:  ITT NE
131850:  LDRNE           R0, [SP,#0x30+var_24]; void *
131852:  BLXNE           j__ZdlPv; operator delete(void *)
131856:  LDR.W           R5, [R8,#0x6C]
13185A:  ADD             R6, SP, #0x30+var_2C
13185C:  LDR             R1, =(unk_83A82 - 0x131866)
13185E:  MOVS            R2, #1
131860:  MOV             R0, R6
131862:  ADD             R1, PC; unk_83A82
131864:  BL              sub_164D04
131868:  MOV             R0, R5
13186A:  MOV             R1, R6
13186C:  MOVS            R2, #0xED
13186E:  BL              sub_12FF60
131872:  B               loc_131878
131874:  DCD unk_83A82 - 0x131866
131878:  LDRB.W          R0, [SP,#0x30+var_2C]
13187C:  LSLS            R0, R0, #0x1F
13187E:  ITT NE
131880:  LDRNE           R0, [SP,#0x30+var_24]; void *
131882:  BLXNE           j__ZdlPv; operator delete(void *)
131886:  LDR.W           R5, [R8,#0x6C]
13188A:  ADD             R6, SP, #0x30+var_2C
13188C:  LDR             R1, =(unk_84806 - 0x131896)
13188E:  MOVS            R2, #1
131890:  MOV             R0, R6
131892:  ADD             R1, PC; unk_84806
131894:  BL              sub_164D04
131898:  MOV             R0, R5
13189A:  MOV             R1, R6
13189C:  MOVS            R2, #0xE3
13189E:  BL              sub_12FF60
1318A2:  B               loc_1318A8
1318A4:  DCD unk_84806 - 0x131896
1318A8:  LDRB.W          R0, [SP,#0x30+var_2C]
1318AC:  LSLS            R0, R0, #0x1F
1318AE:  ITT NE
1318B0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1318B2:  BLXNE           j__ZdlPv; operator delete(void *)
1318B6:  LDR.W           R5, [R8,#0x6C]
1318BA:  ADD             R6, SP, #0x30+var_2C
1318BC:  LDR             R1, =(unk_84808 - 0x1318C6)
1318BE:  MOVS            R2, #1
1318C0:  MOV             R0, R6
1318C2:  ADD             R1, PC; unk_84808
1318C4:  BL              sub_164D04
1318C8:  MOV             R0, R5
1318CA:  MOV             R1, R6
1318CC:  MOVS            R2, #0xF8
1318CE:  BL              sub_12FF60
1318D2:  B               loc_1318D8
1318D4:  DCD unk_84808 - 0x1318C6
1318D8:  LDRB.W          R0, [SP,#0x30+var_2C]
1318DC:  LSLS            R0, R0, #0x1F
1318DE:  ITT NE
1318E0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1318E2:  BLXNE           j__ZdlPv; operator delete(void *)
1318E6:  LDR.W           R5, [R8,#0x6C]
1318EA:  ADD             R6, SP, #0x30+var_2C
1318EC:  LDR             R1, =(unk_901BD - 0x1318F6)
1318EE:  MOVS            R2, #1
1318F0:  MOV             R0, R6
1318F2:  ADD             R1, PC; unk_901BD
1318F4:  BL              sub_164D04
1318F8:  MOV             R0, R5
1318FA:  MOV             R1, R6
1318FC:  MOVS            R2, #0xF9
1318FE:  BL              sub_12FF60
131902:  B               loc_131908
131904:  DCD unk_901BD - 0x1318F6
131908:  LDRB.W          R0, [SP,#0x30+var_2C]
13190C:  LSLS            R0, R0, #0x1F
13190E:  ITT NE
131910:  LDRNE           R0, [SP,#0x30+var_24]; void *
131912:  BLXNE           j__ZdlPv; operator delete(void *)
131916:  LDR.W           R5, [R8,#0x6C]
13191A:  ADD             R6, SP, #0x30+var_2C
13191C:  LDR             R1, =(unk_84110 - 0x131926)
13191E:  MOVS            R2, #1
131920:  MOV             R0, R6
131922:  ADD             R1, PC; unk_84110
131924:  BL              sub_164D04
131928:  MOV             R0, R5
13192A:  MOV             R1, R6
13192C:  MOVS            R2, #0xE7
13192E:  BL              sub_12FF60
131932:  B               loc_131938
131934:  DCD unk_84110 - 0x131926
131938:  LDRB.W          R0, [SP,#0x30+var_2C]
13193C:  LSLS            R0, R0, #0x1F
13193E:  ITT NE
131940:  LDRNE           R0, [SP,#0x30+var_24]; void *
131942:  BLXNE           j__ZdlPv; operator delete(void *)
131946:  LDR.W           R5, [R8,#0x6C]
13194A:  ADD             R6, SP, #0x30+var_2C
13194C:  LDR             R1, =(unk_8DF8B - 0x131956)
13194E:  MOVS            R2, #1
131950:  MOV             R0, R6
131952:  ADD             R1, PC; unk_8DF8B
131954:  BL              sub_164D04
131958:  MOV             R0, R5
13195A:  MOV             R1, R6
13195C:  MOVS            R2, #0xF5
13195E:  BL              sub_12FF60
131962:  B               loc_131968
131964:  DCD unk_8DF8B - 0x131956
131968:  LDRB.W          R0, [SP,#0x30+var_2C]
13196C:  LSLS            R0, R0, #0x1F
13196E:  ITT NE
131970:  LDRNE           R0, [SP,#0x30+var_24]; void *
131972:  BLXNE           j__ZdlPv; operator delete(void *)
131976:  LDR.W           R5, [R8,#0x70]
13197A:  VMOV.I32        Q8, #0
13197E:  LDR             R1, =(unk_8F446 - 0x131990)
131980:  ADD             R6, SP, #0x30+var_2C
131982:  ADD.W           R0, R5, #0x58 ; 'X'
131986:  MOVS            R2, #0
131988:  VST1.32         {D16-D17}, [R0]!
13198C:  ADD             R1, PC; unk_8F446
13198E:  STR             R2, [R0]
131990:  MOV             R0, R6
131992:  MOVS            R2, #1
131994:  BL              sub_164D04
131998:  MOV             R0, R5
13199A:  MOV             R1, R6
13199C:  MOVS            R2, #0xF4
13199E:  BL              sub_12FF60
1319A2:  B               loc_1319A8
1319A4:  DCD unk_8F446 - 0x131990
1319A8:  LDRB.W          R0, [SP,#0x30+var_2C]
1319AC:  LSLS            R0, R0, #0x1F
1319AE:  ITT NE
1319B0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1319B2:  BLXNE           j__ZdlPv; operator delete(void *)
1319B6:  LDR.W           R5, [R8,#0x70]
1319BA:  ADD             R6, SP, #0x30+var_2C
1319BC:  LDR             R1, =(unk_8DF8D - 0x1319C6)
1319BE:  MOVS            R2, #1
1319C0:  MOV             R0, R6
1319C2:  ADD             R1, PC; unk_8DF8D
1319C4:  BL              sub_164D04
1319C8:  MOV             R0, R5
1319CA:  MOV             R1, R6
1319CC:  MOVS            R2, #0xFB
1319CE:  BL              sub_12FF60
1319D2:  B               loc_1319D8
1319D4:  DCD unk_8DF8D - 0x1319C6
1319D8:  LDRB.W          R0, [SP,#0x30+var_2C]
1319DC:  LSLS            R0, R0, #0x1F
1319DE:  ITT NE
1319E0:  LDRNE           R0, [SP,#0x30+var_24]; void *
1319E2:  BLXNE           j__ZdlPv; operator delete(void *)
1319E6:  LDR.W           R5, [R8,#0x70]
1319EA:  ADD             R6, SP, #0x30+var_2C
1319EC:  LDR             R1, =(unk_8DF8F - 0x1319F6)
1319EE:  MOVS            R2, #1
1319F0:  MOV             R0, R6
1319F2:  ADD             R1, PC; unk_8DF8F
1319F4:  BL              sub_164D04
1319F8:  MOV             R0, R5
1319FA:  MOV             R1, R6
1319FC:  MOVS            R2, #0xE2
1319FE:  BL              sub_12FF60
131A02:  B               loc_131A08
131A04:  DCD unk_8DF8F - 0x1319F6
131A08:  LDRB.W          R0, [SP,#0x30+var_2C]
131A0C:  LSLS            R0, R0, #0x1F
131A0E:  ITT NE
131A10:  LDRNE           R0, [SP,#0x30+var_24]; void *
131A12:  BLXNE           j__ZdlPv; operator delete(void *)
131A16:  LDR.W           R5, [R8,#0x70]
131A1A:  ADD             R6, SP, #0x30+var_2C
131A1C:  LDR             R1, =(unk_8CA0B - 0x131A26)
131A1E:  MOVS            R2, #1
131A20:  MOV             R0, R6
131A22:  ADD             R1, PC; unk_8CA0B
131A24:  BL              sub_164D04
131A28:  MOV             R0, R5
131A2A:  MOV             R1, R6
131A2C:  MOVS            R2, #0xE0
131A2E:  BL              sub_12FF60
131A32:  B               loc_131A38
131A34:  DCD unk_8CA0B - 0x131A26
131A38:  LDRB.W          R0, [SP,#0x30+var_2C]
131A3C:  LSLS            R0, R0, #0x1F
131A3E:  ITT NE
131A40:  LDRNE           R0, [SP,#0x30+var_24]; void *
131A42:  BLXNE           j__ZdlPv; operator delete(void *)
131A46:  LDR.W           R5, [R8,#0x70]
131A4A:  ADD             R6, SP, #0x30+var_2C
131A4C:  LDR             R1, =(unk_8DF91 - 0x131A56)
131A4E:  MOVS            R2, #1
131A50:  MOV             R0, R6
131A52:  ADD             R1, PC; unk_8DF91
131A54:  BL              sub_164D04
131A58:  MOV             R0, R5
131A5A:  MOV             R1, R6
131A5C:  MOVS            R2, #0xEF
131A5E:  BL              sub_12FF60
131A62:  B               loc_131A68
131A64:  DCD unk_8DF91 - 0x131A56
131A68:  LDRB.W          R0, [SP,#0x30+var_2C]
131A6C:  LSLS            R0, R0, #0x1F
131A6E:  ITT NE
131A70:  LDRNE           R0, [SP,#0x30+var_24]; void *
131A72:  BLXNE           j__ZdlPv; operator delete(void *)
131A76:  LDR.W           R5, [R8,#0x70]
131A7A:  ADD             R6, SP, #0x30+var_2C
131A7C:  LDR             R1, =(unk_8B3D5 - 0x131A86)
131A7E:  MOVS            R2, #1
131A80:  MOV             R0, R6
131A82:  ADD             R1, PC; unk_8B3D5
131A84:  BL              sub_164D04
131A88:  MOV             R0, R5
131A8A:  MOV             R1, R6
131A8C:  MOVS            R2, #0xF0
131A8E:  BL              sub_12FF60
131A92:  B               loc_131A98
131A94:  DCD unk_8B3D5 - 0x131A86
131A98:  LDRB.W          R0, [SP,#0x30+var_2C]
131A9C:  LSLS            R0, R0, #0x1F
131A9E:  ITT NE
131AA0:  LDRNE           R0, [SP,#0x30+var_24]; void *
131AA2:  BLXNE           j__ZdlPv; operator delete(void *)
131AA6:  LDR.W           R5, [R8,#0x70]
131AAA:  ADD             R6, SP, #0x30+var_2C
131AAC:  LDR             R1, =(unk_86B56 - 0x131AB6)
131AAE:  MOVS            R2, #1
131AB0:  MOV             R0, R6
131AB2:  ADD             R1, PC; unk_86B56
131AB4:  BL              sub_164D04
131AB8:  MOV             R0, R5
131ABA:  MOV             R1, R6
131ABC:  MOVS            R2, #0xEE
131ABE:  BL              sub_12FF60
131AC2:  LDRB.W          R0, [SP,#0x30+var_2C]
131AC6:  LSLS            R0, R0, #0x1F
131AC8:  ITT NE
131ACA:  LDRNE           R0, [SP,#0x30+var_24]; void *
131ACC:  BLXNE           j__ZdlPv; operator delete(void *)
131AD0:  LDR.W           R5, [R8,#0x70]
131AD4:  ADD             R6, SP, #0x30+var_2C
131AD6:  LDR             R1, =(unk_8C30C - 0x131AE0)
131AD8:  MOVS            R2, #1
131ADA:  MOV             R0, R6
131ADC:  ADD             R1, PC; unk_8C30C
131ADE:  BL              sub_164D04
131AE2:  MOV             R0, R5
131AE4:  MOV             R1, R6
131AE6:  MOVS            R2, #0xEB
131AE8:  BL              sub_12FF60
131AEC:  LDRB.W          R0, [SP,#0x30+var_2C]
131AF0:  LSLS            R0, R0, #0x1F
131AF2:  ITT NE
131AF4:  LDRNE           R0, [SP,#0x30+var_24]; void *
131AF6:  BLXNE           j__ZdlPv; operator delete(void *)
131AFA:  LDR.W           R5, [R8,#0x70]
131AFE:  ADD             R6, SP, #0x30+var_2C
131B00:  LDR             R1, =(unk_898B4 - 0x131B0A)
131B02:  MOVS            R2, #1
131B04:  MOV             R0, R6
131B06:  ADD             R1, PC; unk_898B4
131B08:  BL              sub_164D04
131B0C:  MOV             R0, R5
131B0E:  MOV             R1, R6
131B10:  MOVS            R2, #0xE4
131B12:  BL              sub_12FF60
131B16:  LDRB.W          R0, [SP,#0x30+var_2C]
131B1A:  LSLS            R0, R0, #0x1F
131B1C:  ITT NE
131B1E:  LDRNE           R0, [SP,#0x30+var_24]; void *
131B20:  BLXNE           j__ZdlPv; operator delete(void *)
131B24:  LDR.W           R5, [R8,#0x70]
131B28:  ADD             R6, SP, #0x30+var_2C
131B2A:  LDR             R1, =(unk_90FE2 - 0x131B34)
131B2C:  MOVS            R2, #1
131B2E:  MOV             R0, R6
131B30:  ADD             R1, PC; unk_90FE2
131B32:  BL              sub_164D04
131B36:  MOV             R0, R5
131B38:  MOV             R1, R6
131B3A:  MOVS            R2, #0xE6
131B3C:  BL              sub_12FF60
131B40:  LDRB.W          R0, [SP,#0x30+var_2C]
131B44:  LSLS            R0, R0, #0x1F
131B46:  ITT NE
131B48:  LDRNE           R0, [SP,#0x30+var_24]; void *
131B4A:  BLXNE           j__ZdlPv; operator delete(void *)
131B4E:  LDR.W           R5, [R8,#0x70]
131B52:  ADD             R6, SP, #0x30+var_2C
131B54:  LDR             R1, =(unk_8CA0D - 0x131B5E)
131B56:  MOVS            R2, #1
131B58:  MOV             R0, R6
131B5A:  ADD             R1, PC; unk_8CA0D
131B5C:  BL              sub_164D04
131B60:  MOV             R0, R5
131B62:  MOV             R1, R6
131B64:  MOVS            R2, #0xFD
131B66:  BL              sub_12FF60
131B6A:  LDRB.W          R0, [SP,#0x30+var_2C]
131B6E:  LSLS            R0, R0, #0x1F
131B70:  ITT NE
131B72:  LDRNE           R0, [SP,#0x30+var_24]; void *
131B74:  BLXNE           j__ZdlPv; operator delete(void *)
131B78:  VMOV.F32        S0, #11.0
131B7C:  LDR.W           R0, [R8,#0x74]
131B80:  VMOV.I32        Q8, #0
131B84:  MOVS            R4, #0
131B86:  ADD.W           R1, R0, #0x58 ; 'X'
131B8A:  VST1.32         {D16-D17}, [R1]!
131B8E:  STR             R4, [R1]
131B90:  MOVS            R1, #1
131B92:  VDIV.F32        S18, S16, S0
131B96:  BL              sub_12FFFC
131B9A:  VMOV.F32        S0, #1.5
131B9E:  STR             R4, [R0,#0x28]
131BA0:  STR             R4, [R0,#0x20]
131BA2:  ADD             R6, SP, #0x30+var_2C
131BA4:  STR             R4, [R0,#0x18]
131BA6:  MOVS            R2, #1
131BA8:  VMUL.F32        S16, S18, S0
131BAC:  VSTR            S16, [R0,#0x24]
131BB0:  VSTR            S16, [R0,#0x1C]
131BB4:  VSTR            S16, [R0,#0x14]
131BB8:  MOV             R0, R6
131BBA:  LDR.W           R5, [R8,#0x74]
131BBE:  LDR             R1, =(unk_8D730 - 0x131BC4)
131BC0:  ADD             R1, PC; unk_8D730
131BC2:  BL              sub_164D04
131BC6:  MOV             R0, R5
131BC8:  MOV             R1, R6
131BCA:  MOVS            R2, #0xFF
131BCC:  BL              sub_12FF60
131BD0:  LDRB.W          R0, [SP,#0x30+var_2C]
131BD4:  LSLS            R0, R0, #0x1F
131BD6:  ITT NE
131BD8:  LDRNE           R0, [SP,#0x30+var_24]; void *
131BDA:  BLXNE           j__ZdlPv; operator delete(void *)
131BDE:  LDR.W           R5, [R8,#0x74]
131BE2:  ADD             R6, SP, #0x30+var_2C
131BE4:  LDR             R1, =(unk_8B3D7 - 0x131BEE)
131BE6:  MOVS            R2, #1
131BE8:  MOV             R0, R6
131BEA:  ADD             R1, PC; unk_8B3D7
131BEC:  BL              sub_164D04
131BF0:  MOV             R0, R5
131BF2:  MOV             R1, R6
131BF4:  MOVS            R2, #0xF7
131BF6:  BL              sub_12FF60
131BFA:  LDRB.W          R0, [SP,#0x30+var_2C]
131BFE:  LSLS            R0, R0, #0x1F
131C00:  ITT NE
131C02:  LDRNE           R0, [SP,#0x30+var_24]; void *
131C04:  BLXNE           j__ZdlPv; operator delete(void *)
131C08:  LDR.W           R5, [R8,#0x74]
131C0C:  ADD             R6, SP, #0x30+var_2C
131C0E:  LDR             R1, =(unk_8C30E - 0x131C18)
131C10:  MOVS            R2, #1
131C12:  MOV             R0, R6
131C14:  ADD             R1, PC; unk_8C30E
131C16:  BL              sub_164D04
131C1A:  MOV             R0, R5
131C1C:  MOV             R1, R6
131C1E:  MOVS            R2, #0xF1
131C20:  BL              sub_12FF60
131C24:  LDRB.W          R0, [SP,#0x30+var_2C]
131C28:  LSLS            R0, R0, #0x1F
131C2A:  ITT NE
131C2C:  LDRNE           R0, [SP,#0x30+var_24]; void *
131C2E:  BLXNE           j__ZdlPv; operator delete(void *)
131C32:  LDR.W           R5, [R8,#0x74]
131C36:  ADD             R6, SP, #0x30+var_2C
131C38:  LDR             R1, =(unk_86B58 - 0x131C42)
131C3A:  MOVS            R2, #1
131C3C:  MOV             R0, R6
131C3E:  ADD             R1, PC; unk_86B58
131C40:  BL              sub_164D04
131C44:  MOV             R0, R5
131C46:  MOV             R1, R6
131C48:  MOVS            R2, #0xEC
131C4A:  BL              sub_12FF60
131C4E:  LDRB.W          R0, [SP,#0x30+var_2C]
131C52:  LSLS            R0, R0, #0x1F
131C54:  ITT NE
131C56:  LDRNE           R0, [SP,#0x30+var_24]; void *
131C58:  BLXNE           j__ZdlPv; operator delete(void *)
131C5C:  LDR.W           R5, [R8,#0x74]
131C60:  ADD             R6, SP, #0x30+var_2C
131C62:  LDR             R1, =(unk_82C4F - 0x131C6C)
131C64:  MOVS            R2, #1
131C66:  MOV             R0, R6
131C68:  ADD             R1, PC; unk_82C4F
131C6A:  BL              sub_164D04
131C6E:  MOV             R0, R5
131C70:  MOV             R1, R6
131C72:  MOVS            R2, #0xE8
131C74:  BL              sub_12FF60
131C78:  LDRB.W          R0, [SP,#0x30+var_2C]
131C7C:  LSLS            R0, R0, #0x1F
131C7E:  ITT NE
131C80:  LDRNE           R0, [SP,#0x30+var_24]; void *
131C82:  BLXNE           j__ZdlPv; operator delete(void *)
131C86:  LDR.W           R5, [R8,#0x74]
131C8A:  ADD             R6, SP, #0x30+var_2C
131C8C:  LDR             R1, =(unk_8BBB5 - 0x131C96)
131C8E:  MOVS            R2, #1
131C90:  MOV             R0, R6
131C92:  ADD             R1, PC; unk_8BBB5
131C94:  BL              sub_164D04
131C98:  MOV             R0, R5
131C9A:  MOV             R1, R6
131C9C:  MOVS            R2, #0xF2
131C9E:  BL              sub_12FF60
131CA2:  LDRB.W          R0, [SP,#0x30+var_2C]
131CA6:  LSLS            R0, R0, #0x1F
131CA8:  ITT NE
131CAA:  LDRNE           R0, [SP,#0x30+var_24]; void *
131CAC:  BLXNE           j__ZdlPv; operator delete(void *)
131CB0:  LDR.W           R5, [R8,#0x74]
131CB4:  ADD             R6, SP, #0x30+var_2C
131CB6:  LDR             R1, =(unk_82C51 - 0x131CC0)
131CB8:  MOVS            R2, #1
131CBA:  MOV             R0, R6
131CBC:  ADD             R1, PC; unk_82C51
131CBE:  BL              sub_164D04
131CC2:  MOV             R0, R5
131CC4:  MOV             R1, R6
131CC6:  MOVS            R2, #0xFC
131CC8:  BL              sub_12FF60
131CCC:  LDRB.W          R0, [SP,#0x30+var_2C]
131CD0:  LSLS            R0, R0, #0x1F
131CD2:  ITT NE
131CD4:  LDRNE           R0, [SP,#0x30+var_24]; void *
131CD6:  BLXNE           j__ZdlPv; operator delete(void *)
131CDA:  LDR.W           R5, [R8,#0x74]
131CDE:  ADD             R6, SP, #0x30+var_2C
131CE0:  LDR             R1, =(unk_8ACC0 - 0x131CEA)
131CE2:  MOVS            R2, #1
131CE4:  MOV             R0, R6
131CE6:  ADD             R1, PC; unk_8ACC0
131CE8:  BL              sub_164D04
131CEC:  MOV             R0, R5
131CEE:  MOV             R1, R6
131CF0:  MOVS            R2, #0xE1
131CF2:  BL              sub_12FF60
131CF6:  LDRB.W          R0, [SP,#0x30+var_2C]
131CFA:  LSLS            R0, R0, #0x1F
131CFC:  ITT NE
131CFE:  LDRNE           R0, [SP,#0x30+var_24]; void *
131D00:  BLXNE           j__ZdlPv; operator delete(void *)
131D04:  LDR.W           R5, [R8,#0x74]
131D08:  ADD             R6, SP, #0x30+var_2C
131D0A:  LDR             R1, =(unk_898B6 - 0x131D14)
131D0C:  MOVS            R2, #1
131D0E:  MOV             R0, R6
131D10:  ADD             R1, PC; unk_898B6
131D12:  BL              sub_164D04
131D16:  MOV             R0, R5
131D18:  MOV             R1, R6
131D1A:  MOVS            R2, #0xFE
131D1C:  BL              sub_12FF60
131D20:  LDRB.W          R0, [SP,#0x30+var_2C]
131D24:  LSLS            R0, R0, #0x1F
131D26:  ITT NE
131D28:  LDRNE           R0, [SP,#0x30+var_24]; void *
131D2A:  BLXNE           j__ZdlPv; operator delete(void *)
131D2E:  LDR.W           R0, [R8,#0x74]
131D32:  MOVS            R1, #3
131D34:  BL              sub_12FFFC
131D38:  MOVS            R4, #0
131D3A:  VSTR            S16, [R0,#0x24]
131D3E:  STR             R4, [R0,#0x28]
131D40:  VMOV.I32        Q8, #0
131D44:  STR             R4, [R0,#0x20]
131D46:  ADD             R6, SP, #0x30+var_2C
131D48:  VSTR            S16, [R0,#0x1C]
131D4C:  STR             R4, [R0,#0x18]
131D4E:  VSTR            S16, [R0,#0x14]
131D52:  LDR.W           R5, [R8,#0x78]
131D56:  LDR             R1, =(asc_83A7E - 0x131D64); "/" ...
131D58:  ADD.W           R0, R5, #0x58 ; 'X'
131D5C:  VST1.32         {D16-D17}, [R0]!
131D60:  ADD             R1, PC; "/"
131D62:  STR             R4, [R0]
131D64:  MOV             R0, R6; int
131D66:  BL              sub_13055C
131D6A:  MOV             R0, R5
131D6C:  MOV             R1, R6
131D6E:  MOVS            R2, #0x2F ; '/'
131D70:  BL              sub_130FE8
131D74:  VLDR            S0, =1.2
131D78:  LDRB.W          R1, [SP,#0x30+var_2C]
131D7C:  VMUL.F32        S0, S18, S0
131D80:  STR             R4, [R0,#0x28]
131D82:  STR             R4, [R0,#0x20]
131D84:  STR             R4, [R0,#0x18]
131D86:  VSTR            S0, [R0,#0x24]
131D8A:  VSTR            S0, [R0,#0x1C]
131D8E:  VSTR            S0, [R0,#0x14]
131D92:  LSLS            R0, R1, #0x1F
131D94:  ITT NE
131D96:  LDRNE           R0, [SP,#0x30+var_24]; void *
131D98:  BLXNE           j__ZdlPv; operator delete(void *)
131D9C:  LDR.W           R5, [R8,#0x78]
131DA0:  ADD             R6, SP, #0x30+var_2C
131DA2:  LDR             R1, =(unk_8D193 - 0x131DAC)
131DA4:  MOVS            R2, #1
131DA6:  MOV             R0, R6
131DA8:  ADD             R1, PC; unk_8D193
131DAA:  BL              sub_164D04
131DAE:  MOV             R0, R5
131DB0:  MOV             R1, R6
131DB2:  MOVS            R2, #0xB8
131DB4:  BL              sub_12FF60
131DB8:  LDRB.W          R0, [SP,#0x30+var_2C]
131DBC:  LSLS            R0, R0, #0x1F
131DBE:  ITT NE
131DC0:  LDRNE           R0, [SP,#0x30+var_24]; void *
131DC2:  BLXNE           j__ZdlPv; operator delete(void *)
131DC6:  LDR.W           R0, [R8,#0x78]
131DCA:  MOVS            R1, #4
131DCC:  BL              sub_12FFFC
131DD0:  LDR.W           R0, [R8,#0x78]
131DD4:  MOVS            R1, #5
131DD6:  BL              sub_12FFFC
131DDA:  LDR.W           R0, [R8,#0x78]
131DDE:  MOVS            R1, #7
131DE0:  BL              sub_12FFFC
131DE4:  LDR.W           R0, [R8,#0x78]
131DE8:  MOVS            R1, #9
131DEA:  BL              sub_12FFFC
131DEE:  VMOV.F32        S0, #3.0
131DF2:  MOVS            R1, #0
131DF4:  STR             R1, [R0,#0x28]
131DF6:  ADD             R6, SP, #0x30+var_2C
131DF8:  STR             R1, [R0,#0x20]
131DFA:  STR             R1, [R0,#0x18]
131DFC:  VMUL.F32        S0, S18, S0
131E00:  VSTR            S0, [R0,#0x24]
131E04:  VSTR            S0, [R0,#0x1C]
131E08:  VSTR            S0, [R0,#0x14]
131E0C:  MOV             R0, R6; int
131E0E:  LDR.W           R5, [R8,#0x78]
131E12:  LDR             R1, =(unk_88380 - 0x131E18)
131E14:  ADD             R1, PC; unk_88380 ; src
131E16:  BL              sub_13055C
131E1A:  MOV             R0, R5
131E1C:  MOV             R1, R6
131E1E:  MOVS            R2, #0x2C ; ','
131E20:  BL              sub_130FE8
131E24:  LDRB.W          R0, [SP,#0x30+var_2C]
131E28:  LSLS            R0, R0, #0x1F
131E2A:  ITT NE
131E2C:  LDRNE           R0, [SP,#0x30+var_24]; void *
131E2E:  BLXNE           j__ZdlPv; operator delete(void *)
131E32:  LDR.W           R5, [R8,#0x78]
131E36:  ADD             R6, SP, #0x30+var_2C
131E38:  LDR             R1, =(asc_836CD - 0x131E40); "." ...
131E3A:  MOV             R0, R6; int
131E3C:  ADD             R1, PC; "."
131E3E:  BL              sub_13055C
131E42:  MOV             R0, R5
131E44:  MOV             R1, R6
131E46:  MOVS            R2, #0x2E ; '.'
131E48:  BL              sub_130FE8
131E4C:  LDRB.W          R0, [SP,#0x30+var_2C]
131E50:  LSLS            R0, R0, #0x1F
131E52:  ITT NE
131E54:  LDRNE           R0, [SP,#0x30+var_24]; void *
131E56:  BLXNE           j__ZdlPv; operator delete(void *)
131E5A:  LDR.W           R0, [R8,#0x78]
131E5E:  MOVS            R1, #0xC
131E60:  BL              sub_12FFFC
131E64:  LDR.W           R0, [R8,#0x78]
131E68:  MOVS            R1, #0xB
131E6A:  BL              sub_12FFFC
131E6E:  LDR.W           R0, [R8,#0x78]
131E72:  MOVS            R1, #0xA
131E74:  BL              sub_12FFFC
131E78:  MOVS            R1, #0
131E7A:  VSTR            S16, [R0,#0x24]
131E7E:  STR             R1, [R0,#0x28]
131E80:  STR             R1, [R0,#0x20]
131E82:  VSTR            S16, [R0,#0x1C]
131E86:  STR             R1, [R0,#0x18]
131E88:  VSTR            S16, [R0,#0x14]
131E8C:  MOV             R0, R8
131E8E:  BL              sub_13D758
131E92:  ADD             SP, SP, #0x10
131E94:  VPOP            {D8-D9}
131E98:  POP.W           {R8}
131E9C:  POP             {R4-R7,PC}
