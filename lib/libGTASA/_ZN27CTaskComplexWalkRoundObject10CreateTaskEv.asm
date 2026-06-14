; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObject10CreateTaskEv
; Address            : 0x492A9C - 0x492BD0
; =========================================================

492A9C:  PUSH            {R4,R5,R7,LR}
492A9E:  ADD             R7, SP, #8
492AA0:  SUB             SP, SP, #0x18
492AA2:  LDR             R0, =(UseDataFence_ptr - 0x492AA8)
492AA4:  ADD             R0, PC; UseDataFence_ptr
492AA6:  LDR             R0, [R0]; UseDataFence
492AA8:  LDRB            R4, [R0]
492AAA:  CBZ             R4, loc_492AC0
492AAC:  LDR             R0, =(UseDataFence_ptr - 0x492AB4)
492AAE:  MOVS            R1, #(stderr+2); void *
492AB0:  ADD             R0, PC; UseDataFence_ptr
492AB2:  LDR             R5, [R0]; UseDataFence
492AB4:  MOVS            R0, #0
492AB6:  STRB            R0, [R5]
492AB8:  ADD             R0, SP, #0x20+var_18; this
492ABA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492ABE:  STRB            R4, [R5]
492AC0:  ADD             R0, SP, #0x20+var_C; this
492AC2:  MOVS            R1, #byte_4; void *
492AC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492AC8:  LDR             R0, =(UseDataFence_ptr - 0x492ACE)
492ACA:  ADD             R0, PC; UseDataFence_ptr
492ACC:  LDR             R0, [R0]; UseDataFence
492ACE:  LDRB            R4, [R0]
492AD0:  CBZ             R4, loc_492AE6
492AD2:  LDR             R0, =(UseDataFence_ptr - 0x492ADA)
492AD4:  MOVS            R1, #(stderr+2); void *
492AD6:  ADD             R0, PC; UseDataFence_ptr
492AD8:  LDR             R5, [R0]; UseDataFence
492ADA:  MOVS            R0, #0
492ADC:  STRB            R0, [R5]
492ADE:  ADD             R0, SP, #0x20+var_18; this
492AE0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492AE4:  STRB            R4, [R5]
492AE6:  ADD             R0, SP, #0x20+var_18; this
492AE8:  MOVS            R1, #(byte_9+3); void *
492AEA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492AEE:  LDR             R0, =(UseDataFence_ptr - 0x492AF4)
492AF0:  ADD             R0, PC; UseDataFence_ptr
492AF2:  LDR             R0, [R0]; UseDataFence
492AF4:  LDRB            R4, [R0]
492AF6:  CBZ             R4, loc_492B0C
492AF8:  LDR             R0, =(UseDataFence_ptr - 0x492B00)
492AFA:  MOVS            R1, #(stderr+2); void *
492AFC:  ADD             R0, PC; UseDataFence_ptr
492AFE:  LDR             R5, [R0]; UseDataFence
492B00:  MOVS            R0, #0
492B02:  STRB            R0, [R5]
492B04:  ADD             R0, SP, #0x20+var_1C; this
492B06:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B0A:  STRB            R4, [R5]
492B0C:  ADD             R0, SP, #0x20+var_1C; this
492B0E:  MOVS            R1, #byte_4; void *
492B10:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B14:  LDR             R0, [SP,#0x20+var_1C]
492B16:  CMP             R0, #2
492B18:  BEQ             loc_492B54
492B1A:  CMP             R0, #4
492B1C:  BEQ             loc_492B86
492B1E:  CMP             R0, #3
492B20:  BNE             loc_492BBA
492B22:  LDR             R0, =(UseDataFence_ptr - 0x492B28)
492B24:  ADD             R0, PC; UseDataFence_ptr
492B26:  LDR             R0, [R0]; UseDataFence
492B28:  LDRB            R4, [R0]
492B2A:  CBZ             R4, loc_492B40
492B2C:  LDR             R0, =(UseDataFence_ptr - 0x492B34)
492B2E:  MOVS            R1, #(stderr+2); void *
492B30:  ADD             R0, PC; UseDataFence_ptr
492B32:  LDR             R5, [R0]; UseDataFence
492B34:  MOVS            R0, #0
492B36:  STRB            R0, [R5]
492B38:  MOV             R0, SP; this
492B3A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B3E:  STRB            R4, [R5]
492B40:  MOV             R0, SP; this
492B42:  MOVS            R1, #byte_4; void *
492B44:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B48:  LDR             R0, [SP,#0x20+var_20]; this
492B4A:  ADDS            R1, R0, #1; int
492B4C:  BEQ             loc_492BBA
492B4E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492B52:  B               loc_492BB6
492B54:  LDR             R0, =(UseDataFence_ptr - 0x492B5A)
492B56:  ADD             R0, PC; UseDataFence_ptr
492B58:  LDR             R0, [R0]; UseDataFence
492B5A:  LDRB            R4, [R0]
492B5C:  CBZ             R4, loc_492B72
492B5E:  LDR             R0, =(UseDataFence_ptr - 0x492B66)
492B60:  MOVS            R1, #(stderr+2); void *
492B62:  ADD             R0, PC; UseDataFence_ptr
492B64:  LDR             R5, [R0]; UseDataFence
492B66:  MOVS            R0, #0
492B68:  STRB            R0, [R5]
492B6A:  MOV             R0, SP; this
492B6C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B70:  STRB            R4, [R5]
492B72:  MOV             R0, SP; this
492B74:  MOVS            R1, #byte_4; void *
492B76:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492B7A:  LDR             R0, [SP,#0x20+var_20]; this
492B7C:  ADDS            R1, R0, #1; int
492B7E:  BEQ             loc_492BBA
492B80:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492B84:  B               loc_492BB6
492B86:  LDR             R0, =(UseDataFence_ptr - 0x492B8C)
492B88:  ADD             R0, PC; UseDataFence_ptr
492B8A:  LDR             R0, [R0]; UseDataFence
492B8C:  LDRB            R4, [R0]
492B8E:  CBZ             R4, loc_492BA4
492B90:  LDR             R0, =(UseDataFence_ptr - 0x492B98)
492B92:  MOVS            R1, #(stderr+2); void *
492B94:  ADD             R0, PC; UseDataFence_ptr
492B96:  LDR             R5, [R0]; UseDataFence
492B98:  MOVS            R0, #0
492B9A:  STRB            R0, [R5]
492B9C:  MOV             R0, SP; this
492B9E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492BA2:  STRB            R4, [R5]
492BA4:  MOV             R0, SP; this
492BA6:  MOVS            R1, #byte_4; void *
492BA8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492BAC:  LDR             R0, [SP,#0x20+var_20]; this
492BAE:  ADDS            R1, R0, #1; int
492BB0:  BEQ             loc_492BBA
492BB2:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
492BB6:  MOV             R4, R0
492BB8:  B               loc_492BBC
492BBA:  MOVS            R4, #0
492BBC:  MOVS            R0, #dword_54; this
492BBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492BC2:  LDR             R1, [SP,#0x20+var_C]; int
492BC4:  ADD             R2, SP, #0x20+var_18; CVector *
492BC6:  MOV             R3, R4; CEntity *
492BC8:  BLX             j__ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity; CTaskComplexWalkRoundObject::CTaskComplexWalkRoundObject(int,CVector const&,CEntity *)
492BCC:  ADD             SP, SP, #0x18
492BCE:  POP             {R4,R5,R7,PC}
