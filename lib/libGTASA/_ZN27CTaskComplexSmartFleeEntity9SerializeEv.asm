; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity9SerializeEv
; Address            : 0x514D2C - 0x514E52
; =========================================================

514D2C:  PUSH            {R4-R7,LR}
514D2E:  ADD             R7, SP, #0xC
514D30:  PUSH.W          {R11}
514D34:  MOV             R4, R0
514D36:  LDR             R0, [R4]
514D38:  LDR             R1, [R0,#0x14]
514D3A:  MOV             R0, R4
514D3C:  BLX             R1
514D3E:  MOV             R5, R0
514D40:  LDR             R0, =(UseDataFence_ptr - 0x514D46)
514D42:  ADD             R0, PC; UseDataFence_ptr
514D44:  LDR             R0, [R0]; UseDataFence
514D46:  LDRB            R0, [R0]
514D48:  CMP             R0, #0
514D4A:  IT NE
514D4C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
514D50:  MOVS            R0, #4; byte_count
514D52:  BLX             malloc
514D56:  MOV             R6, R0
514D58:  MOVS            R1, #byte_4; void *
514D5A:  STR             R5, [R6]
514D5C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
514D60:  MOV             R0, R6; p
514D62:  BLX             free
514D66:  LDR             R0, [R4]
514D68:  LDR             R1, [R0,#0x14]
514D6A:  MOV             R0, R4
514D6C:  BLX             R1
514D6E:  MOVW            R1, #0x38F
514D72:  CMP             R0, R1
514D74:  BNE             loc_514DD0
514D76:  LDR             R0, [R4,#0xC]
514D78:  CBZ             R0, loc_514DEA
514D7A:  LDR             R1, =(UseDataFence_ptr - 0x514D84)
514D7C:  LDRB.W          R0, [R0,#0x3A]
514D80:  ADD             R1, PC; UseDataFence_ptr
514D82:  AND.W           R6, R0, #7
514D86:  LDR             R1, [R1]; UseDataFence
514D88:  LDRB            R1, [R1]
514D8A:  CMP             R1, #0
514D8C:  IT NE
514D8E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
514D92:  MOVS            R0, #4; byte_count
514D94:  BLX             malloc
514D98:  MOV             R5, R0
514D9A:  MOVS            R1, #byte_4; void *
514D9C:  STR             R6, [R5]
514D9E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
514DA2:  MOV             R0, R5; p
514DA4:  BLX             free
514DA8:  LDR             R0, [R4,#0xC]; CObject *
514DAA:  LDRB.W          R1, [R0,#0x3A]
514DAE:  AND.W           R1, R1, #7
514DB2:  CMP             R1, #2
514DB4:  BEQ             loc_514E12
514DB6:  CMP             R1, #4
514DB8:  BEQ             loc_514E1E
514DBA:  CMP             R1, #3
514DBC:  ITT NE
514DBE:  POPNE.W         {R11}
514DC2:  POPNE           {R4-R7,PC}
514DC4:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
514DC8:  MOV             R4, R0
514DCA:  LDR             R0, =(UseDataFence_ptr - 0x514DD0)
514DCC:  ADD             R0, PC; UseDataFence_ptr
514DCE:  B               loc_514E28
514DD0:  LDR             R0, [R4]
514DD2:  LDR             R1, [R0,#0x14]
514DD4:  MOV             R0, R4
514DD6:  BLX             R1
514DD8:  MOV             R1, R0; int
514DDA:  MOVW            R0, #0x38F; int
514DDE:  POP.W           {R11}
514DE2:  POP.W           {R4-R7,LR}
514DE6:  B.W             sub_1941D4
514DEA:  LDR             R0, =(UseDataFence_ptr - 0x514DF0)
514DEC:  ADD             R0, PC; UseDataFence_ptr
514DEE:  LDR             R0, [R0]; UseDataFence
514DF0:  LDRB            R0, [R0]
514DF2:  CMP             R0, #0
514DF4:  IT NE
514DF6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
514DFA:  MOVS            R0, #4; byte_count
514DFC:  BLX             malloc
514E00:  MOV             R4, R0
514E02:  MOVS            R0, #0
514E04:  STR             R0, [R4]
514E06:  MOV             R0, R4; this
514E08:  MOVS            R1, #byte_4; void *
514E0A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
514E0E:  MOV             R0, R4
514E10:  B               loc_514E46
514E12:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
514E16:  MOV             R4, R0
514E18:  LDR             R0, =(UseDataFence_ptr - 0x514E1E)
514E1A:  ADD             R0, PC; UseDataFence_ptr
514E1C:  B               loc_514E28
514E1E:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
514E22:  MOV             R4, R0
514E24:  LDR             R0, =(UseDataFence_ptr - 0x514E2A)
514E26:  ADD             R0, PC; UseDataFence_ptr
514E28:  LDR             R0, [R0]; UseDataFence
514E2A:  LDRB            R0, [R0]
514E2C:  CMP             R0, #0
514E2E:  IT NE
514E30:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
514E34:  MOVS            R0, #4; byte_count
514E36:  BLX             malloc
514E3A:  MOV             R5, R0
514E3C:  MOVS            R1, #byte_4; void *
514E3E:  STR             R4, [R5]
514E40:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
514E44:  MOV             R0, R5; p
514E46:  POP.W           {R11}
514E4A:  POP.W           {R4-R7,LR}
514E4E:  B.W             j_free
