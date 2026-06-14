; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStill9SerializeEv
; Address            : 0x526CAC - 0x526DC8
; =========================================================

526CAC:  PUSH            {R4-R7,LR}
526CAE:  ADD             R7, SP, #0xC
526CB0:  PUSH.W          {R11}
526CB4:  MOV             R4, R0
526CB6:  LDR             R0, [R4]
526CB8:  LDR             R1, [R0,#0x14]
526CBA:  MOV             R0, R4
526CBC:  BLX             R1
526CBE:  MOV             R5, R0
526CC0:  LDR             R0, =(UseDataFence_ptr - 0x526CC6)
526CC2:  ADD             R0, PC; UseDataFence_ptr
526CC4:  LDR             R0, [R0]; UseDataFence
526CC6:  LDRB            R0, [R0]
526CC8:  CMP             R0, #0
526CCA:  IT NE
526CCC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
526CD0:  MOVS            R0, #4; byte_count
526CD2:  BLX             malloc
526CD6:  MOV             R6, R0
526CD8:  MOVS            R1, #byte_4; void *
526CDA:  STR             R5, [R6]
526CDC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
526CE0:  MOV             R0, R6; p
526CE2:  BLX             free
526CE6:  LDR             R0, [R4]
526CE8:  LDR             R1, [R0,#0x14]
526CEA:  MOV             R0, R4
526CEC:  BLX             R1
526CEE:  MOVW            R1, #0x387
526CF2:  CMP             R0, R1
526CF4:  BNE             loc_526DAE
526CF6:  LDR             R0, =(UseDataFence_ptr - 0x526CFC)
526CF8:  ADD             R0, PC; UseDataFence_ptr
526CFA:  LDR             R0, [R0]; UseDataFence
526CFC:  LDRB            R0, [R0]
526CFE:  CMP             R0, #0
526D00:  IT NE
526D02:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
526D06:  MOVS            R0, #4; byte_count
526D08:  BLX             malloc
526D0C:  MOV             R5, R0
526D0E:  LDR             R0, [R4,#0xC]
526D10:  STR             R0, [R5]
526D12:  MOV             R0, R5; this
526D14:  MOVS            R1, #byte_4; void *
526D16:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
526D1A:  MOV             R0, R5; p
526D1C:  BLX             free
526D20:  LDR             R0, =(UseDataFence_ptr - 0x526D26)
526D22:  ADD             R0, PC; UseDataFence_ptr
526D24:  LDR             R0, [R0]; UseDataFence
526D26:  LDRB            R0, [R0]
526D28:  CMP             R0, #0
526D2A:  IT NE
526D2C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
526D30:  MOVS            R0, #0xC; byte_count
526D32:  BLX             malloc
526D36:  ADD.W           R1, R4, #0x10
526D3A:  MOV             R5, R0
526D3C:  LDR             R0, [R4,#0x18]
526D3E:  VLD1.8          {D16}, [R1]
526D42:  MOVS            R1, #(byte_9+3); void *
526D44:  STR             R0, [R5,#8]
526D46:  MOV             R0, R5; this
526D48:  VST1.8          {D16}, [R5]
526D4C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
526D50:  MOV             R0, R5; p
526D52:  BLX             free
526D56:  LDR             R0, =(UseDataFence_ptr - 0x526D5E)
526D58:  LDR             R6, [R4,#0x1C]
526D5A:  ADD             R0, PC; UseDataFence_ptr
526D5C:  LDR             R0, [R0]; UseDataFence
526D5E:  LDRB            R0, [R0]
526D60:  CMP             R0, #0
526D62:  IT NE
526D64:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
526D68:  MOVS            R0, #4; byte_count
526D6A:  BLX             malloc
526D6E:  MOV             R5, R0
526D70:  MOVS            R1, #byte_4; void *
526D72:  STR             R6, [R5]
526D74:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
526D78:  MOV             R0, R5; p
526D7A:  BLX             free
526D7E:  LDR             R0, =(UseDataFence_ptr - 0x526D86)
526D80:  LDR             R5, [R4,#0x20]
526D82:  ADD             R0, PC; UseDataFence_ptr
526D84:  LDR             R0, [R0]; UseDataFence
526D86:  LDRB            R0, [R0]
526D88:  CMP             R0, #0
526D8A:  IT NE
526D8C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
526D90:  MOVS            R0, #4; byte_count
526D92:  BLX             malloc
526D96:  MOV             R4, R0
526D98:  MOVS            R1, #byte_4; void *
526D9A:  STR             R5, [R4]
526D9C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
526DA0:  MOV             R0, R4; p
526DA2:  POP.W           {R11}
526DA6:  POP.W           {R4-R7,LR}
526DAA:  B.W             j_free
526DAE:  LDR             R0, [R4]
526DB0:  LDR             R1, [R0,#0x14]
526DB2:  MOV             R0, R4
526DB4:  BLX             R1
526DB6:  MOV             R1, R0; int
526DB8:  MOVW            R0, #0x387; int
526DBC:  POP.W           {R11}
526DC0:  POP.W           {R4-R7,LR}
526DC4:  B.W             sub_1941D4
