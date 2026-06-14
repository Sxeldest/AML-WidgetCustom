; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAir9SerializeEv
; Address            : 0x532DB8 - 0x532E94
; =========================================================

532DB8:  PUSH            {R4-R7,LR}
532DBA:  ADD             R7, SP, #0xC
532DBC:  PUSH.W          {R11}
532DC0:  SUB             SP, SP, #8
532DC2:  MOV             R4, R0
532DC4:  LDR             R0, [R4]
532DC6:  LDR             R1, [R0,#0x14]
532DC8:  MOV             R0, R4
532DCA:  BLX             R1
532DCC:  MOV             R5, R0
532DCE:  LDR             R0, =(UseDataFence_ptr - 0x532DD4)
532DD0:  ADD             R0, PC; UseDataFence_ptr
532DD2:  LDR             R0, [R0]; UseDataFence
532DD4:  LDRB            R0, [R0]
532DD6:  CMP             R0, #0
532DD8:  IT NE
532DDA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532DDE:  MOVS            R0, #4; byte_count
532DE0:  BLX             malloc
532DE4:  MOV             R6, R0
532DE6:  MOVS            R1, #byte_4; void *
532DE8:  STR             R5, [R6]
532DEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532DEE:  MOV             R0, R6; p
532DF0:  BLX             free
532DF4:  LDR             R0, [R4]
532DF6:  LDR             R1, [R0,#0x14]
532DF8:  MOV             R0, R4
532DFA:  BLX             R1
532DFC:  CMP             R0, #0xF1
532DFE:  BNE             loc_532E7A
532E00:  LDR             R0, =(UseDataFence_ptr - 0x532E0A)
532E02:  LDRB.W          R1, [R4,#0x24]
532E06:  ADD             R0, PC; UseDataFence_ptr
532E08:  AND.W           R1, R1, #1
532E0C:  STRB.W          R1, [R7,#var_11]
532E10:  LDR             R0, [R0]; UseDataFence
532E12:  LDRB            R0, [R0]
532E14:  CMP             R0, #0
532E16:  IT NE
532E18:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532E1C:  SUB.W           R0, R7, #-var_11; this
532E20:  MOVS            R1, #(stderr+1); void *
532E22:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532E26:  LDR             R0, =(UseDataFence_ptr - 0x532E30)
532E28:  LDRB.W          R1, [R4,#0x24]
532E2C:  ADD             R0, PC; UseDataFence_ptr
532E2E:  LDR             R0, [R0]; UseDataFence
532E30:  LDRB            R0, [R0]
532E32:  UBFX.W          R1, R1, #1, #1
532E36:  STRB.W          R1, [R7,#var_12]
532E3A:  CMP             R0, #0
532E3C:  IT NE
532E3E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532E42:  SUB.W           R0, R7, #-var_12; this
532E46:  MOVS            R1, #(stderr+1); void *
532E48:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532E4C:  LDR             R0, =(UseDataFence_ptr - 0x532E56)
532E4E:  LDRB.W          R1, [R4,#0x24]
532E52:  ADD             R0, PC; UseDataFence_ptr
532E54:  LDR             R0, [R0]; UseDataFence
532E56:  LDRB            R0, [R0]
532E58:  UBFX.W          R1, R1, #2, #1
532E5C:  STRB.W          R1, [R7,#var_13]
532E60:  CMP             R0, #0
532E62:  IT NE
532E64:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532E68:  SUB.W           R0, R7, #-var_13; this
532E6C:  MOVS            R1, #(stderr+1); void *
532E6E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532E72:  ADD             SP, SP, #8
532E74:  POP.W           {R11}
532E78:  POP             {R4-R7,PC}
532E7A:  LDR             R0, [R4]
532E7C:  LDR             R1, [R0,#0x14]
532E7E:  MOV             R0, R4
532E80:  BLX             R1
532E82:  MOV             R1, R0; int
532E84:  MOVS            R0, #0xF1; int
532E86:  ADD             SP, SP, #8
532E88:  POP.W           {R11}
532E8C:  POP.W           {R4-R7,LR}
532E90:  B.W             sub_1941D4
