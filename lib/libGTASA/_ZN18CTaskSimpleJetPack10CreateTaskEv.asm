; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack10CreateTaskEv
; Address            : 0x496D60 - 0x496EBC
; =========================================================

496D60:  PUSH            {R4,R5,R7,LR}
496D62:  ADD             R7, SP, #8
496D64:  SUB             SP, SP, #0x20
496D66:  LDR             R0, =(UseDataFence_ptr - 0x496D6C)
496D68:  ADD             R0, PC; UseDataFence_ptr
496D6A:  LDR             R0, [R0]; UseDataFence
496D6C:  LDRB            R4, [R0]
496D6E:  CBZ             R4, loc_496D84
496D70:  LDR             R0, =(UseDataFence_ptr - 0x496D78)
496D72:  MOVS            R1, #(stderr+2); void *
496D74:  ADD             R0, PC; UseDataFence_ptr
496D76:  LDR             R5, [R0]; UseDataFence
496D78:  MOVS            R0, #0
496D7A:  STRB            R0, [R5]
496D7C:  ADD             R0, SP, #0x28+var_14; this
496D7E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496D82:  STRB            R4, [R5]
496D84:  ADD             R0, SP, #0x28+var_14; this
496D86:  MOVS            R1, #(byte_9+3); void *
496D88:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496D8C:  LDR             R0, =(UseDataFence_ptr - 0x496D92)
496D8E:  ADD             R0, PC; UseDataFence_ptr
496D90:  LDR             R0, [R0]; UseDataFence
496D92:  LDRB            R4, [R0]
496D94:  CBZ             R4, loc_496DAA
496D96:  LDR             R0, =(UseDataFence_ptr - 0x496D9E)
496D98:  MOVS            R1, #(stderr+2); void *
496D9A:  ADD             R0, PC; UseDataFence_ptr
496D9C:  LDR             R5, [R0]; UseDataFence
496D9E:  MOVS            R0, #0
496DA0:  STRB            R0, [R5]
496DA2:  ADD             R0, SP, #0x28+var_18; this
496DA4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DA8:  STRB            R4, [R5]
496DAA:  ADD             R0, SP, #0x28+var_18; this
496DAC:  MOVS            R1, #byte_4; void *
496DAE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DB2:  LDR             R0, =(UseDataFence_ptr - 0x496DB8)
496DB4:  ADD             R0, PC; UseDataFence_ptr
496DB6:  LDR             R0, [R0]; UseDataFence
496DB8:  LDRB            R4, [R0]
496DBA:  CBZ             R4, loc_496DD0
496DBC:  LDR             R0, =(UseDataFence_ptr - 0x496DC4)
496DBE:  MOVS            R1, #(stderr+2); void *
496DC0:  ADD             R0, PC; UseDataFence_ptr
496DC2:  LDR             R5, [R0]; UseDataFence
496DC4:  MOVS            R0, #0
496DC6:  STRB            R0, [R5]
496DC8:  ADD             R0, SP, #0x28+var_1C; this
496DCA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DCE:  STRB            R4, [R5]
496DD0:  ADD             R0, SP, #0x28+var_1C; this
496DD2:  MOVS            R1, #byte_4; void *
496DD4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DD8:  LDR             R0, =(UseDataFence_ptr - 0x496DDE)
496DDA:  ADD             R0, PC; UseDataFence_ptr
496DDC:  LDR             R0, [R0]; UseDataFence
496DDE:  LDRB            R4, [R0]
496DE0:  CBZ             R4, loc_496DF6
496DE2:  LDR             R0, =(UseDataFence_ptr - 0x496DEA)
496DE4:  MOVS            R1, #(stderr+2); void *
496DE6:  ADD             R0, PC; UseDataFence_ptr
496DE8:  LDR             R5, [R0]; UseDataFence
496DEA:  MOVS            R0, #0
496DEC:  STRB            R0, [R5]
496DEE:  ADD             R0, SP, #0x28+var_20; this
496DF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DF4:  STRB            R4, [R5]
496DF6:  ADD             R0, SP, #0x28+var_20; this
496DF8:  MOVS            R1, #byte_4; void *
496DFA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496DFE:  LDR             R0, [SP,#0x28+var_20]
496E00:  CMP             R0, #2
496E02:  BEQ             loc_496E3E
496E04:  CMP             R0, #4
496E06:  BEQ             loc_496E70
496E08:  CMP             R0, #3
496E0A:  BNE             loc_496EA4
496E0C:  LDR             R0, =(UseDataFence_ptr - 0x496E12)
496E0E:  ADD             R0, PC; UseDataFence_ptr
496E10:  LDR             R0, [R0]; UseDataFence
496E12:  LDRB            R4, [R0]
496E14:  CBZ             R4, loc_496E2A
496E16:  LDR             R0, =(UseDataFence_ptr - 0x496E1E)
496E18:  MOVS            R1, #(stderr+2); void *
496E1A:  ADD             R0, PC; UseDataFence_ptr
496E1C:  LDR             R5, [R0]; UseDataFence
496E1E:  MOVS            R0, #0
496E20:  STRB            R0, [R5]
496E22:  ADD             R0, SP, #0x28+var_24; this
496E24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E28:  STRB            R4, [R5]
496E2A:  ADD             R0, SP, #0x28+var_24; this
496E2C:  MOVS            R1, #byte_4; void *
496E2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E32:  LDR             R0, [SP,#0x28+var_24]; this
496E34:  ADDS            R1, R0, #1; int
496E36:  BEQ             loc_496EA4
496E38:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
496E3C:  B               loc_496EA0
496E3E:  LDR             R0, =(UseDataFence_ptr - 0x496E44)
496E40:  ADD             R0, PC; UseDataFence_ptr
496E42:  LDR             R0, [R0]; UseDataFence
496E44:  LDRB            R4, [R0]
496E46:  CBZ             R4, loc_496E5C
496E48:  LDR             R0, =(UseDataFence_ptr - 0x496E50)
496E4A:  MOVS            R1, #(stderr+2); void *
496E4C:  ADD             R0, PC; UseDataFence_ptr
496E4E:  LDR             R5, [R0]; UseDataFence
496E50:  MOVS            R0, #0
496E52:  STRB            R0, [R5]
496E54:  ADD             R0, SP, #0x28+var_24; this
496E56:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E5A:  STRB            R4, [R5]
496E5C:  ADD             R0, SP, #0x28+var_24; this
496E5E:  MOVS            R1, #byte_4; void *
496E60:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E64:  LDR             R0, [SP,#0x28+var_24]; this
496E66:  ADDS            R1, R0, #1; int
496E68:  BEQ             loc_496EA4
496E6A:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
496E6E:  B               loc_496EA0
496E70:  LDR             R0, =(UseDataFence_ptr - 0x496E76)
496E72:  ADD             R0, PC; UseDataFence_ptr
496E74:  LDR             R0, [R0]; UseDataFence
496E76:  LDRB            R4, [R0]
496E78:  CBZ             R4, loc_496E8E
496E7A:  LDR             R0, =(UseDataFence_ptr - 0x496E82)
496E7C:  MOVS            R1, #(stderr+2); void *
496E7E:  ADD             R0, PC; UseDataFence_ptr
496E80:  LDR             R5, [R0]; UseDataFence
496E82:  MOVS            R0, #0
496E84:  STRB            R0, [R5]
496E86:  ADD             R0, SP, #0x28+var_24; this
496E88:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E8C:  STRB            R4, [R5]
496E8E:  ADD             R0, SP, #0x28+var_24; this
496E90:  MOVS            R1, #byte_4; void *
496E92:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496E96:  LDR             R0, [SP,#0x28+var_24]; this
496E98:  ADDS            R1, R0, #1; int
496E9A:  BEQ             loc_496EA4
496E9C:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
496EA0:  MOV             R4, R0
496EA2:  B               loc_496EA6
496EA4:  MOVS            R4, #0
496EA6:  MOVS            R0, #dword_70; this
496EA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496EAC:  LDRD.W          R3, R2, [SP,#0x28+var_1C]; int
496EB0:  ADD             R1, SP, #0x28+var_14; CVector *
496EB2:  STR             R4, [SP,#0x28+var_28]; CEntity *
496EB4:  BLX             j__ZN18CTaskSimpleJetPackC2EPK7CVectorfiP7CEntity; CTaskSimpleJetPack::CTaskSimpleJetPack(CVector const*,float,int,CEntity *)
496EB8:  ADD             SP, SP, #0x20 ; ' '
496EBA:  POP             {R4,R5,R7,PC}
