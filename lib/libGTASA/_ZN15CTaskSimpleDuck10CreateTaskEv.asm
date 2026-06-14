; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck10CreateTaskEv
; Address            : 0x4920F0 - 0x49218A
; =========================================================

4920F0:  PUSH            {R4,R5,R7,LR}
4920F2:  ADD             R7, SP, #8
4920F4:  SUB             SP, SP, #0x10
4920F6:  LDR             R0, =(UseDataFence_ptr - 0x4920FC)
4920F8:  ADD             R0, PC; UseDataFence_ptr
4920FA:  LDR             R0, [R0]; UseDataFence
4920FC:  LDRB            R4, [R0]
4920FE:  CBZ             R4, loc_492116
492100:  LDR             R0, =(UseDataFence_ptr - 0x492108)
492102:  MOVS            R1, #(stderr+2); void *
492104:  ADD             R0, PC; UseDataFence_ptr
492106:  LDR             R5, [R0]; UseDataFence
492108:  MOVS            R0, #0
49210A:  STRB            R0, [R5]
49210C:  SUB.W           R0, R7, #-var_E; this
492110:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492114:  STRB            R4, [R5]
492116:  SUB.W           R0, R7, #-var_F; this
49211A:  MOVS            R1, #(stderr+1); void *
49211C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492120:  LDR             R0, =(UseDataFence_ptr - 0x492126)
492122:  ADD             R0, PC; UseDataFence_ptr
492124:  LDR             R0, [R0]; UseDataFence
492126:  LDRB            R4, [R0]
492128:  CBZ             R4, loc_49213E
49212A:  LDR             R0, =(UseDataFence_ptr - 0x492132)
49212C:  MOVS            R1, #(stderr+2); void *
49212E:  ADD             R0, PC; UseDataFence_ptr
492130:  LDR             R5, [R0]; UseDataFence
492132:  MOVS            R0, #0
492134:  STRB            R0, [R5]
492136:  ADD             R0, SP, #0x18+var_C; this
492138:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49213C:  STRB            R4, [R5]
49213E:  SUB.W           R0, R7, #-var_12; this
492142:  MOVS            R1, #(stderr+2); void *
492144:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492148:  LDR             R0, =(UseDataFence_ptr - 0x49214E)
49214A:  ADD             R0, PC; UseDataFence_ptr
49214C:  LDR             R0, [R0]; UseDataFence
49214E:  LDRB            R4, [R0]
492150:  CBZ             R4, loc_492168
492152:  LDR             R0, =(UseDataFence_ptr - 0x49215A)
492154:  MOVS            R1, #(stderr+2); void *
492156:  ADD             R0, PC; UseDataFence_ptr
492158:  LDR             R5, [R0]; UseDataFence
49215A:  MOVS            R0, #0
49215C:  STRB            R0, [R5]
49215E:  SUB.W           R0, R7, #-var_A; this
492162:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492166:  STRB            R4, [R5]
492168:  ADD             R0, SP, #0x18+var_14; this
49216A:  MOVS            R1, #(stderr+2); void *
49216C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492170:  MOVS            R0, #word_28; this
492172:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492176:  LDRSH.W         R3, [SP,#0x18+var_14]; __int16
49217A:  LDRH.W          R2, [R7,#var_12]; unsigned __int16
49217E:  LDRB.W          R1, [R7,#var_F]; unsigned __int8
492182:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
492186:  ADD             SP, SP, #0x10
492188:  POP             {R4,R5,R7,PC}
