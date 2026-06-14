; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute10CreateTaskEv
; Address            : 0x4949B8 - 0x494B2A
; =========================================================

4949B8:  PUSH            {R4,R5,R7,LR}
4949BA:  ADD             R7, SP, #8
4949BC:  SUB             SP, SP, #0x40; float
4949BE:  LDR             R0, =(UseDataFence_ptr - 0x4949C4)
4949C0:  ADD             R0, PC; UseDataFence_ptr
4949C2:  LDR             R0, [R0]; UseDataFence
4949C4:  LDRB            R4, [R0]
4949C6:  CBZ             R4, loc_4949DC
4949C8:  LDR             R0, =(UseDataFence_ptr - 0x4949D0)
4949CA:  MOVS            R1, #(stderr+2); void *
4949CC:  ADD             R0, PC; UseDataFence_ptr
4949CE:  LDR             R5, [R0]; UseDataFence
4949D0:  MOVS            R0, #0
4949D2:  STRB            R0, [R5]
4949D4:  ADD             R0, SP, #0x48+var_18; this
4949D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4949DA:  STRB            R4, [R5]
4949DC:  ADD             R0, SP, #0x48+var_C; this
4949DE:  MOVS            R1, #byte_4; void *
4949E0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4949E4:  LDR             R0, =(UseDataFence_ptr - 0x4949EA)
4949E6:  ADD             R0, PC; UseDataFence_ptr
4949E8:  LDR             R0, [R0]; UseDataFence
4949EA:  LDRB            R4, [R0]
4949EC:  CBZ             R4, loc_494A02
4949EE:  LDR             R0, =(UseDataFence_ptr - 0x4949F6)
4949F0:  MOVS            R1, #(stderr+2); void *
4949F2:  ADD             R0, PC; UseDataFence_ptr
4949F4:  LDR             R5, [R0]; UseDataFence
4949F6:  MOVS            R0, #0
4949F8:  STRB            R0, [R5]
4949FA:  ADD             R0, SP, #0x48+var_18; this
4949FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A00:  STRB            R4, [R5]
494A02:  ADD             R0, SP, #0x48+var_18; this
494A04:  MOVS            R1, #(byte_9+3); void *
494A06:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A0A:  LDR             R0, =(UseDataFence_ptr - 0x494A10)
494A0C:  ADD             R0, PC; UseDataFence_ptr
494A0E:  LDR             R0, [R0]; UseDataFence
494A10:  LDRB            R4, [R0]
494A12:  CBZ             R4, loc_494A28
494A14:  LDR             R0, =(UseDataFence_ptr - 0x494A1C)
494A16:  MOVS            R1, #(stderr+2); void *
494A18:  ADD             R0, PC; UseDataFence_ptr
494A1A:  LDR             R5, [R0]; UseDataFence
494A1C:  MOVS            R0, #0
494A1E:  STRB            R0, [R5]
494A20:  ADD             R0, SP, #0x48+var_1C; this
494A22:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A26:  STRB            R4, [R5]
494A28:  ADD             R0, SP, #0x48+var_1C; this
494A2A:  MOVS            R1, #byte_4; void *
494A2C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A30:  LDR             R0, =(UseDataFence_ptr - 0x494A36)
494A32:  ADD             R0, PC; UseDataFence_ptr
494A34:  LDR             R0, [R0]; UseDataFence
494A36:  LDRB            R4, [R0]
494A38:  CBZ             R4, loc_494A4E
494A3A:  LDR             R0, =(UseDataFence_ptr - 0x494A42)
494A3C:  MOVS            R1, #(stderr+2); void *
494A3E:  ADD             R0, PC; UseDataFence_ptr
494A40:  LDR             R5, [R0]; UseDataFence
494A42:  MOVS            R0, #0
494A44:  STRB            R0, [R5]
494A46:  ADD             R0, SP, #0x48+var_20; this
494A48:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A4C:  STRB            R4, [R5]
494A4E:  ADD             R0, SP, #0x48+var_20; this
494A50:  MOVS            R1, #byte_4; void *
494A52:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A56:  LDR             R0, =(UseDataFence_ptr - 0x494A5C)
494A58:  ADD             R0, PC; UseDataFence_ptr
494A5A:  LDR             R0, [R0]; UseDataFence
494A5C:  LDRB            R4, [R0]
494A5E:  CBZ             R4, loc_494A74
494A60:  LDR             R0, =(UseDataFence_ptr - 0x494A68)
494A62:  MOVS            R1, #(stderr+2); void *
494A64:  ADD             R0, PC; UseDataFence_ptr
494A66:  LDR             R5, [R0]; UseDataFence
494A68:  MOVS            R0, #0
494A6A:  STRB            R0, [R5]
494A6C:  ADD             R0, SP, #0x48+var_24; this
494A6E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A72:  STRB            R4, [R5]
494A74:  ADD             R0, SP, #0x48+var_24; this
494A76:  MOVS            R1, #byte_4; void *
494A78:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A7C:  LDR             R0, =(UseDataFence_ptr - 0x494A82)
494A7E:  ADD             R0, PC; UseDataFence_ptr
494A80:  LDR             R0, [R0]; UseDataFence
494A82:  LDRB            R4, [R0]
494A84:  CBZ             R4, loc_494A9A
494A86:  LDR             R0, =(UseDataFence_ptr - 0x494A8E)
494A88:  MOVS            R1, #(stderr+2); void *
494A8A:  ADD             R0, PC; UseDataFence_ptr
494A8C:  LDR             R5, [R0]; UseDataFence
494A8E:  MOVS            R0, #0
494A90:  STRB            R0, [R5]
494A92:  ADD             R0, SP, #0x48+var_28; this
494A94:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494A98:  STRB            R4, [R5]
494A9A:  ADD             R0, SP, #0x48+var_28; this
494A9C:  MOVS            R1, #byte_4; void *
494A9E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494AA2:  LDR             R0, =(UseDataFence_ptr - 0x494AA8)
494AA4:  ADD             R0, PC; UseDataFence_ptr
494AA6:  LDR             R0, [R0]; UseDataFence
494AA8:  LDRB            R4, [R0]
494AAA:  CBZ             R4, loc_494AC0
494AAC:  LDR             R0, =(UseDataFence_ptr - 0x494AB4)
494AAE:  MOVS            R1, #(stderr+2); void *
494AB0:  ADD             R0, PC; UseDataFence_ptr
494AB2:  LDR             R5, [R0]; UseDataFence
494AB4:  MOVS            R0, #0
494AB6:  STRB            R0, [R5]
494AB8:  ADD             R0, SP, #0x48+var_2C; this
494ABA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494ABE:  STRB            R4, [R5]
494AC0:  ADD             R0, SP, #0x48+var_2C; this
494AC2:  MOVS            R1, #byte_4; void *
494AC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494AC8:  LDR             R0, =(UseDataFence_ptr - 0x494ACE)
494ACA:  ADD             R0, PC; UseDataFence_ptr
494ACC:  LDR             R0, [R0]; UseDataFence
494ACE:  LDRB            R4, [R0]
494AD0:  CBZ             R4, loc_494AE6
494AD2:  LDR             R0, =(UseDataFence_ptr - 0x494ADA)
494AD4:  MOVS            R1, #(stderr+2); void *
494AD6:  ADD             R0, PC; UseDataFence_ptr
494AD8:  LDR             R5, [R0]; UseDataFence
494ADA:  MOVS            R0, #0
494ADC:  STRB            R0, [R5]
494ADE:  ADD             R0, SP, #0x48+var_30; this
494AE0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494AE4:  STRB            R4, [R5]
494AE6:  ADD             R0, SP, #0x48+var_30; this
494AE8:  MOVS            R1, #byte_4; void *
494AEA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494AEE:  MOVS            R0, #dword_60; this
494AF0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494AF4:  LDR             R1, [SP,#0x48+var_C]; int
494AF6:  LDR             R3, [SP,#0x48+var_1C]; float
494AF8:  VLDR            S0, [SP,#0x48+var_20]
494AFC:  VLDR            S2, [SP,#0x48+var_24]
494B00:  LDR             R2, [SP,#0x48+var_28]
494B02:  LDRD.W          R4, R5, [SP,#0x48+var_30]
494B06:  CMP             R4, #0
494B08:  IT NE
494B0A:  MOVNE           R4, #1
494B0C:  CMP             R2, #0
494B0E:  IT NE
494B10:  MOVNE           R2, #1
494B12:  STRD.W          R2, R5, [SP,#0x48+var_40]; bool
494B16:  ADD             R2, SP, #0x48+var_18; CVector *
494B18:  STR             R4, [SP,#0x48+var_38]; bool
494B1A:  VSTR            S0, [SP,#0x48+var_48]
494B1E:  VSTR            S2, [SP,#0x48+var_44]
494B22:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
494B26:  ADD             SP, SP, #0x40 ; '@'
494B28:  POP             {R4,R5,R7,PC}
