; =========================================================
; Game Engine Function: _ZN7ZIPFile10InitializeEPKc
; Address            : 0x26F678 - 0x26FCB2
; =========================================================

26F678:  PUSH            {R4-R7,LR}
26F67A:  ADD             R7, SP, #0xC
26F67C:  PUSH.W          {R8-R11}
26F680:  SUB.W           SP, SP, #0x234
26F684:  MOV             R9, R0
26F686:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x26F692)
26F68A:  MOV             R6, R1
26F68C:  ADD             R1, SP, #0x250+var_22C
26F68E:  ADD             R0, PC; __stack_chk_guard_ptr
26F690:  MOV             R2, R6
26F692:  MOVS            R3, #0
26F694:  MOVS            R5, #0
26F696:  LDR             R0, [R0]; __stack_chk_guard
26F698:  LDR             R0, [R0]
26F69A:  STR             R0, [SP,#0x250+var_20]
26F69C:  MOVS            R0, #0
26F69E:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
26F6A2:  CMP             R0, #0
26F6A4:  BNE.W           loc_26FC94
26F6A8:  ADD.W           R5, R9, #0x10
26F6AC:  MOV             R1, R6; char *
26F6AE:  MOV             R0, R5; char *
26F6B0:  BLX             strcpy
26F6B4:  ADD.W           R8, SP, #0x250+var_220
26F6B8:  ADR.W           R2, aSIdx; "%s.idx"
26F6BC:  MOV.W           R1, #0x200
26F6C0:  MOV             R3, R5
26F6C2:  MOV             R0, R8
26F6C4:  BL              sub_5E6B74
26F6C8:  ADD             R1, SP, #0x250+var_230
26F6CA:  MOVS            R0, #0
26F6CC:  MOV             R2, R8
26F6CE:  MOVS            R3, #0
26F6D0:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
26F6D4:  CMP             R0, #0
26F6D6:  BEQ.W           loc_26F89A
26F6DA:  LDR             R6, [SP,#0x250+var_22C]
26F6DC:  MOVS            R1, #0; offset
26F6DE:  MOV.W           R11, #0
26F6E2:  MOV             R0, R6; this
26F6E4:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26F6E8:  ADD             R1, SP, #0x250+tv; ptr
26F6EA:  MOV             R0, R6; this
26F6EC:  MOVS            R2, #4; n
26F6EE:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F6F2:  LDR             R0, [SP,#0x250+tv]
26F6F4:  MOV             R5, #0x4034B50
26F6FC:  CMP             R0, R5
26F6FE:  BNE.W           loc_26F8DC
26F702:  ADD.W           R0, R9, #4
26F706:  MOV.W           R10, #0
26F70A:  STR             R0, [SP,#0x250+var_244]
26F70C:  ADD.W           R0, R9, #8
26F710:  STR             R0, [SP,#0x250+p]
26F712:  ADD.W           R1, R10, #6; offset
26F716:  MOV             R0, R6; this
26F718:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26F71C:  ADD.W           R1, SP, #0x250+n+2; ptr
26F720:  MOV             R0, R6; this
26F722:  MOVS            R2, #2; n
26F724:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F728:  ADD.W           R1, R10, #0x12; offset
26F72C:  MOV             R0, R6; this
26F72E:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26F732:  ADD             R1, SP, #0x250+var_230; ptr
26F734:  MOV             R0, R6; this
26F736:  MOVS            R2, #4; n
26F738:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F73C:  ADD             R1, SP, #0x250+ptr; ptr
26F73E:  MOV             R0, R6; this
26F740:  MOVS            R2, #4; n
26F742:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F746:  ADD             R1, SP, #0x250+n; ptr
26F748:  MOV             R0, R6; this
26F74A:  MOVS            R2, #2; n
26F74C:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F750:  ADD.W           R1, SP, #0x250+var_236; ptr
26F754:  MOV             R0, R6; this
26F756:  MOVS            R2, #2; n
26F758:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F75C:  LDRSH.W         R2, [SP,#0x250+n]; n
26F760:  CBZ             R2, loc_26F770
26F762:  MOV             R0, R6; this
26F764:  MOV             R1, R8; ptr
26F766:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F76A:  LDRH.W          R0, [SP,#0x250+n]
26F76E:  B               loc_26F772
26F770:  MOVS            R0, #0
26F772:  LDRSH.W         R2, [SP,#0x250+var_236]
26F776:  SXTAH.W         R3, R10, R0
26F77A:  SXTH            R1, R0
26F77C:  CMP             R0, #0
26F77E:  ADD             R2, R3
26F780:  STRB.W          R11, [R8,R1]
26F784:  ADD.W           R4, R2, #0x1E
26F788:  BEQ             loc_26F83E
26F78A:  ADD.W           R0, R8, R1
26F78E:  LDRB.W          R0, [R0,#-1]
26F792:  CMP             R0, #0x2F ; '/'
26F794:  IT NE
26F796:  CMPNE           R0, #0x5C ; '\'
26F798:  BEQ             loc_26F83E
26F79A:  MOV             R0, R8; char *
26F79C:  LDR.W           R10, [SP,#0x250+var_230]
26F7A0:  BLX             j_strdup
26F7A4:  MOV             R2, R0
26F7A6:  LDR             R0, [SP,#0x250+p]
26F7A8:  LDR.W           R11, [R0]
26F7AC:  LDR             R0, [SP,#0x250+var_244]
26F7AE:  LDR             R1, [R0]
26F7B0:  ADD.W           R0, R11, #1
26F7B4:  CMP             R1, R0
26F7B6:  BCS             loc_26F810
26F7B8:  MOVW            R1, #0xAAAB
26F7BC:  LSLS            R0, R0, #2
26F7BE:  MOVT            R1, #0xAAAA
26F7C2:  STR             R2, [SP,#0x250+var_248]
26F7C4:  UMULL.W         R0, R1, R0, R1
26F7C8:  MOVS            R0, #3
26F7CA:  ADD.W           R0, R0, R1,LSR#1
26F7CE:  STR             R0, [SP,#0x250+var_24C]
26F7D0:  ADD.W           R0, R0, R0,LSL#1
26F7D4:  LSLS            R0, R0, #2; byte_count
26F7D6:  BLX             malloc
26F7DA:  LDR.W           R8, [R9,#0xC]
26F7DE:  MOV             R5, R0
26F7E0:  CMP.W           R8, #0
26F7E4:  BEQ             loc_26F800
26F7E6:  ADD.W           R0, R11, R11,LSL#1
26F7EA:  MOV             R1, R8; void *
26F7EC:  LSLS            R2, R0, #2; size_t
26F7EE:  MOV             R0, R5; void *
26F7F0:  BLX             memcpy_0
26F7F4:  MOV             R0, R8; p
26F7F6:  BLX             free
26F7FA:  LDR             R0, [SP,#0x250+p]
26F7FC:  LDR.W           R11, [R0]
26F800:  MOV             R0, R9
26F802:  ADD.W           R8, SP, #0x250+var_220
26F806:  STR             R5, [R0,#0xC]
26F808:  LDR             R1, [SP,#0x250+var_24C]
26F80A:  STR             R1, [R0,#4]
26F80C:  LDR             R2, [SP,#0x250+var_248]
26F80E:  B               loc_26F814
26F810:  LDR.W           R5, [R9,#0xC]
26F814:  ADD.W           R0, R11, R11,LSL#1
26F818:  MOV.W           R11, #0
26F81C:  STR.W           R4, [R5,R0,LSL#2]
26F820:  ADD.W           R0, R5, R0,LSL#2
26F824:  MOVW            R5, #0x4B50
26F828:  STRD.W          R10, R2, [R0,#4]
26F82C:  MOVT            R5, #0x403
26F830:  LDR.W           R10, [SP,#0x250+p]
26F834:  LDR.W           R0, [R10]
26F838:  ADDS            R0, #1
26F83A:  STR.W           R0, [R10]
26F83E:  LDRB.W          R0, [SP,#0x250+n+2]
26F842:  LDR             R1, [SP,#0x250+var_230]
26F844:  ADD.W           R10, R1, R4
26F848:  LSLS            R0, R0, #0x1C
26F84A:  BMI             loc_26F850
26F84C:  ADD             R4, SP, #0x250+tv
26F84E:  B               loc_26F87A
26F850:  MOV             R0, R6; this
26F852:  MOV             R1, R10; offset
26F854:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26F858:  ADD             R4, SP, #0x250+tv
26F85A:  MOV             R0, R6; this
26F85C:  MOVS            R2, #4; n
26F85E:  MOV             R1, R4; ptr
26F860:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F864:  LDR             R0, [SP,#0x250+tv]
26F866:  MOV             R1, #0x8074B50
26F86E:  CMP             R0, R1
26F870:  IT EQ
26F872:  ADDEQ.W         R10, R10, #4
26F876:  ADD.W           R10, R10, #0xC
26F87A:  MOV             R0, R6; this
26F87C:  MOV             R1, R10; offset
26F87E:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26F882:  MOV             R0, R6; this
26F884:  MOV             R1, R4; ptr
26F886:  MOVS            R2, #4; n
26F888:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F88C:  LDR             R0, [SP,#0x250+tv]
26F88E:  CMP             R0, R5
26F890:  BEQ.W           loc_26F712
26F894:  LDRD.W          R0, R5, [SP,#0x250+var_244]
26F898:  B               loc_26F8E4
26F89A:  LDR.W           R11, [SP,#0x250+var_230]
26F89E:  MOV             R0, R11; this
26F8A0:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
26F8A4:  MOV             R8, R0
26F8A6:  ADD             R0, SP, #0x250+tv; tv
26F8A8:  MOVS            R1, #0; tz
26F8AA:  BLX             gettimeofday
26F8AE:  VLDR            S0, [SP,#0x250+tv]
26F8B2:  MOV             R1, #0xF4240
26F8BA:  VCVT.F64.S32    D16, S0
26F8BE:  LDR             R0, [SP,#0x250+tv.tv_usec]
26F8C0:  CMP             R0, R1
26F8C2:  BGT             loc_26F954
26F8C4:  VMOV            S0, R0
26F8C8:  CMP.W           R0, #0xFFFFFFFF
26F8CC:  VCVT.F64.S32    D17, S0
26F8D0:  BLE             loc_26F954
26F8D2:  VLDR            D18, =1000000.0
26F8D6:  VDIV.F64        D17, D17, D18
26F8DA:  B               loc_26F970
26F8DC:  ADD.W           R5, R9, #8
26F8E0:  ADD.W           R0, R9, #4
26F8E4:  LDR             R4, [R5]
26F8E6:  LDR.W           R11, [R0]
26F8EA:  CMP             R11, R4
26F8EC:  BEQ             loc_26F924
26F8EE:  ADD.W           R0, R4, R4,LSL#1
26F8F2:  MOV.W           R10, R0,LSL#2
26F8F6:  MOV             R0, R10; byte_count
26F8F8:  BLX             malloc
26F8FC:  LDR.W           R6, [R9,#0xC]
26F900:  MOV             R8, R0
26F902:  MOV             R11, R4
26F904:  CMP             R6, #0
26F906:  BEQ             loc_26F91C
26F908:  MOV             R0, R8; void *
26F90A:  MOV             R1, R6; void *
26F90C:  MOV             R2, R10; size_t
26F90E:  BLX             memcpy_0
26F912:  MOV             R0, R6; p
26F914:  BLX             free
26F918:  LDR.W           R11, [R5]
26F91C:  STR.W           R8, [R9,#0xC]
26F920:  STR.W           R4, [R9,#4]
26F924:  CMP.W           R11, #2
26F928:  BCC.W           loc_26FC92
26F92C:  LDR.W           R8, [R9,#0xC]
26F930:  MOVS            R5, #1
26F932:  ADD.W           R4, R8, #0x14
26F936:  LDR.W           R0, [R8,#8]; char *
26F93A:  LDR             R6, [R4]
26F93C:  MOV             R1, R6; char *
26F93E:  BLX             strcasecmp
26F942:  CMP             R0, #1
26F944:  BGE.W           loc_26FB28
26F948:  ADDS            R5, #1
26F94A:  ADDS            R4, #0xC
26F94C:  CMP             R5, R11
26F94E:  MOV             R0, R6
26F950:  BCC             loc_26F93A
26F952:  B               loc_26FC92
26F954:  LDR             R0, =(unk_6D70D8 - 0x26F95A)
26F956:  ADD             R0, PC; unk_6D70D8
26F958:  VLDR            D17, [R0]
26F95C:  VCVT.U32.F64    S0, D17
26F960:  VCVT.F64.U32    D18, S0
26F964:  VSUB.F64        D17, D17, D18
26F968:  VLDR            D18, =0.00033
26F96C:  VADD.F64        D17, D17, D18
26F970:  VADD.F64        D16, D17, D16
26F974:  LDR             R0, =(unk_6D70E0 - 0x26F97A)
26F976:  ADD             R0, PC; unk_6D70E0
26F978:  VLDR            D17, [R0]
26F97C:  VMOV.F64        D18, #5.0
26F980:  LDR             R0, =(unk_6D70D8 - 0x26F986)
26F982:  ADD             R0, PC; unk_6D70D8
26F984:  VSUB.F64        D17, D16, D17
26F988:  VCMPE.F64       D17, D18
26F98C:  VMRS            APSR_nzcv, FPSCR
26F990:  VSTR            D16, [R0]
26F994:  BLE             loc_26F99E
26F996:  LDR             R0, =(unk_6D70E0 - 0x26F99C)
26F998:  ADD             R0, PC; unk_6D70E0
26F99A:  VSTR            D16, [R0]
26F99E:  CMP.W           R8, #0x200000
26F9A2:  BGE.W           loc_26FAD8
26F9A6:  MOV             R0, R8; byte_count
26F9A8:  BLX             malloc
26F9AC:  MOV             R4, R0
26F9AE:  MOV             R0, R11; this
26F9B0:  MOV             R1, R4; ptr
26F9B2:  MOV             R2, R8; n
26F9B4:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26F9B8:  MOV             R0, R11; this
26F9BA:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
26F9BE:  LDR.W           R0, [R9,#4]
26F9C2:  STR             R4, [SP,#0x250+p]
26F9C4:  LDR.W           R10, [R4],#4
26F9C8:  CMP             R0, R10
26F9CA:  BCS             loc_26FA02
26F9CC:  ADD.W           R0, R10, R10,LSL#1
26F9D0:  LSLS            R0, R0, #2; byte_count
26F9D2:  BLX             malloc
26F9D6:  LDR.W           R5, [R9,#0xC]
26F9DA:  MOV             R11, R0
26F9DC:  CMP             R5, #0
26F9DE:  BEQ             loc_26F9F8
26F9E0:  LDR.W           R0, [R9,#8]
26F9E4:  MOV             R1, R5; void *
26F9E6:  ADD.W           R0, R0, R0,LSL#1
26F9EA:  LSLS            R2, R0, #2; size_t
26F9EC:  MOV             R0, R11; void *
26F9EE:  BLX             memcpy_0
26F9F2:  MOV             R0, R5; p
26F9F4:  BLX             free
26F9F8:  MOV             R0, R10
26F9FA:  STR.W           R11, [R9,#0xC]
26F9FE:  STR.W           R10, [R9,#4]
26FA02:  LDR.W           R6, [R9,#8]
26FA06:  ADD.W           R1, R6, R10
26FA0A:  CMP             R0, R1
26FA0C:  BCS             loc_26FA5A
26FA0E:  LSLS            R0, R1, #2
26FA10:  MOV             R1, #0xAAAAAAAB
26FA18:  UMULL.W         R0, R1, R0, R1
26FA1C:  MOVS            R0, #3
26FA1E:  ADD.W           R0, R0, R1,LSR#1
26FA22:  STR             R0, [SP,#0x250+var_244]
26FA24:  ADD.W           R0, R0, R0,LSL#1
26FA28:  LSLS            R0, R0, #2; byte_count
26FA2A:  BLX             malloc
26FA2E:  LDR.W           R5, [R9,#0xC]
26FA32:  MOV             R11, R0
26FA34:  CMP             R5, #0
26FA36:  BEQ             loc_26FA50
26FA38:  ADD.W           R0, R6, R6,LSL#1
26FA3C:  MOV             R1, R5; void *
26FA3E:  LSLS            R2, R0, #2; size_t
26FA40:  MOV             R0, R11; void *
26FA42:  BLX             memcpy_0
26FA46:  MOV             R0, R5; p
26FA48:  BLX             free
26FA4C:  LDR.W           R6, [R9,#8]
26FA50:  STR.W           R11, [R9,#0xC]
26FA54:  LDR             R0, [SP,#0x250+var_244]
26FA56:  STR.W           R0, [R9,#4]
26FA5A:  ADD.W           R0, R6, R10
26FA5E:  STR.W           R0, [R9,#8]
26FA62:  ADD.W           R0, R10, R10,LSL#3
26FA66:  NEGS            R0, R0
26FA68:  ADD             R0, R8; byte_count
26FA6A:  BLX             malloc
26FA6E:  MOV             R11, R0
26FA70:  CMP.W           R10, #1
26FA74:  STR.W           R11, [R9,#0x114]
26FA78:  BLT             loc_26FAD0
26FA7A:  MOVS            R5, #8
26FA7C:  MOV.W           R8, #0
26FA80:  LDR.W           R0, [R9,#0xC]
26FA84:  LDR             R1, [R4]
26FA86:  ADD             R0, R5
26FA88:  STR.W           R1, [R0,#-8]
26FA8C:  LDR.W           R0, [R9,#0xC]
26FA90:  LDR             R1, [R4,#4]
26FA92:  ADD             R0, R5
26FA94:  STR.W           R1, [R0,#-4]
26FA98:  LDR.W           R0, [R9,#0xC]
26FA9C:  LDRH            R6, [R4,#8]
26FA9E:  ADDS            R4, #0xA
26FAA0:  STR.W           R11, [R0,R5]
26FAA4:  MOV             R1, R4; void *
26FAA6:  MOV             R2, R6; size_t
26FAA8:  LDR.W           R0, [R9,#0xC]
26FAAC:  LDR             R0, [R0,R5]; void *
26FAAE:  BLX             memcpy_1
26FAB2:  LDR.W           R0, [R9,#0xC]
26FAB6:  ADD             R4, R6
26FAB8:  SUBS.W          R10, R10, #1
26FABC:  LDR             R0, [R0,R5]
26FABE:  ADD.W           R5, R5, #0xC
26FAC2:  STRB.W          R8, [R0,R6]
26FAC6:  ADD.W           R0, R11, R6
26FACA:  ADD.W           R11, R0, #1
26FACE:  BNE             loc_26FA80
26FAD0:  LDR             R0, [SP,#0x250+p]; p
26FAD2:  BLX             free
26FAD6:  B               loc_26FC92
26FAD8:  ADD             R1, SP, #0x250+tv; ptr
26FADA:  MOV             R0, R11; this
26FADC:  MOVS            R2, #4; n
26FADE:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FAE2:  LDR.W           R0, [R9,#4]
26FAE6:  LDR             R5, [SP,#0x250+tv]
26FAE8:  CMP             R0, R5
26FAEA:  BCS             loc_26FB48
26FAEC:  ADD.W           R0, R5, R5,LSL#1
26FAF0:  LSLS            R0, R0, #2; byte_count
26FAF2:  BLX             malloc
26FAF6:  LDR.W           R6, [R9,#0xC]
26FAFA:  MOV             R8, R0
26FAFC:  MOV             R4, R5
26FAFE:  CMP             R6, #0
26FB00:  BEQ             loc_26FB1C
26FB02:  LDR.W           R0, [R9,#8]
26FB06:  MOV             R1, R6; void *
26FB08:  ADD.W           R0, R0, R0,LSL#1
26FB0C:  LSLS            R2, R0, #2; size_t
26FB0E:  MOV             R0, R8; void *
26FB10:  BLX             memcpy_0
26FB14:  MOV             R0, R6; p
26FB16:  BLX             free
26FB1A:  LDR             R4, [SP,#0x250+tv]
26FB1C:  MOV             R0, R5
26FB1E:  STR.W           R8, [R9,#0xC]
26FB22:  STR.W           R5, [R9,#4]
26FB26:  B               loc_26FB4A
26FB28:  LDR             R0, =(_ZN7ZIPFile12EntryCompareEPKvS1__ptr - 0x26FB32)
26FB2A:  MOV             R1, R11; size_t
26FB2C:  MOVS            R2, #0xC; size_t
26FB2E:  ADD             R0, PC; _ZN7ZIPFile12EntryCompareEPKvS1__ptr
26FB30:  LDR             R3, [R0]; ZIPFile::EntryCompare(void const*,void const*) ; int (*)(const void *, const void *)
26FB32:  MOV             R0, R8; void *
26FB34:  BLX             qsort
26FB38:  B               loc_26FC92
26FB3A:  ALIGN 0x10
26FB40:  DCFD 1000000.0
26FB48:  MOV             R4, R5
26FB4A:  LDR.W           R5, [R9,#8]
26FB4E:  ADDS            R1, R5, R4
26FB50:  CMP             R0, R1
26FB52:  BCS             loc_26FB9C
26FB54:  LSLS            R0, R1, #2
26FB56:  MOV             R1, #0xAAAAAAAB
26FB5E:  UMULL.W         R0, R1, R0, R1
26FB62:  MOVS            R0, #3
26FB64:  ADD.W           R10, R0, R1,LSR#1
26FB68:  ADD.W           R0, R10, R10,LSL#1
26FB6C:  LSLS            R0, R0, #2; byte_count
26FB6E:  BLX             malloc
26FB72:  LDR.W           R6, [R9,#0xC]
26FB76:  MOV             R8, R0
26FB78:  CMP             R6, #0
26FB7A:  BEQ             loc_26FB94
26FB7C:  ADD.W           R0, R5, R5,LSL#1
26FB80:  MOV             R1, R6; void *
26FB82:  LSLS            R2, R0, #2; size_t
26FB84:  MOV             R0, R8; void *
26FB86:  BLX             memcpy_0
26FB8A:  MOV             R0, R6; p
26FB8C:  BLX             free
26FB90:  LDR.W           R5, [R9,#8]
26FB94:  STR.W           R8, [R9,#0xC]
26FB98:  STR.W           R10, [R9,#4]
26FB9C:  ADDS            R0, R5, R4
26FB9E:  STR.W           R0, [R9,#8]
26FBA2:  MOV             R0, R11; this
26FBA4:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
26FBA8:  LDR             R4, [SP,#0x250+tv]
26FBAA:  ADD.W           R1, R4, R4,LSL#3
26FBAE:  NEGS            R1, R1
26FBB0:  ADD             R0, R1; byte_count
26FBB2:  BLX             malloc
26FBB6:  MOV             R6, R0
26FBB8:  CMP             R4, #1
26FBBA:  STR.W           R6, [R9,#0x114]
26FBBE:  BLT             loc_26FC8C
26FBC0:  LDR.W           R1, [R9,#0xC]; ptr
26FBC4:  MOV             R0, R11; this
26FBC6:  MOVS            R2, #4; n
26FBC8:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FBCC:  LDR.W           R0, [R9,#0xC]
26FBD0:  MOVS            R2, #4; n
26FBD2:  ADDS            R1, R0, #4; ptr
26FBD4:  MOV             R0, R11; this
26FBD6:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FBDA:  ADD             R1, SP, #0x250+ptr; ptr
26FBDC:  MOV.W           R10, #0
26FBE0:  MOV             R0, R11; this
26FBE2:  MOVS            R2, #2; n
26FBE4:  STRH.W          R10, [SP,#0x250+ptr]
26FBE8:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FBEC:  LDR.W           R0, [R9,#0xC]
26FBF0:  STR             R6, [R0,#8]
26FBF2:  LDR.W           R0, [R9,#0xC]
26FBF6:  LDRH.W          R2, [SP,#0x250+ptr]; n
26FBFA:  LDR             R1, [R0,#8]; ptr
26FBFC:  MOV             R0, R11; this
26FBFE:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FC02:  LDR.W           R0, [R9,#0xC]
26FC06:  LDRH.W          R1, [SP,#0x250+ptr]
26FC0A:  LDR             R0, [R0,#8]
26FC0C:  STRB.W          R10, [R0,R1]
26FC10:  LDR             R0, [SP,#0x250+tv]
26FC12:  CMP             R0, #2
26FC14:  BLT             loc_26FC8C
26FC16:  LDRH.W          R0, [SP,#0x250+ptr]
26FC1A:  ADD.W           R8, SP, #0x250+ptr
26FC1E:  MOVS            R4, #0x14
26FC20:  ADD             R0, R6
26FC22:  MOVS            R6, #1
26FC24:  ADDS            R5, R0, #1
26FC26:  LDR.W           R0, [R9,#0xC]
26FC2A:  MOVS            R2, #4; n
26FC2C:  ADD             R0, R4
26FC2E:  SUB.W           R1, R0, #8; ptr
26FC32:  MOV             R0, R11; this
26FC34:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FC38:  LDR.W           R0, [R9,#0xC]
26FC3C:  MOVS            R2, #4; n
26FC3E:  ADD             R0, R4
26FC40:  SUBS            R1, R0, #4; ptr
26FC42:  MOV             R0, R11; this
26FC44:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FC48:  MOV             R0, R11; this
26FC4A:  MOV             R1, R8; ptr
26FC4C:  MOVS            R2, #2; n
26FC4E:  STRH.W          R10, [SP,#0x250+ptr]
26FC52:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FC56:  LDR.W           R0, [R9,#0xC]
26FC5A:  STR             R5, [R0,R4]
26FC5C:  LDR.W           R0, [R9,#0xC]
26FC60:  LDRH.W          R2, [SP,#0x250+ptr]; n
26FC64:  LDR             R1, [R0,R4]; ptr
26FC66:  MOV             R0, R11; this
26FC68:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
26FC6C:  LDR.W           R0, [R9,#0xC]
26FC70:  ADDS            R6, #1
26FC72:  LDRH.W          R1, [SP,#0x250+ptr]
26FC76:  LDR             R0, [R0,R4]
26FC78:  ADDS            R4, #0xC
26FC7A:  STRB.W          R10, [R0,R1]
26FC7E:  LDRH.W          R0, [SP,#0x250+ptr]
26FC82:  LDR             R1, [SP,#0x250+tv]
26FC84:  ADD             R0, R5
26FC86:  ADDS            R5, R0, #1
26FC88:  CMP             R6, R1
26FC8A:  BLT             loc_26FC26
26FC8C:  MOV             R0, R11; this
26FC8E:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
26FC92:  MOVS            R5, #1
26FC94:  LDR             R0, =(__stack_chk_guard_ptr - 0x26FC9C)
26FC96:  LDR             R1, [SP,#0x250+var_20]
26FC98:  ADD             R0, PC; __stack_chk_guard_ptr
26FC9A:  LDR             R0, [R0]; __stack_chk_guard
26FC9C:  LDR             R0, [R0]
26FC9E:  SUBS            R0, R0, R1
26FCA0:  ITTTT EQ
26FCA2:  MOVEQ           R0, R5
26FCA4:  ADDEQ.W         SP, SP, #0x234
26FCA8:  POPEQ.W         {R8-R11}
26FCAC:  POPEQ           {R4-R7,PC}
26FCAE:  BLX             __stack_chk_fail
