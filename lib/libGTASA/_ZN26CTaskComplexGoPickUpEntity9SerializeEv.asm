; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntity9SerializeEv
; Address            : 0x543D9C - 0x543EE4
; =========================================================

543D9C:  PUSH            {R4-R7,LR}
543D9E:  ADD             R7, SP, #0xC
543DA0:  PUSH.W          {R11}
543DA4:  MOV             R4, R0
543DA6:  LDR             R0, [R4]
543DA8:  LDR             R1, [R0,#0x14]
543DAA:  MOV             R0, R4
543DAC:  BLX             R1
543DAE:  MOV             R5, R0
543DB0:  LDR             R0, =(UseDataFence_ptr - 0x543DB6)
543DB2:  ADD             R0, PC; UseDataFence_ptr
543DB4:  LDR             R0, [R0]; UseDataFence
543DB6:  LDRB            R0, [R0]
543DB8:  CMP             R0, #0
543DBA:  IT NE
543DBC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543DC0:  MOVS            R0, #4; byte_count
543DC2:  BLX             malloc
543DC6:  MOV             R6, R0
543DC8:  MOVS            R1, #byte_4; void *
543DCA:  STR             R5, [R6]
543DCC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543DD0:  MOV             R0, R6; p
543DD2:  BLX             free
543DD6:  LDR             R0, [R4]
543DD8:  LDR             R1, [R0,#0x14]
543DDA:  MOV             R0, R4
543DDC:  BLX             R1
543DDE:  CMP.W           R0, #0x136
543DE2:  BNE             loc_543E38
543DE4:  LDR             R0, [R4,#0xC]
543DE6:  CBZ             R0, loc_543E52
543DE8:  LDR             R1, =(UseDataFence_ptr - 0x543DF2)
543DEA:  LDRB.W          R0, [R0,#0x3A]
543DEE:  ADD             R1, PC; UseDataFence_ptr
543DF0:  AND.W           R6, R0, #7
543DF4:  LDR             R1, [R1]; UseDataFence
543DF6:  LDRB            R1, [R1]
543DF8:  CMP             R1, #0
543DFA:  IT NE
543DFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543E00:  MOVS            R0, #4; byte_count
543E02:  BLX             malloc
543E06:  MOV             R5, R0
543E08:  MOVS            R1, #byte_4; void *
543E0A:  STR             R6, [R5]
543E0C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543E10:  MOV             R0, R5; p
543E12:  BLX             free
543E16:  LDR             R0, [R4,#0xC]; CObject *
543E18:  LDRB.W          R1, [R0,#0x3A]
543E1C:  AND.W           R1, R1, #7
543E20:  CMP             R1, #2
543E22:  BEQ             loc_543E7A
543E24:  CMP             R1, #4
543E26:  BEQ             loc_543E86
543E28:  CMP             R1, #3
543E2A:  BNE             loc_543EB2
543E2C:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
543E30:  MOV             R5, R0
543E32:  LDR             R0, =(UseDataFence_ptr - 0x543E38)
543E34:  ADD             R0, PC; UseDataFence_ptr
543E36:  B               loc_543E90
543E38:  LDR             R0, [R4]
543E3A:  LDR             R1, [R0,#0x14]
543E3C:  MOV             R0, R4
543E3E:  BLX             R1
543E40:  MOV             R1, R0; int
543E42:  MOV.W           R0, #0x136; int
543E46:  POP.W           {R11}
543E4A:  POP.W           {R4-R7,LR}
543E4E:  B.W             sub_1941D4
543E52:  LDR             R0, =(UseDataFence_ptr - 0x543E58)
543E54:  ADD             R0, PC; UseDataFence_ptr
543E56:  LDR             R0, [R0]; UseDataFence
543E58:  LDRB            R0, [R0]
543E5A:  CMP             R0, #0
543E5C:  IT NE
543E5E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543E62:  MOVS            R0, #4; byte_count
543E64:  BLX             malloc
543E68:  MOV             R5, R0
543E6A:  MOVS            R0, #0
543E6C:  STR             R0, [R5]
543E6E:  MOV             R0, R5; this
543E70:  MOVS            R1, #byte_4; void *
543E72:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543E76:  MOV             R0, R5
543E78:  B               loc_543EAE
543E7A:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
543E7E:  MOV             R5, R0
543E80:  LDR             R0, =(UseDataFence_ptr - 0x543E86)
543E82:  ADD             R0, PC; UseDataFence_ptr
543E84:  B               loc_543E90
543E86:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
543E8A:  MOV             R5, R0
543E8C:  LDR             R0, =(UseDataFence_ptr - 0x543E92)
543E8E:  ADD             R0, PC; UseDataFence_ptr
543E90:  LDR             R0, [R0]; UseDataFence
543E92:  LDRB            R0, [R0]
543E94:  CMP             R0, #0
543E96:  IT NE
543E98:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543E9C:  MOVS            R0, #4; byte_count
543E9E:  BLX             malloc
543EA2:  MOV             R6, R0
543EA4:  MOVS            R1, #byte_4; void *
543EA6:  STR             R5, [R6]
543EA8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543EAC:  MOV             R0, R6; p
543EAE:  BLX             free
543EB2:  LDR             R0, =(UseDataFence_ptr - 0x543EB8)
543EB4:  ADD             R0, PC; UseDataFence_ptr
543EB6:  LDR             R0, [R0]; UseDataFence
543EB8:  LDRB            R0, [R0]
543EBA:  CMP             R0, #0
543EBC:  IT NE
543EBE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543EC2:  MOVS            R0, #4; byte_count
543EC4:  BLX             malloc
543EC8:  MOV             R5, R0
543ECA:  LDR             R0, [R4,#0x2C]
543ECC:  STR             R0, [R5]
543ECE:  MOV             R0, R5; this
543ED0:  MOVS            R1, #byte_4; void *
543ED2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543ED6:  MOV             R0, R5; p
543ED8:  POP.W           {R11}
543EDC:  POP.W           {R4-R7,LR}
543EE0:  B.W             j_free
