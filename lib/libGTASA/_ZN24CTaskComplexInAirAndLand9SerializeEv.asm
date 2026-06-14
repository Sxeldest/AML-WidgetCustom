; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLand9SerializeEv
; Address            : 0x532CA8 - 0x532D42
; =========================================================

532CA8:  PUSH            {R4-R7,LR}
532CAA:  ADD             R7, SP, #0xC
532CAC:  PUSH.W          {R11}
532CB0:  MOV             R4, R0
532CB2:  LDR             R0, [R4]
532CB4:  LDR             R1, [R0,#0x14]
532CB6:  MOV             R0, R4
532CB8:  BLX             R1
532CBA:  MOV             R5, R0
532CBC:  LDR             R0, =(UseDataFence_ptr - 0x532CC2)
532CBE:  ADD             R0, PC; UseDataFence_ptr
532CC0:  LDR             R0, [R0]; UseDataFence
532CC2:  LDRB            R0, [R0]
532CC4:  CMP             R0, #0
532CC6:  IT NE
532CC8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532CCC:  MOVS            R0, #4; byte_count
532CCE:  BLX             malloc
532CD2:  MOV             R6, R0
532CD4:  MOVS            R1, #byte_4; void *
532CD6:  STR             R5, [R6]
532CD8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532CDC:  MOV             R0, R6; p
532CDE:  BLX             free
532CE2:  LDR             R0, [R4]
532CE4:  LDR             R1, [R0,#0x14]
532CE6:  MOV             R0, R4
532CE8:  BLX             R1
532CEA:  CMP             R0, #0xF0
532CEC:  BNE             loc_532D2A
532CEE:  LDR             R0, =(UseDataFence_ptr - 0x532CF4)
532CF0:  ADD             R0, PC; UseDataFence_ptr
532CF2:  LDR             R0, [R0]; UseDataFence
532CF4:  LDRB            R0, [R0]
532CF6:  CMP             R0, #0
532CF8:  IT NE
532CFA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532CFE:  ADD.W           R0, R4, #0xC; this
532D02:  MOVS            R1, #(stderr+1); void *
532D04:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532D08:  LDR             R0, =(UseDataFence_ptr - 0x532D0E)
532D0A:  ADD             R0, PC; UseDataFence_ptr
532D0C:  LDR             R0, [R0]; UseDataFence
532D0E:  LDRB            R0, [R0]
532D10:  CMP             R0, #0
532D12:  IT NE
532D14:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532D18:  ADD.W           R0, R4, #0xD; this
532D1C:  MOVS            R1, #(stderr+1); void *
532D1E:  POP.W           {R11}
532D22:  POP.W           {R4-R7,LR}
532D26:  B.W             sub_19EA3C
532D2A:  LDR             R0, [R4]
532D2C:  LDR             R1, [R0,#0x14]
532D2E:  MOV             R0, R4
532D30:  BLX             R1
532D32:  MOV             R1, R0; int
532D34:  MOVS            R0, #0xF0; int
532D36:  POP.W           {R11}
532D3A:  POP.W           {R4-R7,LR}
532D3E:  B.W             sub_1941D4
