; =========================================================
; Game Engine Function: _ZN27CTaskComplexLeaveCarAndFlee10CreateTaskEv
; Address            : 0x493244 - 0x493342
; =========================================================

493244:  PUSH            {R4-R7,LR}
493246:  ADD             R7, SP, #0xC
493248:  PUSH.W          {R11}
49324C:  SUB             SP, SP, #0x28
49324E:  LDR             R0, =(UseDataFence_ptr - 0x493254)
493250:  ADD             R0, PC; UseDataFence_ptr
493252:  LDR             R0, [R0]; UseDataFence
493254:  LDRB            R4, [R0]
493256:  CBZ             R4, loc_49326C
493258:  LDR             R0, =(UseDataFence_ptr - 0x493260)
49325A:  MOVS            R1, #(stderr+2); void *
49325C:  ADD             R0, PC; UseDataFence_ptr
49325E:  LDR             R5, [R0]; UseDataFence
493260:  MOVS            R0, #0
493262:  STRB            R0, [R5]
493264:  ADD             R0, SP, #0x38+var_24; this
493266:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49326A:  STRB            R4, [R5]
49326C:  ADD             R0, SP, #0x38+var_18; this
49326E:  MOVS            R1, #byte_4; void *
493270:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493274:  LDR             R0, [SP,#0x38+var_18]; this
493276:  ADDS            R1, R0, #1; int
493278:  BEQ             loc_493282
49327A:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49327E:  MOV             R4, R0
493280:  B               loc_493284
493282:  MOVS            R4, #0
493284:  LDR             R0, =(UseDataFence_ptr - 0x49328A)
493286:  ADD             R0, PC; UseDataFence_ptr
493288:  LDR             R0, [R0]; UseDataFence
49328A:  LDRB            R5, [R0]
49328C:  CBZ             R5, loc_4932A2
49328E:  LDR             R0, =(UseDataFence_ptr - 0x493296)
493290:  MOVS            R1, #(stderr+2); void *
493292:  ADD             R0, PC; UseDataFence_ptr
493294:  LDR             R6, [R0]; UseDataFence
493296:  MOVS            R0, #0
493298:  STRB            R0, [R6]
49329A:  ADD             R0, SP, #0x38+var_24; this
49329C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932A0:  STRB            R5, [R6]
4932A2:  ADD             R0, SP, #0x38+var_24; this
4932A4:  MOVS            R1, #(byte_9+3); void *
4932A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932AA:  LDR             R0, =(UseDataFence_ptr - 0x4932B0)
4932AC:  ADD             R0, PC; UseDataFence_ptr
4932AE:  LDR             R0, [R0]; UseDataFence
4932B0:  LDRB            R5, [R0]
4932B2:  CBZ             R5, loc_4932C8
4932B4:  LDR             R0, =(UseDataFence_ptr - 0x4932BC)
4932B6:  MOVS            R1, #(stderr+2); void *
4932B8:  ADD             R0, PC; UseDataFence_ptr
4932BA:  LDR             R6, [R0]; UseDataFence
4932BC:  MOVS            R0, #0
4932BE:  STRB            R0, [R6]
4932C0:  ADD             R0, SP, #0x38+var_28; this
4932C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932C6:  STRB            R5, [R6]
4932C8:  ADD             R0, SP, #0x38+var_28; this
4932CA:  MOVS            R1, #byte_4; void *
4932CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932D0:  LDR             R0, =(UseDataFence_ptr - 0x4932D6)
4932D2:  ADD             R0, PC; UseDataFence_ptr
4932D4:  LDR             R0, [R0]; UseDataFence
4932D6:  LDRB            R5, [R0]
4932D8:  CBZ             R5, loc_4932EE
4932DA:  LDR             R0, =(UseDataFence_ptr - 0x4932E2)
4932DC:  MOVS            R1, #(stderr+2); void *
4932DE:  ADD             R0, PC; UseDataFence_ptr
4932E0:  LDR             R6, [R0]; UseDataFence
4932E2:  MOVS            R0, #0
4932E4:  STRB            R0, [R6]
4932E6:  ADD             R0, SP, #0x38+var_2C; this
4932E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932EC:  STRB            R5, [R6]
4932EE:  ADD             R0, SP, #0x38+var_2C; this
4932F0:  MOVS            R1, #byte_4; void *
4932F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4932F6:  LDR             R0, =(UseDataFence_ptr - 0x4932FC)
4932F8:  ADD             R0, PC; UseDataFence_ptr
4932FA:  LDR             R0, [R0]; UseDataFence
4932FC:  LDRB            R5, [R0]
4932FE:  CBZ             R5, loc_493316
493300:  LDR             R0, =(UseDataFence_ptr - 0x493308)
493302:  MOVS            R1, #(stderr+2); void *
493304:  ADD             R0, PC; UseDataFence_ptr
493306:  LDR             R6, [R0]; UseDataFence
493308:  MOVS            R0, #0
49330A:  STRB            R0, [R6]
49330C:  SUB.W           R0, R7, #-var_12; this
493310:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493314:  STRB            R5, [R6]
493316:  SUB.W           R0, R7, #-var_12; this
49331A:  MOVS            R1, #(stderr+1); void *
49331C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493320:  MOVS            R0, #word_28; this
493322:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493326:  LDRD.W          R1, R3, [SP,#0x38+var_2C]; int
49332A:  LDRB.W          R2, [R7,#var_12]
49332E:  STRD.W          R1, R2, [SP,#0x38+var_38]; int
493332:  ADD             R2, SP, #0x38+var_24; CVector *
493334:  MOV             R1, R4; CVehicle *
493336:  BLX             j__ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib; CTaskComplexLeaveCarAndFlee::CTaskComplexLeaveCarAndFlee(CVehicle *,CVector const&,int,int,bool)
49333A:  ADD             SP, SP, #0x28 ; '('
49333C:  POP.W           {R11}
493340:  POP             {R4-R7,PC}
