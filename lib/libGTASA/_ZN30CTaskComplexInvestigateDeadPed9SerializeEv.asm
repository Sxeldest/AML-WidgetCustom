; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPed9SerializeEv
; Address            : 0x547D84 - 0x547E48
; =========================================================

547D84:  PUSH            {R4-R7,LR}
547D86:  ADD             R7, SP, #0xC
547D88:  PUSH.W          {R11}
547D8C:  MOV             R4, R0
547D8E:  LDR             R0, [R4]
547D90:  LDR             R1, [R0,#0x14]
547D92:  MOV             R0, R4
547D94:  BLX             R1
547D96:  MOV             R5, R0
547D98:  LDR             R0, =(UseDataFence_ptr - 0x547D9E)
547D9A:  ADD             R0, PC; UseDataFence_ptr
547D9C:  LDR             R0, [R0]; UseDataFence
547D9E:  LDRB            R0, [R0]
547DA0:  CMP             R0, #0
547DA2:  IT NE
547DA4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547DA8:  MOVS            R0, #4; byte_count
547DAA:  BLX             malloc
547DAE:  MOV             R6, R0
547DB0:  MOVS            R1, #byte_4; void *
547DB2:  STR             R5, [R6]
547DB4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547DB8:  MOV             R0, R6; p
547DBA:  BLX             free
547DBE:  LDR             R0, [R4]
547DC0:  LDR             R1, [R0,#0x14]
547DC2:  MOV             R0, R4
547DC4:  BLX             R1
547DC6:  CMP.W           R0, #0x258
547DCA:  BNE             loc_547DFA
547DCC:  LDR             R0, [R4,#0xC]; CPed *
547DCE:  CBZ             R0, loc_547E14
547DD0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
547DD4:  MOV             R4, R0
547DD6:  LDR             R0, =(UseDataFence_ptr - 0x547DDC)
547DD8:  ADD             R0, PC; UseDataFence_ptr
547DDA:  LDR             R0, [R0]; UseDataFence
547DDC:  LDRB            R0, [R0]
547DDE:  CMP             R0, #0
547DE0:  IT NE
547DE2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547DE6:  MOVS            R0, #4; byte_count
547DE8:  BLX             malloc
547DEC:  MOV             R5, R0
547DEE:  MOVS            R1, #byte_4; void *
547DF0:  STR             R4, [R5]
547DF2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547DF6:  MOV             R0, R5
547DF8:  B               loc_547E3C
547DFA:  LDR             R0, [R4]
547DFC:  LDR             R1, [R0,#0x14]
547DFE:  MOV             R0, R4
547E00:  BLX             R1
547E02:  MOV             R1, R0; int
547E04:  MOV.W           R0, #0x258; int
547E08:  POP.W           {R11}
547E0C:  POP.W           {R4-R7,LR}
547E10:  B.W             sub_1941D4
547E14:  LDR             R0, =(UseDataFence_ptr - 0x547E1A)
547E16:  ADD             R0, PC; UseDataFence_ptr
547E18:  LDR             R0, [R0]; UseDataFence
547E1A:  LDRB            R0, [R0]
547E1C:  CMP             R0, #0
547E1E:  IT NE
547E20:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547E24:  MOVS            R0, #4; byte_count
547E26:  BLX             malloc
547E2A:  MOV             R4, R0
547E2C:  MOV.W           R0, #0xFFFFFFFF
547E30:  STR             R0, [R4]
547E32:  MOV             R0, R4; this
547E34:  MOVS            R1, #byte_4; void *
547E36:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547E3A:  MOV             R0, R4; p
547E3C:  POP.W           {R11}
547E40:  POP.W           {R4-R7,LR}
547E44:  B.W             j_free
