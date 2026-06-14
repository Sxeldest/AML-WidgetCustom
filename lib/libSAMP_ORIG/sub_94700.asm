; =========================================================
; Game Engine Function: sub_94700
; Address            : 0x94700 - 0x94D7C
; =========================================================

94700:  PUSH            {R4-R7,LR}
94702:  ADD             R7, SP, #0xC
94704:  PUSH.W          {R8-R11}
94708:  SUB             SP, SP, #0x24
9470A:  LDR             R0, =(dword_1ACF68 - 0x94714)
9470C:  MOVW            R1, #0x1964
94710:  ADD             R0, PC; dword_1ACF68
94712:  STR             R0, [SP,#0x40+var_2C]
94714:  LDR.W           R8, [R0]
94718:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x94720)
9471C:  ADD             R0, PC; __stack_chk_guard_ptr
9471E:  LDR             R0, [R0]; __stack_chk_guard
94720:  LDR             R0, [R0]
94722:  STR             R0, [SP,#0x40+var_20]
94724:  MOV.W           R0, #0x1960
94728:  LDR.W           R0, [R8,R0]
9472C:  LDR.W           R1, [R8,R1]
94730:  CMP             R1, R0
94732:  BEQ.W           loc_94D62
94736:  LDR.W           R2, [R8,#0xD4]
9473A:  MOVW            R0, #0x1984
9473E:  ADD.W           R4, R8, R0
94742:  CBZ             R2, loc_947B0
94744:  MOVW            R0, #0x2CE4
94748:  ADD.W           R6, R8, R0
9474C:  MOVW            R0, #0x2CEC
94750:  ADD.W           R5, R8, R0
94754:  VLDR            S2, =3.4028e38
94758:  VLDR            S4, [R5]
9475C:  VLDR            S0, [R6]
94760:  VCMP.F32        S4, S2
94764:  VMRS            APSR_nzcv, FPSCR
94768:  BNE             loc_94770
9476A:  VLDR            S2, [R6,#4]
9476E:  B               loc_94796
94770:  VLDR            S2, [R6,#4]
94774:  VSUB.F32        S4, S4, S0
94778:  VLDR            S6, [R5,#4]
9477C:  VSUB.F32        S6, S6, S2
94780:  VMUL.F32        S6, S6, S6
94784:  VMLA.F32        S6, S4, S4
94788:  VLDR            S4, =0.0001
9478C:  VCMP.F32        S6, S4
94790:  VMRS            APSR_nzcv, FPSCR
94794:  BLE             loc_947B0
94796:  VCVT.S32.F32    S0, S0
9479A:  VCVT.S32.F32    S2, S2
9479E:  VMOV            R0, S0
947A2:  VMOV            R1, S2
947A6:  BLX             R2
947A8:  LDRD.W          R0, R1, [R6]
947AC:  STRD.W          R0, R1, [R5]
947B0:  LDR             R0, [R4,#0xC]
947B2:  CMP             R0, #2
947B4:  BLT             loc_947C0
947B6:  BL              sub_94DC0
947BA:  LDR             R0, [R4,#0xC]
947BC:  CMP             R0, #1
947BE:  BGT             loc_947B6
947C0:  LDR             R1, [R4,#0x28]
947C2:  MOVS            R2, #0
947C4:  MOVW            R0, #0x1508
947C8:  STRB.W          R2, [R8,#2]
947CC:  CBZ             R1, loc_947DC
947CE:  LDRB.W          R2, [R1,#0x7C]
947D2:  CMP             R2, #0
947D4:  ITT EQ
947D6:  MOVEQ           R2, #0
947D8:  STRBEQ.W        R2, [R1,#0x7A]
947DC:  ADD.W           R6, R8, R0
947E0:  BL              sub_94DC0
947E4:  LDR.W           R0, [R4,#0x170]
947E8:  CMP             R0, #0
947EA:  BEQ.W           loc_94A9C
947EE:  LDR             R0, [SP,#0x40+var_2C]
947F0:  VLDR            S0, =0.15
947F4:  LDR.W           R9, [R0]
947F8:  ADD.W           R0, R9, #0x1B00
947FC:  VLDR            S2, [R0]
94800:  VCMP.F32        S2, S0
94804:  VMRS            APSR_nzcv, FPSCR
94808:  BMI.W           loc_94A9C
9480C:  MOVW            R0, #0x151C
94810:  STR.W           R8, [SP,#0x40+var_30]
94814:  ADD.W           R8, R9, R0
94818:  MOVW            R0, #0x1A28
9481C:  ADD.W           LR, R9, R0
94820:  MOVW            R0, #0x1A4C
94824:  ADD.W           R5, R9, R0
94828:  ADD.W           R2, R9, #0x1A20
9482C:  LDR.W           R0, [R5,#0xB0]
94830:  CMP             R0, #0
94832:  BNE             loc_948CC
94834:  STRD.W          R2, R5, [SP,#0x40+var_3C]
94838:  MOV.W           R3, #0xFFFFFFFF
9483C:  LDR             R0, =(aNavwindowingli - 0x94844); "###NavWindowingList" ...
9483E:  MOVS            R2, #0x23 ; '#'
94840:  ADD             R0, PC; "###NavWindowingList"
94842:  ADDS            R1, R0, #1
94844:  LDR             R0, =(unk_52D88 - 0x9484A)
94846:  ADD             R0, PC; unk_52D88
94848:  MOV             R12, R0
9484A:  B               loc_9485E
9484C:  UXTB            R0, R3
9484E:  ADDS            R1, #1
94850:  EORS            R0, R5
94852:  MOV             R5, R12
94854:  LDR.W           R0, [R12,R0,LSL#2]
94858:  EOR.W           R3, R0, R3,LSR#8
9485C:  CBZ             R2, loc_9487A
9485E:  MOV             R5, R2
94860:  LDRB            R2, [R1]; "##NavWindowingList"
94862:  CMP             R5, #0x23 ; '#'
94864:  IT EQ
94866:  CMPEQ           R2, #0x23 ; '#'
94868:  BNE             loc_9484C
9486A:  LDRB            R2, [R1,#1]; "#NavWindowingList"
9486C:  CMP             R2, #0x23 ; '#'
9486E:  MOV.W           R2, #0x23 ; '#'
94872:  IT EQ
94874:  MOVEQ.W         R3, #0xFFFFFFFF
94878:  B               loc_9484C
9487A:  LDR.W           R2, [R8,#0x480]
9487E:  MVNS            R0, R3
94880:  LDR.W           R11, [R8,#0x488]
94884:  STR             R2, [SP,#0x40+var_34]
94886:  MOV             R1, R2
94888:  MOV             R1, R11
9488A:  CBZ             R2, loc_948AE
9488C:  LDR             R3, [SP,#0x40+var_34]
9488E:  MOV             R1, R11
94890:  LSRS            R5, R3, #1
94892:  MVN.W           R10, R3,LSR#1
94896:  ADD.W           R2, R1, R5,LSL#3
9489A:  LDR.W           R12, [R2],#8
9489E:  CMP             R12, R0
948A0:  ITT CC
948A2:  ADDCC.W         R5, R3, R10
948A6:  MOVCC           R1, R2
948A8:  CMP             R5, #0
948AA:  MOV             R3, R5
948AC:  BNE             loc_94890
948AE:  LDR             R2, [SP,#0x40+var_34]
948B0:  LDR             R5, [SP,#0x40+var_38]
948B2:  ADD.W           R2, R11, R2,LSL#3
948B6:  CMP             R1, R2
948B8:  BEQ             loc_948C4
948BA:  LDR             R2, [R1]
948BC:  CMP             R2, R0
948BE:  BNE             loc_948C4
948C0:  LDR             R0, [R1,#4]
948C2:  B               loc_948C6
948C4:  MOVS            R0, #0
948C6:  LDR             R2, [SP,#0x40+var_3C]
948C8:  STR.W           R0, [R5,#0xB0]
948CC:  VMOV.F32        S0, #0.5
948D0:  VLDR            S2, =0.2
948D4:  VLDR            S6, [R9,#0x14]
948D8:  MOVW            R0, #0xFFFF
948DC:  VLDR            S4, [R9,#0x10]
948E0:  MOVT            R0, #0x7F7F
948E4:  VMUL.F32        S8, S6, S2
948E8:  STRD.W          R0, R0, [R5]
948EC:  VMUL.F32        S2, S4, S2
948F0:  MOV.W           R0, #0x3F000000
948F4:  MOVS            R1, #0
948F6:  STRD.W          R0, R0, [LR]
948FA:  LDR.W           R0, [R8,#0x4F4]
948FE:  VMUL.F32        S6, S6, S0
94902:  STRD.W          R1, R1, [R5,#8]
94906:  VMUL.F32        S0, S4, S0
9490A:  MOVS            R1, #1
9490C:  ORR.W           R0, R0, #0x11
94910:  STR.W           R1, [R8,#0x4F8]
94914:  ADD             R1, SP, #0x40+var_28
94916:  STR.W           R0, [R8,#0x4F4]
9491A:  VSTR            S2, [LR,#0x1C]
9491E:  MOVS            R0, #1
94920:  VLDR            S2, [R8,#4]
94924:  VSTR            S8, [LR,#0x20]
94928:  VADD.F32        S2, S2, S2
9492C:  VSTR            S6, [R2,#4]
94930:  VSTR            S0, [R2]
94934:  VLDR            S0, [R8]
94938:  VADD.F32        S0, S0, S0
9493C:  VSTR            S2, [SP,#0x40+var_24]
94940:  VSTR            S0, [SP,#0x40+var_28]
94944:  BL              sub_96058
94948:  LDR             R0, =(aNavwindowingli - 0x94958); "###NavWindowingList" ...
9494A:  MOV             R2, #0xC1347
94952:  MOVS            R1, #0
94954:  ADD             R0, PC; "###NavWindowingList"
94956:  BL              sub_8FD20
9495A:  LDR.W           R11, [R8,#0x45C]
9495E:  CMP.W           R11, #1
94962:  BGE             loc_949F0
94964:  BL              sub_94DC0
94968:  LDR             R0, [SP,#0x40+var_2C]
9496A:  MOVW            R1, #0x1A84
9496E:  LDR             R0, [R0]
94970:  ADD.W           LR, R0, R1
94974:  LDR             R2, [R0,R1]
94976:  LDR.W           R9, [LR,#8]
9497A:  SUB.W           R8, R2, #1
9497E:  ADD.W           R5, R8, R8,LSL#1
94982:  LDR.W           R2, [R9,R5,LSL#2]
94986:  LDR             R1, =(unk_536AC - 0x9498C)
94988:  ADD             R1, PC; unk_536AC
9498A:  ADD.W           R3, R2, R2,LSL#1
9498E:  ADD.W           R1, R1, R3,LSL#2
94992:  LDR             R1, [R1,#8]
94994:  ADD             R0, R1
94996:  MOVW            R1, #0x1518
9499A:  ADD.W           R12, R0, R1
9499E:  MOV             R0, #0x1F9BCD
949A6:  LSRS            R0, R2
949A8:  LSLS            R0, R0, #0x1F
949AA:  BNE             loc_94A88
949AC:  MOV             R0, #0x606432
949B4:  LSRS            R0, R2
949B6:  LSLS            R0, R0, #0x1F
949B8:  BEQ             loc_94A94
949BA:  ADD.W           R0, R9, R5,LSL#2
949BE:  ADD.W           R2, R0, #8
949C2:  LDR             R1, [R0,#4]
949C4:  STR.W           R1, [R12],#4
949C8:  B               loc_94A8E
949CA:  LDR             R0, =(aPopup - 0x949D0); "(Popup)" ...
949CC:  ADD             R0, PC; "(Popup)"
949CE:  LDR.W           R1, [R5,#0xA8]
949D2:  MOVS            R2, #0
949D4:  ADD             R3, SP, #0x40+var_28
949D6:  STRD.W          R2, R2, [SP,#0x40+var_28]
949DA:  SUB.W           R1, R1, R10
949DE:  MOVS            R2, #0
949E0:  CLZ.W           R1, R1
949E4:  LSRS            R1, R1, #5
949E6:  BL              sub_A7C88
949EA:  CMP.W           R9, #1
949EE:  BLE             loc_94964
949F0:  LDR.W           R0, [R8,#0x464]
949F4:  MOV             R9, R11
949F6:  SUB.W           R11, R11, #1
949FA:  LDR.W           R10, [R0,R11,LSL#2]
949FE:  LDRB.W          R0, [R10,#0x7A]
94A02:  CMP             R0, #0
94A04:  BEQ             loc_949EA
94A06:  LDR.W           R0, [R10,#0x2FC]
94A0A:  CMP             R0, R10
94A0C:  BNE             loc_949EA
94A0E:  LDR.W           R1, [R10,#8]
94A12:  LSLS            R0, R1, #0xC
94A14:  BMI             loc_949EA
94A16:  LDR.W           R0, [R10]; s1
94A1A:  ADDS            R2, R0, #1
94A1C:  BEQ             loc_94A42
94A1E:  MOV             R2, R0
94A20:  B               loc_94A2E
94A22:  LDRB            R3, [R2,#1]
94A24:  CMP             R3, #0x23 ; '#'
94A26:  BEQ             loc_94A3E
94A28:  ADDS            R2, #1
94A2A:  ADDS            R3, R2, #1
94A2C:  BEQ             loc_94A3A
94A2E:  LDRB            R3, [R2]
94A30:  CMP             R3, #0x23 ; '#'
94A32:  BEQ             loc_94A22
94A34:  CMP             R3, #0
94A36:  BNE             loc_94A28
94A38:  B               loc_94A3E
94A3A:  MOV.W           R2, #0xFFFFFFFF
94A3E:  CMP             R0, R2
94A40:  BNE             loc_949CE
94A42:  LSLS            R2, R1, #5
94A44:  BMI             loc_949CA
94A46:  LSLS            R1, R1, #0x15
94A48:  BPL             loc_94A54
94A4A:  LDR             R1, =(aMainmenubar - 0x94A50); "##MainMenuBar" ...
94A4C:  ADD             R1, PC; "##MainMenuBar"
94A4E:  BLX             strcmp
94A52:  CBZ             R0, loc_94A5A
94A54:  LDR             R0, =(aUntitled - 0x94A5A); "(Untitled)" ...
94A56:  ADD             R0, PC; "(Untitled)"
94A58:  B               loc_949CE
94A5A:  LDR             R0, =(aMainMenuBar - 0x94A60); "(Main menu bar)" ...
94A5C:  ADD             R0, PC; "(Main menu bar)"
94A5E:  B               loc_949CE
94A60:  DCD dword_1ACF68 - 0x94714
94A64:  DCFS 3.4028e38
94A68:  DCFS 0.0001
94A6C:  DCFS 0.15
94A70:  DCD aNavwindowingli - 0x94844
94A74:  DCD unk_52D88 - 0x9484A
94A78:  DCFS 0.2
94A7C:  DCD aNavwindowingli - 0x94958
94A80:  DCD unk_536AC - 0x9498C
94A84:  DCD aPopup - 0x949D0
94A88:  ADD.W           R0, R9, R5,LSL#2
94A8C:  ADDS            R2, R0, #4
94A8E:  LDR             R0, [R2]
94A90:  STR.W           R0, [R12]
94A94:  STR.W           R8, [LR]
94A98:  LDR.W           R8, [SP,#0x40+var_30]
94A9C:  LDRB.W          R0, [R4,#0x394]
94AA0:  CMP             R0, #0
94AA2:  BEQ             loc_94B84
94AA4:  LDR.W           R1, [R4,#0x3B4]
94AA8:  LDRB.W          R0, [R4,#0x3DA]
94AAC:  LDR.W           R2, [R6,#0x458]
94AB0:  ADDS            R1, #1
94AB2:  CMP             R1, R2
94AB4:  BGE             loc_94AD4
94AB6:  LDRB.W          R1, [R4,#0x398]
94ABA:  LSLS            R1, R1, #0x1A
94ABC:  BMI             loc_94ADE
94ABE:  LDR             R2, [SP,#0x40+var_2C]
94AC0:  LDR.W           R1, [R4,#0x3A0]
94AC4:  LDR             R2, [R2]
94AC6:  ADD             R1, R2
94AC8:  LDRB.W          R1, [R1,#0xE8]
94ACC:  CLZ.W           R1, R1
94AD0:  LSRS            R1, R1, #5
94AD2:  B               loc_94AD6
94AD4:  MOVS            R1, #0
94AD6:  CMP             R0, #0
94AD8:  IT EQ
94ADA:  CMPEQ           R1, #0
94ADC:  BEQ             loc_94B64
94ADE:  LDR             R0, [SP,#0x40+var_2C]
94AE0:  MOVW            R1, #0xFFFF
94AE4:  MOV.W           R9, #0
94AE8:  MOVT            R1, #0x7F7F
94AEC:  VMOV.I32        Q8, #0
94AF0:  MOVS            R3, #0x14
94AF2:  LDR             R2, [R0]
94AF4:  MOVW            R0, #0x1D18
94AF8:  ADDS            R5, R2, R0
94AFA:  STRB.W          R9, [R2,R0]
94AFE:  MOV.W           R0, #0xFFFFFFFF
94B02:  STR             R0, [R5,#0x20]
94B04:  STR             R0, [R5,#0x6C]
94B06:  MOVW            R0, #0x1D28
94B0A:  STRD.W          R9, R1, [R5,#0x5C]
94B0E:  ADDS            R1, R2, R0
94B10:  VST1.32         {D16-D17}, [R1],R3
94B14:  VST1.8          {D16-D17}, [R1]
94B18:  MOVW            R1, #0x1D4C
94B1C:  ADD             R1, R2
94B1E:  LDR             R0, [R5,#0x78]
94B20:  VST1.8          {D16-D17}, [R1]!
94B24:  STRH.W          R9, [R5,#0x45]
94B28:  STRD.W          R9, R9, [R5,#0x64]
94B2C:  STRB.W          R9, [R1]
94B30:  CBZ             R0, loc_94B56
94B32:  LDR             R1, =(off_11724C - 0x94B3A)
94B34:  LDR             R3, =(dword_1ACF70 - 0x94B40)
94B36:  ADD             R1, PC; off_11724C
94B38:  LDR.W           R12, [R2,#0x370]
94B3C:  ADD             R3, PC; dword_1ACF70
94B3E:  LDR.W           LR, [R1]; j_opus_decoder_destroy_0
94B42:  STRD.W          R9, R9, [R5,#0x70]
94B46:  LDR             R1, [R3]
94B48:  SUB.W           R3, R12, #1
94B4C:  STR.W           R3, [R2,#0x370]
94B50:  BLX             LR; j_opus_decoder_destroy_0
94B52:  STR.W           R9, [R5,#0x78]
94B56:  STR.W           R9, [R5,#0x80]
94B5A:  STR.W           R9, [R5,#0x7C]
94B5E:  LDRB.W          R0, [R4,#0x394]
94B62:  CBZ             R0, loc_94B84
94B64:  LDR.W           R0, [R6,#0x458]
94B68:  LDR.W           R1, [R4,#0x39C]
94B6C:  CMP             R1, R0
94B6E:  BGE             loc_94B84
94B70:  LDR             R0, =(asc_4EAED - 0x94B7C); "..." ...
94B72:  MOVS            R1, #1
94B74:  STRB.W          R1, [R4,#0x395]
94B78:  ADD             R0, PC; "..."
94B7A:  BL              sub_94E9C
94B7E:  MOVS            R0, #0
94B80:  STRB.W          R0, [R4,#0x395]
94B84:  MOV.W           R10, #0
94B88:  LDR.W           R0, [R6,#0x458]
94B8C:  STRB.W          R10, [R8,#1]
94B90:  STR.W           R0, [R6,#0x45C]
94B94:  BL              sub_8C9D8
94B98:  LDR             R5, [R4,#4]
94B9A:  CMP.W           R5, #0xFFFFFFFF
94B9E:  BGT             loc_94BFE
94BA0:  LDR             R0, [SP,#0x40+var_2C]
94BA2:  MOVS            R5, #0
94BA4:  LDR             R0, [R0]
94BA6:  CMP             R0, #0
94BA8:  ITTT NE
94BAA:  LDRNE.W         R1, [R0,#0x370]
94BAE:  ADDNE           R1, #1
94BB0:  STRNE.W         R1, [R0,#0x370]
94BB4:  LDR             R1, =(dword_1ACF70 - 0x94BBC)
94BB6:  LDR             R0, =(off_117248 - 0x94BBE)
94BB8:  ADD             R1, PC; dword_1ACF70
94BBA:  ADD             R0, PC; off_117248
94BBC:  MOV             R11, R1
94BBE:  LDR             R1, [R1]
94BC0:  LDR             R2, [R0]; sub_9A720
94BC2:  MOVS            R0, #0
94BC4:  BLX             R2; sub_9A720
94BC6:  LDR             R1, [R4,#8]; src
94BC8:  MOV             R9, R0
94BCA:  CBZ             R1, loc_94BFA
94BCC:  LDR             R0, [R4]
94BCE:  LSLS            R2, R0, #2; n
94BD0:  MOV             R0, R9; dest
94BD2:  BLX             j_memcpy
94BD6:  LDR             R0, [R4,#8]
94BD8:  CMP             R0, #0
94BDA:  ITTTT NE
94BDC:  LDRNE           R1, [SP,#0x40+var_2C]
94BDE:  LDRNE           R1, [R1]
94BE0:  CMPNE           R1, #0
94BE2:  LDRNE.W         R2, [R1,#0x370]
94BE6:  ITT NE
94BE8:  SUBNE           R2, #1
94BEA:  STRNE.W         R2, [R1,#0x370]
94BEE:  LDR             R2, =(off_11724C - 0x94BF8)
94BF0:  LDR.W           R1, [R11]
94BF4:  ADD             R2, PC; off_11724C
94BF6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
94BF8:  BLX             R2; j_opus_decoder_destroy_0
94BFA:  STRD.W          R5, R9, [R4,#4]
94BFE:  LDR.W           R9, [R6,#0x464]
94C02:  STR.W           R10, [R4]
94C06:  CMP             R5, R9
94C08:  BGE             loc_94C6C
94C0A:  LDR             R0, [SP,#0x40+var_2C]
94C0C:  LDR             R1, [R0]
94C0E:  MOV.W           R0, R9,LSL#2
94C12:  CMP             R1, #0
94C14:  ITTT NE
94C16:  LDRNE.W         R2, [R1,#0x370]
94C1A:  ADDNE           R2, #1
94C1C:  STRNE.W         R2, [R1,#0x370]
94C20:  LDR             R5, =(dword_1ACF70 - 0x94C28)
94C22:  LDR             R2, =(off_117248 - 0x94C2A)
94C24:  ADD             R5, PC; dword_1ACF70
94C26:  ADD             R2, PC; off_117248
94C28:  LDR             R1, [R5]
94C2A:  LDR             R2, [R2]; sub_9A720
94C2C:  BLX             R2; sub_9A720
94C2E:  LDR             R1, [R4,#8]; src
94C30:  MOV             R10, R0
94C32:  CBZ             R1, loc_94C60
94C34:  LDR             R0, [R4]
94C36:  LSLS            R2, R0, #2; n
94C38:  MOV             R0, R10; dest
94C3A:  BLX             j_memcpy
94C3E:  LDR             R0, [R4,#8]
94C40:  CMP             R0, #0
94C42:  ITTTT NE
94C44:  LDRNE           R1, [SP,#0x40+var_2C]
94C46:  LDRNE           R1, [R1]
94C48:  CMPNE           R1, #0
94C4A:  LDRNE.W         R2, [R1,#0x370]
94C4E:  ITT NE
94C50:  SUBNE           R2, #1
94C52:  STRNE.W         R2, [R1,#0x370]
94C56:  LDR             R2, =(off_11724C - 0x94C5E)
94C58:  LDR             R1, [R5]
94C5A:  ADD             R2, PC; off_11724C
94C5C:  LDR             R2, [R2]; j_opus_decoder_destroy_0
94C5E:  BLX             R2; j_opus_decoder_destroy_0
94C60:  LDR.W           R0, [R6,#0x464]
94C64:  MOV             R5, R9
94C66:  STRD.W          R9, R10, [R4,#4]
94C6A:  B               loc_94C6E
94C6C:  MOV             R0, R9
94C6E:  MOV.W           R9, #0
94C72:  CBZ             R0, loc_94CA6
94C74:  MOVS            R5, #0
94C76:  B               loc_94C7E
94C78:  ADDS            R5, #1
94C7A:  CMP             R5, R0
94C7C:  BEQ             loc_94CA2
94C7E:  LDR.W           R1, [R6,#0x46C]
94C82:  LDR.W           R1, [R1,R5,LSL#2]
94C86:  LDRB.W          R2, [R1,#0x7A]
94C8A:  CMP             R2, #0
94C8C:  ITT NE
94C8E:  LDRBNE          R2, [R1,#0xB]
94C90:  MOVSNE.W        R2, R2,LSL#31
94C94:  BNE             loc_94C78
94C96:  MOV             R0, R4
94C98:  BL              sub_94F10
94C9C:  LDR.W           R0, [R6,#0x464]
94CA0:  B               loc_94C78
94CA2:  LDR             R5, [R4,#4]
94CA4:  B               loc_94CA8
94CA6:  MOVS            R0, #0
94CA8:  LDR             R1, [R4]
94CAA:  STR.W           R1, [R6,#0x464]
94CAE:  LDR             R1, [R6,#4]
94CB0:  LDR.W           R3, [R8,#0x94]
94CB4:  LDR.W           LR, [R4,#0x24]
94CB8:  CMP.W           R1, #0xFFFFFFFF
94CBC:  LDR.W           R12, [R4,#8]
94CC0:  LDR.W           R2, [R6,#0x468]
94CC4:  STR.W           R5, [R6,#0x468]
94CC8:  LDR.W           R5, [R6,#0x46C]
94CCC:  STRD.W          R9, R9, [R8,#0xF0]
94CD0:  STM             R4!, {R0,R2,R5}
94CD2:  STR.W           R12, [R6,#0x46C]
94CD6:  STR.W           LR, [R8,#0x36C]
94CDA:  STRB.W          R9, [R3]
94CDE:  BGT             loc_94D3C
94CE0:  LDR             R0, [SP,#0x40+var_2C]
94CE2:  MOV.W           R9, #0
94CE6:  LDR             R0, [R0]
94CE8:  CMP             R0, #0
94CEA:  ITTT NE
94CEC:  LDRNE.W         R1, [R0,#0x370]
94CF0:  ADDNE           R1, #1
94CF2:  STRNE.W         R1, [R0,#0x370]
94CF6:  LDR             R5, =(dword_1ACF70 - 0x94CFE)
94CF8:  LDR             R0, =(off_117248 - 0x94D00)
94CFA:  ADD             R5, PC; dword_1ACF70
94CFC:  ADD             R0, PC; off_117248
94CFE:  LDR             R1, [R5]
94D00:  LDR             R2, [R0]; sub_9A720
94D02:  MOVS            R0, #0
94D04:  BLX             R2; sub_9A720
94D06:  LDR             R1, [R6,#8]; src
94D08:  MOV             R4, R0
94D0A:  CBZ             R1, loc_94D38
94D0C:  LDR             R0, [R6]
94D0E:  LSLS            R2, R0, #1; n
94D10:  MOV             R0, R4; dest
94D12:  BLX             j_memcpy
94D16:  LDR             R0, [R6,#8]
94D18:  CMP             R0, #0
94D1A:  ITTTT NE
94D1C:  LDRNE           R1, [SP,#0x40+var_2C]
94D1E:  LDRNE           R1, [R1]
94D20:  CMPNE           R1, #0
94D22:  LDRNE.W         R2, [R1,#0x370]
94D26:  ITT NE
94D28:  SUBNE           R2, #1
94D2A:  STRNE.W         R2, [R1,#0x370]
94D2E:  LDR             R2, =(off_11724C - 0x94D36)
94D30:  LDR             R1, [R5]
94D32:  ADD             R2, PC; off_11724C
94D34:  LDR             R2, [R2]; j_opus_decoder_destroy_0
94D36:  BLX             R2; j_opus_decoder_destroy_0
94D38:  STRD.W          R9, R4, [R6,#4]
94D3C:  VMOV.I32        Q8, #0
94D40:  ADD.W           R1, R8, #0x2FC
94D44:  MOVS            R0, #0
94D46:  STR             R0, [R6]
94D48:  VST1.8          {D16-D17}, [R1]!
94D4C:  VST1.8          {D16-D17}, [R1]!
94D50:  VST1.8          {D16-D17}, [R1]!
94D54:  VST1.8          {D16-D17}, [R1]!
94D58:  VST1.8          {D16-D17}, [R1]!
94D5C:  STR.W           R0, [R8,#0x350]
94D60:  STR             R0, [R1]
94D62:  LDR             R0, [SP,#0x40+var_20]
94D64:  LDR             R1, =(__stack_chk_guard_ptr - 0x94D6A)
94D66:  ADD             R1, PC; __stack_chk_guard_ptr
94D68:  LDR             R1, [R1]; __stack_chk_guard
94D6A:  LDR             R1, [R1]
94D6C:  CMP             R1, R0
94D6E:  ITTT EQ
94D70:  ADDEQ           SP, SP, #0x24 ; '$'
94D72:  POPEQ.W         {R8-R11}
94D76:  POPEQ           {R4-R7,PC}
94D78:  BLX             __stack_chk_fail
