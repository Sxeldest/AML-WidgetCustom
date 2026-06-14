; =========================================================
; Game Engine Function: _ZN10CDirectory11ReadDirFileEPKc
; Address            : 0x3EABB0 - 0x3EAC64
; =========================================================

3EABB0:  PUSH            {R4-R7,LR}
3EABB2:  ADD             R7, SP, #0xC
3EABB4:  PUSH.W          {R8}
3EABB8:  SUB             SP, SP, #0x38
3EABBA:  MOV             R4, R0
3EABBC:  LDR             R0, =(__stack_chk_guard_ptr - 0x3EABC4)
3EABBE:  ADR             R2, dword_3EAC68; char *
3EABC0:  ADD             R0, PC; __stack_chk_guard_ptr
3EABC2:  LDR             R0, [R0]; __stack_chk_guard
3EABC4:  LDR             R0, [R0]
3EABC6:  STR             R0, [SP,#0x48+var_14]
3EABC8:  MOV             R0, R1; this
3EABCA:  MOV             R1, R2; char *
3EABCC:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
3EABD0:  MOV             R5, R0
3EABD2:  MOVS            R0, #0
3EABD4:  ADD             R1, SP, #0x48+var_40; unsigned int
3EABD6:  STRB.W          R0, [SP,#0x48+var_3C]
3EABDA:  STR             R0, [SP,#0x48+var_40]
3EABDC:  MOV             R0, R5; this
3EABDE:  MOVS            R2, #byte_4; char *
3EABE0:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
3EABE4:  ADD             R1, SP, #0x48+ptr; ptr
3EABE6:  MOV             R0, R5; this
3EABE8:  MOVS            R2, #4; n
3EABEA:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
3EABEE:  LDR             R0, [SP,#0x48+ptr]
3EABF0:  CMP             R0, #0
3EABF2:  SUB.W           R1, R0, #1
3EABF6:  STR             R1, [SP,#0x48+ptr]
3EABF8:  BEQ             loc_3EAC44
3EABFA:  LDR.W           R8, =(aTooManyObjects - 0x3EAC04); "Too many objects without modelinfo stru"...
3EABFE:  ADD             R6, SP, #0x48+var_38
3EAC00:  ADD             R8, PC; "Too many objects without modelinfo stru"...
3EAC02:  MOV             R0, R5; this
3EAC04:  MOV             R1, R6; ptr
3EAC06:  MOVS            R2, #0x20 ; ' '; n
3EAC08:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
3EAC0C:  LDRD.W          R1, R0, [R4,#4]
3EAC10:  CMP             R0, R1
3EAC12:  BGE             loc_3EAC32
3EAC14:  ADDS            R1, R0, #1
3EAC16:  STR             R1, [R4,#8]
3EAC18:  MOV             R2, R6
3EAC1A:  LDR             R1, [R4]
3EAC1C:  VLD1.32         {D16-D17}, [R2]!
3EAC20:  ADD.W           R0, R1, R0,LSL#5
3EAC24:  VLD1.64         {D18-D19}, [R2]
3EAC28:  VST1.32         {D16-D17}, [R0]!
3EAC2C:  VST1.32         {D18-D19}, [R0]
3EAC30:  B               loc_3EAC38
3EAC32:  MOV             R0, R8; s
3EAC34:  BLX             puts
3EAC38:  LDR             R0, [SP,#0x48+ptr]
3EAC3A:  CMP             R0, #0
3EAC3C:  SUB.W           R1, R0, #1; unsigned int
3EAC40:  STR             R1, [SP,#0x48+ptr]
3EAC42:  BNE             loc_3EAC02
3EAC44:  MOV             R0, R5; this
3EAC46:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
3EAC4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x3EAC52)
3EAC4C:  LDR             R1, [SP,#0x48+var_14]
3EAC4E:  ADD             R0, PC; __stack_chk_guard_ptr
3EAC50:  LDR             R0, [R0]; __stack_chk_guard
3EAC52:  LDR             R0, [R0]
3EAC54:  SUBS            R0, R0, R1
3EAC56:  ITTT EQ
3EAC58:  ADDEQ           SP, SP, #0x38 ; '8'
3EAC5A:  POPEQ.W         {R8}
3EAC5E:  POPEQ           {R4-R7,PC}
3EAC60:  BLX             __stack_chk_fail
