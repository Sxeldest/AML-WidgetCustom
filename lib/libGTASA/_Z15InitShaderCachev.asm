; =========================================================
; Game Engine Function: _Z15InitShaderCachev
; Address            : 0x1C1E08 - 0x1C1EDE
; =========================================================

1C1E08:  PUSH            {R4-R7,LR}
1C1E0A:  ADD             R7, SP, #0xC
1C1E0C:  PUSH.W          {R8-R11}
1C1E10:  SUB             SP, SP, #0x114
1C1E12:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C1E1A)
1C1E14:  ADR             R1, aR_13; "r"
1C1E16:  ADD             R0, PC; __stack_chk_guard_ptr
1C1E18:  LDR             R0, [R0]; __stack_chk_guard
1C1E1A:  LDR             R0, [R0]
1C1E1C:  STR             R0, [SP,#0x130+var_20]
1C1E1E:  ADR             R0, aScacheTxt; "scache.txt"
1C1E20:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
1C1E24:  MOV             R4, R0
1C1E26:  CMP             R4, #0
1C1E28:  BEQ             loc_1C1EC4
1C1E2A:  ADD             R1, SP, #0x130+s; unsigned int
1C1E2C:  MOV             R0, R4; this
1C1E2E:  MOV.W           R2, #(elf_hash_bucket+4); char *
1C1E32:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
1C1E36:  CMP             R0, #1
1C1E38:  BNE             loc_1C1EB4
1C1E3A:  LDR             R0, =(regShaders_ptr - 0x1C1E48)
1C1E3C:  ADD             R5, SP, #0x130+s
1C1E3E:  LDR             R2, =(curNumShaders_ptr - 0x1C1E4C)
1C1E40:  ADR.W           R8, aX_0; "%x"
1C1E44:  ADD             R0, PC; regShaders_ptr
1C1E46:  LDR             R1, =(dirtyCache_ptr - 0x1C1E54)
1C1E48:  ADD             R2, PC; curNumShaders_ptr
1C1E4A:  ADD.W           R9, SP, #0x130+var_124
1C1E4E:  LDR             R6, [R0]; regShaders
1C1E50:  ADD             R1, PC; dirtyCache_ptr
1C1E52:  LDR             R0, =(regShaders_ptr - 0x1C1E5C)
1C1E54:  LDR.W           R10, [R2]; curNumShaders
1C1E58:  ADD             R0, PC; regShaders_ptr
1C1E5A:  LDR             R0, [R0]; regShaders
1C1E5C:  STR             R0, [SP,#0x130+var_128]
1C1E5E:  LDR             R0, [R1]; dirtyCache
1C1E60:  STR             R0, [SP,#0x130+var_12C]
1C1E62:  MOV.W           R11, #0
1C1E66:  MOV             R0, R5; s
1C1E68:  MOV             R1, R8; format
1C1E6A:  MOV             R2, R9
1C1E6C:  STR.W           R11, [SP,#0x130+var_124]
1C1E70:  BLX             sscanf
1C1E74:  LDR             R0, [SP,#0x130+var_124]
1C1E76:  LDR.W           R1, [R6,R11,LSL#2]
1C1E7A:  CMP             R1, R0
1C1E7C:  BEQ             loc_1C1EA4
1C1E7E:  CBZ             R1, loc_1C1E8E
1C1E80:  ADD.W           R11, R11, #1
1C1E84:  MOV.W           R1, R11,LSR#4
1C1E88:  CMP             R1, #0x4A ; 'J'
1C1E8A:  BLS             loc_1C1E76
1C1E8C:  B               loc_1C1EA4
1C1E8E:  LDR             R1, [SP,#0x130+var_128]
1C1E90:  MOVS            R2, #1
1C1E92:  STR.W           R0, [R1,R11,LSL#2]
1C1E96:  LDR             R1, [SP,#0x130+var_12C]
1C1E98:  LDR.W           R0, [R10]
1C1E9C:  ADDS            R0, #1
1C1E9E:  STRB            R2, [R1]
1C1EA0:  STR.W           R0, [R10]
1C1EA4:  MOV             R0, R4; this
1C1EA6:  MOV             R1, R5; unsigned int
1C1EA8:  MOV.W           R2, #(elf_hash_bucket+4); char *
1C1EAC:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
1C1EB0:  CMP             R0, #0
1C1EB2:  BNE             loc_1C1E62
1C1EB4:  MOV             R0, R4; this
1C1EB6:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
1C1EBA:  LDR             R0, =(dirtyCache_ptr - 0x1C1EC2)
1C1EBC:  MOVS            R1, #0
1C1EBE:  ADD             R0, PC; dirtyCache_ptr
1C1EC0:  LDR             R0, [R0]; dirtyCache
1C1EC2:  STRB            R1, [R0]
1C1EC4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C1ECC)
1C1EC6:  LDR             R1, [SP,#0x130+var_20]
1C1EC8:  ADD             R0, PC; __stack_chk_guard_ptr
1C1ECA:  LDR             R0, [R0]; __stack_chk_guard
1C1ECC:  LDR             R0, [R0]
1C1ECE:  SUBS            R0, R0, R1
1C1ED0:  ITTT EQ
1C1ED2:  ADDEQ           SP, SP, #0x114
1C1ED4:  POPEQ.W         {R8-R11}
1C1ED8:  POPEQ           {R4-R7,PC}
1C1EDA:  BLX             __stack_chk_fail
