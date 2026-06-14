; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c21LoadSurfaceAudioInfosEv
; Address            : 0x41C9EC - 0x41CB26
; =========================================================

41C9EC:  PUSH            {R4-R7,LR}
41C9EE:  ADD             R7, SP, #0xC
41C9F0:  PUSH.W          {R8-R11}
41C9F4:  SUB             SP, SP, #0x9C
41C9F6:  MOV             R8, R0
41C9F8:  LDR             R0, =(__stack_chk_guard_ptr - 0x41CA00)
41C9FA:  ADR             R1, aR_15; "r"
41C9FC:  ADD             R0, PC; __stack_chk_guard_ptr
41C9FE:  LDR             R0, [R0]; __stack_chk_guard
41CA00:  LDR             R0, [R0]
41CA02:  STR             R0, [SP,#0xB8+var_20]
41CA04:  ADR             R0, aDataSurfaudDat; "data\\surfaud.dat"
41CA06:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
41CA0A:  MOV             R5, R0
41CA0C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41CA10:  CMP             R0, #0
41CA12:  BEQ             loc_41CB06
41CA14:  ADD             R6, SP, #0xB8+var_84
41CA16:  ADD             R4, SP, #0xB8+var_80
41CA18:  ADD.W           R9, SP, #0xB8+var_7C
41CA1C:  ADD.W           R10, SP, #0xB8+var_78
41CA20:  ADD.W           R11, SP, #0xB8+var_74
41CA24:  B               loc_41CAF2
41CA26:  ADD             R1, SP, #0xB8+var_68
41CA28:  STR             R1, [SP,#0xB8+var_B8]
41CA2A:  ADD             R1, SP, #0xB8+var_6C
41CA2C:  STR             R1, [SP,#0xB8+var_B4]
41CA2E:  ADD             R1, SP, #0xB8+var_70
41CA30:  STRD.W          R1, R11, [SP,#0xB8+var_B0]
41CA34:  STRD.W          R10, R9, [SP,#0xB8+var_A8]
41CA38:  ADR             R1, aSDDDDDDDDD; "%s %d %d %d %d %d %d %d %d %d"
41CA3A:  STRD.W          R4, R6, [SP,#0xB8+var_A0]
41CA3E:  ADD             R6, SP, #0xB8+var_60
41CA40:  ADD             R3, SP, #0xB8+var_64
41CA42:  MOV             R2, R6
41CA44:  BLX             sscanf
41CA48:  MOV             R1, R6; char *
41CA4A:  BLX             j__ZN14SurfaceInfos_c20GetSurfaceIdFromNameEPc; SurfaceInfos_c::GetSurfaceIdFromName(char *)
41CA4E:  ADD.W           R0, R0, R0,LSL#1
41CA52:  LDR             R3, [SP,#0xB8+var_84]
41CA54:  MOV             LR, R9
41CA56:  MOV             R12, R10
41CA58:  ADD.W           R0, R8, R0,LSL#2
41CA5C:  LDR.W           R2, [R0,#0x96]
41CA60:  LDR.W           R1, [R0,#0x92]
41CA64:  STR             R3, [SP,#0xB8+var_8C]
41CA66:  LDR             R3, [SP,#0xB8+var_80]
41CA68:  BFC.W           R2, #0xA, #9
41CA6C:  STR             R3, [SP,#0xB8+var_90]
41CA6E:  LDR             R3, [SP,#0xB8+var_7C]
41CA70:  STR             R3, [SP,#0xB8+var_94]
41CA72:  LDR             R3, [SP,#0xB8+var_78]
41CA74:  STR             R3, [SP,#0xB8+var_98]
41CA76:  MOV             R3, R11
41CA78:  STR.W           R8, [SP,#0xB8+var_88]
41CA7C:  LDRD.W          R6, R8, [SP,#0xB8+var_74]
41CA80:  LDR.W           R11, [SP,#0xB8+var_64]
41CA84:  LDR.W           R9, [SP,#0xB8+var_6C]
41CA88:  LDR.W           R10, [SP,#0xB8+var_68]
41CA8C:  STR.W           R1, [R0,#0x92]
41CA90:  AND.W           R1, R11, #1
41CA94:  MOV             R11, R3
41CA96:  ORR.W           R1, R2, R1,LSL#10
41CA9A:  AND.W           R2, R10, #1
41CA9E:  MOV             R10, R12
41CAA0:  ORR.W           R1, R1, R2,LSL#11
41CAA4:  AND.W           R2, R9, #1
41CAA8:  MOV             R9, LR
41CAAA:  ORR.W           R1, R1, R2,LSL#12
41CAAE:  AND.W           R2, R8, #1
41CAB2:  LDR.W           R8, [SP,#0xB8+var_88]
41CAB6:  ORR.W           R1, R1, R2,LSL#13
41CABA:  AND.W           R2, R6, #1
41CABE:  ADD             R6, SP, #0xB8+var_84
41CAC0:  ORR.W           R1, R1, R2,LSL#14
41CAC4:  LDR             R2, [SP,#0xB8+var_98]
41CAC6:  AND.W           R2, R2, #1
41CACA:  ORR.W           R1, R1, R2,LSL#15
41CACE:  LDR             R2, [SP,#0xB8+var_94]
41CAD0:  AND.W           R2, R2, #1
41CAD4:  ORR.W           R1, R1, R2,LSL#16
41CAD8:  LDR             R2, [SP,#0xB8+var_90]
41CADA:  AND.W           R2, R2, #1
41CADE:  ORR.W           R1, R1, R2,LSL#17
41CAE2:  LDR             R2, [SP,#0xB8+var_8C]
41CAE4:  AND.W           R2, R2, #1
41CAE8:  ORR.W           R1, R1, R2,LSL#18
41CAEC:  STR.W           R1, [R0,#0x96]
41CAF0:  B               loc_41CAFC
41CAF2:  LDRB            R1, [R0]; unsigned int
41CAF4:  CMP             R1, #0x23 ; '#'
41CAF6:  IT NE
41CAF8:  CMPNE           R1, #0
41CAFA:  BNE             loc_41CA26
41CAFC:  MOV             R0, R5; this
41CAFE:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41CB02:  CMP             R0, #0
41CB04:  BNE             loc_41CAF2
41CB06:  MOV             R0, R5; this
41CB08:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
41CB0C:  LDR             R0, =(__stack_chk_guard_ptr - 0x41CB14)
41CB0E:  LDR             R1, [SP,#0xB8+var_20]
41CB10:  ADD             R0, PC; __stack_chk_guard_ptr
41CB12:  LDR             R0, [R0]; __stack_chk_guard
41CB14:  LDR             R0, [R0]
41CB16:  SUBS            R0, R0, R1
41CB18:  ITTT EQ
41CB1A:  ADDEQ           SP, SP, #0x9C
41CB1C:  POPEQ.W         {R8-R11}
41CB20:  POPEQ           {R4-R7,PC}
41CB22:  BLX             __stack_chk_fail
