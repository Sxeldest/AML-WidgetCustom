; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCower10CreateTaskEv
; Address            : 0x492C00 - 0x492D16
; =========================================================

492C00:  PUSH            {R4-R7,LR}
492C02:  ADD             R7, SP, #0xC
492C04:  PUSH.W          {R11}
492C08:  SUB             SP, SP, #0x10
492C0A:  LDR             R0, =(UseDataFence_ptr - 0x492C10)
492C0C:  ADD             R0, PC; UseDataFence_ptr
492C0E:  LDR             R0, [R0]; UseDataFence
492C10:  LDRB            R4, [R0]
492C12:  CBZ             R4, loc_492C28
492C14:  LDR             R0, =(UseDataFence_ptr - 0x492C1C)
492C16:  MOVS            R1, #(stderr+2); void *
492C18:  ADD             R0, PC; UseDataFence_ptr
492C1A:  LDR             R5, [R0]; UseDataFence
492C1C:  MOVS            R0, #0
492C1E:  STRB            R0, [R5]
492C20:  MOV             R0, SP; this
492C22:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C26:  STRB            R4, [R5]
492C28:  ADD             R0, SP, #0x20+var_14; this
492C2A:  MOVS            R1, #byte_4; void *
492C2C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C30:  LDR             R0, [SP,#0x20+var_14]
492C32:  CMP             R0, #2
492C34:  BEQ             loc_492C70
492C36:  CMP             R0, #4
492C38:  BEQ             loc_492CA2
492C3A:  CMP             R0, #3
492C3C:  BNE             loc_492CD6
492C3E:  LDR             R0, =(UseDataFence_ptr - 0x492C44)
492C40:  ADD             R0, PC; UseDataFence_ptr
492C42:  LDR             R0, [R0]; UseDataFence
492C44:  LDRB            R4, [R0]
492C46:  CBZ             R4, loc_492C5C
492C48:  LDR             R0, =(UseDataFence_ptr - 0x492C50)
492C4A:  MOVS            R1, #(stderr+2); void *
492C4C:  ADD             R0, PC; UseDataFence_ptr
492C4E:  LDR             R5, [R0]; UseDataFence
492C50:  MOVS            R0, #0
492C52:  STRB            R0, [R5]
492C54:  MOV             R0, SP; this
492C56:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C5A:  STRB            R4, [R5]
492C5C:  MOV             R0, SP; this
492C5E:  MOVS            R1, #byte_4; void *
492C60:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C64:  LDR             R0, [SP,#0x20+var_20]; this
492C66:  ADDS            R1, R0, #1; int
492C68:  BEQ             loc_492CD6
492C6A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492C6E:  B               loc_492CD2
492C70:  LDR             R0, =(UseDataFence_ptr - 0x492C76)
492C72:  ADD             R0, PC; UseDataFence_ptr
492C74:  LDR             R0, [R0]; UseDataFence
492C76:  LDRB            R4, [R0]
492C78:  CBZ             R4, loc_492C8E
492C7A:  LDR             R0, =(UseDataFence_ptr - 0x492C82)
492C7C:  MOVS            R1, #(stderr+2); void *
492C7E:  ADD             R0, PC; UseDataFence_ptr
492C80:  LDR             R5, [R0]; UseDataFence
492C82:  MOVS            R0, #0
492C84:  STRB            R0, [R5]
492C86:  MOV             R0, SP; this
492C88:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C8C:  STRB            R4, [R5]
492C8E:  MOV             R0, SP; this
492C90:  MOVS            R1, #byte_4; void *
492C92:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492C96:  LDR             R0, [SP,#0x20+var_20]; this
492C98:  ADDS            R1, R0, #1; int
492C9A:  BEQ             loc_492CD6
492C9C:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492CA0:  B               loc_492CD2
492CA2:  LDR             R0, =(UseDataFence_ptr - 0x492CA8)
492CA4:  ADD             R0, PC; UseDataFence_ptr
492CA6:  LDR             R0, [R0]; UseDataFence
492CA8:  LDRB            R4, [R0]
492CAA:  CBZ             R4, loc_492CC0
492CAC:  LDR             R0, =(UseDataFence_ptr - 0x492CB4)
492CAE:  MOVS            R1, #(stderr+2); void *
492CB0:  ADD             R0, PC; UseDataFence_ptr
492CB2:  LDR             R5, [R0]; UseDataFence
492CB4:  MOVS            R0, #0
492CB6:  STRB            R0, [R5]
492CB8:  MOV             R0, SP; this
492CBA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492CBE:  STRB            R4, [R5]
492CC0:  MOV             R0, SP; this
492CC2:  MOVS            R1, #byte_4; void *
492CC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492CC8:  LDR             R0, [SP,#0x20+var_20]; this
492CCA:  ADDS            R1, R0, #1; int
492CCC:  BEQ             loc_492CD6
492CCE:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
492CD2:  MOV             R4, R0
492CD4:  B               loc_492CD8
492CD6:  MOVS            R4, #0
492CD8:  LDR             R0, =(UseDataFence_ptr - 0x492CDE)
492CDA:  ADD             R0, PC; UseDataFence_ptr
492CDC:  LDR             R0, [R0]; UseDataFence
492CDE:  LDRB            R5, [R0]
492CE0:  CBZ             R5, loc_492CF6
492CE2:  LDR             R0, =(UseDataFence_ptr - 0x492CEA)
492CE4:  MOVS            R1, #(stderr+2); void *
492CE6:  ADD             R0, PC; UseDataFence_ptr
492CE8:  LDR             R6, [R0]; UseDataFence
492CEA:  MOVS            R0, #0
492CEC:  STRB            R0, [R6]
492CEE:  MOV             R0, SP; this
492CF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492CF4:  STRB            R5, [R6]
492CF6:  MOV             R5, SP
492CF8:  MOVS            R1, #(byte_9+3); void *
492CFA:  MOV             R0, R5; this
492CFC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492D00:  MOVS            R0, #dword_1C; this
492D02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492D06:  MOV             R1, R4; CEntity *
492D08:  MOV             R2, R5; CVector *
492D0A:  BLX             j__ZN24CTaskComplexEvasiveCowerC2EP7CEntityRK7CVector; CTaskComplexEvasiveCower::CTaskComplexEvasiveCower(CEntity *,CVector const&)
492D0E:  ADD             SP, SP, #0x10
492D10:  POP.W           {R11}
492D14:  POP             {R4-R7,PC}
