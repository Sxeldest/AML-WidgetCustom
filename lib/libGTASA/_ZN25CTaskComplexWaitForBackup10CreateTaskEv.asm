; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackup10CreateTaskEv
; Address            : 0x492E18 - 0x492ECE
; =========================================================

492E18:  PUSH            {R4-R7,LR}
492E1A:  ADD             R7, SP, #0xC
492E1C:  PUSH.W          {R8}
492E20:  SUB             SP, SP, #8
492E22:  LDR             R0, =(UseDataFence_ptr - 0x492E28)
492E24:  ADD             R0, PC; UseDataFence_ptr
492E26:  LDR             R0, [R0]; UseDataFence
492E28:  LDRB            R4, [R0]
492E2A:  CBZ             R4, loc_492E40
492E2C:  LDR             R0, =(UseDataFence_ptr - 0x492E34)
492E2E:  MOVS            R1, #(stderr+2); void *
492E30:  ADD             R0, PC; UseDataFence_ptr
492E32:  LDR             R5, [R0]; UseDataFence
492E34:  MOVS            R0, #0
492E36:  STRB            R0, [R5]
492E38:  ADD             R0, SP, #0x18+var_14; this
492E3A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492E3E:  STRB            R4, [R5]
492E40:  ADD             R0, SP, #0x18+var_14; this
492E42:  MOVS            R1, #byte_4; void *
492E44:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492E48:  LDR             R0, [SP,#0x18+var_14]; this
492E4A:  ADDS            R1, R0, #1; int
492E4C:  BEQ             loc_492E56
492E4E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492E52:  MOV             R8, R0
492E54:  B               loc_492E5A
492E56:  MOV.W           R8, #0
492E5A:  LDR             R0, =(UseDataFence_ptr - 0x492E60)
492E5C:  ADD             R0, PC; UseDataFence_ptr
492E5E:  LDR             R0, [R0]; UseDataFence
492E60:  LDRB            R5, [R0]
492E62:  CBZ             R5, loc_492E78
492E64:  LDR             R0, =(UseDataFence_ptr - 0x492E6C)
492E66:  MOVS            R1, #(stderr+2); void *
492E68:  ADD             R0, PC; UseDataFence_ptr
492E6A:  LDR             R6, [R0]; UseDataFence
492E6C:  MOVS            R0, #0
492E6E:  STRB            R0, [R6]
492E70:  ADD             R0, SP, #0x18+var_14; this
492E72:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492E76:  STRB            R5, [R6]
492E78:  ADD             R0, SP, #0x18+var_14; this
492E7A:  MOVS            R1, #byte_4; void *
492E7C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492E80:  LDR             R0, [SP,#0x18+var_14]; this
492E82:  ADDS            R1, R0, #1; int
492E84:  BEQ             loc_492E8E
492E86:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492E8A:  MOV             R5, R0
492E8C:  B               loc_492E90
492E8E:  MOVS            R5, #0
492E90:  LDR             R0, =(UseDataFence_ptr - 0x492E96)
492E92:  ADD             R0, PC; UseDataFence_ptr
492E94:  LDR             R0, [R0]; UseDataFence
492E96:  LDRB            R6, [R0]
492E98:  CBZ             R6, loc_492EAE
492E9A:  LDR             R0, =(UseDataFence_ptr - 0x492EA2)
492E9C:  MOVS            R1, #(stderr+2); void *
492E9E:  ADD             R0, PC; UseDataFence_ptr
492EA0:  LDR             R4, [R0]; UseDataFence
492EA2:  MOVS            R0, #0
492EA4:  STRB            R0, [R4]
492EA6:  ADD             R0, SP, #0x18+var_14; this
492EA8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492EAC:  STRB            R6, [R4]
492EAE:  ADD             R0, SP, #0x18+var_14; this
492EB0:  MOVS            R1, #byte_4; void *
492EB2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492EB6:  MOVS            R0, #dword_24; this
492EB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492EBC:  LDR             R3, [SP,#0x18+var_14]; float
492EBE:  MOV             R1, R8; CPed *
492EC0:  MOV             R2, R5; CPed *
492EC2:  BLX             j__ZN25CTaskComplexWaitForBackupC2EP4CPedS1_f; CTaskComplexWaitForBackup::CTaskComplexWaitForBackup(CPed *,CPed *,float)
492EC6:  ADD             SP, SP, #8
492EC8:  POP.W           {R8}
492ECC:  POP             {R4-R7,PC}
