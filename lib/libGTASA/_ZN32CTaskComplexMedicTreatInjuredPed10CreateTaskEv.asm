; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed10CreateTaskEv
; Address            : 0x490D78 - 0x490E36
; =========================================================

490D78:  PUSH            {R4-R7,LR}
490D7A:  ADD             R7, SP, #0xC
490D7C:  PUSH.W          {R8}
490D80:  SUB             SP, SP, #0x18
490D82:  LDR             R0, =(UseDataFence_ptr - 0x490D88)
490D84:  ADD             R0, PC; UseDataFence_ptr
490D86:  LDR             R0, [R0]; UseDataFence
490D88:  LDRB            R4, [R0]
490D8A:  CBZ             R4, loc_490DA2
490D8C:  LDR             R0, =(UseDataFence_ptr - 0x490D94)
490D8E:  MOVS            R1, #(stderr+2); void *
490D90:  ADD             R0, PC; UseDataFence_ptr
490D92:  LDR             R5, [R0]; UseDataFence
490D94:  MOVS            R0, #0
490D96:  STRB            R0, [R5]
490D98:  SUB.W           R0, R7, #-var_16; this
490D9C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490DA0:  STRB            R4, [R5]
490DA2:  ADD             R0, SP, #0x28+var_1C; this
490DA4:  MOVS            R1, #byte_4; void *
490DA6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490DAA:  LDR             R0, [SP,#0x28+var_1C]; this
490DAC:  ADDS            R1, R0, #1; int
490DAE:  BEQ             loc_490DB8
490DB0:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
490DB4:  MOV             R8, R0
490DB6:  B               loc_490DBC
490DB8:  MOV.W           R8, #0
490DBC:  LDR             R0, =(UseDataFence_ptr - 0x490DC2)
490DBE:  ADD             R0, PC; UseDataFence_ptr
490DC0:  LDR             R0, [R0]; UseDataFence
490DC2:  LDRB            R5, [R0]
490DC4:  CBZ             R5, loc_490DDA
490DC6:  LDR             R0, =(UseDataFence_ptr - 0x490DCE)
490DC8:  MOVS            R1, #(stderr+2); void *
490DCA:  ADD             R0, PC; UseDataFence_ptr
490DCC:  LDR             R6, [R0]; UseDataFence
490DCE:  MOVS            R0, #0
490DD0:  STRB            R0, [R6]
490DD2:  ADD             R0, SP, #0x28+var_14; this
490DD4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490DD8:  STRB            R5, [R6]
490DDA:  ADD             R0, SP, #0x28+var_20; this
490DDC:  MOVS            R1, #byte_4; void *
490DDE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490DE2:  LDR             R0, [SP,#0x28+var_20]; this
490DE4:  ADDS            R1, R0, #1; int
490DE6:  BEQ             loc_490DF0
490DE8:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
490DEC:  MOV             R5, R0
490DEE:  B               loc_490DF2
490DF0:  MOVS            R5, #0
490DF2:  LDR             R0, =(UseDataFence_ptr - 0x490DF8)
490DF4:  ADD             R0, PC; UseDataFence_ptr
490DF6:  LDR             R0, [R0]; UseDataFence
490DF8:  LDRB            R6, [R0]
490DFA:  CBZ             R6, loc_490E12
490DFC:  LDR             R0, =(UseDataFence_ptr - 0x490E04)
490DFE:  MOVS            R1, #(stderr+2); void *
490E00:  ADD             R0, PC; UseDataFence_ptr
490E02:  LDR             R4, [R0]; UseDataFence
490E04:  MOVS            R0, #0
490E06:  STRB            R0, [R4]
490E08:  SUB.W           R0, R7, #-var_12; this
490E0C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490E10:  STRB            R6, [R4]
490E12:  SUB.W           R0, R7, #-var_21; this
490E16:  MOVS            R1, #(stderr+1); void *
490E18:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490E1C:  MOVS            R0, #word_2C; this
490E1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
490E22:  LDRB.W          R3, [R7,#var_21]; bool
490E26:  MOV             R1, R8; CVehicle *
490E28:  MOV             R2, R5; CPed *
490E2A:  BLX             j__ZN32CTaskComplexMedicTreatInjuredPedC2EP8CVehicleP4CPedb; CTaskComplexMedicTreatInjuredPed::CTaskComplexMedicTreatInjuredPed(CVehicle *,CPed *,bool)
490E2E:  ADD             SP, SP, #0x18
490E30:  POP.W           {R8}
490E34:  POP             {R4-R7,PC}
