; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntity10CreateTaskEv
; Address            : 0x491E60 - 0x491F74
; =========================================================

491E60:  PUSH            {R4-R7,LR}
491E62:  ADD             R7, SP, #0xC
491E64:  PUSH.W          {R11}
491E68:  SUB             SP, SP, #8
491E6A:  LDR             R0, =(UseDataFence_ptr - 0x491E70)
491E6C:  ADD             R0, PC; UseDataFence_ptr
491E6E:  LDR             R0, [R0]; UseDataFence
491E70:  LDRB            R4, [R0]
491E72:  CBZ             R4, loc_491E88
491E74:  LDR             R0, =(UseDataFence_ptr - 0x491E7C)
491E76:  MOVS            R1, #(stderr+2); void *
491E78:  ADD             R0, PC; UseDataFence_ptr
491E7A:  LDR             R5, [R0]; UseDataFence
491E7C:  MOVS            R0, #0
491E7E:  STRB            R0, [R5]
491E80:  ADD             R0, SP, #0x18+var_14; this
491E82:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E86:  STRB            R4, [R5]
491E88:  ADD             R0, SP, #0x18+var_14; this
491E8A:  MOVS            R1, #byte_4; void *
491E8C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E90:  LDR             R0, [SP,#0x18+var_14]
491E92:  CMP             R0, #2
491E94:  BEQ             loc_491ED0
491E96:  CMP             R0, #4
491E98:  BEQ             loc_491F02
491E9A:  CMP             R0, #3
491E9C:  BNE             loc_491F36
491E9E:  LDR             R0, =(UseDataFence_ptr - 0x491EA4)
491EA0:  ADD             R0, PC; UseDataFence_ptr
491EA2:  LDR             R0, [R0]; UseDataFence
491EA4:  LDRB            R4, [R0]
491EA6:  CBZ             R4, loc_491EBC
491EA8:  LDR             R0, =(UseDataFence_ptr - 0x491EB0)
491EAA:  MOVS            R1, #(stderr+2); void *
491EAC:  ADD             R0, PC; UseDataFence_ptr
491EAE:  LDR             R5, [R0]; UseDataFence
491EB0:  MOVS            R0, #0
491EB2:  STRB            R0, [R5]
491EB4:  MOV             R0, SP; this
491EB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491EBA:  STRB            R4, [R5]
491EBC:  MOV             R0, SP; this
491EBE:  MOVS            R1, #byte_4; void *
491EC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491EC4:  LDR             R0, [SP,#0x18+var_18]; this
491EC6:  ADDS            R1, R0, #1; int
491EC8:  BEQ             loc_491F36
491ECA:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
491ECE:  B               loc_491F32
491ED0:  LDR             R0, =(UseDataFence_ptr - 0x491ED6)
491ED2:  ADD             R0, PC; UseDataFence_ptr
491ED4:  LDR             R0, [R0]; UseDataFence
491ED6:  LDRB            R4, [R0]
491ED8:  CBZ             R4, loc_491EEE
491EDA:  LDR             R0, =(UseDataFence_ptr - 0x491EE2)
491EDC:  MOVS            R1, #(stderr+2); void *
491EDE:  ADD             R0, PC; UseDataFence_ptr
491EE0:  LDR             R5, [R0]; UseDataFence
491EE2:  MOVS            R0, #0
491EE4:  STRB            R0, [R5]
491EE6:  MOV             R0, SP; this
491EE8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491EEC:  STRB            R4, [R5]
491EEE:  MOV             R0, SP; this
491EF0:  MOVS            R1, #byte_4; void *
491EF2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491EF6:  LDR             R0, [SP,#0x18+var_18]; this
491EF8:  ADDS            R1, R0, #1; int
491EFA:  BEQ             loc_491F36
491EFC:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
491F00:  B               loc_491F32
491F02:  LDR             R0, =(UseDataFence_ptr - 0x491F08)
491F04:  ADD             R0, PC; UseDataFence_ptr
491F06:  LDR             R0, [R0]; UseDataFence
491F08:  LDRB            R4, [R0]
491F0A:  CBZ             R4, loc_491F20
491F0C:  LDR             R0, =(UseDataFence_ptr - 0x491F14)
491F0E:  MOVS            R1, #(stderr+2); void *
491F10:  ADD             R0, PC; UseDataFence_ptr
491F12:  LDR             R5, [R0]; UseDataFence
491F14:  MOVS            R0, #0
491F16:  STRB            R0, [R5]
491F18:  MOV             R0, SP; this
491F1A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491F1E:  STRB            R4, [R5]
491F20:  MOV             R0, SP; this
491F22:  MOVS            R1, #byte_4; void *
491F24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491F28:  LDR             R0, [SP,#0x18+var_18]; this
491F2A:  ADDS            R1, R0, #1; int
491F2C:  BEQ             loc_491F36
491F2E:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
491F32:  MOV             R4, R0
491F34:  B               loc_491F38
491F36:  MOVS            R4, #0
491F38:  LDR             R0, =(UseDataFence_ptr - 0x491F3E)
491F3A:  ADD             R0, PC; UseDataFence_ptr
491F3C:  LDR             R0, [R0]; UseDataFence
491F3E:  LDRB            R5, [R0]
491F40:  CBZ             R5, loc_491F56
491F42:  LDR             R0, =(UseDataFence_ptr - 0x491F4A)
491F44:  MOVS            R1, #(stderr+2); void *
491F46:  ADD             R0, PC; UseDataFence_ptr
491F48:  LDR             R6, [R0]; UseDataFence
491F4A:  MOVS            R0, #0
491F4C:  STRB            R0, [R6]
491F4E:  MOV             R0, SP; this
491F50:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491F54:  STRB            R5, [R6]
491F56:  MOV             R0, SP; this
491F58:  MOVS            R1, #byte_4; void *
491F5A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491F5E:  MOVS            R0, #dword_34; this
491F60:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491F64:  LDR             R2, [SP,#0x18+var_18]
491F66:  MOV             R1, R4
491F68:  BLX             j__ZN26CTaskComplexGoPickUpEntityC2EP7CEntity12AssocGroupId; CTaskComplexGoPickUpEntity::CTaskComplexGoPickUpEntity(CEntity *,AssocGroupId)
491F6C:  ADD             SP, SP, #8
491F6E:  POP.W           {R11}
491F72:  POP             {R4-R7,PC}
