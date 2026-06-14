; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChat10CreateTaskEv
; Address            : 0x496A94 - 0x496C46
; =========================================================

496A94:  PUSH            {R4-R7,LR}
496A96:  ADD             R7, SP, #0xC
496A98:  PUSH.W          {R8}
496A9C:  SUB             SP, SP, #0x60
496A9E:  LDR             R0, =(UseDataFence_ptr - 0x496AA6)
496AA0:  LDR             R1, =(__stack_chk_guard_ptr - 0x496AA8)
496AA2:  ADD             R0, PC; UseDataFence_ptr
496AA4:  ADD             R1, PC; __stack_chk_guard_ptr
496AA6:  LDR             R0, [R0]; UseDataFence
496AA8:  LDR             R1, [R1]; __stack_chk_guard
496AAA:  LDRB            R4, [R0]
496AAC:  LDR             R0, [R1]
496AAE:  CMP             R4, #0
496AB0:  STR             R0, [SP,#0x70+var_14]
496AB2:  BEQ             loc_496AC8
496AB4:  LDR             R0, =(UseDataFence_ptr - 0x496ABC)
496AB6:  MOVS            R1, #(stderr+2); void *
496AB8:  ADD             R0, PC; UseDataFence_ptr
496ABA:  LDR             R5, [R0]; UseDataFence
496ABC:  MOVS            R0, #0
496ABE:  STRB            R0, [R5]
496AC0:  ADD             R0, SP, #0x70+var_34; this
496AC2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496AC6:  STRB            R4, [R5]
496AC8:  ADD             R0, SP, #0x70+var_38; this
496ACA:  MOVS            R1, #byte_4; void *
496ACC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496AD0:  LDR             R0, [SP,#0x70+var_38]; this
496AD2:  ADDS            R1, R0, #1; int
496AD4:  BEQ             loc_496ADE
496AD6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
496ADA:  MOV             R8, R0
496ADC:  B               loc_496AE2
496ADE:  MOV.W           R8, #0
496AE2:  LDR             R0, =(UseDataFence_ptr - 0x496AE8)
496AE4:  ADD             R0, PC; UseDataFence_ptr
496AE6:  LDR             R0, [R0]; UseDataFence
496AE8:  LDRB            R5, [R0]
496AEA:  CBZ             R5, loc_496B00
496AEC:  LDR             R0, =(UseDataFence_ptr - 0x496AF4)
496AEE:  MOVS            R1, #(stderr+2); void *
496AF0:  ADD             R0, PC; UseDataFence_ptr
496AF2:  LDR             R6, [R0]; UseDataFence
496AF4:  MOVS            R0, #0
496AF6:  STRB            R0, [R6]
496AF8:  ADD             R0, SP, #0x70+var_34; this
496AFA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496AFE:  STRB            R5, [R6]
496B00:  ADD             R0, SP, #0x70+var_34; this
496B02:  MOVS            R1, #dword_20; void *
496B04:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B08:  LDR             R0, =(UseDataFence_ptr - 0x496B0E)
496B0A:  ADD             R0, PC; UseDataFence_ptr
496B0C:  LDR             R0, [R0]; UseDataFence
496B0E:  LDRB            R5, [R0]
496B10:  CBZ             R5, loc_496B26
496B12:  LDR             R0, =(UseDataFence_ptr - 0x496B1A)
496B14:  MOVS            R1, #(stderr+2); void *
496B16:  ADD             R0, PC; UseDataFence_ptr
496B18:  LDR             R6, [R0]; UseDataFence
496B1A:  MOVS            R0, #0
496B1C:  STRB            R0, [R6]
496B1E:  ADD             R0, SP, #0x70+var_50; this
496B20:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B24:  STRB            R5, [R6]
496B26:  SUB.W           R0, R7, #-var_39; this
496B2A:  MOVS            R1, #(stderr+1); void *
496B2C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B30:  LDR             R0, =(UseDataFence_ptr - 0x496B36)
496B32:  ADD             R0, PC; UseDataFence_ptr
496B34:  LDR             R0, [R0]; UseDataFence
496B36:  LDRB            R5, [R0]
496B38:  CBZ             R5, loc_496B4E
496B3A:  LDR             R0, =(UseDataFence_ptr - 0x496B42)
496B3C:  MOVS            R1, #(stderr+2); void *
496B3E:  ADD             R0, PC; UseDataFence_ptr
496B40:  LDR             R6, [R0]; UseDataFence
496B42:  MOVS            R0, #0
496B44:  STRB            R0, [R6]
496B46:  ADD             R0, SP, #0x70+var_50; this
496B48:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B4C:  STRB            R5, [R6]
496B4E:  ADD             R0, SP, #0x70+var_40; this
496B50:  MOVS            R1, #byte_4; void *
496B52:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B56:  LDR             R0, =(UseDataFence_ptr - 0x496B5C)
496B58:  ADD             R0, PC; UseDataFence_ptr
496B5A:  LDR             R0, [R0]; UseDataFence
496B5C:  LDRB            R5, [R0]
496B5E:  CBZ             R5, loc_496B74
496B60:  LDR             R0, =(UseDataFence_ptr - 0x496B68)
496B62:  MOVS            R1, #(stderr+2); void *
496B64:  ADD             R0, PC; UseDataFence_ptr
496B66:  LDR             R6, [R0]; UseDataFence
496B68:  MOVS            R0, #0
496B6A:  STRB            R0, [R6]
496B6C:  ADD             R0, SP, #0x70+var_50; this
496B6E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B72:  STRB            R5, [R6]
496B74:  SUB.W           R0, R7, #-var_41; this
496B78:  MOVS            R1, #(stderr+1); void *
496B7A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B7E:  LDR             R0, =(UseDataFence_ptr - 0x496B84)
496B80:  ADD             R0, PC; UseDataFence_ptr
496B82:  LDR             R0, [R0]; UseDataFence
496B84:  LDRB            R5, [R0]
496B86:  CBZ             R5, loc_496B9C
496B88:  LDR             R0, =(UseDataFence_ptr - 0x496B90)
496B8A:  MOVS            R1, #(stderr+2); void *
496B8C:  ADD             R0, PC; UseDataFence_ptr
496B8E:  LDR             R6, [R0]; UseDataFence
496B90:  MOVS            R0, #0
496B92:  STRB            R0, [R6]
496B94:  ADD             R0, SP, #0x70+var_50; this
496B96:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496B9A:  STRB            R5, [R6]
496B9C:  SUB.W           R0, R7, #-var_42; this
496BA0:  MOVS            R1, #(stderr+1); void *
496BA2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496BA6:  LDR             R0, =(UseDataFence_ptr - 0x496BAC)
496BA8:  ADD             R0, PC; UseDataFence_ptr
496BAA:  LDR             R0, [R0]; UseDataFence
496BAC:  LDRB            R5, [R0]
496BAE:  CBZ             R5, loc_496BC4
496BB0:  LDR             R0, =(UseDataFence_ptr - 0x496BB8)
496BB2:  MOVS            R1, #(stderr+2); void *
496BB4:  ADD             R0, PC; UseDataFence_ptr
496BB6:  LDR             R6, [R0]; UseDataFence
496BB8:  MOVS            R0, #0
496BBA:  STRB            R0, [R6]
496BBC:  ADD             R0, SP, #0x70+var_50; this
496BBE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496BC2:  STRB            R5, [R6]
496BC4:  SUB.W           R0, R7, #-var_43; this
496BC8:  MOVS            R1, #(stderr+1); void *
496BCA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496BCE:  LDR             R0, =(UseDataFence_ptr - 0x496BD4)
496BD0:  ADD             R0, PC; UseDataFence_ptr
496BD2:  LDR             R0, [R0]; UseDataFence
496BD4:  LDRB            R5, [R0]
496BD6:  CBZ             R5, loc_496BEC
496BD8:  LDR             R0, =(UseDataFence_ptr - 0x496BE0)
496BDA:  MOVS            R1, #(stderr+2); void *
496BDC:  ADD             R0, PC; UseDataFence_ptr
496BDE:  LDR             R6, [R0]; UseDataFence
496BE0:  MOVS            R0, #0
496BE2:  STRB            R0, [R6]
496BE4:  ADD             R0, SP, #0x70+var_50; this
496BE6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496BEA:  STRB            R5, [R6]
496BEC:  ADD             R0, SP, #0x70+var_50; this
496BEE:  MOVS            R1, #(byte_9+3); void *
496BF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496BF4:  MOVS            R0, #dword_78; this
496BF6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496BFA:  LDRD.W          R12, R2, [SP,#0x70+var_50]
496BFE:  LDRB.W          R4, [R7,#var_42]
496C02:  LDR             R6, [SP,#0x70+var_48]
496C04:  LDRB.W          R3, [R7,#var_39]
496C08:  LDRSB.W         R5, [R7,#var_41]
496C0C:  LDRB.W          R1, [R7,#var_43]
496C10:  VLDR            S0, [SP,#0x70+var_40]
496C14:  STRD.W          R5, R4, [SP,#0x70+var_6C]
496C18:  STRD.W          R1, R12, [SP,#0x70+var_64]
496C1C:  ADD             R1, SP, #0x70+var_34
496C1E:  STRD.W          R2, R6, [SP,#0x70+var_5C]
496C22:  MOV             R2, R8
496C24:  VSTR            S0, [SP,#0x70+var_70]
496C28:  BLX             j__ZN23CTaskComplexPartnerChatC2EPcP4CPedhfihh7CVector; CTaskComplexPartnerChat::CTaskComplexPartnerChat(char *,CPed *,uchar,float,int,uchar,uchar,CVector)
496C2C:  LDR             R1, =(__stack_chk_guard_ptr - 0x496C34)
496C2E:  LDR             R2, [SP,#0x70+var_14]
496C30:  ADD             R1, PC; __stack_chk_guard_ptr
496C32:  LDR             R1, [R1]; __stack_chk_guard
496C34:  LDR             R1, [R1]
496C36:  SUBS            R1, R1, R2
496C38:  ITTT EQ
496C3A:  ADDEQ           SP, SP, #0x60 ; '`'
496C3C:  POPEQ.W         {R8}
496C40:  POPEQ           {R4-R7,PC}
496C42:  BLX             __stack_chk_fail
