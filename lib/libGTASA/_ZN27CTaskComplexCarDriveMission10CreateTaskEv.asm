; =========================================================
; Game Engine Function: _ZN27CTaskComplexCarDriveMission10CreateTaskEv
; Address            : 0x493CF4 - 0x493E4E
; =========================================================

493CF4:  PUSH            {R4-R7,LR}
493CF6:  ADD             R7, SP, #0xC
493CF8:  PUSH.W          {R8}
493CFC:  SUB             SP, SP, #0x18
493CFE:  LDR             R0, =(UseDataFence_ptr - 0x493D04)
493D00:  ADD             R0, PC; UseDataFence_ptr
493D02:  LDR             R0, [R0]; UseDataFence
493D04:  LDRB            R4, [R0]
493D06:  CBZ             R4, loc_493D1C
493D08:  LDR             R0, =(UseDataFence_ptr - 0x493D10)
493D0A:  MOVS            R1, #(stderr+2); void *
493D0C:  ADD             R0, PC; UseDataFence_ptr
493D0E:  LDR             R5, [R0]; UseDataFence
493D10:  MOVS            R0, #0
493D12:  STRB            R0, [R5]
493D14:  ADD             R0, SP, #0x28+var_14; this
493D16:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D1A:  STRB            R4, [R5]
493D1C:  ADD             R0, SP, #0x28+var_14; this
493D1E:  MOVS            R1, #byte_4; void *
493D20:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D24:  LDR             R0, [SP,#0x28+var_14]; this
493D26:  ADDS            R1, R0, #1; int
493D28:  BEQ             loc_493D32
493D2A:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493D2E:  MOV             R8, R0
493D30:  B               loc_493D36
493D32:  MOV.W           R8, #0
493D36:  LDR             R0, =(UseDataFence_ptr - 0x493D3C)
493D38:  ADD             R0, PC; UseDataFence_ptr
493D3A:  LDR             R0, [R0]; UseDataFence
493D3C:  LDRB            R5, [R0]
493D3E:  CBZ             R5, loc_493D54
493D40:  LDR             R0, =(UseDataFence_ptr - 0x493D48)
493D42:  MOVS            R1, #(stderr+2); void *
493D44:  ADD             R0, PC; UseDataFence_ptr
493D46:  LDR             R6, [R0]; UseDataFence
493D48:  MOVS            R0, #0
493D4A:  STRB            R0, [R6]
493D4C:  ADD             R0, SP, #0x28+var_18; this
493D4E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D52:  STRB            R5, [R6]
493D54:  ADD             R0, SP, #0x28+var_18; this
493D56:  MOVS            R1, #byte_4; void *
493D58:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D5C:  LDR             R0, [SP,#0x28+var_18]
493D5E:  CMP             R0, #2
493D60:  BEQ             loc_493D9C
493D62:  CMP             R0, #4
493D64:  BEQ             loc_493DCE
493D66:  CMP             R0, #3
493D68:  BNE             loc_493E02
493D6A:  LDR             R0, =(UseDataFence_ptr - 0x493D70)
493D6C:  ADD             R0, PC; UseDataFence_ptr
493D6E:  LDR             R0, [R0]; UseDataFence
493D70:  LDRB            R5, [R0]
493D72:  CBZ             R5, loc_493D88
493D74:  LDR             R0, =(UseDataFence_ptr - 0x493D7C)
493D76:  MOVS            R1, #(stderr+2); void *
493D78:  ADD             R0, PC; UseDataFence_ptr
493D7A:  LDR             R6, [R0]; UseDataFence
493D7C:  MOVS            R0, #0
493D7E:  STRB            R0, [R6]
493D80:  ADD             R0, SP, #0x28+var_1C; this
493D82:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D86:  STRB            R5, [R6]
493D88:  ADD             R0, SP, #0x28+var_1C; this
493D8A:  MOVS            R1, #byte_4; void *
493D8C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493D90:  LDR             R0, [SP,#0x28+var_1C]; this
493D92:  ADDS            R1, R0, #1; int
493D94:  BEQ             loc_493E02
493D96:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
493D9A:  B               loc_493DFE
493D9C:  LDR             R0, =(UseDataFence_ptr - 0x493DA2)
493D9E:  ADD             R0, PC; UseDataFence_ptr
493DA0:  LDR             R0, [R0]; UseDataFence
493DA2:  LDRB            R5, [R0]
493DA4:  CBZ             R5, loc_493DBA
493DA6:  LDR             R0, =(UseDataFence_ptr - 0x493DAE)
493DA8:  MOVS            R1, #(stderr+2); void *
493DAA:  ADD             R0, PC; UseDataFence_ptr
493DAC:  LDR             R6, [R0]; UseDataFence
493DAE:  MOVS            R0, #0
493DB0:  STRB            R0, [R6]
493DB2:  ADD             R0, SP, #0x28+var_1C; this
493DB4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493DB8:  STRB            R5, [R6]
493DBA:  ADD             R0, SP, #0x28+var_1C; this
493DBC:  MOVS            R1, #byte_4; void *
493DBE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493DC2:  LDR             R0, [SP,#0x28+var_1C]; this
493DC4:  ADDS            R1, R0, #1; int
493DC6:  BEQ             loc_493E02
493DC8:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493DCC:  B               loc_493DFE
493DCE:  LDR             R0, =(UseDataFence_ptr - 0x493DD4)
493DD0:  ADD             R0, PC; UseDataFence_ptr
493DD2:  LDR             R0, [R0]; UseDataFence
493DD4:  LDRB            R5, [R0]
493DD6:  CBZ             R5, loc_493DEC
493DD8:  LDR             R0, =(UseDataFence_ptr - 0x493DE0)
493DDA:  MOVS            R1, #(stderr+2); void *
493DDC:  ADD             R0, PC; UseDataFence_ptr
493DDE:  LDR             R6, [R0]; UseDataFence
493DE0:  MOVS            R0, #0
493DE2:  STRB            R0, [R6]
493DE4:  ADD             R0, SP, #0x28+var_1C; this
493DE6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493DEA:  STRB            R5, [R6]
493DEC:  ADD             R0, SP, #0x28+var_1C; this
493DEE:  MOVS            R1, #byte_4; void *
493DF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493DF4:  LDR             R0, [SP,#0x28+var_1C]; this
493DF6:  ADDS            R1, R0, #1; int
493DF8:  BEQ             loc_493E02
493DFA:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
493DFE:  MOV             R5, R0
493E00:  B               loc_493E04
493E02:  MOVS            R5, #0
493E04:  LDR             R0, =(UseDataFence_ptr - 0x493E0A)
493E06:  ADD             R0, PC; UseDataFence_ptr
493E08:  LDR             R0, [R0]; UseDataFence
493E0A:  LDRB            R6, [R0]
493E0C:  CBZ             R6, loc_493E22
493E0E:  LDR             R0, =(UseDataFence_ptr - 0x493E16)
493E10:  MOVS            R1, #(stderr+2); void *
493E12:  ADD             R0, PC; UseDataFence_ptr
493E14:  LDR             R4, [R0]; UseDataFence
493E16:  MOVS            R0, #0
493E18:  STRB            R0, [R4]
493E1A:  ADD             R0, SP, #0x28+var_1C; this
493E1C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493E20:  STRB            R6, [R4]
493E22:  ADD             R0, SP, #0x28+var_1C; this
493E24:  MOVS            R1, #byte_4; void *
493E26:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493E2A:  MOVS            R0, #word_2C; this
493E2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493E30:  MOVS            R1, #0
493E32:  LDR             R3, [SP,#0x28+var_1C]; int
493E34:  MOVT            R1, #0x4120
493E38:  MOVS            R2, #0
493E3A:  STRD.W          R2, R1, [SP,#0x28+var_28]; int
493E3E:  MOV             R1, R8; CVehicle *
493E40:  MOV             R2, R5; CEntity *
493E42:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
493E46:  ADD             SP, SP, #0x18
493E48:  POP.W           {R8}
493E4C:  POP             {R4-R7,PC}
