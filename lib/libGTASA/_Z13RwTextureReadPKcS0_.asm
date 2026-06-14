; =========================================================
; Game Engine Function: _Z13RwTextureReadPKcS0_
; Address            : 0x1DBABC - 0x1DBB48
; =========================================================

1DBABC:  PUSH            {R4,R5,R7,LR}
1DBABE:  ADD             R7, SP, #8
1DBAC0:  MOV             R4, R1
1DBAC2:  MOV             R5, R0
1DBAC4:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
1DBAC8:  CBNZ            R0, loc_1DBAE2
1DBACA:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBAD2)
1DBACC:  LDR             R1, =(dword_6BCF84 - 0x1DBAD4)
1DBACE:  ADD             R0, PC; RwEngineInstance_ptr
1DBAD0:  ADD             R1, PC; dword_6BCF84
1DBAD2:  LDR             R0, [R0]; RwEngineInstance
1DBAD4:  LDR             R1, [R1]
1DBAD6:  LDR             R0, [R0]
1DBAD8:  ADD             R0, R1
1DBADA:  LDR             R1, [R0,#0x18]
1DBADC:  MOV             R0, R5
1DBADE:  BLX             R1
1DBAE0:  CBZ             R0, loc_1DBAEA
1DBAE2:  LDR             R1, [R0,#0x54]
1DBAE4:  ADDS            R1, #1
1DBAE6:  STR             R1, [R0,#0x54]
1DBAE8:  POP             {R4,R5,R7,PC}
1DBAEA:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBAF2)
1DBAEC:  LDR             R1, =(dword_6BCF84 - 0x1DBAF4)
1DBAEE:  ADD             R0, PC; RwEngineInstance_ptr
1DBAF0:  ADD             R1, PC; dword_6BCF84
1DBAF2:  LDR             R0, [R0]; RwEngineInstance
1DBAF4:  LDR             R1, [R1]
1DBAF6:  LDR             R0, [R0]
1DBAF8:  ADD             R0, R1
1DBAFA:  MOV             R1, R4
1DBAFC:  LDR             R2, [R0,#0x14]
1DBAFE:  MOV             R0, R5
1DBB00:  BLX             R2
1DBB02:  CBZ             R0, loc_1DBB44
1DBB04:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBB0C)
1DBB06:  LDR             R2, =(dword_6BCF84 - 0x1DBB0E)
1DBB08:  ADD             R1, PC; RwEngineInstance_ptr
1DBB0A:  ADD             R2, PC; dword_6BCF84
1DBB0C:  LDR             R1, [R1]; RwEngineInstance
1DBB0E:  LDR             R2, [R2]
1DBB10:  LDR             R1, [R1]
1DBB12:  ADD             R1, R2
1DBB14:  LDR             R1, [R1,#0x10]
1DBB16:  CMP             R1, #0
1DBB18:  IT EQ
1DBB1A:  POPEQ           {R4,R5,R7,PC}
1DBB1C:  LDR             R3, [R0,#4]
1DBB1E:  ADD.W           R2, R0, #8
1DBB22:  CMP             R3, #0
1DBB24:  ITTTT NE
1DBB26:  LDRDNE.W        R3, R5, [R0,#8]
1DBB2A:  STRNE           R3, [R5]
1DBB2C:  LDRDNE.W        R3, R5, [R0,#8]
1DBB30:  STRNE           R5, [R3,#4]
1DBB32:  STR             R1, [R0,#4]
1DBB34:  LDR.W           R3, [R1,#8]!
1DBB38:  STRD.W          R3, R1, [R0,#8]
1DBB3C:  LDR             R3, [R1]
1DBB3E:  STR             R2, [R3,#4]
1DBB40:  STR             R2, [R1]
1DBB42:  POP             {R4,R5,R7,PC}
1DBB44:  MOVS            R0, #0
1DBB46:  POP             {R4,R5,R7,PC}
