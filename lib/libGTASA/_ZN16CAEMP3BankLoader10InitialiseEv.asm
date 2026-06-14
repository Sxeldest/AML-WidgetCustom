; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader10InitialiseEv
; Address            : 0x27DC78 - 0x27DF7E
; =========================================================

27DC78:  PUSH            {R4-R7,LR}
27DC7A:  ADD             R7, SP, #0xC
27DC7C:  PUSH.W          {R8-R11}
27DC80:  SUB             SP, SP, #4
27DC82:  VPUSH           {D8}
27DC86:  SUB             SP, SP, #0xB0
27DC88:  MOV             R4, R0
27DC8A:  LDR             R0, =(__stack_chk_guard_ptr - 0x27DC90)
27DC8C:  ADD             R0, PC; __stack_chk_guard_ptr
27DC8E:  LDR             R0, [R0]; __stack_chk_guard
27DC90:  LDR             R0, [R0]
27DC92:  STR             R0, [SP,#0xD8+var_2C]
27DC94:  ADDS            R0, R4, #4; this
27DC96:  BLX             j__ZN13CAEBankLoader10InitialiseEv; CAEBankLoader::Initialise(void)
27DC9A:  CMP             R0, #0
27DC9C:  BEQ.W           loc_27DDCE
27DCA0:  LDRSH.W         R0, [R4,#0x14]
27DCA4:  CMP             R0, #1
27DCA6:  BLT             loc_27DD68
27DCA8:  LDR             R0, =(aAudioSfx - 0x27DCB8); "AUDIO\\SFX\\"
27DCAA:  MOVS            R6, #0
27DCAC:  MOVW            R9, #0x5C58
27DCB0:  MOV.W           R11, #0
27DCB4:  ADD             R0, PC; "AUDIO\\SFX\\"
27DCB6:  MOV.W           R10, #0
27DCBA:  VLDR            D8, [R0]
27DCBE:  STRB.W          R6, [SP,#0xD8+var_A6]
27DCC2:  ADD             R5, SP, #0xD8+dest
27DCC4:  STRH.W          R9, [SP,#0xD8+var_A8]
27DCC8:  VSTR            D8, [SP,#0xD8+dest]
27DCCC:  LDR             R0, [R4,#0xC]
27DCCE:  ADD.W           R1, R0, R11; src
27DCD2:  MOV             R0, R5; dest
27DCD4:  BLX             strcat
27DCD8:  MOV             R0, R5; char *
27DCDA:  BLX             strlen
27DCDE:  MOV             R1, #0x77736F2E
27DCE6:  STR             R1, [R5,R0]
27DCE8:  ADD             R0, R5
27DCEA:  STRB            R6, [R0,#4]
27DCEC:  MOV             R0, R5; char *
27DCEE:  BLX             j__Z14ZIP_FileCreatePKc; ZIP_FileCreate(char const*)
27DCF2:  LDRD.W          R1, R8, [R4,#0x1C]
27DCF6:  ADD.W           R2, R8, #1
27DCFA:  CMP             R1, R2
27DCFC:  BCS             loc_27DD4A
27DCFE:  MOVW            R1, #0xAAAB
27DD02:  STR             R0, [SP,#0xD8+var_C4]
27DD04:  LSLS            R0, R2, #2
27DD06:  MOVT            R1, #0xAAAA
27DD0A:  UMULL.W         R0, R1, R0, R1
27DD0E:  MOVS            R0, #3
27DD10:  ADD.W           R9, R0, R1,LSR#1
27DD14:  MOV.W           R0, R9,LSL#2; byte_count
27DD18:  BLX             malloc
27DD1C:  LDR             R6, [R4,#0x24]
27DD1E:  MOV             R5, R0
27DD20:  CMP             R6, #0
27DD22:  BEQ             loc_27DD3A
27DD24:  MOV.W           R2, R8,LSL#2; size_t
27DD28:  MOV             R0, R5; void *
27DD2A:  MOV             R1, R6; void *
27DD2C:  BLX             memcpy_0
27DD30:  MOV             R0, R6; p
27DD32:  BLX             free
27DD36:  LDR.W           R8, [R4,#0x20]
27DD3A:  STR             R5, [R4,#0x24]
27DD3C:  MOVS            R6, #0
27DD3E:  STR.W           R9, [R4,#0x1C]
27DD42:  MOVW            R9, #0x5C58
27DD46:  LDR             R0, [SP,#0xD8+var_C4]
27DD48:  B               loc_27DD4C
27DD4A:  LDR             R5, [R4,#0x24]
27DD4C:  STR.W           R0, [R5,R8,LSL#2]
27DD50:  ADD.W           R11, R11, #0x34 ; '4'
27DD54:  ADD.W           R10, R10, #1
27DD58:  LDRSH.W         R1, [R4,#0x14]
27DD5C:  LDR             R0, [R4,#0x20]
27DD5E:  CMP             R10, R1
27DD60:  ADD.W           R0, R0, #1
27DD64:  STR             R0, [R4,#0x20]
27DD66:  BLT             loc_27DCBE
27DD68:  LDR             R0, [R4,#0xC]; void *
27DD6A:  CMP             R0, #0
27DD6C:  IT NE
27DD6E:  BLXNE           _ZdaPv; operator delete[](void *)
27DD72:  LDRSH.W         R9, [R4,#0x10]
27DD76:  MOVS            R0, #0
27DD78:  LDRD.W          R1, R6, [R4,#0x28]
27DD7C:  STR             R0, [R4,#0xC]
27DD7E:  ADD.W           R0, R6, R9
27DD82:  CMP             R1, R0
27DD84:  BCS             loc_27DDD2
27DD86:  MOVW            R1, #0xAAAB
27DD8A:  LSLS            R0, R0, #2
27DD8C:  MOVT            R1, #0xAAAA
27DD90:  UMULL.W         R0, R1, R0, R1
27DD94:  MOVS            R0, #3
27DD96:  ADD.W           R10, R0, R1,LSR#1
27DD9A:  ADD.W           R0, R10, R10,LSL#2
27DD9E:  LSLS            R0, R0, #2; byte_count
27DDA0:  BLX             malloc
27DDA4:  LDR.W           R8, [R4,#0x30]
27DDA8:  MOV             R5, R0
27DDAA:  CMP.W           R8, #0
27DDAE:  BEQ             loc_27DDC6
27DDB0:  ADD.W           R0, R6, R6,LSL#2
27DDB4:  MOV             R1, R8; void *
27DDB6:  LSLS            R2, R0, #2; size_t
27DDB8:  MOV             R0, R5; void *
27DDBA:  BLX             memcpy_0
27DDBE:  MOV             R0, R8; p
27DDC0:  BLX             free
27DDC4:  LDR             R6, [R4,#0x2C]
27DDC6:  STR             R5, [R4,#0x30]
27DDC8:  STR.W           R10, [R4,#0x28]
27DDCC:  B               loc_27DDD4
27DDCE:  MOVS            R0, #0
27DDD0:  B               loc_27DF5C
27DDD2:  LDR             R5, [R4,#0x30]
27DDD4:  ADD.W           R0, R6, R6,LSL#2
27DDD8:  ADD.W           R1, R9, R9,LSL#2
27DDDC:  ADD.W           R0, R5, R0,LSL#2
27DDE0:  LSLS            R1, R1, #2
27DDE2:  BLX             j___aeabi_memclr8_0
27DDE6:  LDRH            R1, [R4,#0x10]
27DDE8:  LDR             R0, [R4,#0x2C]
27DDEA:  CMP             R1, #0
27DDEC:  ADD             R0, R9
27DDEE:  STR             R0, [R4,#0x2C]
27DDF0:  BEQ             loc_27DE0A
27DDF2:  MOVS            R0, #0
27DDF4:  MOVW            R1, #0xFFFF
27DDF8:  MOVS            R2, #0
27DDFA:  LDR             R3, [R4,#0x30]
27DDFC:  ADDS            R2, #1; char *
27DDFE:  STRH            R1, [R3,R0]
27DE00:  ADDS            R0, #0x14
27DE02:  LDRSH.W         R3, [R4,#0x10]
27DE06:  CMP             R2, R3
27DE08:  BCC             loc_27DDFA
27DE0A:  ADR             R0, aAudioConfigSou; "AUDIO/CONFIG/SOUNDINF.DAT"
27DE0C:  ADR             R1, aRb_3; "rb"
27DE0E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
27DE12:  LDR             R1, =(soundInfoFile_ptr - 0x27DE1E)
27DE14:  MOVS            R2, #4; n
27DE16:  MOV.W           R8, #4
27DE1A:  ADD             R1, PC; soundInfoFile_ptr
27DE1C:  LDR             R1, [R1]; soundInfoFile
27DE1E:  STR             R0, [R1]
27DE20:  MOVS            R1, #0
27DE22:  STR             R1, [SP,#0xD8+ptr]
27DE24:  ADD             R1, SP, #0xD8+ptr; ptr
27DE26:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27DE2A:  LDR             R0, =(bankInfo_ptr - 0x27DE32)
27DE2C:  LDR             R6, [SP,#0xD8+ptr]
27DE2E:  ADD             R0, PC; bankInfo_ptr
27DE30:  LDR             R0, [R0]; bankInfo
27DE32:  LDR             R0, [R0]
27DE34:  CMP             R0, R6
27DE36:  MOV             R0, R6
27DE38:  BCS             loc_27DE72
27DE3A:  LSLS            R0, R6, #3; byte_count
27DE3C:  BLX             malloc
27DE40:  MOV             R4, R0
27DE42:  LDR             R0, =(bankInfo_ptr - 0x27DE48)
27DE44:  ADD             R0, PC; bankInfo_ptr
27DE46:  LDR             R0, [R0]; bankInfo
27DE48:  LDR             R5, [R0,#(dword_6DFD20 - 0x6DFD18)]
27DE4A:  MOV             R0, R6
27DE4C:  CBZ             R5, loc_27DE68
27DE4E:  LDR             R0, =(bankInfo_ptr - 0x27DE56)
27DE50:  MOV             R1, R5; void *
27DE52:  ADD             R0, PC; bankInfo_ptr
27DE54:  LDR             R0, [R0]; bankInfo
27DE56:  LDR             R0, [R0,#(dword_6DFD1C - 0x6DFD18)]
27DE58:  LSLS            R2, R0, #3; size_t
27DE5A:  MOV             R0, R4; void *
27DE5C:  BLX             memcpy_0
27DE60:  MOV             R0, R5; p
27DE62:  BLX             free
27DE66:  LDR             R0, [SP,#0xD8+ptr]
27DE68:  LDR             R1, =(bankInfo_ptr - 0x27DE6E)
27DE6A:  ADD             R1, PC; bankInfo_ptr
27DE6C:  LDR             R1, [R1]; bankInfo
27DE6E:  STR             R4, [R1,#(dword_6DFD20 - 0x6DFD18)]
27DE70:  STR             R6, [R1]
27DE72:  CMP             R0, #0
27DE74:  BEQ             loc_27DF5A
27DE76:  LDR             R0, =(soundInfoFile_ptr - 0x27DE86)
27DE78:  ADD.W           R4, R8, R6,LSL#2
27DE7C:  ADD.W           R11, SP, #0xD8+var_C0
27DE80:  MOVS            R6, #0
27DE82:  ADD             R0, PC; soundInfoFile_ptr
27DE84:  LDR.W           R9, [R0]; soundInfoFile
27DE88:  LDR             R0, =(bankInfo_ptr - 0x27DE92)
27DE8A:  STR.W           R9, [SP,#0xD8+var_C8]
27DE8E:  ADD             R0, PC; bankInfo_ptr
27DE90:  LDR             R0, [R0]; bankInfo
27DE92:  STR             R0, [SP,#0xD8+var_C4]
27DE94:  LDR             R0, =(bankInfo_ptr - 0x27DE9A)
27DE96:  ADD             R0, PC; bankInfo_ptr
27DE98:  LDR             R0, [R0]; bankInfo
27DE9A:  STR             R0, [SP,#0xD8+var_CC]
27DE9C:  LDR             R0, =(bankInfo_ptr - 0x27DEA2)
27DE9E:  ADD             R0, PC; bankInfo_ptr
27DEA0:  LDR             R0, [R0]; bankInfo
27DEA2:  STR             R0, [SP,#0xD8+var_D0]
27DEA4:  LDR             R0, =(bankInfo_ptr - 0x27DEAA)
27DEA6:  ADD             R0, PC; bankInfo_ptr
27DEA8:  LDR             R0, [R0]; bankInfo
27DEAA:  STR             R0, [SP,#0xD8+var_D8]
27DEAC:  LDR             R0, =(bankInfo_ptr - 0x27DEB2)
27DEAE:  ADD             R0, PC; bankInfo_ptr
27DEB0:  LDR.W           R10, [R0]; bankInfo
27DEB4:  LDR             R0, =(bankInfo_ptr - 0x27DEBA)
27DEB6:  ADD             R0, PC; bankInfo_ptr
27DEB8:  LDR             R0, [R0]; bankInfo
27DEBA:  STR             R0, [SP,#0xD8+var_D4]
27DEBC:  LDR.W           R0, [R9]; this
27DEC0:  MOV             R1, R11; ptr
27DEC2:  MOVS            R2, #4; n
27DEC4:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27DEC8:  LDR             R0, [SP,#0xD8+var_C4]
27DECA:  LDRD.W          R1, R8, [R0]
27DECE:  ADD.W           R0, R8, #1
27DED2:  STR             R4, [SP,#0xD8+var_BC]
27DED4:  CMP             R1, R0
27DED6:  BCS             loc_27DF2C
27DED8:  MOVW            R1, #0xAAAB
27DEDC:  LSLS            R0, R0, #2
27DEDE:  MOVT            R1, #0xAAAA
27DEE2:  UMULL.W         R0, R1, R0, R1
27DEE6:  MOVS            R0, #3
27DEE8:  ADD.W           R11, R0, R1,LSR#1
27DEEC:  MOV.W           R0, R11,LSL#3; byte_count
27DEF0:  BLX             malloc
27DEF4:  MOV             R5, R0
27DEF6:  LDR             R0, [SP,#0xD8+var_CC]
27DEF8:  LDR.W           R9, [R0,#8]
27DEFC:  CMP.W           R9, #0
27DF00:  BEQ             loc_27DF1A
27DF02:  MOV.W           R2, R8,LSL#3; size_t
27DF06:  MOV             R0, R5; void *
27DF08:  MOV             R1, R9; void *
27DF0A:  BLX             memcpy_0
27DF0E:  MOV             R0, R9; p
27DF10:  BLX             free
27DF14:  LDR             R0, [SP,#0xD8+var_D8]
27DF16:  LDR.W           R8, [R0,#4]
27DF1A:  LDR             R0, [SP,#0xD8+var_D0]
27DF1C:  LDR.W           R9, [SP,#0xD8+var_C8]
27DF20:  STR             R5, [R0,#8]
27DF22:  STR.W           R11, [R0]
27DF26:  ADD.W           R11, SP, #0xD8+var_C0
27DF2A:  B               loc_27DF30
27DF2C:  LDR             R0, [SP,#0xD8+var_D4]
27DF2E:  LDR             R5, [R0,#8]
27DF30:  LDRD.W          R0, R1, [SP,#0xD8+var_C0]
27DF34:  ADDS            R6, #1
27DF36:  STR.W           R0, [R5,R8,LSL#3]
27DF3A:  ADD.W           R0, R5, R8,LSL#3
27DF3E:  STR             R1, [R0,#4]
27DF40:  LDR             R0, [SP,#0xD8+var_C0]
27DF42:  LDR.W           R1, [R10,#(dword_6DFD1C - 0x6DFD18)]
27DF46:  ADD.W           R0, R0, R0,LSL#1
27DF4A:  ADDS            R1, #1
27DF4C:  STR.W           R1, [R10,#(dword_6DFD1C - 0x6DFD18)]
27DF50:  ADD.W           R4, R4, R0,LSL#2
27DF54:  LDR             R0, [SP,#0xD8+ptr]
27DF56:  CMP             R6, R0
27DF58:  BCC             loc_27DEBC
27DF5A:  MOVS            R0, #1
27DF5C:  LDR             R1, =(__stack_chk_guard_ptr - 0x27DF64)
27DF5E:  LDR             R2, [SP,#0xD8+var_2C]
27DF60:  ADD             R1, PC; __stack_chk_guard_ptr
27DF62:  LDR             R1, [R1]; __stack_chk_guard
27DF64:  LDR             R1, [R1]
27DF66:  SUBS            R1, R1, R2
27DF68:  ITTTT EQ
27DF6A:  ADDEQ           SP, SP, #0xB0
27DF6C:  VPOPEQ          {D8}
27DF70:  ADDEQ           SP, SP, #4
27DF72:  POPEQ.W         {R8-R11}
27DF76:  IT EQ
27DF78:  POPEQ           {R4-R7,PC}
27DF7A:  BLX             __stack_chk_fail
