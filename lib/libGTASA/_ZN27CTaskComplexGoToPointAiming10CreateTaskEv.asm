; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAiming10CreateTaskEv
; Address            : 0x495CC4 - 0x495E54
; =========================================================

495CC4:  PUSH            {R4-R7,LR}
495CC6:  ADD             R7, SP, #0xC
495CC8:  PUSH.W          {R8,R9,R11}
495CCC:  SUB             SP, SP, #0x38
495CCE:  LDR             R0, =(UseDataFence_ptr - 0x495CD4)
495CD0:  ADD             R0, PC; UseDataFence_ptr
495CD2:  LDR             R0, [R0]; UseDataFence
495CD4:  LDRB            R4, [R0]
495CD6:  CBZ             R4, loc_495CEC
495CD8:  LDR             R0, =(UseDataFence_ptr - 0x495CE0)
495CDA:  MOVS            R1, #(stderr+2); void *
495CDC:  ADD             R0, PC; UseDataFence_ptr
495CDE:  LDR             R5, [R0]; UseDataFence
495CE0:  MOVS            R0, #0
495CE2:  STRB            R0, [R5]
495CE4:  ADD             R0, SP, #0x50+var_2C; this
495CE6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495CEA:  STRB            R4, [R5]
495CEC:  ADD             R0, SP, #0x50+var_1C; this
495CEE:  MOVS            R1, #byte_4; void *
495CF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495CF4:  LDR             R0, =(UseDataFence_ptr - 0x495CFA)
495CF6:  ADD             R0, PC; UseDataFence_ptr
495CF8:  LDR             R0, [R0]; UseDataFence
495CFA:  LDRB            R4, [R0]
495CFC:  CBZ             R4, loc_495D12
495CFE:  LDR             R0, =(UseDataFence_ptr - 0x495D06)
495D00:  MOVS            R1, #(stderr+2); void *
495D02:  ADD             R0, PC; UseDataFence_ptr
495D04:  LDR             R5, [R0]; UseDataFence
495D06:  MOVS            R0, #0
495D08:  STRB            R0, [R5]
495D0A:  ADD             R0, SP, #0x50+var_2C; this
495D0C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D10:  STRB            R4, [R5]
495D12:  ADD             R0, SP, #0x50+var_20; this
495D14:  MOVS            R1, #byte_4; void *
495D16:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D1A:  LDR             R0, [SP,#0x50+var_20]
495D1C:  CMP             R0, #2
495D1E:  BEQ             loc_495D5A
495D20:  CMP             R0, #4
495D22:  BEQ             loc_495D8C
495D24:  CMP             R0, #3
495D26:  BNE             loc_495DC0
495D28:  LDR             R0, =(UseDataFence_ptr - 0x495D2E)
495D2A:  ADD             R0, PC; UseDataFence_ptr
495D2C:  LDR             R0, [R0]; UseDataFence
495D2E:  LDRB            R4, [R0]
495D30:  CBZ             R4, loc_495D46
495D32:  LDR             R0, =(UseDataFence_ptr - 0x495D3A)
495D34:  MOVS            R1, #(stderr+2); void *
495D36:  ADD             R0, PC; UseDataFence_ptr
495D38:  LDR             R5, [R0]; UseDataFence
495D3A:  MOVS            R0, #0
495D3C:  STRB            R0, [R5]
495D3E:  ADD             R0, SP, #0x50+var_2C; this
495D40:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D44:  STRB            R4, [R5]
495D46:  ADD             R0, SP, #0x50+var_2C; this
495D48:  MOVS            R1, #byte_4; void *
495D4A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D4E:  LDR             R0, [SP,#0x50+var_2C]; this
495D50:  ADDS            R1, R0, #1; int
495D52:  BEQ             loc_495DC0
495D54:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
495D58:  B               loc_495DBC
495D5A:  LDR             R0, =(UseDataFence_ptr - 0x495D60)
495D5C:  ADD             R0, PC; UseDataFence_ptr
495D5E:  LDR             R0, [R0]; UseDataFence
495D60:  LDRB            R4, [R0]
495D62:  CBZ             R4, loc_495D78
495D64:  LDR             R0, =(UseDataFence_ptr - 0x495D6C)
495D66:  MOVS            R1, #(stderr+2); void *
495D68:  ADD             R0, PC; UseDataFence_ptr
495D6A:  LDR             R5, [R0]; UseDataFence
495D6C:  MOVS            R0, #0
495D6E:  STRB            R0, [R5]
495D70:  ADD             R0, SP, #0x50+var_2C; this
495D72:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D76:  STRB            R4, [R5]
495D78:  ADD             R0, SP, #0x50+var_2C; this
495D7A:  MOVS            R1, #byte_4; void *
495D7C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495D80:  LDR             R0, [SP,#0x50+var_2C]; this
495D82:  ADDS            R1, R0, #1; int
495D84:  BEQ             loc_495DC0
495D86:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
495D8A:  B               loc_495DBC
495D8C:  LDR             R0, =(UseDataFence_ptr - 0x495D92)
495D8E:  ADD             R0, PC; UseDataFence_ptr
495D90:  LDR             R0, [R0]; UseDataFence
495D92:  LDRB            R4, [R0]
495D94:  CBZ             R4, loc_495DAA
495D96:  LDR             R0, =(UseDataFence_ptr - 0x495D9E)
495D98:  MOVS            R1, #(stderr+2); void *
495D9A:  ADD             R0, PC; UseDataFence_ptr
495D9C:  LDR             R5, [R0]; UseDataFence
495D9E:  MOVS            R0, #0
495DA0:  STRB            R0, [R5]
495DA2:  ADD             R0, SP, #0x50+var_2C; this
495DA4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495DA8:  STRB            R4, [R5]
495DAA:  ADD             R0, SP, #0x50+var_2C; this
495DAC:  MOVS            R1, #byte_4; void *
495DAE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495DB2:  LDR             R0, [SP,#0x50+var_2C]; this
495DB4:  ADDS            R1, R0, #1; int
495DB6:  BEQ             loc_495DC0
495DB8:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
495DBC:  MOV             R8, R0
495DBE:  B               loc_495DC4
495DC0:  MOV.W           R8, #0
495DC4:  LDR             R0, =(UseDataFence_ptr - 0x495DCA)
495DC6:  ADD             R0, PC; UseDataFence_ptr
495DC8:  LDR             R0, [R0]; UseDataFence
495DCA:  LDRB            R5, [R0]
495DCC:  CBZ             R5, loc_495DE2
495DCE:  LDR             R0, =(UseDataFence_ptr - 0x495DD6)
495DD0:  MOVS            R1, #(stderr+2); void *
495DD2:  ADD             R0, PC; UseDataFence_ptr
495DD4:  LDR             R6, [R0]; UseDataFence
495DD6:  MOVS            R0, #0
495DD8:  STRB            R0, [R6]
495DDA:  ADD             R0, SP, #0x50+var_2C; this
495DDC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495DE0:  STRB            R5, [R6]
495DE2:  ADD             R0, SP, #0x50+var_2C; this
495DE4:  MOVS            R1, #(byte_9+3); void *
495DE6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495DEA:  LDR             R0, =(UseDataFence_ptr - 0x495DF0)
495DEC:  ADD             R0, PC; UseDataFence_ptr
495DEE:  LDR             R0, [R0]; UseDataFence
495DF0:  LDRB            R5, [R0]
495DF2:  CBZ             R5, loc_495E08
495DF4:  LDR             R0, =(UseDataFence_ptr - 0x495DFC)
495DF6:  MOVS            R1, #(stderr+2); void *
495DF8:  ADD             R0, PC; UseDataFence_ptr
495DFA:  LDR             R6, [R0]; UseDataFence
495DFC:  MOVS            R0, #0
495DFE:  STRB            R0, [R6]
495E00:  ADD             R0, SP, #0x50+var_38; this
495E02:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495E06:  STRB            R5, [R6]
495E08:  ADD.W           R9, SP, #0x50+var_38
495E0C:  MOVS            R1, #(byte_9+3); void *
495E0E:  MOV             R0, R9; this
495E10:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495E14:  MOVS            R0, #dword_38; this
495E16:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
495E1A:  LDR             R1, =(_ZN27CTaskComplexGoToPointAiming16ms_fTargetRadiusE_ptr - 0x495E22)
495E1C:  LDR             R2, =(_ZN27CTaskComplexGoToPointAiming20ms_fSlowDownDistanceE_ptr - 0x495E28)
495E1E:  ADD             R1, PC; _ZN27CTaskComplexGoToPointAiming16ms_fTargetRadiusE_ptr
495E20:  LDRD.W          R6, R4, [SP,#0x50+var_2C]
495E24:  ADD             R2, PC; _ZN27CTaskComplexGoToPointAiming20ms_fSlowDownDistanceE_ptr
495E26:  LDR             R5, [SP,#0x50+var_24]
495E28:  LDR             R3, [R1]; CTaskComplexGoToPointAiming::ms_fTargetRadius ...
495E2A:  LDR             R2, [R2]; CTaskComplexGoToPointAiming::ms_fSlowDownDistance ...
495E2C:  LDR             R1, [SP,#0x50+var_1C]
495E2E:  VLDR            S0, [R3]
495E32:  MOV             R3, R8
495E34:  VLDR            S2, [R2]
495E38:  MOV             R2, R9
495E3A:  STRD.W          R6, R4, [SP,#0x50+var_50]
495E3E:  STR             R5, [SP,#0x50+var_48]
495E40:  VSTR            S0, [SP,#0x50+var_44]
495E44:  VSTR            S2, [SP,#0x50+var_40]
495E48:  BLX             j__ZN27CTaskComplexGoToPointAimingC2EiRK7CVectorP7CEntityS0_ff; CTaskComplexGoToPointAiming::CTaskComplexGoToPointAiming(int,CVector const&,CEntity *,CVector,float,float)
495E4C:  ADD             SP, SP, #0x38 ; '8'
495E4E:  POP.W           {R8,R9,R11}
495E52:  POP             {R4-R7,PC}
