; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAt9SerializeEv
; Address            : 0x547E9C - 0x547F62
; =========================================================

547E9C:  PUSH            {R4-R7,LR}
547E9E:  ADD             R7, SP, #0xC
547EA0:  PUSH.W          {R11}
547EA4:  MOV             R4, R0
547EA6:  LDR             R0, [R4]
547EA8:  LDR             R1, [R0,#0x14]
547EAA:  MOV             R0, R4
547EAC:  BLX             R1
547EAE:  MOV             R5, R0
547EB0:  LDR             R0, =(UseDataFence_ptr - 0x547EB6)
547EB2:  ADD             R0, PC; UseDataFence_ptr
547EB4:  LDR             R0, [R0]; UseDataFence
547EB6:  LDRB            R0, [R0]
547EB8:  CMP             R0, #0
547EBA:  IT NE
547EBC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547EC0:  MOVS            R0, #4; byte_count
547EC2:  BLX             malloc
547EC6:  MOV             R6, R0
547EC8:  MOVS            R1, #byte_4; void *
547ECA:  STR             R5, [R6]
547ECC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547ED0:  MOV             R0, R6; p
547ED2:  BLX             free
547ED6:  LDR             R0, [R4]
547ED8:  LDR             R1, [R0,#0x14]
547EDA:  MOV             R0, R4
547EDC:  BLX             R1
547EDE:  MOVW            R1, #0x259
547EE2:  CMP             R0, R1
547EE4:  BNE             loc_547F14
547EE6:  LDR             R0, [R4,#0xC]; CPed *
547EE8:  CBZ             R0, loc_547F2E
547EEA:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
547EEE:  MOV             R4, R0
547EF0:  LDR             R0, =(UseDataFence_ptr - 0x547EF6)
547EF2:  ADD             R0, PC; UseDataFence_ptr
547EF4:  LDR             R0, [R0]; UseDataFence
547EF6:  LDRB            R0, [R0]
547EF8:  CMP             R0, #0
547EFA:  IT NE
547EFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547F00:  MOVS            R0, #4; byte_count
547F02:  BLX             malloc
547F06:  MOV             R5, R0
547F08:  MOVS            R1, #byte_4; void *
547F0A:  STR             R4, [R5]
547F0C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547F10:  MOV             R0, R5
547F12:  B               loc_547F56
547F14:  LDR             R0, [R4]
547F16:  LDR             R1, [R0,#0x14]
547F18:  MOV             R0, R4
547F1A:  BLX             R1
547F1C:  MOV             R1, R0; int
547F1E:  MOVW            R0, #0x259; int
547F22:  POP.W           {R11}
547F26:  POP.W           {R4-R7,LR}
547F2A:  B.W             sub_1941D4
547F2E:  LDR             R0, =(UseDataFence_ptr - 0x547F34)
547F30:  ADD             R0, PC; UseDataFence_ptr
547F32:  LDR             R0, [R0]; UseDataFence
547F34:  LDRB            R0, [R0]
547F36:  CMP             R0, #0
547F38:  IT NE
547F3A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
547F3E:  MOVS            R0, #4; byte_count
547F40:  BLX             malloc
547F44:  MOV             R4, R0
547F46:  MOV.W           R0, #0xFFFFFFFF
547F4A:  STR             R0, [R4]
547F4C:  MOV             R0, R4; this
547F4E:  MOVS            R1, #byte_4; void *
547F50:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
547F54:  MOV             R0, R4; p
547F56:  POP.W           {R11}
547F5A:  POP.W           {R4-R7,LR}
547F5E:  B.W             j_free
