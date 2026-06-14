; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill10CreateTaskEv
; Address            : 0x4941DC - 0x494346
; =========================================================

4941DC:  PUSH            {R4-R7,LR}
4941DE:  ADD             R7, SP, #0xC
4941E0:  PUSH.W          {R11}
4941E4:  SUB             SP, SP, #0x30
4941E6:  LDR             R0, =(UseDataFence_ptr - 0x4941EC)
4941E8:  ADD             R0, PC; UseDataFence_ptr
4941EA:  LDR             R0, [R0]; UseDataFence
4941EC:  LDRB            R4, [R0]
4941EE:  CBZ             R4, loc_494204
4941F0:  LDR             R0, =(UseDataFence_ptr - 0x4941F8)
4941F2:  MOVS            R1, #(stderr+2); void *
4941F4:  ADD             R0, PC; UseDataFence_ptr
4941F6:  LDR             R5, [R0]; UseDataFence
4941F8:  MOVS            R0, #0
4941FA:  STRB            R0, [R5]
4941FC:  ADD             R0, SP, #0x40+var_14; this
4941FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494202:  STRB            R4, [R5]
494204:  ADD             R0, SP, #0x40+var_14; this
494206:  MOVS            R1, #byte_4; void *
494208:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49420C:  LDR             R0, [SP,#0x40+var_14]; this
49420E:  ADDS            R1, R0, #1; int
494210:  BEQ             loc_49421A
494212:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
494216:  MOV             R4, R0
494218:  B               loc_49421C
49421A:  MOVS            R4, #0
49421C:  LDR             R0, =(UseDataFence_ptr - 0x494222)
49421E:  ADD             R0, PC; UseDataFence_ptr
494220:  LDR             R0, [R0]; UseDataFence
494222:  LDRB            R5, [R0]
494224:  CBZ             R5, loc_49423A
494226:  LDR             R0, =(UseDataFence_ptr - 0x49422E)
494228:  MOVS            R1, #(stderr+2); void *
49422A:  ADD             R0, PC; UseDataFence_ptr
49422C:  LDR             R6, [R0]; UseDataFence
49422E:  MOVS            R0, #0
494230:  STRB            R0, [R6]
494232:  ADD             R0, SP, #0x40+var_18; this
494234:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494238:  STRB            R5, [R6]
49423A:  ADD             R0, SP, #0x40+var_18; this
49423C:  MOVS            R1, #byte_4; void *
49423E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494242:  LDR             R0, =(UseDataFence_ptr - 0x494248)
494244:  ADD             R0, PC; UseDataFence_ptr
494246:  LDR             R0, [R0]; UseDataFence
494248:  LDRB            R5, [R0]
49424A:  CBZ             R5, loc_494260
49424C:  LDR             R0, =(UseDataFence_ptr - 0x494254)
49424E:  MOVS            R1, #(stderr+2); void *
494250:  ADD             R0, PC; UseDataFence_ptr
494252:  LDR             R6, [R0]; UseDataFence
494254:  MOVS            R0, #0
494256:  STRB            R0, [R6]
494258:  ADD             R0, SP, #0x40+var_20; this
49425A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49425E:  STRB            R5, [R6]
494260:  SUB.W           R0, R7, #-var_19; this
494264:  MOVS            R1, #(stderr+1); void *
494266:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49426A:  LDR             R0, =(UseDataFence_ptr - 0x494270)
49426C:  ADD             R0, PC; UseDataFence_ptr
49426E:  LDR             R0, [R0]; UseDataFence
494270:  LDRB            R5, [R0]
494272:  CBZ             R5, loc_494288
494274:  LDR             R0, =(UseDataFence_ptr - 0x49427C)
494276:  MOVS            R1, #(stderr+2); void *
494278:  ADD             R0, PC; UseDataFence_ptr
49427A:  LDR             R6, [R0]; UseDataFence
49427C:  MOVS            R0, #0
49427E:  STRB            R0, [R6]
494280:  ADD             R0, SP, #0x40+var_20; this
494282:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494286:  STRB            R5, [R6]
494288:  ADD             R0, SP, #0x40+var_20; this
49428A:  MOVS            R1, #byte_4; void *
49428C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494290:  LDR             R0, =(UseDataFence_ptr - 0x494296)
494292:  ADD             R0, PC; UseDataFence_ptr
494294:  LDR             R0, [R0]; UseDataFence
494296:  LDRB            R5, [R0]
494298:  CBZ             R5, loc_4942AE
49429A:  LDR             R0, =(UseDataFence_ptr - 0x4942A2)
49429C:  MOVS            R1, #(stderr+2); void *
49429E:  ADD             R0, PC; UseDataFence_ptr
4942A0:  LDR             R6, [R0]; UseDataFence
4942A2:  MOVS            R0, #0
4942A4:  STRB            R0, [R6]
4942A6:  ADD             R0, SP, #0x40+var_24; this
4942A8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4942AC:  STRB            R5, [R6]
4942AE:  ADD             R0, SP, #0x40+var_24; this
4942B0:  MOVS            R1, #byte_4; void *
4942B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4942B6:  LDR             R0, =(UseDataFence_ptr - 0x4942BC)
4942B8:  ADD             R0, PC; UseDataFence_ptr
4942BA:  LDR             R0, [R0]; UseDataFence
4942BC:  LDRB            R5, [R0]
4942BE:  CBZ             R5, loc_4942D4
4942C0:  LDR             R0, =(UseDataFence_ptr - 0x4942C8)
4942C2:  MOVS            R1, #(stderr+2); void *
4942C4:  ADD             R0, PC; UseDataFence_ptr
4942C6:  LDR             R6, [R0]; UseDataFence
4942C8:  MOVS            R0, #0
4942CA:  STRB            R0, [R6]
4942CC:  ADD             R0, SP, #0x40+var_28; this
4942CE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4942D2:  STRB            R5, [R6]
4942D4:  ADD             R0, SP, #0x40+var_28; this
4942D6:  MOVS            R1, #byte_4; void *
4942D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4942DC:  LDR             R0, =(UseDataFence_ptr - 0x4942E2)
4942DE:  ADD             R0, PC; UseDataFence_ptr
4942E0:  LDR             R0, [R0]; UseDataFence
4942E2:  LDRB            R5, [R0]
4942E4:  CBZ             R5, loc_4942FA
4942E6:  LDR             R0, =(UseDataFence_ptr - 0x4942EE)
4942E8:  MOVS            R1, #(stderr+2); void *
4942EA:  ADD             R0, PC; UseDataFence_ptr
4942EC:  LDR             R6, [R0]; UseDataFence
4942EE:  MOVS            R0, #0
4942F0:  STRB            R0, [R6]
4942F2:  ADD             R0, SP, #0x40+var_2C; this
4942F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4942F8:  STRB            R5, [R6]
4942FA:  ADD             R0, SP, #0x40+var_2C; this
4942FC:  MOVS            R1, #byte_4; void *
4942FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494302:  MOVS            R0, #dword_50; this
494304:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494308:  LDR             R1, =(_ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr - 0x494312)
49430A:  VLDR            S0, [SP,#0x40+var_2C]
49430E:  ADD             R1, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr
494310:  LDR             R2, [SP,#0x40+var_18]; int
494312:  LDRB.W          R3, [R7,#var_19]; bool
494316:  LDR             R6, [SP,#0x40+var_20]
494318:  VLDR            S2, [SP,#0x40+var_24]
49431C:  VLDR            S4, [SP,#0x40+var_28]
494320:  VCVT.F32.S32    S0, S0
494324:  LDR             R1, [R1]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime ...
494326:  LDR             R1, [R1]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime
494328:  STR             R1, [SP,#0x40+var_30]; int
49432A:  MOV             R1, R4; CVehicle *
49432C:  VSTR            S4, [SP,#0x40+var_38]
494330:  VSTR            S2, [SP,#0x40+var_3C]
494334:  STR             R6, [SP,#0x40+var_40]; int
494336:  VSTR            S0, [SP,#0x40+var_34]
49433A:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStillC2EP8CVehicleibifffi; CTaskComplexGoToCarDoorAndStandStill::CTaskComplexGoToCarDoorAndStandStill(CVehicle *,int,bool,int,float,float,float,int)
49433E:  ADD             SP, SP, #0x30 ; '0'
494340:  POP.W           {R11}
494344:  POP             {R4-R7,PC}
