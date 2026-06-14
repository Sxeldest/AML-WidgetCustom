; =========================================================
; Game Engine Function: _ZN6CPools12LoadPedTasksEv
; Address            : 0x48A2C4 - 0x48A348
; =========================================================

48A2C4:  PUSH            {R4-R7,LR}
48A2C6:  ADD             R7, SP, #0xC
48A2C8:  PUSH.W          {R8}
48A2CC:  SUB             SP, SP, #0x10
48A2CE:  BLX             j__ZN14CTaskSequences4LoadEv; CTaskSequences::Load(void)
48A2D2:  LDR             R0, =(UseDataFence_ptr - 0x48A2D8)
48A2D4:  ADD             R0, PC; UseDataFence_ptr
48A2D6:  LDR             R0, [R0]; UseDataFence
48A2D8:  LDRB            R4, [R0]
48A2DA:  CBZ             R4, loc_48A2F2
48A2DC:  LDR             R0, =(UseDataFence_ptr - 0x48A2E4)
48A2DE:  MOVS            R1, #(stderr+2); void *
48A2E0:  ADD             R0, PC; UseDataFence_ptr
48A2E2:  LDR             R5, [R0]; UseDataFence
48A2E4:  MOVS            R0, #0
48A2E6:  STRB            R0, [R5]
48A2E8:  SUB.W           R0, R7, #-var_12; this
48A2EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A2F0:  STRB            R4, [R5]
48A2F2:  ADD             R0, SP, #0x20+var_1C; this
48A2F4:  MOVS            R1, #byte_4; void *
48A2F6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A2FA:  LDR             R0, [SP,#0x20+var_1C]
48A2FC:  CMP             R0, #1
48A2FE:  BLT             loc_48A33E
48A300:  LDR             R0, =(loadingPed_ptr - 0x48A30E)
48A302:  ADD             R4, SP, #0x20+var_18
48A304:  MOV.W           R8, #0
48A308:  MOVS            R5, #0
48A30A:  ADD             R0, PC; loadingPed_ptr
48A30C:  LDR             R6, [R0]; loadingPed
48A30E:  MOV             R0, R4; this
48A310:  MOVS            R1, #byte_4; void *
48A312:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A316:  LDR             R0, [SP,#0x20+var_18]; this
48A318:  CMP             R0, #0
48A31A:  BLT             loc_48A336
48A31C:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48A320:  LDRB.W          R1, [R0,#0x448]
48A324:  CMP             R1, #2
48A326:  BNE             loc_48A336
48A328:  STR             R0, [R6]
48A32A:  LDR.W           R0, [R0,#0x440]; this
48A32E:  BLX             j__ZN16CPedIntelligence4LoadEv; CPedIntelligence::Load(void)
48A332:  STR.W           R8, [R6]
48A336:  LDR             R0, [SP,#0x20+var_1C]
48A338:  ADDS            R5, #1
48A33A:  CMP             R5, R0
48A33C:  BLT             loc_48A30E
48A33E:  MOVS            R0, #1
48A340:  ADD             SP, SP, #0x10
48A342:  POP.W           {R8}
48A346:  POP             {R4-R7,PC}
