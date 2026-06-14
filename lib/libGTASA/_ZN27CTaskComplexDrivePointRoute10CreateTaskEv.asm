; =========================================================
; Game Engine Function: _ZN27CTaskComplexDrivePointRoute10CreateTaskEv
; Address            : 0x493AAC - 0x493C00
; =========================================================

493AAC:  PUSH            {R4-R7,LR}
493AAE:  ADD             R7, SP, #0xC
493AB0:  PUSH.W          {R8}
493AB4:  SUB             SP, SP, #0x90
493AB6:  LDR             R0, =(UseDataFence_ptr - 0x493ABC)
493AB8:  ADD             R0, PC; UseDataFence_ptr
493ABA:  LDR             R0, [R0]; UseDataFence
493ABC:  LDRB            R4, [R0]
493ABE:  CBZ             R4, loc_493AD4
493AC0:  LDR             R0, =(UseDataFence_ptr - 0x493AC8)
493AC2:  MOVS            R1, #(stderr+2); void *
493AC4:  ADD             R0, PC; UseDataFence_ptr
493AC6:  LDR             R5, [R0]; UseDataFence
493AC8:  MOVS            R0, #0
493ACA:  STRB            R0, [R5]
493ACC:  ADD             R0, SP, #0xA0+var_78; this
493ACE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493AD2:  STRB            R4, [R5]
493AD4:  ADD             R0, SP, #0xA0+var_14; this
493AD6:  MOVS            R1, #byte_4; void *
493AD8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493ADC:  LDR             R0, [SP,#0xA0+var_14]; this
493ADE:  ADDS            R1, R0, #1; int
493AE0:  BEQ             loc_493AEA
493AE2:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493AE6:  MOV             R8, R0
493AE8:  B               loc_493AEE
493AEA:  MOV.W           R8, #0
493AEE:  LDR             R0, =(UseDataFence_ptr - 0x493AF4)
493AF0:  ADD             R0, PC; UseDataFence_ptr
493AF2:  LDR             R0, [R0]; UseDataFence
493AF4:  LDRB            R5, [R0]
493AF6:  CBZ             R5, loc_493B0C
493AF8:  LDR             R0, =(UseDataFence_ptr - 0x493B00)
493AFA:  MOVS            R1, #(stderr+2); void *
493AFC:  ADD             R0, PC; UseDataFence_ptr
493AFE:  LDR             R6, [R0]; UseDataFence
493B00:  MOVS            R0, #0
493B02:  STRB            R0, [R6]
493B04:  ADD             R0, SP, #0xA0+var_78; this
493B06:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B0A:  STRB            R5, [R6]
493B0C:  ADD             R0, SP, #0xA0+var_78; this
493B0E:  MOVS            R5, #0
493B10:  MOVS            R1, #dword_64; void *
493B12:  STR             R5, [SP,#0xA0+var_78]
493B14:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B18:  LDR             R0, =(UseDataFence_ptr - 0x493B1E)
493B1A:  ADD             R0, PC; UseDataFence_ptr
493B1C:  LDR             R0, [R0]; UseDataFence
493B1E:  LDRB            R6, [R0]
493B20:  CBZ             R6, loc_493B34
493B22:  LDR             R0, =(UseDataFence_ptr - 0x493B2A)
493B24:  MOVS            R1, #(stderr+2); void *
493B26:  ADD             R0, PC; UseDataFence_ptr
493B28:  LDR             R4, [R0]; UseDataFence
493B2A:  ADD             R0, SP, #0xA0+var_7C; this
493B2C:  STRB            R5, [R4]
493B2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B32:  STRB            R6, [R4]
493B34:  ADD             R0, SP, #0xA0+var_7C; this
493B36:  MOVS            R1, #byte_4; void *
493B38:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B3C:  LDR             R0, =(UseDataFence_ptr - 0x493B42)
493B3E:  ADD             R0, PC; UseDataFence_ptr
493B40:  LDR             R0, [R0]; UseDataFence
493B42:  LDRB            R5, [R0]
493B44:  CBZ             R5, loc_493B5A
493B46:  LDR             R0, =(UseDataFence_ptr - 0x493B4E)
493B48:  MOVS            R1, #(stderr+2); void *
493B4A:  ADD             R0, PC; UseDataFence_ptr
493B4C:  LDR             R4, [R0]; UseDataFence
493B4E:  MOVS            R0, #0
493B50:  STRB            R0, [R4]
493B52:  ADD             R0, SP, #0xA0+var_80; this
493B54:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B58:  STRB            R5, [R4]
493B5A:  ADD             R0, SP, #0xA0+var_80; this
493B5C:  MOVS            R1, #byte_4; void *
493B5E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B62:  LDR             R0, =(UseDataFence_ptr - 0x493B68)
493B64:  ADD             R0, PC; UseDataFence_ptr
493B66:  LDR             R0, [R0]; UseDataFence
493B68:  LDRB            R5, [R0]
493B6A:  CBZ             R5, loc_493B80
493B6C:  LDR             R0, =(UseDataFence_ptr - 0x493B74)
493B6E:  MOVS            R1, #(stderr+2); void *
493B70:  ADD             R0, PC; UseDataFence_ptr
493B72:  LDR             R4, [R0]; UseDataFence
493B74:  MOVS            R0, #0
493B76:  STRB            R0, [R4]
493B78:  ADD             R0, SP, #0xA0+var_84; this
493B7A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B7E:  STRB            R5, [R4]
493B80:  ADD             R0, SP, #0xA0+var_84; this
493B82:  MOVS            R1, #byte_4; void *
493B84:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493B88:  LDR             R0, =(UseDataFence_ptr - 0x493B8E)
493B8A:  ADD             R0, PC; UseDataFence_ptr
493B8C:  LDR             R0, [R0]; UseDataFence
493B8E:  LDRB            R5, [R0]
493B90:  CBZ             R5, loc_493BA6
493B92:  LDR             R0, =(UseDataFence_ptr - 0x493B9A)
493B94:  MOVS            R1, #(stderr+2); void *
493B96:  ADD             R0, PC; UseDataFence_ptr
493B98:  LDR             R4, [R0]; UseDataFence
493B9A:  MOVS            R0, #0
493B9C:  STRB            R0, [R4]
493B9E:  ADD             R0, SP, #0xA0+var_88; this
493BA0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493BA4:  STRB            R5, [R4]
493BA6:  ADD             R0, SP, #0xA0+var_88; this
493BA8:  MOVS            R1, #byte_4; void *
493BAA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493BAE:  LDR             R0, =(UseDataFence_ptr - 0x493BB4)
493BB0:  ADD             R0, PC; UseDataFence_ptr
493BB2:  LDR             R0, [R0]; UseDataFence
493BB4:  LDRB            R5, [R0]
493BB6:  CBZ             R5, loc_493BCC
493BB8:  LDR             R0, =(UseDataFence_ptr - 0x493BC0)
493BBA:  MOVS            R1, #(stderr+2); void *
493BBC:  ADD             R0, PC; UseDataFence_ptr
493BBE:  LDR             R4, [R0]; UseDataFence
493BC0:  MOVS            R0, #0
493BC2:  STRB            R0, [R4]
493BC4:  ADD             R0, SP, #0xA0+var_8C; this
493BC6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493BCA:  STRB            R5, [R4]
493BCC:  ADD             R0, SP, #0xA0+var_8C; this
493BCE:  MOVS            R1, #byte_4; void *
493BD0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493BD4:  MOVS            R0, #word_2C; this
493BD6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493BDA:  LDR             R3, [SP,#0xA0+var_7C]; float
493BDC:  LDRD.W          R2, R1, [SP,#0xA0+var_84]
493BE0:  VLDR            S0, [SP,#0xA0+var_88]
493BE4:  LDR             R6, [SP,#0xA0+var_8C]
493BE6:  STR             R6, [SP,#0xA0+var_94]; int
493BE8:  VSTR            S0, [SP,#0xA0+var_98]
493BEC:  STRD.W          R1, R2, [SP,#0xA0+var_A0]; int
493BF0:  ADD             R2, SP, #0xA0+var_78; CPointRoute *
493BF2:  MOV             R1, R8; CVehicle *
493BF4:  BLX             j__ZN27CTaskComplexDrivePointRouteC2EP8CVehicleRK11CPointRoutefiifi; CTaskComplexDrivePointRoute::CTaskComplexDrivePointRoute(CVehicle *,CPointRoute const&,float,int,int,float,int)
493BF8:  ADD             SP, SP, #0x90
493BFA:  POP.W           {R8}
493BFE:  POP             {R4-R7,PC}
