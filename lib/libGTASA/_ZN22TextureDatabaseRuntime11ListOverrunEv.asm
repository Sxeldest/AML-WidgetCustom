; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime11ListOverrunEv
; Address            : 0x1EAD04 - 0x1EADC2
; =========================================================

1EAD04:  PUSH            {R4-R7,LR}
1EAD06:  ADD             R7, SP, #0xC
1EAD08:  PUSH.W          {R8-R11}
1EAD0C:  SUB             SP, SP, #0x14
1EAD0E:  LDR             R0, =(_ZN22TextureDatabaseRuntime10registeredE_ptr - 0x1EAD14)
1EAD10:  ADD             R0, PC; _ZN22TextureDatabaseRuntime10registeredE_ptr
1EAD12:  LDR             R0, [R0]; TextureDatabaseRuntime::registered ...
1EAD14:  LDR             R0, [R0,#(dword_6BD178 - 0x6BD174)]
1EAD16:  CMP             R0, #0
1EAD18:  BEQ             loc_1EADBA
1EAD1A:  LDR             R2, =(_ZN22TextureDatabaseRuntime10registeredE_ptr - 0x1EAD28)
1EAD1C:  SUB.W           R4, R7, #-var_1D
1EAD20:  LDR             R1, =(_ZN22TextureDatabaseRuntime10registeredE_ptr - 0x1EAD2A)
1EAD22:  MOVS            R6, #0
1EAD24:  ADD             R2, PC; _ZN22TextureDatabaseRuntime10registeredE_ptr
1EAD26:  ADD             R1, PC; _ZN22TextureDatabaseRuntime10registeredE_ptr
1EAD28:  LDR             R2, [R2]; TextureDatabaseRuntime::registered ...
1EAD2A:  STR             R2, [SP,#0x30+var_2C]
1EAD2C:  LDR             R2, =(_ZN22TextureDatabaseRuntime10registeredE_ptr - 0x1EAD34)
1EAD2E:  LDR             R1, [R1]; TextureDatabaseRuntime::registered ...
1EAD30:  ADD             R2, PC; _ZN22TextureDatabaseRuntime10registeredE_ptr
1EAD32:  LDR             R5, [R2]; TextureDatabaseRuntime::registered ...
1EAD34:  LDR             R2, =(_ZN22TextureDatabaseRuntime10registeredE_ptr - 0x1EAD3E)
1EAD36:  LDR.W           R12, [R1,#(dword_6BD17C - 0x6BD174)]
1EAD3A:  ADD             R2, PC; _ZN22TextureDatabaseRuntime10registeredE_ptr
1EAD3C:  LDR             R2, [R2]; TextureDatabaseRuntime::registered ...
1EAD3E:  STR             R2, [SP,#0x30+var_30]
1EAD40:  LDR.W           R2, [R12,R6,LSL#2]
1EAD44:  ADDS            R1, R6, #1
1EAD46:  LDR             R3, [R2,#0x18]
1EAD48:  CBZ             R3, loc_1EADB4
1EAD4A:  MOV.W           R9, #0
1EAD4E:  ADDS            R3, R6, #2
1EAD50:  STR             R3, [SP,#0x30+var_24]
1EAD52:  STR             R6, [SP,#0x30+var_28]
1EAD54:  CMP             R1, R0
1EAD56:  BCS             loc_1EADA6
1EAD58:  MOVS            R0, #0x17
1EAD5A:  LDR             R6, [R2,#0x1C]
1EAD5C:  MUL.W           R3, R9, R0
1EAD60:  MOV             R11, R1
1EAD62:  LDR.W           R0, [R12,R1,LSL#2]; this
1EAD66:  MOV             R2, R4; bool *
1EAD68:  LDR             R1, [R6,R3]; char *
1EAD6A:  BLX             j__ZN22TextureDatabaseRuntime8GetEntryEPKcRb; TextureDatabaseRuntime::GetEntry(char const*,bool &)
1EAD6E:  LDR             R0, [SP,#0x30+var_2C]
1EAD70:  LDR             R1, [SP,#0x30+var_24]
1EAD72:  LDR             R0, [R0,#4]
1EAD74:  CMP             R1, R0
1EAD76:  BCS             loc_1EAD9C
1EAD78:  MOVS            R0, #0x17
1EAD7A:  LDR.W           R8, [SP,#0x30+var_24]
1EAD7E:  MLA.W           R10, R9, R0, R6
1EAD82:  LDR             R0, [R5,#(dword_6BD17C - 0x6BD174)]
1EAD84:  MOV             R2, R4; bool *
1EAD86:  LDR.W           R1, [R10]; char *
1EAD8A:  LDR.W           R0, [R0,R8,LSL#2]; this
1EAD8E:  BLX             j__ZN22TextureDatabaseRuntime8GetEntryEPKcRb; TextureDatabaseRuntime::GetEntry(char const*,bool &)
1EAD92:  LDR             R0, [R5,#(dword_6BD178 - 0x6BD174)]
1EAD94:  ADD.W           R8, R8, #1
1EAD98:  CMP             R8, R0
1EAD9A:  BCC             loc_1EAD82
1EAD9C:  LDR             R1, [SP,#0x30+var_30]
1EAD9E:  LDR             R6, [SP,#0x30+var_28]
1EADA0:  LDR.W           R12, [R1,#8]
1EADA4:  MOV             R1, R11
1EADA6:  LDR.W           R2, [R12,R6,LSL#2]
1EADAA:  ADD.W           R9, R9, #1
1EADAE:  LDR             R3, [R2,#0x18]
1EADB0:  CMP             R9, R3
1EADB2:  BCC             loc_1EAD54
1EADB4:  CMP             R1, R0
1EADB6:  MOV             R6, R1
1EADB8:  BCC             loc_1EAD40
1EADBA:  ADD             SP, SP, #0x14
1EADBC:  POP.W           {R8-R11}
1EADC0:  POP             {R4-R7,PC}
