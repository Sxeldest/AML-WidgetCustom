; =========================================================
; Game Engine Function: _ZN8LoadTask12TryLoadSoundEiR9SoundData
; Address            : 0x27E854 - 0x27EC18
; =========================================================

27E854:  PUSH            {R4-R7,LR}
27E856:  ADD             R7, SP, #0xC
27E858:  PUSH.W          {R8-R11}
27E85C:  SUB             SP, SP, #0x12C
27E85E:  MOV             R5, R0
27E860:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x27E86E)
27E864:  MOV.W           R11, #0
27E868:  MOV             R9, R2
27E86A:  ADD             R0, PC; __stack_chk_guard_ptr
27E86C:  MOV             R6, R2
27E86E:  MOV             R3, R2
27E870:  LDR             R0, [R0]; __stack_chk_guard
27E872:  LDR             R0, [R0]
27E874:  STR             R0, [SP,#0x148+var_20]
27E876:  MOVS            R0, #1
27E878:  STR.W           R11, [R9],#0xC
27E87C:  STR.W           R11, [R9]
27E880:  STR.W           R11, [R6,#4]!
27E884:  STR.W           R0, [R3,#8]!
27E888:  LDR             R0, [R5,#0xC]
27E88A:  CBZ             R0, loc_27E8B2
27E88C:  MOVW            R8, #0xFD4E
27E890:  LDR             R0, [R5,#0x10]
27E892:  MOVW            R4, #0x2B1
27E896:  MOVT            R8, #0xFFFF
27E89A:  CMP             R0, R4
27E89C:  MOV             R4, R8
27E89E:  STRD.W          R3, R2, [SP,#0x148+var_12C]
27E8A2:  BGT             loc_27E902
27E8A4:  MOVW            R2, #0x27D
27E8A8:  CMP             R0, R2
27E8AA:  BLE             loc_27E8CC
27E8AC:  ADD.W           R4, R8, #0x34 ; '4'
27E8B0:  B               loc_27E902
27E8B2:  LDR.W           R0, =(bankInfo_ptr - 0x27E8BC)
27E8B6:  LDR             R2, [R5,#0x10]
27E8B8:  ADD             R0, PC; bankInfo_ptr
27E8BA:  LDR             R0, [R0]; bankInfo
27E8BC:  LDR             R0, [R0,#(dword_6DFD20 - 0x6DFD18)]
27E8BE:  LDR.W           R0, [R0,R2,LSL#3]
27E8C2:  CMP             R0, R1
27E8C4:  IT GT
27E8C6:  MOVGT.W         R11, #1
27E8CA:  B               loc_27EBF4
27E8CC:  CMP.W           R0, #0x1AC
27E8D0:  BLE             loc_27E8D8
27E8D2:  MOV             R4, #0xFFFFFE53
27E8D6:  B               loc_27E902
27E8D8:  CMP.W           R0, #0x19A
27E8DC:  BLE             loc_27E8E4
27E8DE:  MOV             R4, #0xFFFFFE65
27E8E2:  B               loc_27E902
27E8E4:  CMP.W           R0, #0x16C
27E8E8:  BLE             loc_27E8F0
27E8EA:  MOV             R4, #0xFFFFFE93
27E8EE:  B               loc_27E902
27E8F0:  CMP             R0, #0x92
27E8F2:  BLE             loc_27E8FA
27E8F4:  MOV             R4, #0xFFFFFF6D
27E8F8:  B               loc_27E902
27E8FA:  CMP             R0, #0x8F
27E8FC:  BLE             loc_27E97C
27E8FE:  MOV             R4, #0xFFFFFF70
27E902:  ADD             R0, R4
27E904:  ADD             R4, SP, #0x148+var_120
27E906:  ADDS            R3, R0, #1
27E908:  ADR             R2, aBank03dSound03; "Bank_%03d/sound_%03d.mp3"
27E90A:  ADD.W           R10, R1, #1
27E90E:  STR             R1, [SP,#0x148+var_134]
27E910:  MOV             R0, R4
27E912:  MOV.W           R1, #0x100
27E916:  STR.W           R10, [SP,#0x148+var_148]
27E91A:  BL              sub_5E6B74
27E91E:  LDR             R0, [R5,#0xC]
27E920:  LDR             R1, [R0]
27E922:  LDR             R2, [R1]
27E924:  MOV             R1, R4
27E926:  BLX             R2
27E928:  MOV             R4, R0
27E92A:  ADDS            R0, R4, #1
27E92C:  STR             R6, [SP,#0x148+var_130]
27E92E:  BEQ             loc_27E936
27E930:  MOV.W           R11, #1
27E934:  B               loc_27E9BA
27E936:  LDR             R0, [R5,#0x10]
27E938:  MOVW            R1, #0x2B1
27E93C:  CMP             R0, R1
27E93E:  BGT             loc_27E98E
27E940:  MOVW            R1, #0x27D
27E944:  CMP             R0, R1
27E946:  BLE             loc_27E94E
27E948:  ADD.W           R8, R8, #0x34 ; '4'
27E94C:  B               loc_27E98E
27E94E:  CMP.W           R0, #0x1AC
27E952:  BLE             loc_27E95A
27E954:  MOV             R8, #0xFFFFFE53
27E958:  B               loc_27E98E
27E95A:  CMP.W           R0, #0x19A
27E95E:  BLE             loc_27E966
27E960:  MOV             R8, #0xFFFFFE65
27E964:  B               loc_27E98E
27E966:  CMP.W           R0, #0x16C
27E96A:  BLE             loc_27E972
27E96C:  MOV             R8, #0xFFFFFE93
27E970:  B               loc_27E98E
27E972:  CMP             R0, #0x92
27E974:  BLE             loc_27E984
27E976:  MOV             R8, #0xFFFFFF6D
27E97A:  B               loc_27E98E
27E97C:  CMP             R0, #6
27E97E:  IT GT
27E980:  SUBGT           R0, #7
27E982:  B               loc_27E904
27E984:  CMP             R0, #0x8F
27E986:  BLE.W           loc_27EC10
27E98A:  MOV             R8, #0xFFFFFF70
27E98E:  ADD             R0, R8
27E990:  ADD             R4, SP, #0x148+var_120
27E992:  ADDS            R3, R0, #1
27E994:  ADR             R2, aBank03dSound03_0; "Bank_%03d/sound_%03d.wav"
27E996:  MOV.W           R1, #0x100
27E99A:  MOV             R0, R4
27E99C:  STR.W           R10, [SP,#0x148+var_148]
27E9A0:  BL              sub_5E6B74
27E9A4:  LDR             R0, [R5,#0xC]
27E9A6:  LDR             R1, [R0]
27E9A8:  LDR             R2, [R1]
27E9AA:  MOV             R1, R4
27E9AC:  BLX             R2
27E9AE:  MOV             R4, R0
27E9B0:  ADDS            R0, R4, #1
27E9B2:  MOV.W           R11, #0
27E9B6:  BEQ.W           loc_27EBF4
27E9BA:  LDR             R0, =(_ZN8LoadTask7lastZIPE_ptr - 0x27E9C4)
27E9BC:  LDR.W           R10, [R5,#0xC]
27E9C0:  ADD             R0, PC; _ZN8LoadTask7lastZIPE_ptr
27E9C2:  LDR             R0, [R0]; LoadTask::lastZIP ...
27E9C4:  LDR             R0, [R0]; LoadTask::lastZIP
27E9C6:  CMP             R0, R10
27E9C8:  BEQ             loc_27EA02
27E9CA:  LDR             R0, =(_ZN8LoadTask10lastHandleE_ptr - 0x27E9D2)
27E9CC:  LDR             R6, [SP,#0x148+var_128]
27E9CE:  ADD             R0, PC; _ZN8LoadTask10lastHandleE_ptr
27E9D0:  LDR             R0, [R0]; LoadTask::lastHandle ...
27E9D2:  LDR             R0, [R0]; this
27E9D4:  CBZ             R0, loc_27E9DE
27E9D6:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
27E9DA:  LDR.W           R10, [R5,#0xC]
27E9DE:  LDR             R0, =(_ZN8LoadTask10lastHandleE_ptr - 0x27E9EA)
27E9E0:  ADD.W           R2, R10, #0x10
27E9E4:  MOVS            R3, #0
27E9E6:  ADD             R0, PC; _ZN8LoadTask10lastHandleE_ptr
27E9E8:  LDR             R1, [R0]; LoadTask::lastHandle ...
27E9EA:  MOVS            R0, #0
27E9EC:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
27E9F0:  LDR             R0, =(_ZN8LoadTask7lastZIPE_ptr - 0x27E9FA)
27E9F2:  LDR.W           R10, [R5,#0xC]
27E9F6:  ADD             R0, PC; _ZN8LoadTask7lastZIPE_ptr
27E9F8:  LDR             R0, [R0]; LoadTask::lastZIP ...
27E9FA:  STR.W           R10, [R0]; LoadTask::lastZIP
27E9FE:  MOV             R0, R10
27EA00:  B               loc_27EA04
27EA02:  LDR             R6, [SP,#0x148+var_128]
27EA04:  LDR             R0, [R0,#0xC]
27EA06:  ADD.W           R1, R4, R4,LSL#1
27EA0A:  ADD.W           R0, R0, R1,LSL#2
27EA0E:  LDR.W           R8, [R0,#4]
27EA12:  CMP.W           R8, #0
27EA16:  BEQ.W           loc_27EBF0
27EA1A:  LDR             R0, =(_ZN8LoadTask7lastZIPE_ptr - 0x27EA20)
27EA1C:  ADD             R0, PC; _ZN8LoadTask7lastZIPE_ptr
27EA1E:  LDR             R0, [R0]; LoadTask::lastZIP ...
27EA20:  STR.W           R10, [R0]; LoadTask::lastZIP
27EA24:  MOV             R0, R8; byte_count
27EA26:  BLX             malloc
27EA2A:  MOV             R3, R0; void *
27EA2C:  LDR             R0, =(_ZN8LoadTask10lastHandleE_ptr - 0x27EA38)
27EA2E:  MOV             R2, R4; int
27EA30:  STR.W           R8, [SP,#0x148+var_148]; unsigned int
27EA34:  ADD             R0, PC; _ZN8LoadTask10lastHandleE_ptr
27EA36:  MOV             R4, R3
27EA38:  LDR             R0, [R0]; LoadTask::lastHandle ...
27EA3A:  LDR             R1, [R0]; AndroidFile *
27EA3C:  MOV             R0, R10; this
27EA3E:  BLX             j__ZN7ZIPFile12ReadExistingEPviS0_j; ZIPFile::ReadExisting(void *,int,void *,uint)
27EA42:  MOVS            R0, #0
27EA44:  CMP.W           R11, #1
27EA48:  STR             R0, [SP,#0x148+var_124]
27EA4A:  STR             R4, [SP,#0x148+var_13C]
27EA4C:  BNE             loc_27EA64
27EA4E:  LDR.W           R10, [SP,#0x148+var_130]
27EA52:  ADD             R2, SP, #0x148+var_124; unsigned int
27EA54:  STRD.W          R10, R9, [SP,#0x148+var_148]; unsigned int *
27EA58:  MOV             R0, R4; this
27EA5A:  LDR             R3, [SP,#0x148+var_12C]; unsigned int *
27EA5C:  MOV             R1, R8; unsigned __int8 *
27EA5E:  BLX             j__ZN13CAEMP3Decoder16DecodeEntireFileEPhjPjS1_S1_S1_; CAEMP3Decoder::DecodeEntireFile(uchar *,uint,uint *,uint *,uint *,uint *)
27EA62:  B               loc_27EA8E
27EA64:  LDR             R1, [SP,#0x148+var_12C]
27EA66:  MOVS            R0, #1
27EA68:  MOV             R8, R6
27EA6A:  STR             R0, [R1]
27EA6C:  MOV.W           R0, #0x1F4
27EA70:  LDR.W           R10, [SP,#0x148+var_130]
27EA74:  LDR             R1, [R4,#0x18]
27EA76:  STR.W           R1, [R10]
27EA7A:  LDR             R6, [R4,#0x28]
27EA7C:  MULS            R0, R6
27EA7E:  BLX             __aeabi_uidiv
27EA82:  STR.W           R0, [R9]
27EA86:  ADD.W           R0, R4, #0x2C ; ','
27EA8A:  STR             R6, [SP,#0x148+var_124]
27EA8C:  MOV             R6, R8
27EA8E:  STR             R0, [SP,#0x148+p]
27EA90:  LDR             R0, =(bankInfo_ptr - 0x27EA98)
27EA92:  LDR             R1, =(soundInfoFile_ptr - 0x27EA9C)
27EA94:  ADD             R0, PC; bankInfo_ptr
27EA96:  LDR             R2, [R5,#0x10]
27EA98:  ADD             R1, PC; soundInfoFile_ptr
27EA9A:  LDR             R0, [R0]; bankInfo
27EA9C:  LDR             R4, [R1]; soundInfoFile
27EA9E:  LDR             R1, [R0,#(dword_6DFD20 - 0x6DFD18)]
27EAA0:  LDR             R0, [R4]; this
27EAA2:  ADD.W           R1, R1, R2,LSL#3
27EAA6:  LDR             R2, [SP,#0x148+var_134]
27EAA8:  LDR             R1, [R1,#4]
27EAAA:  ADD.W           R2, R2, R2,LSL#1
27EAAE:  ADD.W           R1, R1, R2,LSL#2; unsigned int
27EAB2:  MOVS            R2, #0; int
27EAB4:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
27EAB8:  LDR             R0, [R4]; this
27EABA:  ADD.W           R1, R6, #0x10; ptr
27EABE:  MOVS            R2, #0xC; n
27EAC0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27EAC4:  LDR.W           R8, [R6,#0x14]
27EAC8:  CMP.W           R11, #1
27EACC:  LDR             R5, [SP,#0x148+var_124]
27EACE:  BNE             loc_27EAEC
27EAD0:  LDR             R2, [SP,#0x148+p]
27EAD2:  CMP.W           R8, #0xFFFFFFFF
27EAD6:  BGT             loc_27EB24
27EAD8:  LDR.W           R0, [R9]
27EADC:  LSRS            R0, R0, #3
27EADE:  CMP             R0, #0x7C ; '|'
27EAE0:  BLS             loc_27EB24
27EAE2:  MOV             R4, R2
27EAE4:  CMP.W           R8, #1
27EAE8:  BGE             loc_27EAF4
27EAEA:  B               loc_27EBC2
27EAEC:  LDR             R4, [SP,#0x148+p]
27EAEE:  CMP.W           R8, #1
27EAF2:  BLT             loc_27EBC2
27EAF4:  LDRD.W          R9, R10, [R6,#4]
27EAF8:  LDRH            R1, [R6,#0x18]
27EAFA:  MUL.W           R0, R9, R8
27EAFE:  BLX             __aeabi_uidiv
27EB02:  MUL.W           R6, R10, R0
27EB06:  MOVS            R0, #0x14; unsigned int
27EB08:  BLX             _Znwj; operator new(uint)
27EB0C:  SUB.W           R1, R5, R6,LSL#1
27EB10:  ADD.W           R3, R4, R6,LSL#1; void *
27EB14:  STMEA.W         SP, {R1,R9,R10}
27EB18:  LSLS            R2, R6, #1; unsigned int
27EB1A:  MOV             R1, R4; void *
27EB1C:  LDR             R6, [SP,#0x148+var_128]
27EB1E:  BLX             j__ZN9OALBufferC2EPvjS0_jjj; OALBuffer::OALBuffer(void *,uint,void *,uint,uint,uint)
27EB22:  B               loc_27EBDA
27EB24:  LDRSH.W         R0, [R2]
27EB28:  MOV             R1, #0xFFFFF801
27EB30:  MOV             R4, R2
27EB32:  CMP             R0, R1
27EB34:  BLT             loc_27EB50
27EB36:  CMP.W           R5, #0x400
27EB3A:  BLS             loc_27EB50
27EB3C:  SXTH            R1, R0
27EB3E:  CMP.W           R1, #0x800
27EB42:  BGE             loc_27EB50
27EB44:  LDRSH.W         R0, [R4,#2]!
27EB48:  SUBS            R5, #2
27EB4A:  CMN.W           R0, #0x800
27EB4E:  BGT             loc_27EB36
27EB50:  LDRSH.W         R1, [R4,#2]
27EB54:  SXTH            R2, R0
27EB56:  SMULBB.W        R1, R1, R2
27EB5A:  CMP             R1, #1
27EB5C:  BLT             loc_27EB70
27EB5E:  LDRSH.W         R1, [R4,#-2]!
27EB62:  SXTH            R0, R0
27EB64:  ADDS            R5, #2
27EB66:  SMULBB.W        R2, R0, R1
27EB6A:  UXTH            R0, R1
27EB6C:  CMP             R2, #0
27EB6E:  BGT             loc_27EB5E
27EB70:  CMP.W           R5, #0x400
27EB74:  BLS             loc_27EBAA
27EB76:  LSRS            R0, R5, #1
27EB78:  MOVW            R2, #0xFFE
27EB7C:  ADD.W           R0, R4, R0,LSL#1
27EB80:  LDRH.W          R1, [R0,#-2]
27EB84:  ADDW            R1, R1, #0x7FF
27EB88:  UXTH            R1, R1
27EB8A:  CMP             R1, R2
27EB8C:  BHI             loc_27EBAA
27EB8E:  SUBS            R0, #4
27EB90:  MOVW            R1, #0xFFF
27EB94:  SUBS            R5, #2
27EB96:  CMP.W           R5, #0x400
27EB9A:  BLS             loc_27EBAA
27EB9C:  LDRH.W          R2, [R0],#-2
27EBA0:  ADDW            R2, R2, #0x7FF
27EBA4:  UXTH            R2, R2
27EBA6:  CMP             R2, R1
27EBA8:  BCC             loc_27EB94
27EBAA:  MOV.W           R0, #0x1F4
27EBAE:  LDR.W           R1, [R10]
27EBB2:  MULS            R0, R5
27EBB4:  BLX             __aeabi_uidiv
27EBB8:  STR.W           R0, [R9]
27EBBC:  CMP.W           R8, #1
27EBC0:  BGE             loc_27EAF4
27EBC2:  MOVS            R0, #0x14; unsigned int
27EBC4:  BLX             _Znwj; operator new(uint)
27EBC8:  LDR             R1, [SP,#0x148+var_12C]
27EBCA:  MOV             R2, R5; unsigned int
27EBCC:  LDR.W           R3, [R10]; unsigned int
27EBD0:  LDR             R1, [R1]
27EBD2:  STR             R1, [SP,#0x148+var_148]; unsigned int
27EBD4:  MOV             R1, R4; void *
27EBD6:  BLX             j__ZN9OALBufferC2EPvjjj; OALBuffer::OALBuffer(void *,uint,uint,uint)
27EBDA:  STR             R0, [R6]
27EBDC:  CMP.W           R11, #1
27EBE0:  LDR             R4, [SP,#0x148+var_13C]
27EBE2:  ITT EQ
27EBE4:  LDREQ           R0, [SP,#0x148+p]; p
27EBE6:  BLXEQ           free
27EBEA:  MOV             R0, R4; p
27EBEC:  BLX             free
27EBF0:  MOV.W           R11, #1
27EBF4:  LDR             R0, =(__stack_chk_guard_ptr - 0x27EBFC)
27EBF6:  LDR             R1, [SP,#0x148+var_20]
27EBF8:  ADD             R0, PC; __stack_chk_guard_ptr
27EBFA:  LDR             R0, [R0]; __stack_chk_guard
27EBFC:  LDR             R0, [R0]
27EBFE:  SUBS            R0, R0, R1
27EC00:  ITTTT EQ
27EC02:  MOVEQ           R0, R11
27EC04:  ADDEQ           SP, SP, #0x12C
27EC06:  POPEQ.W         {R8-R11}
27EC0A:  POPEQ           {R4-R7,PC}
27EC0C:  BLX             __stack_chk_fail
27EC10:  CMP             R0, #6
27EC12:  IT GT
27EC14:  SUBGT           R0, #7
27EC16:  B               loc_27E990
