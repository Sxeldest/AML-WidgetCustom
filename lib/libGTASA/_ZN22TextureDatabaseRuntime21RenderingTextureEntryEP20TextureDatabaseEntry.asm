; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime21RenderingTextureEntryEP20TextureDatabaseEntry
; Address            : 0x1E9E84 - 0x1E9F02
; =========================================================

1E9E84:  PUSH            {R4,R5,R7,LR}
1E9E86:  ADD             R7, SP, #8
1E9E88:  LDR             R1, =(pumpHack_ptr - 0x1E9E8E)
1E9E8A:  ADD             R1, PC; pumpHack_ptr
1E9E8C:  LDR             R1, [R1]; pumpHack
1E9E8E:  LDRB            R1, [R1]
1E9E90:  CMP             R1, #0
1E9E92:  IT NE
1E9E94:  POPNE           {R4,R5,R7,PC}
1E9E96:  LDR             R1, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1E9E9C)
1E9E98:  ADD             R1, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1E9E9A:  LDR             R1, [R1]; TextureDatabaseRuntime::loaded ...
1E9E9C:  LDR.W           R12, [R1,#(dword_6BD184 - 0x6BD180)]
1E9EA0:  CMP.W           R12, #0
1E9EA4:  BEQ             loc_1E9ED6
1E9EA6:  LDR             R1, =(_ZN22TextureDatabaseRuntime6loadedE_ptr - 0x1E9EB0)
1E9EA8:  MOV.W           LR, #0x17
1E9EAC:  ADD             R1, PC; _ZN22TextureDatabaseRuntime6loadedE_ptr
1E9EAE:  LDR             R1, [R1]; TextureDatabaseRuntime::loaded ...
1E9EB0:  LDR             R3, [R1,#(dword_6BD188 - 0x6BD180)]
1E9EB2:  MOVS            R1, #0
1E9EB4:  LDR.W           R2, [R3,R1,LSL#2]
1E9EB8:  LDR             R4, [R2,#0x1C]
1E9EBA:  CMP             R4, R0
1E9EBC:  BHI             loc_1E9ED0
1E9EBE:  LDR             R5, [R2,#0x18]
1E9EC0:  MLA.W           R5, R5, LR, R4
1E9EC4:  CMP             R5, R0
1E9EC6:  BLS             loc_1E9ED0
1E9EC8:  SUBS            R4, R0, R4
1E9ECA:  ADDS.W          R5, R4, #0x17
1E9ECE:  BNE             loc_1E9EF6
1E9ED0:  ADDS            R1, #1; unsigned int
1E9ED2:  CMP             R1, R12
1E9ED4:  BCC             loc_1E9EB4
1E9ED6:  MOVS            R2, #0
1E9ED8:  LDRH            R3, [R0,#8]
1E9EDA:  AND.W           R5, R3, #0xF000
1E9EDE:  CMP.W           R5, #0x1000
1E9EE2:  BNE             locret_1E9EF4
1E9EE4:  MOVS            R5, #2
1E9EE6:  BFI.W           R3, R5, #0xC, #0x14
1E9EEA:  STRH            R3, [R0,#8]
1E9EEC:  MOV             R0, R2; this
1E9EEE:  POP.W           {R4,R5,R7,LR}
1E9EF2:  B               _ZN22TextureDatabaseRuntime13SetAsRenderedEj; TextureDatabaseRuntime::SetAsRendered(uint)
1E9EF4:  POP             {R4,R5,R7,PC}
1E9EF6:  MOV             R1, #0xE9BD37A7
1E9EFE:  MULS            R1, R4
1E9F00:  B               loc_1E9ED8
