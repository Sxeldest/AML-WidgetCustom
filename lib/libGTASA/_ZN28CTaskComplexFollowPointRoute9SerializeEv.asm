; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute9SerializeEv
; Address            : 0x527C48 - 0x527E04
; =========================================================

527C48:  PUSH            {R4-R7,LR}
527C4A:  ADD             R7, SP, #0xC
527C4C:  PUSH.W          {R11}
527C50:  SUB             SP, SP, #8
527C52:  MOV             R4, R0
527C54:  LDR             R0, [R4]
527C56:  LDR             R1, [R0,#0x14]
527C58:  MOV             R0, R4
527C5A:  BLX             R1
527C5C:  MOV             R5, R0
527C5E:  LDR             R0, =(UseDataFence_ptr - 0x527C64)
527C60:  ADD             R0, PC; UseDataFence_ptr
527C62:  LDR             R0, [R0]; UseDataFence
527C64:  LDRB            R0, [R0]
527C66:  CMP             R0, #0
527C68:  IT NE
527C6A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527C6E:  MOVS            R0, #4; byte_count
527C70:  BLX             malloc
527C74:  MOV             R6, R0
527C76:  MOVS            R1, #byte_4; void *
527C78:  STR             R5, [R6]
527C7A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527C7E:  MOV             R0, R6; p
527C80:  BLX             free
527C84:  LDR             R0, [R4]
527C86:  LDR             R1, [R0,#0x14]
527C88:  MOV             R0, R4
527C8A:  BLX             R1
527C8C:  MOVW            R1, #0x389
527C90:  CMP             R0, R1
527C92:  BNE.W           loc_527DE8
527C96:  LDR             R0, =(UseDataFence_ptr - 0x527C9C)
527C98:  ADD             R0, PC; UseDataFence_ptr
527C9A:  LDR             R0, [R0]; UseDataFence
527C9C:  LDRB            R0, [R0]
527C9E:  CMP             R0, #0
527CA0:  IT NE
527CA2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527CA6:  MOVS            R0, #4; byte_count
527CA8:  BLX             malloc
527CAC:  MOV             R5, R0
527CAE:  LDR             R0, [R4,#0x14]
527CB0:  STR             R0, [R5]
527CB2:  MOV             R0, R5; this
527CB4:  MOVS            R1, #byte_4; void *
527CB6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527CBA:  MOV             R0, R5; p
527CBC:  BLX             free
527CC0:  LDR             R0, =(UseDataFence_ptr - 0x527CC6)
527CC2:  ADD             R0, PC; UseDataFence_ptr
527CC4:  LDR             R0, [R0]; UseDataFence
527CC6:  LDRB            R0, [R0]
527CC8:  CMP             R0, #0
527CCA:  IT NE
527CCC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527CD0:  MOVS            R0, #0x64 ; 'd'; byte_count
527CD2:  LDR             R5, [R4,#0x20]
527CD4:  BLX             malloc
527CD8:  MOV             R1, R5; void *
527CDA:  MOVS            R2, #0x64 ; 'd'; size_t
527CDC:  MOV             R6, R0
527CDE:  BLX             memcpy_1
527CE2:  MOV             R0, R6; this
527CE4:  MOVS            R1, #dword_64; void *
527CE6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527CEA:  MOV             R0, R6; p
527CEC:  BLX             free
527CF0:  LDR             R0, =(UseDataFence_ptr - 0x527CF6)
527CF2:  ADD             R0, PC; UseDataFence_ptr
527CF4:  LDR             R0, [R0]; UseDataFence
527CF6:  LDRB            R0, [R0]
527CF8:  CMP             R0, #0
527CFA:  IT NE
527CFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527D00:  MOVS            R0, #4; byte_count
527D02:  BLX             malloc
527D06:  MOV             R5, R0
527D08:  LDR             R0, [R4,#0xC]
527D0A:  STR             R0, [R5]
527D0C:  MOV             R0, R5; this
527D0E:  MOVS            R1, #byte_4; void *
527D10:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527D14:  MOV             R0, R5; p
527D16:  BLX             free
527D1A:  LDR             R0, =(UseDataFence_ptr - 0x527D20)
527D1C:  ADD             R0, PC; UseDataFence_ptr
527D1E:  LDR             R0, [R0]; UseDataFence
527D20:  LDRB            R0, [R0]
527D22:  CMP             R0, #0
527D24:  IT NE
527D26:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527D2A:  MOVS            R0, #4; byte_count
527D2C:  BLX             malloc
527D30:  MOV             R5, R0
527D32:  LDR             R0, [R4,#0x18]
527D34:  STR             R0, [R5]
527D36:  MOV             R0, R5; this
527D38:  MOVS            R1, #byte_4; void *
527D3A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527D3E:  MOV             R0, R5; p
527D40:  BLX             free
527D44:  LDR             R0, =(UseDataFence_ptr - 0x527D4A)
527D46:  ADD             R0, PC; UseDataFence_ptr
527D48:  LDR             R0, [R0]; UseDataFence
527D4A:  LDRB            R0, [R0]
527D4C:  CMP             R0, #0
527D4E:  IT NE
527D50:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527D54:  MOVS            R0, #4; byte_count
527D56:  BLX             malloc
527D5A:  MOV             R5, R0
527D5C:  LDR             R0, [R4,#0x1C]
527D5E:  STR             R0, [R5]
527D60:  MOV             R0, R5; this
527D62:  MOVS            R1, #byte_4; void *
527D64:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527D68:  MOV             R0, R5; p
527D6A:  BLX             free
527D6E:  LDR             R0, =(UseDataFence_ptr - 0x527D78)
527D70:  LDRB.W          R1, [R4,#0x28]
527D74:  ADD             R0, PC; UseDataFence_ptr
527D76:  AND.W           R1, R1, #1
527D7A:  STRB.W          R1, [R7,#var_11]
527D7E:  LDR             R0, [R0]; UseDataFence
527D80:  LDRB            R0, [R0]
527D82:  CMP             R0, #0
527D84:  IT NE
527D86:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527D8A:  SUB.W           R0, R7, #-var_11; this
527D8E:  MOVS            R1, #(stderr+1); void *
527D90:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527D94:  LDR             R0, =(UseDataFence_ptr - 0x527D9E)
527D96:  LDRB.W          R1, [R4,#0x28]
527D9A:  ADD             R0, PC; UseDataFence_ptr
527D9C:  LDR             R0, [R0]; UseDataFence
527D9E:  LDRB            R0, [R0]
527DA0:  UBFX.W          R1, R1, #3, #1
527DA4:  STRB.W          R1, [R7,#var_12]
527DA8:  CMP             R0, #0
527DAA:  IT NE
527DAC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527DB0:  SUB.W           R0, R7, #-var_12; this
527DB4:  MOVS            R1, #(stderr+1); void *
527DB6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527DBA:  LDR             R0, =(UseDataFence_ptr - 0x527DC4)
527DBC:  LDRB.W          R1, [R4,#0x28]
527DC0:  ADD             R0, PC; UseDataFence_ptr
527DC2:  LDR             R0, [R0]; UseDataFence
527DC4:  LDRB            R0, [R0]
527DC6:  UBFX.W          R1, R1, #2, #1
527DCA:  STRB.W          R1, [R7,#var_13]
527DCE:  CMP             R0, #0
527DD0:  IT NE
527DD2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527DD6:  SUB.W           R0, R7, #-var_13; this
527DDA:  MOVS            R1, #(stderr+1); void *
527DDC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527DE0:  ADD             SP, SP, #8
527DE2:  POP.W           {R11}
527DE6:  POP             {R4-R7,PC}
527DE8:  LDR             R0, [R4]
527DEA:  LDR             R1, [R0,#0x14]
527DEC:  MOV             R0, R4
527DEE:  BLX             R1
527DF0:  MOV             R1, R0; int
527DF2:  MOVW            R0, #0x389; int
527DF6:  ADD             SP, SP, #8
527DF8:  POP.W           {R11}
527DFC:  POP.W           {R4-R7,LR}
527E00:  B.W             sub_1941D4
