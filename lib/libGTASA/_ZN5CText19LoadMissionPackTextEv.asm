; =========================================================
; Game Engine Function: _ZN5CText19LoadMissionPackTextEv
; Address            : 0x54DCB4 - 0x54DE64
; =========================================================

54DCB4:  PUSH            {R4-R7,LR}
54DCB6:  ADD             R7, SP, #0xC
54DCB8:  PUSH.W          {R8-R11}
54DCBC:  SUB             SP, SP, #0x54
54DCBE:  MOV             R9, R0
54DCC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x54DCC6)
54DCC2:  ADD             R0, PC; __stack_chk_guard_ptr
54DCC4:  LDR             R0, [R0]; __stack_chk_guard
54DCC6:  LDR             R0, [R0]
54DCC8:  STR             R0, [SP,#0x70+var_20]
54DCCA:  MOVS            R0, #(stderr+1); this
54DCCC:  BLX             j__ZN9CMessages31ClearAllMessagesDisplayedByGameEh; CMessages::ClearAllMessagesDisplayedByGame(uchar)
54DCD0:  LDR             R0, =(byte_61CD7E - 0x54DCD6)
54DCD2:  ADD             R0, PC; byte_61CD7E ; this
54DCD4:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54DCD8:  LDR.W           R0, [R9,#0x10]; void *
54DCDC:  CBZ             R0, loc_54DCE8
54DCDE:  BLX             _ZdaPv; operator delete[](void *)
54DCE2:  MOVS            R0, #0
54DCE4:  STR.W           R0, [R9,#0x10]
54DCE8:  LDR.W           R0, [R9,#0x18]; void *
54DCEC:  MOVS            R6, #0
54DCEE:  STR.W           R6, [R9,#0x14]
54DCF2:  CBZ             R0, loc_54DCFC
54DCF4:  BLX             _ZdaPv; operator delete[](void *)
54DCF8:  STR.W           R6, [R9,#0x18]
54DCFC:  MOV             R4, R9
54DCFE:  STR.W           R6, [R4,#0x23]!
54DD02:  STR             R6, [R4,#4]
54DD04:  STR.W           R6, [R4,#-7]
54DD08:  STRB            R6, [R4,#8]
54DD0A:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
54DD0E:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x54DD1A)
54DD10:  SUB.W           R5, R7, #-var_52
54DD14:  ADR             R1, aMpackMpackDTex_0; "MPACK//MPACK%d//TEXT.GXT"
54DD16:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
54DD18:  LDR             R0, [R0]; CGame::bMissionPackGame ...
54DD1A:  LDRB            R2, [R0]; CGame::bMissionPackGame
54DD1C:  MOV             R0, R5
54DD1E:  BL              sub_5E6BC0
54DD22:  ADR             R1, aRb_18; "rb"
54DD24:  MOV             R0, R5; this
54DD26:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
54DD2A:  MOV             R5, R0
54DD2C:  CMP             R5, #0
54DD2E:  BEQ.W           loc_54DE48
54DD32:  ADD             R1, SP, #0x70+ptr; ptr
54DD34:  MOV             R0, R5; this
54DD36:  MOVS            R2, #2; n
54DD38:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
54DD3C:  CMP             R0, #0
54DD3E:  BNE.W           loc_54DE46
54DD42:  ADD             R1, SP, #0x70+ptr; ptr
54DD44:  MOV             R0, R5; this
54DD46:  MOVS            R2, #2; n
54DD48:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
54DD4C:  CMP             R0, #0
54DD4E:  BNE             loc_54DE46
54DD50:  ADDS            R0, R4, #1
54DD52:  STR             R0, [SP,#0x70+var_6C]
54DD54:  MOVS            R0, #1
54DD56:  ADD.W           R10, SP, #0x70+var_5C
54DD5A:  STR             R0, [SP,#0x70+var_68]
54DD5C:  SUB.W           R8, R7, #-var_5D
54DD60:  MOVS            R0, #0
54DD62:  STR             R0, [SP,#0x70+var_64]
54DD64:  B               loc_54DD90
54DD66:  MOV.W           R0, R11,LSR#3
54DD6A:  STR.W           R0, [R9,#0x14]
54DD6E:  BIC.W           R0, R11, #7; unsigned int
54DD72:  BLX             _Znaj; operator new[](uint)
54DD76:  MOV             R1, R0; unsigned int
54DD78:  MOV             R0, R5; this
54DD7A:  MOV             R2, R11; char *
54DD7C:  STR.W           R1, [R9,#0x10]
54DD80:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54DD84:  LDR             R0, [SP,#0x70+var_68]
54DD86:  LSLS            R0, R0, #0x1F
54DD88:  MOV.W           R0, #1
54DD8C:  BEQ             loc_54DE08
54DD8E:  STR             R0, [SP,#0x70+var_64]
54DD90:  MOV             R0, R5; this
54DD92:  MOV             R1, R10; unsigned int
54DD94:  MOVS            R2, #byte_8; char *
54DD96:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54DD9A:  LDR.W           R11, [SP,#0x70+var_58]
54DD9E:  CMP.W           R11, #0
54DDA2:  BEQ             loc_54DD90
54DDA4:  LDR             R1, =(aTkey - 0x54DDAE); "TKEY"
54DDA6:  MOV             R0, R10; char *
54DDA8:  MOVS            R2, #4; size_t
54DDAA:  ADD             R1, PC; "TKEY"
54DDAC:  BLX             strncmp
54DDB0:  CMP             R0, #0
54DDB2:  BEQ             loc_54DD66
54DDB4:  LDR             R1, =(aTdat - 0x54DDBE); "TDAT"
54DDB6:  MOV             R0, R10; char *
54DDB8:  MOVS            R2, #4; size_t
54DDBA:  ADD             R1, PC; "TDAT"
54DDBC:  BLX             strncmp
54DDC0:  CBZ             R0, loc_54DDDE
54DDC2:  MOVS            R6, #0
54DDC4:  MOV             R0, R5; this
54DDC6:  MOV             R1, R8; unsigned int
54DDC8:  MOVS            R2, #(stderr+1); char *
54DDCA:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54DDCE:  CMP             R0, #1
54DDD0:  BNE             loc_54DE46
54DDD2:  ADDS            R6, #1
54DDD4:  LDR             R0, [SP,#0x70+var_58]
54DDD6:  UXTH            R1, R6
54DDD8:  CMP             R0, R1
54DDDA:  BHI             loc_54DDC4
54DDDC:  B               loc_54DD90
54DDDE:  MOV.W           R0, R11,LSR#1
54DDE2:  STR.W           R0, [R9,#0x1C]
54DDE6:  BIC.W           R0, R11, #1; unsigned int
54DDEA:  BLX             _Znaj; operator new[](uint)
54DDEE:  MOV             R1, R0; unsigned int
54DDF0:  MOV             R0, R5; this
54DDF2:  MOV             R2, R11; char *
54DDF4:  STR.W           R1, [R9,#0x18]
54DDF8:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54DDFC:  LDR             R0, [SP,#0x70+var_64]
54DDFE:  LSLS            R0, R0, #0x18
54DE00:  MOV.W           R0, #0
54DE04:  STR             R0, [SP,#0x70+var_68]
54DE06:  BEQ             loc_54DD60
54DE08:  LDR.W           R0, [R9,#0x14]
54DE0C:  CBZ             R0, loc_54DE2C
54DE0E:  LDR.W           R0, [R9,#0x10]
54DE12:  MOVS            R2, #0
54DE14:  LDR.W           R1, [R9,#0x18]
54DE18:  LDR.W           R3, [R0,R2,LSL#3]
54DE1C:  ADD             R3, R1
54DE1E:  STR.W           R3, [R0,R2,LSL#3]
54DE22:  ADDS            R2, #1
54DE24:  LDR.W           R3, [R9,#0x14]
54DE28:  CMP             R2, R3
54DE2A:  BCC             loc_54DE18
54DE2C:  LDR             R1, [SP,#0x70+var_6C]
54DE2E:  MOVS            R0, #0
54DE30:  MOVS            R6, #1
54DE32:  STRB            R0, [R1,#6]
54DE34:  MOVW            R0, #0x454D
54DE38:  STRH            R0, [R1,#4]
54DE3A:  MOV             R0, #0x414E504D
54DE42:  STR             R0, [R1]
54DE44:  B               loc_54DE48
54DE46:  MOVS            R6, #0
54DE48:  LDR             R0, =(__stack_chk_guard_ptr - 0x54DE50)
54DE4A:  STRB            R6, [R4]
54DE4C:  ADD             R0, PC; __stack_chk_guard_ptr
54DE4E:  LDR             R1, [SP,#0x70+var_20]
54DE50:  LDR             R0, [R0]; __stack_chk_guard
54DE52:  LDR             R0, [R0]
54DE54:  SUBS            R0, R0, R1
54DE56:  ITTT EQ
54DE58:  ADDEQ           SP, SP, #0x54 ; 'T'
54DE5A:  POPEQ.W         {R8-R11}
54DE5E:  POPEQ           {R4-R7,PC}
54DE60:  BLX             __stack_chk_fail
