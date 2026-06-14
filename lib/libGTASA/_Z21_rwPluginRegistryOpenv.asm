; =========================================================
; Game Engine Function: _Z21_rwPluginRegistryOpenv
; Address            : 0x1E5DF4 - 0x1E5E30
; =========================================================

1E5DF4:  PUSH            {R7,LR}
1E5DF6:  MOV             R7, SP
1E5DF8:  SUB             SP, SP, #8
1E5DFA:  LDR             R0, =(dword_682984 - 0x1E5E04)
1E5DFC:  MOVS            R2, #4
1E5DFE:  LDR             R1, =(dword_682980 - 0x1E5E06)
1E5E00:  ADD             R0, PC; dword_682984
1E5E02:  ADD             R1, PC; dword_682980
1E5E04:  LDR             R3, [R0]
1E5E06:  LDR             R0, =(unk_6BD0B4 - 0x1E5E0E)
1E5E08:  LDR             R1, [R1]
1E5E0A:  ADD             R0, PC; unk_6BD0B4
1E5E0C:  STR             R0, [SP,#0x10+var_10]
1E5E0E:  MOVS            R0, #0x3C ; '<'
1E5E10:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1E5E14:  MOV             R1, R0
1E5E16:  LDR             R0, =(dword_6BD0D8 - 0x1E5E1E)
1E5E18:  CMP             R1, #0
1E5E1A:  ADD             R0, PC; dword_6BD0D8
1E5E1C:  STR             R1, [R0]
1E5E1E:  MOV.W           R0, #0
1E5E22:  BEQ             loc_1E5E2C
1E5E24:  LDR             R1, =(dword_6BD0DC - 0x1E5E2A)
1E5E26:  ADD             R1, PC; dword_6BD0DC
1E5E28:  STR             R0, [R1]
1E5E2A:  MOVS            R0, #1
1E5E2C:  ADD             SP, SP, #8
1E5E2E:  POP             {R7,PC}
