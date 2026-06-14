; =========================================================
; Game Engine Function: _ZN15CTaskComplexDie10CreateTaskEv
; Address            : 0x4910C4 - 0x4911DC
; =========================================================

4910C4:  PUSH            {R4,R5,R7,LR}
4910C6:  ADD             R7, SP, #8
4910C8:  SUB             SP, SP, #0x30; float
4910CA:  LDR             R0, =(UseDataFence_ptr - 0x4910D0)
4910CC:  ADD             R0, PC; UseDataFence_ptr
4910CE:  LDR             R0, [R0]; UseDataFence
4910D0:  LDRB            R4, [R0]
4910D2:  CBZ             R4, loc_4910E8
4910D4:  LDR             R0, =(UseDataFence_ptr - 0x4910DC)
4910D6:  MOVS            R1, #(stderr+2); void *
4910D8:  ADD             R0, PC; UseDataFence_ptr
4910DA:  LDR             R5, [R0]; UseDataFence
4910DC:  MOVS            R0, #0
4910DE:  STRB            R0, [R5]
4910E0:  ADD             R0, SP, #0x38+var_C; this
4910E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4910E6:  STRB            R4, [R5]
4910E8:  ADD             R0, SP, #0x38+var_C; this
4910EA:  MOVS            R1, #byte_4; void *
4910EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4910F0:  LDR             R0, =(UseDataFence_ptr - 0x4910F6)
4910F2:  ADD             R0, PC; UseDataFence_ptr
4910F4:  LDR             R0, [R0]; UseDataFence
4910F6:  LDRB            R4, [R0]
4910F8:  CBZ             R4, loc_49110E
4910FA:  LDR             R0, =(UseDataFence_ptr - 0x491102)
4910FC:  MOVS            R1, #(stderr+2); void *
4910FE:  ADD             R0, PC; UseDataFence_ptr
491100:  LDR             R5, [R0]; UseDataFence
491102:  MOVS            R0, #0
491104:  STRB            R0, [R5]
491106:  ADD             R0, SP, #0x38+var_10; this
491108:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49110C:  STRB            R4, [R5]
49110E:  ADD             R0, SP, #0x38+var_10; this
491110:  MOVS            R1, #byte_4; void *
491112:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491116:  LDR             R0, =(UseDataFence_ptr - 0x49111C)
491118:  ADD             R0, PC; UseDataFence_ptr
49111A:  LDR             R0, [R0]; UseDataFence
49111C:  LDRB            R4, [R0]
49111E:  CBZ             R4, loc_491134
491120:  LDR             R0, =(UseDataFence_ptr - 0x491128)
491122:  MOVS            R1, #(stderr+2); void *
491124:  ADD             R0, PC; UseDataFence_ptr
491126:  LDR             R5, [R0]; UseDataFence
491128:  MOVS            R0, #0
49112A:  STRB            R0, [R5]
49112C:  ADD             R0, SP, #0x38+var_14; this
49112E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491132:  STRB            R4, [R5]
491134:  ADD             R0, SP, #0x38+var_14; this
491136:  MOVS            R1, #byte_4; void *
491138:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49113C:  LDR             R0, =(UseDataFence_ptr - 0x491142)
49113E:  ADD             R0, PC; UseDataFence_ptr
491140:  LDR             R0, [R0]; UseDataFence
491142:  LDRB            R4, [R0]
491144:  CBZ             R4, loc_49115A
491146:  LDR             R0, =(UseDataFence_ptr - 0x49114E)
491148:  MOVS            R1, #(stderr+2); void *
49114A:  ADD             R0, PC; UseDataFence_ptr
49114C:  LDR             R5, [R0]; UseDataFence
49114E:  MOVS            R0, #0
491150:  STRB            R0, [R5]
491152:  ADD             R0, SP, #0x38+var_18; this
491154:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491158:  STRB            R4, [R5]
49115A:  ADD             R0, SP, #0x38+var_18; this
49115C:  MOVS            R1, #byte_4; void *
49115E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491162:  LDR             R0, =(UseDataFence_ptr - 0x491168)
491164:  ADD             R0, PC; UseDataFence_ptr
491166:  LDR             R0, [R0]; UseDataFence
491168:  LDRB            R4, [R0]
49116A:  CBZ             R4, loc_491180
49116C:  LDR             R0, =(UseDataFence_ptr - 0x491174)
49116E:  MOVS            R1, #(stderr+2); void *
491170:  ADD             R0, PC; UseDataFence_ptr
491172:  LDR             R5, [R0]; UseDataFence
491174:  MOVS            R0, #0
491176:  STRB            R0, [R5]
491178:  ADD             R0, SP, #0x38+var_1C; this
49117A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49117E:  STRB            R4, [R5]
491180:  ADD             R0, SP, #0x38+var_1C; this
491182:  MOVS            R1, #byte_4; void *
491184:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491188:  LDR             R0, =(UseDataFence_ptr - 0x49118E)
49118A:  ADD             R0, PC; UseDataFence_ptr
49118C:  LDR             R0, [R0]; UseDataFence
49118E:  LDRB            R4, [R0]
491190:  CBZ             R4, loc_4911A6
491192:  LDR             R0, =(UseDataFence_ptr - 0x49119A)
491194:  MOVS            R1, #(stderr+2); void *
491196:  ADD             R0, PC; UseDataFence_ptr
491198:  LDR             R5, [R0]; UseDataFence
49119A:  MOVS            R0, #0
49119C:  STRB            R0, [R5]
49119E:  ADD             R0, SP, #0x38+var_20; this
4911A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4911A4:  STRB            R4, [R5]
4911A6:  ADD             R0, SP, #0x38+var_20; this
4911A8:  MOVS            R1, #byte_4; void *
4911AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4911AE:  MOVS            R0, #word_28; this
4911B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4911B4:  LDRD.W          R3, R2, [SP,#0x38+var_14]; int
4911B8:  MOVS            R5, #0
4911BA:  LDR             R1, [SP,#0x38+var_C]; int
4911BC:  VLDR            S0, [SP,#0x38+var_18]
4911C0:  VLDR            S2, [SP,#0x38+var_1C]
4911C4:  STRD.W          R5, R5, [SP,#0x38+var_30]; int
4911C8:  STRD.W          R5, R5, [SP,#0x38+var_28]; int
4911CC:  VSTR            S0, [SP,#0x38+var_38]
4911D0:  VSTR            S2, [SP,#0x38+var_34]
4911D4:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
4911D8:  ADD             SP, SP, #0x30 ; '0'
4911DA:  POP             {R4,R5,R7,PC}
