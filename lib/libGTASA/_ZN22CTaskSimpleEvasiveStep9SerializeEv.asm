; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStep9SerializeEv
; Address            : 0x50EE10 - 0x50EF36
; =========================================================

50EE10:  PUSH            {R4-R7,LR}
50EE12:  ADD             R7, SP, #0xC
50EE14:  PUSH.W          {R11}
50EE18:  MOV             R4, R0
50EE1A:  LDR             R0, [R4]
50EE1C:  LDR             R1, [R0,#0x14]
50EE1E:  MOV             R0, R4
50EE20:  BLX             R1
50EE22:  MOV             R5, R0
50EE24:  LDR             R0, =(UseDataFence_ptr - 0x50EE2A)
50EE26:  ADD             R0, PC; UseDataFence_ptr
50EE28:  LDR             R0, [R0]; UseDataFence
50EE2A:  LDRB            R0, [R0]
50EE2C:  CMP             R0, #0
50EE2E:  IT NE
50EE30:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50EE34:  MOVS            R0, #4; byte_count
50EE36:  BLX             malloc
50EE3A:  MOV             R6, R0
50EE3C:  MOVS            R1, #byte_4; void *
50EE3E:  STR             R5, [R6]
50EE40:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50EE44:  MOV             R0, R6; p
50EE46:  BLX             free
50EE4A:  LDR             R0, [R4]
50EE4C:  LDR             R1, [R0,#0x14]
50EE4E:  MOV             R0, R4
50EE50:  BLX             R1
50EE52:  MOVW            R1, #0x1F5
50EE56:  CMP             R0, R1
50EE58:  BNE             loc_50EEB4
50EE5A:  LDR             R0, [R4,#8]
50EE5C:  CBZ             R0, loc_50EECE
50EE5E:  LDR             R1, =(UseDataFence_ptr - 0x50EE68)
50EE60:  LDRB.W          R0, [R0,#0x3A]
50EE64:  ADD             R1, PC; UseDataFence_ptr
50EE66:  AND.W           R6, R0, #7
50EE6A:  LDR             R1, [R1]; UseDataFence
50EE6C:  LDRB            R1, [R1]
50EE6E:  CMP             R1, #0
50EE70:  IT NE
50EE72:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50EE76:  MOVS            R0, #4; byte_count
50EE78:  BLX             malloc
50EE7C:  MOV             R5, R0
50EE7E:  MOVS            R1, #byte_4; void *
50EE80:  STR             R6, [R5]
50EE82:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50EE86:  MOV             R0, R5; p
50EE88:  BLX             free
50EE8C:  LDR             R0, [R4,#8]; CObject *
50EE8E:  LDRB.W          R1, [R0,#0x3A]
50EE92:  AND.W           R1, R1, #7
50EE96:  CMP             R1, #2
50EE98:  BEQ             loc_50EEF6
50EE9A:  CMP             R1, #4
50EE9C:  BEQ             loc_50EF02
50EE9E:  CMP             R1, #3
50EEA0:  ITT NE
50EEA2:  POPNE.W         {R11}
50EEA6:  POPNE           {R4-R7,PC}
50EEA8:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
50EEAC:  MOV             R4, R0
50EEAE:  LDR             R0, =(UseDataFence_ptr - 0x50EEB4)
50EEB0:  ADD             R0, PC; UseDataFence_ptr
50EEB2:  B               loc_50EF0C
50EEB4:  LDR             R0, [R4]
50EEB6:  LDR             R1, [R0,#0x14]
50EEB8:  MOV             R0, R4
50EEBA:  BLX             R1
50EEBC:  MOV             R1, R0; int
50EEBE:  MOVW            R0, #0x1F5; int
50EEC2:  POP.W           {R11}
50EEC6:  POP.W           {R4-R7,LR}
50EECA:  B.W             sub_1941D4
50EECE:  LDR             R0, =(UseDataFence_ptr - 0x50EED4)
50EED0:  ADD             R0, PC; UseDataFence_ptr
50EED2:  LDR             R0, [R0]; UseDataFence
50EED4:  LDRB            R0, [R0]
50EED6:  CMP             R0, #0
50EED8:  IT NE
50EEDA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50EEDE:  MOVS            R0, #4; byte_count
50EEE0:  BLX             malloc
50EEE4:  MOV             R4, R0
50EEE6:  MOVS            R0, #0
50EEE8:  STR             R0, [R4]
50EEEA:  MOV             R0, R4; this
50EEEC:  MOVS            R1, #byte_4; void *
50EEEE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50EEF2:  MOV             R0, R4
50EEF4:  B               loc_50EF2A
50EEF6:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50EEFA:  MOV             R4, R0
50EEFC:  LDR             R0, =(UseDataFence_ptr - 0x50EF02)
50EEFE:  ADD             R0, PC; UseDataFence_ptr
50EF00:  B               loc_50EF0C
50EF02:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
50EF06:  MOV             R4, R0
50EF08:  LDR             R0, =(UseDataFence_ptr - 0x50EF0E)
50EF0A:  ADD             R0, PC; UseDataFence_ptr
50EF0C:  LDR             R0, [R0]; UseDataFence
50EF0E:  LDRB            R0, [R0]
50EF10:  CMP             R0, #0
50EF12:  IT NE
50EF14:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50EF18:  MOVS            R0, #4; byte_count
50EF1A:  BLX             malloc
50EF1E:  MOV             R5, R0
50EF20:  MOVS            R1, #byte_4; void *
50EF22:  STR             R4, [R5]
50EF24:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50EF28:  MOV             R0, R5; p
50EF2A:  POP.W           {R11}
50EF2E:  POP.W           {R4-R7,LR}
50EF32:  B.W             j_free
