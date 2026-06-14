; =========================================================
; Game Engine Function: _ZN22CTaskSimpleScratchHead9SerializeEv
; Address            : 0x357920 - 0x35798A
; =========================================================

357920:  PUSH            {R4-R7,LR}
357922:  ADD             R7, SP, #0xC
357924:  PUSH.W          {R11}
357928:  MOV             R4, R0
35792A:  LDR             R0, [R4]
35792C:  LDR             R1, [R0,#0x14]
35792E:  MOV             R0, R4
357930:  BLX             R1
357932:  MOV             R5, R0
357934:  LDR             R0, =(UseDataFence_ptr - 0x35793A)
357936:  ADD             R0, PC; UseDataFence_ptr
357938:  LDR             R0, [R0]; UseDataFence
35793A:  LDRB            R0, [R0]
35793C:  CMP             R0, #0
35793E:  IT NE
357940:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357944:  MOVS            R0, #4; byte_count
357946:  BLX             malloc
35794A:  MOV             R6, R0
35794C:  MOVS            R1, #byte_4; void *
35794E:  STR             R5, [R6]
357950:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
357954:  MOV             R0, R6; p
357956:  BLX             free
35795A:  LDR             R0, [R4]
35795C:  LDR             R1, [R0,#0x14]
35795E:  MOV             R0, R4
357960:  BLX             R1
357962:  MOVW            R1, #0x1A5
357966:  CMP             R0, R1
357968:  ITT EQ
35796A:  POPEQ.W         {R11}
35796E:  POPEQ           {R4-R7,PC}
357970:  LDR             R0, [R4]
357972:  LDR             R1, [R0,#0x14]
357974:  MOV             R0, R4
357976:  BLX             R1
357978:  MOV             R1, R0; int
35797A:  MOVW            R0, #0x1A5; int
35797E:  POP.W           {R11}
357982:  POP.W           {R4-R7,LR}
357986:  B.W             sub_1941D4
