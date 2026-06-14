; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHandsUp9SerializeEv
; Address            : 0x35776C - 0x357802
; =========================================================

35776C:  PUSH            {R4-R7,LR}
35776E:  ADD             R7, SP, #0xC
357770:  PUSH.W          {R11}
357774:  MOV             R4, R0
357776:  LDR             R0, [R4]
357778:  LDR             R1, [R0,#0x14]
35777A:  MOV             R0, R4
35777C:  BLX             R1
35777E:  MOV             R5, R0
357780:  LDR             R0, =(UseDataFence_ptr - 0x357786)
357782:  ADD             R0, PC; UseDataFence_ptr
357784:  LDR             R0, [R0]; UseDataFence
357786:  LDRB            R0, [R0]
357788:  CMP             R0, #0
35778A:  IT NE
35778C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
357790:  MOVS            R0, #4; byte_count
357792:  BLX             malloc
357796:  MOV             R6, R0
357798:  MOVS            R1, #byte_4; void *
35779A:  STR             R5, [R6]
35779C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3577A0:  MOV             R0, R6; p
3577A2:  BLX             free
3577A6:  LDR             R0, [R4]
3577A8:  LDR             R1, [R0,#0x14]
3577AA:  MOV             R0, R4
3577AC:  BLX             R1
3577AE:  MOVW            R1, #0x19D
3577B2:  CMP             R0, R1
3577B4:  BNE             loc_3577E8
3577B6:  LDR             R0, =(UseDataFence_ptr - 0x3577BC)
3577B8:  ADD             R0, PC; UseDataFence_ptr
3577BA:  LDR             R0, [R0]; UseDataFence
3577BC:  LDRB            R0, [R0]
3577BE:  CMP             R0, #0
3577C0:  IT NE
3577C2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3577C6:  MOVS            R0, #4; byte_count
3577C8:  BLX             malloc
3577CC:  MOV             R5, R0
3577CE:  LDR             R0, [R4,#0x20]
3577D0:  STR             R0, [R5]
3577D2:  MOV             R0, R5; this
3577D4:  MOVS            R1, #byte_4; void *
3577D6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3577DA:  MOV             R0, R5; p
3577DC:  POP.W           {R11}
3577E0:  POP.W           {R4-R7,LR}
3577E4:  B.W             j_free
3577E8:  LDR             R0, [R4]
3577EA:  LDR             R1, [R0,#0x14]
3577EC:  MOV             R0, R4
3577EE:  BLX             R1
3577F0:  MOV             R1, R0; int
3577F2:  MOVW            R0, #0x19D; int
3577F6:  POP.W           {R11}
3577FA:  POP.W           {R4-R7,LR}
3577FE:  B.W             sub_1941D4
