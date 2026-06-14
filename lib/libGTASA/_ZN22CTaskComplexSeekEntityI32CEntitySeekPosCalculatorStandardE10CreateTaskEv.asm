; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE10CreateTaskEv
; Address            : 0x494D00 - 0x494E4E
; =========================================================

494D00:  PUSH            {R4,R5,R7,LR}
494D02:  ADD             R7, SP, #8
494D04:  SUB             SP, SP, #8
494D06:  LDR             R0, =(UseDataFence_ptr - 0x494D0C)
494D08:  ADD             R0, PC; UseDataFence_ptr
494D0A:  LDR             R0, [R0]; UseDataFence
494D0C:  LDRB            R4, [R0]
494D0E:  CBZ             R4, loc_494D24
494D10:  LDR             R0, =(UseDataFence_ptr - 0x494D18)
494D12:  MOVS            R1, #(stderr+2); void *
494D14:  ADD             R0, PC; UseDataFence_ptr
494D16:  LDR             R5, [R0]; UseDataFence
494D18:  MOVS            R0, #0
494D1A:  STRB            R0, [R5]
494D1C:  ADD             R0, SP, #0x10+var_C; this
494D1E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D22:  STRB            R4, [R5]
494D24:  ADD             R0, SP, #0x10+var_C; this
494D26:  MOVS            R1, #byte_4; void *
494D28:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D2C:  LDR             R0, [SP,#0x10+var_C]
494D2E:  CMP             R0, #2
494D30:  BEQ             loc_494D6C
494D32:  CMP             R0, #4
494D34:  BEQ             loc_494D9E
494D36:  CMP             R0, #3
494D38:  BNE             loc_494DD2
494D3A:  LDR             R0, =(UseDataFence_ptr - 0x494D40)
494D3C:  ADD             R0, PC; UseDataFence_ptr
494D3E:  LDR             R0, [R0]; UseDataFence
494D40:  LDRB            R4, [R0]
494D42:  CBZ             R4, loc_494D58
494D44:  LDR             R0, =(UseDataFence_ptr - 0x494D4C)
494D46:  MOVS            R1, #(stderr+2); void *
494D48:  ADD             R0, PC; UseDataFence_ptr
494D4A:  LDR             R5, [R0]; UseDataFence
494D4C:  MOVS            R0, #0
494D4E:  STRB            R0, [R5]
494D50:  MOV             R0, SP; this
494D52:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D56:  STRB            R4, [R5]
494D58:  MOV             R0, SP; this
494D5A:  MOVS            R1, #byte_4; void *
494D5C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D60:  LDR             R0, [SP,#0x10+var_10]; this
494D62:  ADDS            R1, R0, #1; int
494D64:  BEQ             loc_494DD2
494D66:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
494D6A:  B               loc_494DCE
494D6C:  LDR             R0, =(UseDataFence_ptr - 0x494D72)
494D6E:  ADD             R0, PC; UseDataFence_ptr
494D70:  LDR             R0, [R0]; UseDataFence
494D72:  LDRB            R4, [R0]
494D74:  CBZ             R4, loc_494D8A
494D76:  LDR             R0, =(UseDataFence_ptr - 0x494D7E)
494D78:  MOVS            R1, #(stderr+2); void *
494D7A:  ADD             R0, PC; UseDataFence_ptr
494D7C:  LDR             R5, [R0]; UseDataFence
494D7E:  MOVS            R0, #0
494D80:  STRB            R0, [R5]
494D82:  MOV             R0, SP; this
494D84:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D88:  STRB            R4, [R5]
494D8A:  MOV             R0, SP; this
494D8C:  MOVS            R1, #byte_4; void *
494D8E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494D92:  LDR             R0, [SP,#0x10+var_10]; this
494D94:  ADDS            R1, R0, #1; int
494D96:  BEQ             loc_494DD2
494D98:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
494D9C:  B               loc_494DCE
494D9E:  LDR             R0, =(UseDataFence_ptr - 0x494DA4)
494DA0:  ADD             R0, PC; UseDataFence_ptr
494DA2:  LDR             R0, [R0]; UseDataFence
494DA4:  LDRB            R4, [R0]
494DA6:  CBZ             R4, loc_494DBC
494DA8:  LDR             R0, =(UseDataFence_ptr - 0x494DB0)
494DAA:  MOVS            R1, #(stderr+2); void *
494DAC:  ADD             R0, PC; UseDataFence_ptr
494DAE:  LDR             R5, [R0]; UseDataFence
494DB0:  MOVS            R0, #0
494DB2:  STRB            R0, [R5]
494DB4:  MOV             R0, SP; this
494DB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494DBA:  STRB            R4, [R5]
494DBC:  MOV             R0, SP; this
494DBE:  MOVS            R1, #byte_4; void *
494DC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494DC4:  LDR             R0, [SP,#0x10+var_10]; this
494DC6:  ADDS            R1, R0, #1; int
494DC8:  BEQ             loc_494DD2
494DCA:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
494DCE:  MOV             R4, R0
494DD0:  B               loc_494DD4
494DD2:  MOVS            R4, #0
494DD4:  MOVS            R0, #dword_4C; this
494DD6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494DDA:  MOV             R5, R0
494DDC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
494DE0:  ADR             R2, dword_494E50
494DE2:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x494DF0)
494DE4:  VLD1.64         {D16-D17}, [R2@128]
494DE8:  ADD.W           R2, R5, #0x18
494DEC:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
494DEE:  MOV.W           R3, #0x3E8
494DF2:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x494E02)
494DF4:  CMP             R4, #0
494DF6:  VST1.32         {D16-D17}, [R2]
494DFA:  MOVW            R2, #0xC350
494DFE:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
494E00:  STRD.W          R2, R3, [R5,#0x10]
494E04:  MOV.W           R2, #0
494E08:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
494E0A:  STRH            R2, [R5,#0x30]
494E0C:  STRH            R2, [R5,#0x3C]
494E0E:  ADD.W           R0, R0, #8
494E12:  STRD.W          R2, R2, [R5,#0x28]
494E16:  STRD.W          R2, R2, [R5,#0x34]
494E1A:  MOV.W           R2, #6
494E1E:  STR             R2, [R5,#0x44]
494E20:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
494E22:  LDRB.W          R2, [R5,#0x48]
494E26:  STR             R0, [R5]
494E28:  ADD.W           R0, R1, #8
494E2C:  STR             R0, [R5,#0x40]
494E2E:  AND.W           R0, R2, #0xF0
494E32:  MOV             R1, R5
494E34:  ORR.W           R0, R0, #3
494E38:  STRB.W          R0, [R5,#0x48]
494E3C:  STR.W           R4, [R1,#0xC]!; CEntity **
494E40:  ITT NE
494E42:  MOVNE           R0, R4; this
494E44:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
494E48:  MOV             R0, R5
494E4A:  ADD             SP, SP, #8
494E4C:  POP             {R4,R5,R7,PC}
