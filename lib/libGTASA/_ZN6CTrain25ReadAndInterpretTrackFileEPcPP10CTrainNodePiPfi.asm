; =========================================================
; Game Engine Function: _ZN6CTrain25ReadAndInterpretTrackFileEPcPP10CTrainNodePiPfi
; Address            : 0x57C828 - 0x57CA8A
; =========================================================

57C828:  PUSH            {R4-R7,LR}
57C82A:  ADD             R7, SP, #0xC
57C82C:  PUSH.W          {R8-R11}
57C830:  SUB             SP, SP, #4
57C832:  VPUSH           {D8-D10}
57C836:  SUB             SP, SP, #0x30; char *
57C838:  STR             R3, [SP,#0x68+var_5C]
57C83A:  MOV             R8, R1
57C83C:  MOV             R5, R0
57C83E:  LDR.W           R0, [R8]
57C842:  MOV             R9, R2
57C844:  CMP             R0, #0
57C846:  BNE.W           loc_57C9E2
57C84A:  MOVW            R0, #0xB530; unsigned int
57C84E:  BLX             _Znaj; operator new[](uint)
57C852:  MOV             R4, R0
57C854:  ADR             R3, dword_57CA8C; int
57C856:  MOV             R0, R5; this
57C858:  MOV             R1, R4; char *
57C85A:  MOVW            R2, #(elf_hash_bucket+0xB434); unsigned __int8 *
57C85E:  BLX             j__ZN8CFileMgr8LoadFileEPKcPhiS1_; CFileMgr::LoadFile(char const*,uchar *,int,char const*)
57C862:  LDRB            R1, [R4]
57C864:  MOVS            R0, #0
57C866:  CMP             R1, #0xA
57C868:  BNE             loc_57C870
57C86A:  MOVS            R5, #1
57C86C:  MOVS            R2, #0
57C86E:  B               loc_57C886
57C870:  LDR             R6, =(gString_ptr - 0x57C87A)
57C872:  ADDS            R3, R4, #1
57C874:  MOVS            R2, #0
57C876:  ADD             R6, PC; gString_ptr
57C878:  LDR             R6, [R6]; gString
57C87A:  STRB            R1, [R6,R2]
57C87C:  LDRB            R1, [R3,R2]
57C87E:  ADDS            R2, #1
57C880:  CMP             R1, #0xA
57C882:  BNE             loc_57C87A
57C884:  ADDS            R5, R2, #1
57C886:  LDR             R1, =(gString_ptr - 0x57C88C)
57C888:  ADD             R1, PC; gString_ptr
57C88A:  LDR             R1, [R1]; gString ; char *
57C88C:  STRB            R0, [R1,R2]
57C88E:  ADR             R0, aProcessed; "processed"
57C890:  BLX             strcmp
57C894:  CBNZ            R0, loc_57C8C4
57C896:  LDRB            R2, [R4,R5]
57C898:  MOVS            R0, #0
57C89A:  CMP             R2, #0xA
57C89C:  BNE             loc_57C8A2
57C89E:  MOVS            R1, #0
57C8A0:  B               loc_57C8BA
57C8A2:  LDR             R6, =(gString_ptr - 0x57C8AE)
57C8A4:  ADDS            R1, R4, R5
57C8A6:  ADDS            R3, R1, #1
57C8A8:  MOVS            R1, #0
57C8AA:  ADD             R6, PC; gString_ptr
57C8AC:  LDR             R6, [R6]; gString
57C8AE:  STRB            R2, [R6,R1]
57C8B0:  LDRB            R2, [R3,R1]
57C8B2:  ADDS            R1, #1
57C8B4:  CMP             R2, #0xA
57C8B6:  BNE             loc_57C8AE
57C8B8:  ADD             R5, R1
57C8BA:  LDR             R2, =(gString_ptr - 0x57C8C2)
57C8BC:  ADDS            R5, #1
57C8BE:  ADD             R2, PC; gString_ptr
57C8C0:  LDR             R2, [R2]; gString
57C8C2:  STRB            R0, [R2,R1]
57C8C4:  LDR             R0, =(gString_ptr - 0x57C8CE)
57C8C6:  ADR             R1, dword_57CAB0; format
57C8C8:  MOV             R2, R9
57C8CA:  ADD             R0, PC; gString_ptr
57C8CC:  LDR             R0, [R0]; gString ; s
57C8CE:  BLX             sscanf
57C8D2:  LDR.W           R6, [R9]
57C8D6:  MOVS            R0, #0xA
57C8D8:  UMULL.W         R0, R1, R6, R0
57C8DC:  CMP             R1, #0
57C8DE:  IT NE
57C8E0:  MOVNE           R1, #1
57C8E2:  CMP             R1, #0
57C8E4:  IT NE
57C8E6:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
57C8EA:  BLX             _Znaj; operator new[](uint)
57C8EE:  CBZ             R6, loc_57C904
57C8F0:  ADD.W           R2, R6, R6,LSL#2
57C8F4:  ADD.W           R1, R0, #9
57C8F8:  MOVS            R3, #0
57C8FA:  LSLS            R2, R2, #1
57C8FC:  STRB.W          R3, [R1],#0xA
57C900:  SUBS            R2, #0xA
57C902:  BNE             loc_57C8FC
57C904:  STR.W           R0, [R8]
57C908:  LDR.W           R0, [R9]
57C90C:  CMP             R0, #1
57C90E:  BLT             loc_57C9DC
57C910:  LDR             R0, =(gString_ptr - 0x57C922)
57C912:  VMOV.F32        S16, #8.0
57C916:  MOV.W           R10, #0
57C91A:  MOV.W           R11, #0
57C91E:  ADD             R0, PC; gString_ptr
57C920:  LDR             R0, [R0]; gString
57C922:  STR             R0, [SP,#0x68+s]
57C924:  LDR             R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x57C92A)
57C926:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
57C928:  LDR             R6, [R0]; CTrain::aStationCoors ...
57C92A:  LDR             R0, =(gString_ptr - 0x57C930)
57C92C:  ADD             R0, PC; gString_ptr
57C92E:  LDR             R0, [R0]; gString
57C930:  STR             R0, [SP,#0x68+var_58]
57C932:  LDRB            R0, [R4,R5]
57C934:  ADDS            R5, #1
57C936:  CMP             R0, #0xA
57C938:  BEQ             loc_57C948
57C93A:  LDR             R1, [SP,#0x68+var_58]
57C93C:  STRB.W          R0, [R1],#1
57C940:  LDRB            R0, [R4,R5]
57C942:  ADDS            R5, #1
57C944:  CMP             R0, #0xA
57C946:  BNE             loc_57C93C
57C948:  ADD             R0, SP, #0x68+var_44
57C94A:  STR             R0, [SP,#0x68+var_68]
57C94C:  ADD             R0, SP, #0x68+var_48
57C94E:  STR             R0, [SP,#0x68+var_64]
57C950:  LDR             R0, [SP,#0x68+s]; s
57C952:  ADR             R1, aFFFD; "%f %f %f %d"
57C954:  ADD             R2, SP, #0x68+var_3C
57C956:  ADD             R3, SP, #0x68+var_40
57C958:  BLX             sscanf
57C95C:  VLDR            S0, [SP,#0x68+var_3C]
57C960:  ADD.W           R2, R10, R10,LSL#2
57C964:  VMUL.F32        S0, S0, S16
57C968:  VCVT.S32.F32    S0, S0
57C96C:  LDR.W           R0, [R8]
57C970:  VMOV            R1, S0
57C974:  STRH.W          R1, [R0,R2,LSL#1]
57C978:  VLDR            S0, [SP,#0x68+var_40]
57C97C:  LDR.W           R0, [R8]
57C980:  VMUL.F32        S0, S0, S16
57C984:  ADD.W           R0, R0, R2,LSL#1
57C988:  VCVT.S32.F32    S0, S0
57C98C:  VMOV            R1, S0
57C990:  STRH            R1, [R0,#2]
57C992:  VLDR            S0, [SP,#0x68+var_44]
57C996:  LDR.W           R0, [R8]
57C99A:  VMUL.F32        S2, S0, S16
57C99E:  ADD.W           R0, R0, R2,LSL#1
57C9A2:  VCVT.S32.F32    S2, S2
57C9A6:  VMOV            R1, S2
57C9AA:  STRH            R1, [R0,#4]
57C9AC:  LDR             R0, [R7,#arg_0]
57C9AE:  CMP             R0, #0
57C9B0:  BNE             loc_57C9D0
57C9B2:  LDR             R0, [SP,#0x68+var_48]
57C9B4:  CBZ             R0, loc_57C9D0
57C9B6:  ADD.W           R2, R11, R11,LSL#1
57C9BA:  LDRD.W          R0, R1, [SP,#0x68+var_40]
57C9BE:  ADD.W           R11, R11, #1
57C9C2:  STR.W           R1, [R6,R2,LSL#2]
57C9C6:  ADD.W           R1, R6, R2,LSL#2
57C9CA:  STR             R0, [R1,#4]
57C9CC:  VSTR            S0, [R1,#8]
57C9D0:  LDR.W           R0, [R9]
57C9D4:  ADD.W           R10, R10, #1
57C9D8:  CMP             R10, R0
57C9DA:  BLT             loc_57C932
57C9DC:  MOV             R0, R4; void *
57C9DE:  BLX             _ZdaPv; operator delete[](void *)
57C9E2:  LDR.W           R0, [R9]
57C9E6:  VLDR            S16, =0.0
57C9EA:  CMP             R0, #1
57C9EC:  BLT             loc_57CA76
57C9EE:  VMOV.F32        S18, #3.0
57C9F2:  LDR.W           R0, [R8]
57C9F6:  VMOV.I32        D10, #0x3E000000
57C9FA:  ADD.W           R10, SP, #0x68+var_50
57C9FE:  ADD.W           R11, SP, #0x68+var_4C
57CA02:  MOVS            R4, #0
57CA04:  MOVS            R6, #6
57CA06:  VMUL.F32        S0, S16, S18
57CA0A:  ADDS            R4, #1
57CA0C:  VCVT.U32.F32    S0, S0
57CA10:  VMOV            R1, S0
57CA14:  STRH            R1, [R0,R6]
57CA16:  MOV             R0, R4
57CA18:  LDR.W           R5, [R9]
57CA1C:  MOV             R1, R5
57CA1E:  BLX             __aeabi_idivmod
57CA22:  LDR.W           R0, [R8]
57CA26:  ADD.W           R1, R1, R1,LSL#2
57CA2A:  CMP             R4, R5
57CA2C:  ADD.W           R2, R0, R6
57CA30:  ADD.W           R6, R6, #0xA
57CA34:  LDR.W           R1, [R0,R1,LSL#1]
57CA38:  LDR.W           R2, [R2,#-6]
57CA3C:  STR             R2, [SP,#0x68+var_50]
57CA3E:  VLD1.32         {D16[0]}, [R10@32]
57CA42:  STR             R1, [SP,#0x68+var_4C]
57CA44:  VMOVL.S16       Q9, D16
57CA48:  VLD1.32         {D17[0]}, [R11@32]
57CA4C:  VCVT.F32.S32    D16, D18
57CA50:  VMOVL.S16       Q9, D17
57CA54:  VCVT.F32.S32    D17, D18
57CA58:  VMUL.F32        D16, D16, D10
57CA5C:  VMUL.F32        D17, D17, D10
57CA60:  VSUB.F32        D16, D16, D17
57CA64:  VMUL.F32        D0, D16, D16
57CA68:  VADD.F32        S0, S0, S1
57CA6C:  VSQRT.F32       S0, S0
57CA70:  VADD.F32        S16, S16, S0
57CA74:  BLT             loc_57CA06
57CA76:  LDR             R0, [SP,#0x68+var_5C]
57CA78:  VSTR            S16, [R0]
57CA7C:  ADD             SP, SP, #0x30 ; '0'
57CA7E:  VPOP            {D8-D10}
57CA82:  ADD             SP, SP, #4
57CA84:  POP.W           {R8-R11}
57CA88:  POP             {R4-R7,PC}
