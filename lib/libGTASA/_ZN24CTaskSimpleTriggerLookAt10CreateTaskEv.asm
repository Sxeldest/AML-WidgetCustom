; =========================================================
; Game Engine Function: _ZN24CTaskSimpleTriggerLookAt10CreateTaskEv
; Address            : 0x49194C - 0x491B04
; =========================================================

49194C:  PUSH            {R4-R7,LR}
49194E:  ADD             R7, SP, #0xC
491950:  PUSH.W          {R8}
491954:  SUB             SP, SP, #0x48
491956:  LDR             R0, =(UseDataFence_ptr - 0x49195C)
491958:  ADD             R0, PC; UseDataFence_ptr
49195A:  LDR             R0, [R0]; UseDataFence
49195C:  LDRB            R4, [R0]
49195E:  CBZ             R4, loc_491974
491960:  LDR             R0, =(UseDataFence_ptr - 0x491968)
491962:  MOVS            R1, #(stderr+2); void *
491964:  ADD             R0, PC; UseDataFence_ptr
491966:  LDR             R5, [R0]; UseDataFence
491968:  MOVS            R0, #0
49196A:  STRB            R0, [R5]
49196C:  ADD             R0, SP, #0x58+var_2C; this
49196E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491972:  STRB            R4, [R5]
491974:  ADD             R0, SP, #0x58+var_18; this
491976:  MOVS            R1, #byte_4; void *
491978:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49197C:  LDR             R0, [SP,#0x58+var_18]; this
49197E:  ADDS            R1, R0, #1; int
491980:  BEQ             loc_49198A
491982:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
491986:  MOV             R8, R0
491988:  B               loc_49198E
49198A:  MOV.W           R8, #0
49198E:  LDR             R0, =(UseDataFence_ptr - 0x491994)
491990:  ADD             R0, PC; UseDataFence_ptr
491992:  LDR             R0, [R0]; UseDataFence
491994:  LDRB            R5, [R0]
491996:  CBZ             R5, loc_4919AC
491998:  LDR             R0, =(UseDataFence_ptr - 0x4919A0)
49199A:  MOVS            R1, #(stderr+2); void *
49199C:  ADD             R0, PC; UseDataFence_ptr
49199E:  LDR             R6, [R0]; UseDataFence
4919A0:  MOVS            R0, #0
4919A2:  STRB            R0, [R6]
4919A4:  ADD             R0, SP, #0x58+var_2C; this
4919A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4919AA:  STRB            R5, [R6]
4919AC:  ADD             R0, SP, #0x58+var_1C; this
4919AE:  MOVS            R1, #byte_4; void *
4919B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4919B4:  LDR             R0, =(UseDataFence_ptr - 0x4919BA)
4919B6:  ADD             R0, PC; UseDataFence_ptr
4919B8:  LDR             R0, [R0]; UseDataFence
4919BA:  LDRB            R5, [R0]
4919BC:  CBZ             R5, loc_4919D2
4919BE:  LDR             R0, =(UseDataFence_ptr - 0x4919C6)
4919C0:  MOVS            R1, #(stderr+2); void *
4919C2:  ADD             R0, PC; UseDataFence_ptr
4919C4:  LDR             R6, [R0]; UseDataFence
4919C6:  MOVS            R0, #0
4919C8:  STRB            R0, [R6]
4919CA:  ADD             R0, SP, #0x58+var_2C; this
4919CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4919D0:  STRB            R5, [R6]
4919D2:  ADD             R0, SP, #0x58+var_20; this
4919D4:  MOVS            R1, #byte_4; void *
4919D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4919DA:  LDR             R0, =(UseDataFence_ptr - 0x4919E0)
4919DC:  ADD             R0, PC; UseDataFence_ptr
4919DE:  LDR             R0, [R0]; UseDataFence
4919E0:  LDRB            R5, [R0]
4919E2:  CBZ             R5, loc_4919F8
4919E4:  LDR             R0, =(UseDataFence_ptr - 0x4919EC)
4919E6:  MOVS            R1, #(stderr+2); void *
4919E8:  ADD             R0, PC; UseDataFence_ptr
4919EA:  LDR             R6, [R0]; UseDataFence
4919EC:  MOVS            R0, #0
4919EE:  STRB            R0, [R6]
4919F0:  ADD             R0, SP, #0x58+var_2C; this
4919F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4919F6:  STRB            R5, [R6]
4919F8:  ADD             R0, SP, #0x58+var_2C; this
4919FA:  MOVS            R1, #(byte_9+3); void *
4919FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A00:  LDR             R0, =(UseDataFence_ptr - 0x491A06)
491A02:  ADD             R0, PC; UseDataFence_ptr
491A04:  LDR             R0, [R0]; UseDataFence
491A06:  LDRB            R5, [R0]
491A08:  CBZ             R5, loc_491A1E
491A0A:  LDR             R0, =(UseDataFence_ptr - 0x491A12)
491A0C:  MOVS            R1, #(stderr+2); void *
491A0E:  ADD             R0, PC; UseDataFence_ptr
491A10:  LDR             R6, [R0]; UseDataFence
491A12:  MOVS            R0, #0
491A14:  STRB            R0, [R6]
491A16:  ADD             R0, SP, #0x58+var_34; this
491A18:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A1C:  STRB            R5, [R6]
491A1E:  SUB.W           R0, R7, #-var_2D; this
491A22:  MOVS            R1, #(stderr+1); void *
491A24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A28:  LDR             R0, =(UseDataFence_ptr - 0x491A2E)
491A2A:  ADD             R0, PC; UseDataFence_ptr
491A2C:  LDR             R0, [R0]; UseDataFence
491A2E:  LDRB            R5, [R0]
491A30:  CBZ             R5, loc_491A46
491A32:  LDR             R0, =(UseDataFence_ptr - 0x491A3A)
491A34:  MOVS            R1, #(stderr+2); void *
491A36:  ADD             R0, PC; UseDataFence_ptr
491A38:  LDR             R6, [R0]; UseDataFence
491A3A:  MOVS            R0, #0
491A3C:  STRB            R0, [R6]
491A3E:  ADD             R0, SP, #0x58+var_34; this
491A40:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A44:  STRB            R5, [R6]
491A46:  ADD             R0, SP, #0x58+var_34; this
491A48:  MOVS            R1, #byte_4; void *
491A4A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A4E:  LDR             R0, =(UseDataFence_ptr - 0x491A54)
491A50:  ADD             R0, PC; UseDataFence_ptr
491A52:  LDR             R0, [R0]; UseDataFence
491A54:  LDRB            R5, [R0]
491A56:  CBZ             R5, loc_491A6C
491A58:  LDR             R0, =(UseDataFence_ptr - 0x491A60)
491A5A:  MOVS            R1, #(stderr+2); void *
491A5C:  ADD             R0, PC; UseDataFence_ptr
491A5E:  LDR             R6, [R0]; UseDataFence
491A60:  MOVS            R0, #0
491A62:  STRB            R0, [R6]
491A64:  ADD             R0, SP, #0x58+var_38; this
491A66:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A6A:  STRB            R5, [R6]
491A6C:  ADD             R0, SP, #0x58+var_38; this
491A6E:  MOVS            R1, #byte_4; void *
491A70:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A74:  LDR             R0, =(UseDataFence_ptr - 0x491A7A)
491A76:  ADD             R0, PC; UseDataFence_ptr
491A78:  LDR             R0, [R0]; UseDataFence
491A7A:  LDRB            R5, [R0]
491A7C:  CBZ             R5, loc_491A94
491A7E:  LDR             R0, =(UseDataFence_ptr - 0x491A86)
491A80:  MOVS            R1, #(stderr+2); void *
491A82:  ADD             R0, PC; UseDataFence_ptr
491A84:  LDR             R6, [R0]; UseDataFence
491A86:  MOVS            R0, #0
491A88:  STRB            R0, [R6]
491A8A:  SUB.W           R0, R7, #-var_12; this
491A8E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A92:  STRB            R5, [R6]
491A94:  SUB.W           R0, R7, #-var_39; this
491A98:  MOVS            R1, #(stderr+1); void *
491A9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491A9E:  LDR             R0, =(UseDataFence_ptr - 0x491AA4)
491AA0:  ADD             R0, PC; UseDataFence_ptr
491AA2:  LDR             R0, [R0]; UseDataFence
491AA4:  LDRB            R5, [R0]
491AA6:  CBZ             R5, loc_491ABE
491AA8:  LDR             R0, =(UseDataFence_ptr - 0x491AB0)
491AAA:  MOVS            R1, #(stderr+2); void *
491AAC:  ADD             R0, PC; UseDataFence_ptr
491AAE:  LDR             R6, [R0]; UseDataFence
491AB0:  MOVS            R0, #0
491AB2:  STRB            R0, [R6]
491AB4:  SUB.W           R0, R7, #-var_12; this
491AB8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491ABC:  STRB            R5, [R6]
491ABE:  SUB.W           R0, R7, #-var_12; this
491AC2:  MOVS            R1, #(stderr+1); void *
491AC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491AC8:  MOVS            R0, #word_30; this
491ACA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491ACE:  LDRD.W          R12, R6, [SP,#0x58+var_2C]
491AD2:  LDRD.W          LR, R3, [SP,#0x58+var_24]; int
491AD6:  LDRSB.W         R5, [R7,#var_12]
491ADA:  LDR             R2, [SP,#0x58+var_1C]; int
491ADC:  LDRB.W          R4, [R7,#var_2D]
491AE0:  VLDR            S0, [SP,#0x58+var_34]
491AE4:  LDR             R1, [SP,#0x58+var_38]
491AE6:  STRD.W          R1, R5, [SP,#0x58+var_44]; int
491AEA:  MOV             R1, R8; int
491AEC:  VSTR            S0, [SP,#0x58+var_48]
491AF0:  STRD.W          R12, R6, [SP,#0x58+var_58]; int
491AF4:  STRD.W          LR, R4, [SP,#0x58+var_50]; int
491AF8:  BLX             j__ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii; CTaskSimpleTriggerLookAt::CTaskSimpleTriggerLookAt(CEntity *,int,int,RwV3d,uchar,float,int,int)
491AFC:  ADD             SP, SP, #0x48 ; 'H'
491AFE:  POP.W           {R8}
491B02:  POP             {R4-R7,PC}
