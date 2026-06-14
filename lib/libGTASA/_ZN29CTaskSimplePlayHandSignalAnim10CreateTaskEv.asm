; =========================================================
; Game Engine Function: _ZN29CTaskSimplePlayHandSignalAnim10CreateTaskEv
; Address            : 0x4921A4 - 0x49226C
; =========================================================

4921A4:  PUSH            {R4,R5,R7,LR}
4921A6:  ADD             R7, SP, #8
4921A8:  SUB             SP, SP, #0x18
4921AA:  LDR             R0, =(UseDataFence_ptr - 0x4921B0)
4921AC:  ADD             R0, PC; UseDataFence_ptr
4921AE:  LDR             R0, [R0]; UseDataFence
4921B0:  LDRB            R4, [R0]
4921B2:  CBZ             R4, loc_4921C8
4921B4:  LDR             R0, =(UseDataFence_ptr - 0x4921BC)
4921B6:  MOVS            R1, #(stderr+2); void *
4921B8:  ADD             R0, PC; UseDataFence_ptr
4921BA:  LDR             R5, [R0]; UseDataFence
4921BC:  MOVS            R0, #0
4921BE:  STRB            R0, [R5]
4921C0:  ADD             R0, SP, #0x20+var_10; this
4921C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4921C6:  STRB            R4, [R5]
4921C8:  ADD             R0, SP, #0x20+var_10; this
4921CA:  MOVS            R1, #byte_4; void *
4921CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4921D0:  LDR             R0, =(UseDataFence_ptr - 0x4921D6)
4921D2:  ADD             R0, PC; UseDataFence_ptr
4921D4:  LDR             R0, [R0]; UseDataFence
4921D6:  LDRB            R4, [R0]
4921D8:  CBZ             R4, loc_4921EE
4921DA:  LDR             R0, =(UseDataFence_ptr - 0x4921E2)
4921DC:  MOVS            R1, #(stderr+2); void *
4921DE:  ADD             R0, PC; UseDataFence_ptr
4921E0:  LDR             R5, [R0]; UseDataFence
4921E2:  MOVS            R0, #0
4921E4:  STRB            R0, [R5]
4921E6:  ADD             R0, SP, #0x20+var_14; this
4921E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4921EC:  STRB            R4, [R5]
4921EE:  ADD             R0, SP, #0x20+var_14; this
4921F0:  MOVS            R1, #byte_4; void *
4921F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4921F6:  LDR             R0, =(UseDataFence_ptr - 0x4921FC)
4921F8:  ADD             R0, PC; UseDataFence_ptr
4921FA:  LDR             R0, [R0]; UseDataFence
4921FC:  LDRB            R4, [R0]
4921FE:  CBZ             R4, loc_492216
492200:  LDR             R0, =(UseDataFence_ptr - 0x492208)
492202:  MOVS            R1, #(stderr+2); void *
492204:  ADD             R0, PC; UseDataFence_ptr
492206:  LDR             R5, [R0]; UseDataFence
492208:  MOVS            R0, #0
49220A:  STRB            R0, [R5]
49220C:  SUB.W           R0, R7, #-var_A; this
492210:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492214:  STRB            R4, [R5]
492216:  SUB.W           R0, R7, #-var_15; this
49221A:  MOVS            R1, #(stderr+1); void *
49221C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492220:  LDR             R0, =(UseDataFence_ptr - 0x492226)
492222:  ADD             R0, PC; UseDataFence_ptr
492224:  LDR             R0, [R0]; UseDataFence
492226:  LDRB            R4, [R0]
492228:  CBZ             R4, loc_492240
49222A:  LDR             R0, =(UseDataFence_ptr - 0x492232)
49222C:  MOVS            R1, #(stderr+2); void *
49222E:  ADD             R0, PC; UseDataFence_ptr
492230:  LDR             R5, [R0]; UseDataFence
492232:  MOVS            R0, #0
492234:  STRB            R0, [R5]
492236:  SUB.W           R0, R7, #-var_A; this
49223A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49223E:  STRB            R4, [R5]
492240:  SUB.W           R0, R7, #-var_A; this
492244:  MOVS            R1, #(stderr+1); void *
492246:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49224A:  MOVS            R0, #dword_24; this
49224C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492250:  LDRB.W          R5, [R7,#var_A]
492254:  LDR             R1, [SP,#0x20+var_10]
492256:  LDRB.W          R3, [R7,#var_15]
49225A:  CMP             R5, #0
49225C:  LDR             R2, [SP,#0x20+var_14]
49225E:  IT NE
492260:  MOVNE           R5, #1
492262:  STR             R5, [SP,#0x20+var_20]
492264:  BLX             j__ZN29CTaskSimplePlayHandSignalAnimC2E11AnimationIdfhb; CTaskSimplePlayHandSignalAnim::CTaskSimplePlayHandSignalAnim(AnimationId,float,uchar,bool)
492268:  ADD             SP, SP, #0x18
49226A:  POP             {R4,R5,R7,PC}
