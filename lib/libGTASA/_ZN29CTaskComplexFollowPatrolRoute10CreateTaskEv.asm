; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute10CreateTaskEv
; Address            : 0x496170 - 0x4962AC
; =========================================================

496170:  PUSH            {R4-R7,LR}
496172:  ADD             R7, SP, #0xC
496174:  PUSH.W          {R11}
496178:  SUB             SP, SP, #0x1C0; float
49617A:  LDR             R0, =(UseDataFence_ptr - 0x496180)
49617C:  ADD             R0, PC; UseDataFence_ptr
49617E:  LDR             R0, [R0]; UseDataFence
496180:  LDRB            R4, [R0]
496182:  CBZ             R4, loc_496198
496184:  LDR             R0, =(UseDataFence_ptr - 0x49618C)
496186:  MOVS            R1, #(stderr+2); void *
496188:  ADD             R0, PC; UseDataFence_ptr
49618A:  LDR             R5, [R0]; UseDataFence
49618C:  MOVS            R0, #0
49618E:  STRB            R0, [R5]
496190:  ADD             R0, SP, #0x1D0+var_1BA+2; this
496192:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496196:  STRB            R4, [R5]
496198:  SUB.W           R0, R7, #-var_12; this
49619C:  MOVS            R1, #(stderr+2); void *
49619E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4961A2:  LDR             R0, =(UseDataFence_ptr - 0x4961A8)
4961A4:  ADD             R0, PC; UseDataFence_ptr
4961A6:  LDR             R0, [R0]; UseDataFence
4961A8:  LDRB            R4, [R0]
4961AA:  CBZ             R4, loc_4961C0
4961AC:  LDR             R0, =(UseDataFence_ptr - 0x4961B4)
4961AE:  MOVS            R1, #(stderr+2); void *
4961B0:  ADD             R0, PC; UseDataFence_ptr
4961B2:  LDR             R5, [R0]; UseDataFence
4961B4:  MOVS            R0, #0
4961B6:  STRB            R0, [R5]
4961B8:  ADD             R0, SP, #0x1D0+var_1BA+2; this
4961BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4961BE:  STRB            R4, [R5]
4961C0:  ADD             R0, SP, #0x1D0+var_1BA+2; this
4961C2:  MOVS            R4, #0
4961C4:  MOV.W           R1, #(elf_hash_bucket+0xA8); void *
4961C8:  STRB.W          R4, [SP,#0x1D0+var_1B4]
4961CC:  STR             R4, [SP,#0x1D0+var_1BA+2]
4961CE:  STRB.W          R4, [SP,#0x1D0+var_18C]
4961D2:  STRB.W          R4, [SP,#0x1D0+var_19C]
4961D6:  STRB.W          R4, [SP,#0x1D0+var_174]
4961DA:  STRB.W          R4, [SP,#0x1D0+var_14C]
4961DE:  STRB.W          R4, [SP,#0x1D0+var_164]
4961E2:  STRB.W          R4, [SP,#0x1D0+var_124]
4961E6:  STRB.W          R4, [SP,#0x1D0+var_13C]
4961EA:  STRB.W          R4, [SP,#0x1D0+var_FC]
4961EE:  STRB.W          R4, [SP,#0x1D0+var_114]
4961F2:  STRB.W          R4, [SP,#0x1D0+var_D4]
4961F6:  STRB.W          R4, [SP,#0x1D0+var_EC]
4961FA:  STRB.W          R4, [SP,#0x1D0+var_AC]
4961FE:  STRB.W          R4, [SP,#0x1D0+var_C4]
496202:  STRB.W          R4, [SP,#0x1D0+var_84]
496206:  STRB.W          R4, [SP,#0x1D0+var_9C]
49620A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49620E:  LDR             R0, =(UseDataFence_ptr - 0x496214)
496210:  ADD             R0, PC; UseDataFence_ptr
496212:  LDR             R0, [R0]; UseDataFence
496214:  LDRB            R5, [R0]
496216:  CBZ             R5, loc_49622A
496218:  LDR             R0, =(UseDataFence_ptr - 0x496220)
49621A:  MOVS            R1, #(stderr+2); void *
49621C:  ADD             R0, PC; UseDataFence_ptr
49621E:  LDR             R6, [R0]; UseDataFence
496220:  ADD             R0, SP, #0x1D0+var_1C0; this
496222:  STRB            R4, [R6]
496224:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496228:  STRB            R5, [R6]
49622A:  ADD.W           R0, SP, #0x1D0+var_1BA; this
49622E:  MOVS            R1, #(stderr+2); void *
496230:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496234:  LDR             R0, =(UseDataFence_ptr - 0x49623A)
496236:  ADD             R0, PC; UseDataFence_ptr
496238:  LDR             R0, [R0]; UseDataFence
49623A:  LDRB            R4, [R0]
49623C:  CBZ             R4, loc_496252
49623E:  LDR             R0, =(UseDataFence_ptr - 0x496246)
496240:  MOVS            R1, #(stderr+2); void *
496242:  ADD             R0, PC; UseDataFence_ptr
496244:  LDR             R5, [R0]; UseDataFence
496246:  MOVS            R0, #0
496248:  STRB            R0, [R5]
49624A:  ADD             R0, SP, #0x1D0+var_1C0; this
49624C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496250:  STRB            R4, [R5]
496252:  ADD             R0, SP, #0x1D0+var_1C0; this
496254:  MOVS            R1, #byte_4; void *
496256:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49625A:  LDR             R0, =(UseDataFence_ptr - 0x496260)
49625C:  ADD             R0, PC; UseDataFence_ptr
49625E:  LDR             R0, [R0]; UseDataFence
496260:  LDRB            R4, [R0]
496262:  CBZ             R4, loc_496278
496264:  LDR             R0, =(UseDataFence_ptr - 0x49626C)
496266:  MOVS            R1, #(stderr+2); void *
496268:  ADD             R0, PC; UseDataFence_ptr
49626A:  LDR             R5, [R0]; UseDataFence
49626C:  MOVS            R0, #0
49626E:  STRB            R0, [R5]
496270:  ADD             R0, SP, #0x1D0+var_1C4; this
496272:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496276:  STRB            R4, [R5]
496278:  ADD             R0, SP, #0x1D0+var_1C4; this
49627A:  MOVS            R1, #byte_4; void *
49627C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496280:  MOVS            R0, #word_30; this
496282:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496286:  LDRSH.W         R1, [R7,#var_12]; int
49628A:  ADD             R2, SP, #0x1D0+var_1BA+2; CPatrolRoute *
49628C:  LDRSH.W         R3, [SP,#0x1D0+var_1BA]; int
496290:  VLDR            S0, [SP,#0x1D0+var_1C0]
496294:  VLDR            S2, [SP,#0x1D0+var_1C4]
496298:  VSTR            S0, [SP,#0x1D0+var_1D0]
49629C:  VSTR            S2, [SP,#0x1D0+var_1CC]
4962A0:  BLX             j__ZN29CTaskComplexFollowPatrolRouteC2EiRK12CPatrolRouteiff; CTaskComplexFollowPatrolRoute::CTaskComplexFollowPatrolRoute(int,CPatrolRoute const&,int,float,float)
4962A4:  ADD             SP, SP, #0x1C0
4962A6:  POP.W           {R11}
4962AA:  POP             {R4-R7,PC}
