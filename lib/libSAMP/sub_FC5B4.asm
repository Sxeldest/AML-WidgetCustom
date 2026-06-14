; =========================================================
; Game Engine Function: sub_FC5B4
; Address            : 0xFC5B4 - 0xFCA54
; =========================================================

FC5B4:  PUSH            {R4-R7,LR}
FC5B6:  ADD             R7, SP, #0xC
FC5B8:  PUSH.W          {R8-R11}
FC5BC:  SUB             SP, SP, #4
FC5BE:  VPUSH           {D8}
FC5C2:  SUB             SP, SP, #0x30
FC5C4:  CBZ             R0, loc_FC5EA
FC5C6:  MOV             R5, R0
FC5C8:  LDR             R0, =(off_23494C - 0xFC5D4)
FC5CA:  MOVW            R2, #0x7D24
FC5CE:  LDR             R1, [R5]
FC5D0:  ADD             R0, PC; off_23494C
FC5D2:  MOVT            R2, #0x66 ; 'f'
FC5D6:  LDR.W           R9, [R0]; dword_23DF24
FC5DA:  LDR.W           R0, [R9]
FC5DE:  ADD             R0, R2
FC5E0:  CMP             R1, R0
FC5E2:  ITT NE
FC5E4:  LDRNE           R0, [R5,#0x18]
FC5E6:  CMPNE           R0, #0
FC5E8:  BNE             loc_FC5F8
FC5EA:  ADD             SP, SP, #0x30 ; '0'
FC5EC:  VPOP            {D8}
FC5F0:  ADD             SP, SP, #4
FC5F2:  POP.W           {R8-R11}
FC5F6:  POP             {R4-R7,PC}
FC5F8:  LDR             R0, =(off_23496C - 0xFC5FE)
FC5FA:  ADD             R0, PC; off_23496C
FC5FC:  LDR             R4, [R0]; dword_23DEF4
FC5FE:  LDR             R0, [R4]
FC600:  CMP             R0, #0
FC602:  BEQ.W           loc_FC8E2
FC606:  LDR.W           R0, [R0,#0x3B0]
FC60A:  MOV             R1, R5
FC60C:  LDR             R0, [R0,#0x10]
FC60E:  BL              sub_148664
FC612:  CBZ             R0, loc_FC61E
FC614:  MOV             R6, R0
FC616:  LDR             R0, =(dword_2474B4 - 0xFC61C)
FC618:  ADD             R0, PC; dword_2474B4
FC61A:  STR             R6, [R0]
FC61C:  B               loc_FC63A
FC61E:  LDR             R0, [R4]
FC620:  MOV             R1, R5
FC622:  LDR.W           R0, [R0,#0x3B0]
FC626:  LDR             R0, [R0]
FC628:  BL              sub_149182
FC62C:  MOV             R6, R0
FC62E:  LDR             R0, =(dword_2474B4 - 0xFC636)
FC630:  CMP             R6, #0
FC632:  ADD             R0, PC; dword_2474B4
FC634:  STR             R6, [R0]
FC636:  BEQ.W           loc_FC8E2
FC63A:  MOV             R0, R6
FC63C:  BL              sub_F8E0E
FC640:  CMP             R0, #0
FC642:  BEQ.W           loc_FC8E2
FC646:  MOV             R8, R0
FC648:  BL              sub_1082E4
FC64C:  MOV             R4, R0
FC64E:  BL              sub_1082E4
FC652:  LDRB.W          R0, [R0,#0x485]
FC656:  LSLS            R0, R0, #0x1F
FC658:  BEQ             loc_FC662
FC65A:  BL              sub_1082E4
FC65E:  LDR.W           R4, [R0,#0x590]
FC662:  LDR             R1, [R4,#0x14]
FC664:  LDR             R0, [R5,#0x14]
FC666:  ADD.W           R2, R0, #0x30 ; '0'
FC66A:  VLDR            S0, [R1,#0x30]
FC66E:  VLDR            S2, [R1,#0x34]
FC672:  CMP             R0, #0
FC674:  VLDR            S4, [R1,#0x38]
FC678:  IT EQ
FC67A:  ADDEQ           R2, R5, #4
FC67C:  VLDR            S8, [R2,#4]
FC680:  VLDR            S6, [R2]
FC684:  VSUB.F32        S2, S2, S8
FC688:  VLDR            S10, [R2,#8]
FC68C:  VSUB.F32        S0, S0, S6
FC690:  LDRB.W          R0, [R6,#0x270]
FC694:  VMUL.F32        S16, S2, S2
FC698:  VSUB.F32        S2, S4, S10
FC69C:  VMLA.F32        S16, S0, S0
FC6A0:  VMLA.F32        S16, S2, S2
FC6A4:  CBZ             R0, loc_FC6B4
FC6A6:  VLDR            S0, =900.0
FC6AA:  VCMP.F32        S16, S0
FC6AE:  VMRS            APSR_nzcv, FPSCR
FC6B2:  BGT             loc_FC5EA
FC6B4:  LDR             R0, =(byte_2474C8 - 0xFC6BA)
FC6B6:  ADD             R0, PC; byte_2474C8
FC6B8:  LDRB            R0, [R0]
FC6BA:  DMB.W           ISH
FC6BE:  LSLS            R0, R0, #0x1F
FC6C0:  LDR             R0, =(unk_2474BC - 0xFC6C6)
FC6C2:  ADD             R0, PC; unk_2474BC
FC6C4:  STR             R0, [SP,#0x58+obj]
FC6C6:  BEQ.W           loc_FC9F4
FC6CA:  LDR             R0, =(byte_2474D8 - 0xFC6D0)
FC6CC:  ADD             R0, PC; byte_2474D8
FC6CE:  LDRB            R0, [R0]
FC6D0:  DMB.W           ISH
FC6D4:  LSLS            R0, R0, #0x1F
FC6D6:  LDR             R0, =(unk_2474CC - 0xFC6DC)
FC6D8:  ADD             R0, PC; unk_2474CC
FC6DA:  STR             R0, [SP,#0x58+var_48]
FC6DC:  BEQ.W           loc_FCA22
FC6E0:  LDRB.W          R0, [R6,#0xEC]
FC6E4:  CMP             R0, #0
FC6E6:  BEQ.W           loc_FC8C6
FC6EA:  STR             R5, [SP,#0x58+var_4C]
FC6EC:  MOVW            R2, #:lower16:(aConfigParseErr_0+9); "rse error: error reallocating config en"...
FC6F0:  LDR             R1, =(sub_FC58C+1 - 0xFC702)
FC6F2:  MOVT            R2, #:upper16:(aConfigParseErr_0+9); "rse error: error reallocating config en"...
FC6F6:  STR.W           R9, [SP,#0x58+var_50]
FC6FA:  LDR.W           R3, [R9]
FC6FE:  ADD             R1, PC; sub_FC58C
FC700:  LDR             R4, [SP,#0x58+obj]
FC702:  LDR.W           R0, [R8,#4]
FC706:  ADD             R3, R2
FC708:  MOV             R2, R4
FC70A:  BLX             R3
FC70C:  LDRD.W          R0, R1, [R4]
FC710:  MOVS            R2, #0
FC712:  STR             R2, [SP,#0x58+var_3C]
FC714:  CMP             R1, R0
FC716:  BEQ.W           loc_FC8C2
FC71A:  MOVS            R1, #0
FC71C:  LDR.W           R11, [R0,R1,LSL#2]
FC720:  MOVS            R1, #0
FC722:  STR             R1, [SP,#0x58+var_40]
FC724:  LDR.W           R0, [R11,#0x24]
FC728:  CMP             R0, #1
FC72A:  BLT.W           loc_FC8AC
FC72E:  MOV.W           R9, #0
FC732:  MOVS            R0, #0
FC734:  ADD.W           R1, R6, R0,LSL#2
FC738:  LDR             R2, [R1,#0x2C]
FC73A:  CBNZ            R2, loc_FC740
FC73C:  LDR             R1, [R1,#0x6C]
FC73E:  CBZ             R1, loc_FC7AE
FC740:  LDR             R1, =(unk_2474CC - 0xFC74C)
FC742:  ADD             R5, SP, #0x58+var_30
FC744:  LDR             R4, =(unk_B3195 - 0xFC750)
FC746:  ADD             R2, SP, #0x58+var_3C
FC748:  ADD             R1, PC; unk_2474CC
FC74A:  MOV             R0, R5
FC74C:  ADD             R4, PC; unk_B3195
FC74E:  STR             R2, [SP,#0x58+var_34]
FC750:  ADD.W           R10, SP, #0x58+var_34
FC754:  ADD.W           R8, SP, #0x58+var_38
FC758:  MOV             R3, R4
FC75A:  STR.W           R10, [SP,#0x58+var_58]
FC75E:  STR.W           R8, [SP,#0x58+var_54]
FC762:  BL              sub_100D30
FC766:  LDR             R0, [SP,#0x58+var_30]
FC768:  ADD             R2, SP, #0x58+var_40
FC76A:  MOV             R3, R4
FC76C:  STR             R2, [SP,#0x58+var_34]
FC76E:  ADD.W           R1, R0, #0x14
FC772:  MOV             R0, R5
FC774:  STRD.W          R10, R8, [SP,#0x58+var_58]
FC778:  BL              sub_100DE4
FC77C:  LDR             R0, [SP,#0x58+var_40]
FC77E:  MOVS            R3, #0xC
FC780:  LDR.W           R2, [R11,#0x20]
FC784:  LDR             R1, [SP,#0x58+var_30]
FC786:  LDR.W           R2, [R2,R0,LSL#2]
FC78A:  ADDS            R1, #0x14
FC78C:  VLD1.8          {D16-D17}, [R2],R3
FC790:  VLD1.8          {D18-D19}, [R2]
FC794:  VST1.8          {D16-D17}, [R1],R3
FC798:  VST1.8          {D18-D19}, [R1]
FC79C:  ADD.W           R1, R6, R0,LSL#2
FC7A0:  LDR             R1, [R1,#0x2C]
FC7A2:  CBZ             R1, loc_FC7AE
FC7A4:  LDR.W           R2, [R11,#0x20]
FC7A8:  LDR.W           R2, [R2,R0,LSL#2]
FC7AC:  STR             R1, [R2]
FC7AE:  ADD.W           R1, R6, R0,LSL#2
FC7B2:  LDR             R1, [R1,#0x6C]
FC7B4:  CBZ             R1, loc_FC800
FC7B6:  LDR             R1, [SP,#0x58+obj]
FC7B8:  MOV.W           R3, #0x3F800000
FC7BC:  LDR             R0, [SP,#0x58+var_3C]
FC7BE:  MOV.W           R9, #1
FC7C2:  LDR             R1, [R1]
FC7C4:  LDR.W           R0, [R1,R0,LSL#2]
FC7C8:  LDR             R2, [R0,#8]
FC7CA:  ORR.W           R2, R2, #0x40 ; '@'
FC7CE:  STR             R2, [R0,#8]
FC7D0:  LDR             R0, [SP,#0x58+var_3C]
FC7D2:  LDR.W           R2, [R11,#0x20]
FC7D6:  LDR.W           R0, [R1,R0,LSL#2]
FC7DA:  LDR             R1, [R0,#8]
FC7DC:  BIC.W           R1, R1, #8
FC7E0:  STR             R1, [R0,#8]
FC7E2:  LDR             R0, [SP,#0x58+var_40]
FC7E4:  LDR.W           R1, [R2,R0,LSL#2]
FC7E8:  MOVS            R2, #0
FC7EA:  STRD.W          R2, R3, [R1,#0x10]
FC7EE:  ADD.W           R2, R6, R0,LSL#2
FC7F2:  STR             R3, [R1,#0xC]
FC7F4:  LDR.W           R1, [R11,#0x20]
FC7F8:  LDR             R2, [R2,#0x6C]
FC7FA:  LDR.W           R1, [R1,R0,LSL#2]
FC7FE:  STR             R2, [R1,#4]
FC800:  ADDS            R0, #1
FC802:  STR             R0, [SP,#0x58+var_40]
FC804:  LDR.W           R1, [R11,#0x24]
FC808:  CMP             R0, R1
FC80A:  BLT             loc_FC734
FC80C:  MOVS.W          R0, R9,LSL#31
FC810:  BEQ             loc_FC8AC
FC812:  MOVS            R0, #0
FC814:  CMP             R1, #1
FC816:  STR             R0, [SP,#0x58+var_40]
FC818:  BLT             loc_FC8AC
FC81A:  MOVS            R0, #0
FC81C:  ADD.W           R1, R6, R0,LSL#2
FC820:  LDR             R2, [R1,#0x2C]
FC822:  CBNZ            R2, loc_FC884
FC824:  LDR             R1, [R1,#0x6C]
FC826:  CBNZ            R1, loc_FC884
FC828:  LDR             R1, =(unk_2474CC - 0xFC834)
FC82A:  ADD             R5, SP, #0x58+var_30
FC82C:  LDR             R4, =(unk_B3195 - 0xFC838)
FC82E:  ADD             R2, SP, #0x58+var_3C
FC830:  ADD             R1, PC; unk_2474CC
FC832:  MOV             R0, R5
FC834:  ADD             R4, PC; unk_B3195
FC836:  STR             R2, [SP,#0x58+var_34]
FC838:  ADD.W           R9, SP, #0x58+var_34
FC83C:  ADD.W           R8, SP, #0x58+var_38
FC840:  MOV             R3, R4
FC842:  STR.W           R9, [SP,#0x58+var_58]
FC846:  STR.W           R8, [SP,#0x58+var_54]
FC84A:  BL              sub_100D30
FC84E:  LDR             R0, [SP,#0x58+var_30]
FC850:  ADD             R2, SP, #0x58+var_40
FC852:  MOV             R3, R4
FC854:  STR             R2, [SP,#0x58+var_34]
FC856:  ADD.W           R1, R0, #0x14
FC85A:  MOV             R0, R5
FC85C:  STRD.W          R9, R8, [SP,#0x58+var_58]
FC860:  BL              sub_100DE4
FC864:  LDR             R0, [SP,#0x58+var_40]
FC866:  MOVS            R3, #0xC
FC868:  LDR.W           R2, [R11,#0x20]
FC86C:  LDR             R1, [SP,#0x58+var_30]
FC86E:  LDR.W           R2, [R2,R0,LSL#2]
FC872:  ADDS            R1, #0x14
FC874:  VLD1.8          {D16-D17}, [R2],R3
FC878:  VLD1.8          {D18-D19}, [R2]
FC87C:  VST1.8          {D16-D17}, [R1],R3
FC880:  VST1.8          {D18-D19}, [R1]
FC884:  ADD.W           R1, R6, R0,LSL#2
FC888:  LDR             R1, [R1,#0x6C]
FC88A:  CBNZ            R1, loc_FC8A0
FC88C:  LDR.W           R1, [R11,#0x20]
FC890:  MOV.W           R3, #0x40800000
FC894:  MOVS            R2, #0
FC896:  LDR.W           R1, [R1,R0,LSL#2]
FC89A:  STR             R3, [R1,#0xC]
FC89C:  STRD.W          R2, R3, [R1,#0x10]
FC8A0:  ADDS            R0, #1
FC8A2:  STR             R0, [SP,#0x58+var_40]
FC8A4:  LDR.W           R1, [R11,#0x24]
FC8A8:  CMP             R0, R1
FC8AA:  BLT             loc_FC81C
FC8AC:  LDR             R2, [SP,#0x58+obj]
FC8AE:  LDR             R1, [SP,#0x58+var_3C]
FC8B0:  LDRD.W          R0, R2, [R2]
FC8B4:  ADDS            R1, #1
FC8B6:  STR             R1, [SP,#0x58+var_3C]
FC8B8:  SUBS            R2, R2, R0
FC8BA:  CMP.W           R1, R2,ASR#2
FC8BE:  BCC.W           loc_FC71C
FC8C2:  LDRD.W          R9, R5, [SP,#0x58+var_50]
FC8C6:  VLDR            S0, =40000.0
FC8CA:  VCMP.F32        S16, S0
FC8CE:  VMRS            APSR_nzcv, FPSCR
FC8D2:  BLE             loc_FC8FC
FC8D4:  LDR             R0, [R5,#0x18]
FC8D6:  LDRB            R1, [R0]
FC8D8:  CMP             R1, #1
FC8DA:  BNE             loc_FC906
FC8DC:  LDR             R1, [R0,#0x48]
FC8DE:  BLX             R1
FC8E0:  B               loc_FC916
FC8E2:  LDR             R0, =(off_2474B8 - 0xFC8E8)
FC8E4:  ADD             R0, PC; off_2474B8
FC8E6:  LDR             R1, [R0]
FC8E8:  MOV             R0, R5
FC8EA:  ADD             SP, SP, #0x30 ; '0'
FC8EC:  VPOP            {D8}
FC8F0:  ADD             SP, SP, #4
FC8F2:  POP.W           {R8-R11}
FC8F6:  POP.W           {R4-R7,LR}
FC8FA:  BX              R1
FC8FC:  LDR             R0, =(off_2474B8 - 0xFC902)
FC8FE:  ADD             R0, PC; off_2474B8
FC900:  LDR             R1, [R0]
FC902:  MOV             R0, R5
FC904:  B               loc_FC914
FC906:  LDR.W           R1, [R9]
FC90A:  MOV             R2, #0x2142DD
FC912:  ADD             R1, R2
FC914:  BLX             R1
FC916:  LDRB.W          R0, [R6,#0xEC]
FC91A:  CMP             R0, #0
FC91C:  BEQ             loc_FC9D6
FC91E:  LDR             R1, [SP,#0x58+var_48]
FC920:  LDR.W           R0, [R1],#4
FC924:  CMP             R0, R1
FC926:  BEQ             loc_FC9D6
FC928:  LDR             R1, [SP,#0x58+obj]
FC92A:  MOV.W           R8, #0xC
FC92E:  LDR.W           R12, [R1]
FC932:  LDR             R1, [SP,#0x58+var_48]
FC934:  ADD.W           LR, R1, #4
FC938:  LDR             R4, [R0,#0x14]
FC93A:  ADD.W           R6, R0, #0x18
FC93E:  CMP             R4, R6
FC940:  BEQ             loc_FC9A8
FC942:  LDR             R3, [R0,#0x10]
FC944:  LDR.W           R5, [R12,R3,LSL#2]
FC948:  LDR             R3, [R4,#0x10]
FC94A:  ADD.W           R2, R4, #0x14
FC94E:  LDR             R1, [R5,#0x20]
FC950:  VLD1.32         {D16-D17}, [R2],R8
FC954:  LDR.W           R1, [R1,R3,LSL#2]
FC958:  VLD1.32         {D18-D19}, [R2]
FC95C:  VST1.32         {D16-D17}, [R1],R8
FC960:  VST1.32         {D18-D19}, [R1]
FC964:  LDR             R3, [R4,#4]
FC966:  CBZ             R3, loc_FC988
FC968:  MOV             R4, R3
FC96A:  LDR             R3, [R3]
FC96C:  CMP             R3, #0
FC96E:  BNE             loc_FC968
FC970:  B               loc_FC9A4
FC972:  ALIGN 4
FC974:  DCD off_23494C - 0xFC5D4
FC978:  DCD off_23496C - 0xFC5FE
FC97C:  DCD dword_2474B4 - 0xFC61C
FC980:  DCD dword_2474B4 - 0xFC636
FC984:  DCFS 900.0
FC988:  MOV             R3, R4
FC98A:  LDR.W           R1, [R3,#8]!
FC98E:  LDR             R2, [R1]
FC990:  CMP             R2, R4
FC992:  MOV             R4, R1
FC994:  BEQ             loc_FC9A4
FC996:  LDR             R1, [R3]
FC998:  MOV             R3, R1
FC99A:  LDR.W           R4, [R3,#8]!
FC99E:  LDR             R2, [R4]
FC9A0:  CMP             R2, R1
FC9A2:  BNE             loc_FC996
FC9A4:  CMP             R4, R6
FC9A6:  BNE             loc_FC948
FC9A8:  LDR             R3, [R0,#4]
FC9AA:  CBZ             R3, loc_FC9B6
FC9AC:  MOV             R0, R3
FC9AE:  LDR             R3, [R3]
FC9B0:  CMP             R3, #0
FC9B2:  BNE             loc_FC9AC
FC9B4:  B               loc_FC9D2
FC9B6:  MOV             R3, R0
FC9B8:  LDR.W           R6, [R3,#8]!
FC9BC:  LDR             R5, [R6]
FC9BE:  CMP             R5, R0
FC9C0:  MOV             R0, R6
FC9C2:  BEQ             loc_FC9D2
FC9C4:  LDR             R6, [R3]
FC9C6:  MOV             R3, R6
FC9C8:  LDR.W           R0, [R3,#8]!
FC9CC:  LDR             R5, [R0]
FC9CE:  CMP             R5, R6
FC9D0:  BNE             loc_FC9C4
FC9D2:  CMP             R0, LR
FC9D4:  BNE             loc_FC938
FC9D6:  LDR             R5, [SP,#0x58+var_48]
FC9D8:  MOV             R4, R5
FC9DA:  MOV             R0, R5
FC9DC:  LDR.W           R1, [R4,#4]!
FC9E0:  BL              sub_100CDE
FC9E4:  LDR             R2, [SP,#0x58+obj]
FC9E6:  MOVS            R1, #0
FC9E8:  STR             R1, [R4]
FC9EA:  STR             R4, [R5]
FC9EC:  LDR             R0, [R2]
FC9EE:  STR             R1, [R5,#8]
FC9F0:  STR             R0, [R2,#4]
FC9F2:  B               loc_FC5EA
FC9F4:  LDR             R0, =(byte_2474C8 - 0xFC9FA)
FC9F6:  ADD             R0, PC; byte_2474C8 ; __guard *
FC9F8:  BLX             j___cxa_guard_acquire
FC9FC:  CMP             R0, #0
FC9FE:  BEQ.W           loc_FC6CA
FCA02:  LDR             R0, =(sub_FCAA4+1 - 0xFCA0E)
FCA04:  MOVS            R3, #0
FCA06:  LDR             R2, =(off_22A540 - 0xFCA10)
FCA08:  LDR             R1, [SP,#0x58+obj]; obj
FCA0A:  ADD             R0, PC; sub_FCAA4 ; lpfunc
FCA0C:  ADD             R2, PC; off_22A540 ; lpdso_handle
FCA0E:  STRD.W          R3, R3, [R1]
FCA12:  STR             R3, [R1,#8]
FCA14:  BLX             __cxa_atexit
FCA18:  LDR             R0, =(byte_2474C8 - 0xFCA1E)
FCA1A:  ADD             R0, PC; byte_2474C8 ; __guard *
FCA1C:  BLX             j___cxa_guard_release
FCA20:  B               loc_FC6CA
FCA22:  LDR             R0, =(byte_2474D8 - 0xFCA28)
FCA24:  ADD             R0, PC; byte_2474D8 ; __guard *
FCA26:  BLX             j___cxa_guard_acquire
FCA2A:  CMP             R0, #0
FCA2C:  BEQ.W           loc_FC6E0
FCA30:  LDR             R0, =(sub_FCAB8+1 - 0xFCA3C)
FCA32:  MOVS            R4, #0
FCA34:  LDR             R2, =(off_22A540 - 0xFCA3E)
FCA36:  LDR             R1, [SP,#0x58+var_48]; obj
FCA38:  ADD             R0, PC; sub_FCAB8 ; lpfunc
FCA3A:  ADD             R2, PC; off_22A540 ; lpdso_handle
FCA3C:  MOV             R3, R1
FCA3E:  STR             R4, [R1,#8]
FCA40:  STR.W           R4, [R3,#4]!
FCA44:  STR             R3, [R1]
FCA46:  BLX             __cxa_atexit
FCA4A:  LDR             R0, =(byte_2474D8 - 0xFCA50)
FCA4C:  ADD             R0, PC; byte_2474D8 ; __guard *
FCA4E:  BLX             j___cxa_guard_release
FCA52:  B               loc_FC6E0
