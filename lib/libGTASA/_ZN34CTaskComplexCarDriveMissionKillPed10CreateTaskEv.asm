; =========================================================
; Game Engine Function: _ZN34CTaskComplexCarDriveMissionKillPed10CreateTaskEv
; Address            : 0x494074 - 0x4941B0
; =========================================================

494074:  PUSH            {R4-R7,LR}
494076:  ADD             R7, SP, #0xC
494078:  PUSH.W          {R11}
49407C:  SUB             SP, SP, #0x18
49407E:  LDR             R0, =(UseDataFence_ptr - 0x494084)
494080:  ADD             R0, PC; UseDataFence_ptr
494082:  LDR             R0, [R0]; UseDataFence
494084:  LDRB            R4, [R0]
494086:  CBZ             R4, loc_49409C
494088:  LDR             R0, =(UseDataFence_ptr - 0x494090)
49408A:  MOVS            R1, #(stderr+2); void *
49408C:  ADD             R0, PC; UseDataFence_ptr
49408E:  LDR             R5, [R0]; UseDataFence
494090:  MOVS            R0, #0
494092:  STRB            R0, [R5]
494094:  ADD             R0, SP, #0x28+var_14; this
494096:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49409A:  STRB            R4, [R5]
49409C:  ADD             R0, SP, #0x28+var_14; this
49409E:  MOVS            R1, #byte_4; void *
4940A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4940A4:  LDR             R0, [SP,#0x28+var_14]; this
4940A6:  ADDS            R1, R0, #1; int
4940A8:  BEQ             loc_4940B2
4940AA:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4940AE:  MOV             R4, R0
4940B0:  B               loc_4940B4
4940B2:  MOVS            R4, #0
4940B4:  LDR             R0, =(UseDataFence_ptr - 0x4940BA)
4940B6:  ADD             R0, PC; UseDataFence_ptr
4940B8:  LDR             R0, [R0]; UseDataFence
4940BA:  LDRB            R5, [R0]
4940BC:  CBZ             R5, loc_4940D2
4940BE:  LDR             R0, =(UseDataFence_ptr - 0x4940C6)
4940C0:  MOVS            R1, #(stderr+2); void *
4940C2:  ADD             R0, PC; UseDataFence_ptr
4940C4:  LDR             R6, [R0]; UseDataFence
4940C6:  MOVS            R0, #0
4940C8:  STRB            R0, [R6]
4940CA:  ADD             R0, SP, #0x28+var_18; this
4940CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4940D0:  STRB            R5, [R6]
4940D2:  ADD             R0, SP, #0x28+var_18; this
4940D4:  MOVS            R1, #byte_4; void *
4940D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4940DA:  LDR             R0, [SP,#0x28+var_18]
4940DC:  CMP             R0, #2
4940DE:  BEQ             loc_49411A
4940E0:  CMP             R0, #4
4940E2:  BEQ             loc_49414C
4940E4:  CMP             R0, #3
4940E6:  BNE             loc_494180
4940E8:  LDR             R0, =(UseDataFence_ptr - 0x4940EE)
4940EA:  ADD             R0, PC; UseDataFence_ptr
4940EC:  LDR             R0, [R0]; UseDataFence
4940EE:  LDRB            R5, [R0]
4940F0:  CBZ             R5, loc_494106
4940F2:  LDR             R0, =(UseDataFence_ptr - 0x4940FA)
4940F4:  MOVS            R1, #(stderr+2); void *
4940F6:  ADD             R0, PC; UseDataFence_ptr
4940F8:  LDR             R6, [R0]; UseDataFence
4940FA:  MOVS            R0, #0
4940FC:  STRB            R0, [R6]
4940FE:  ADD             R0, SP, #0x28+var_1C; this
494100:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494104:  STRB            R5, [R6]
494106:  ADD             R0, SP, #0x28+var_1C; this
494108:  MOVS            R1, #byte_4; void *
49410A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49410E:  LDR             R0, [SP,#0x28+var_1C]; this
494110:  ADDS            R1, R0, #1; int
494112:  BEQ             loc_494180
494114:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
494118:  B               loc_49417C
49411A:  LDR             R0, =(UseDataFence_ptr - 0x494120)
49411C:  ADD             R0, PC; UseDataFence_ptr
49411E:  LDR             R0, [R0]; UseDataFence
494120:  LDRB            R5, [R0]
494122:  CBZ             R5, loc_494138
494124:  LDR             R0, =(UseDataFence_ptr - 0x49412C)
494126:  MOVS            R1, #(stderr+2); void *
494128:  ADD             R0, PC; UseDataFence_ptr
49412A:  LDR             R6, [R0]; UseDataFence
49412C:  MOVS            R0, #0
49412E:  STRB            R0, [R6]
494130:  ADD             R0, SP, #0x28+var_1C; this
494132:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494136:  STRB            R5, [R6]
494138:  ADD             R0, SP, #0x28+var_1C; this
49413A:  MOVS            R1, #byte_4; void *
49413C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494140:  LDR             R0, [SP,#0x28+var_1C]; this
494142:  ADDS            R1, R0, #1; int
494144:  BEQ             loc_494180
494146:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49414A:  B               loc_49417C
49414C:  LDR             R0, =(UseDataFence_ptr - 0x494152)
49414E:  ADD             R0, PC; UseDataFence_ptr
494150:  LDR             R0, [R0]; UseDataFence
494152:  LDRB            R5, [R0]
494154:  CBZ             R5, loc_49416A
494156:  LDR             R0, =(UseDataFence_ptr - 0x49415E)
494158:  MOVS            R1, #(stderr+2); void *
49415A:  ADD             R0, PC; UseDataFence_ptr
49415C:  LDR             R6, [R0]; UseDataFence
49415E:  MOVS            R0, #0
494160:  STRB            R0, [R6]
494162:  ADD             R0, SP, #0x28+var_1C; this
494164:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494168:  STRB            R5, [R6]
49416A:  ADD             R0, SP, #0x28+var_1C; this
49416C:  MOVS            R1, #byte_4; void *
49416E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494172:  LDR             R0, [SP,#0x28+var_1C]; this
494174:  ADDS            R1, R0, #1; int
494176:  BEQ             loc_494180
494178:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
49417C:  MOV             R5, R0
49417E:  B               loc_494182
494180:  MOVS            R5, #0
494182:  MOVS            R0, #word_2C; this
494184:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494188:  MOVS            R1, #0
49418A:  MOVS            R2, #3
49418C:  MOVT            R1, #0x4220
494190:  MOVS            R3, #0x36 ; '6'; int
494192:  STRD.W          R2, R1, [SP,#0x28+var_28]; int
494196:  MOV             R1, R4; CVehicle *
494198:  MOV             R2, R5; CEntity *
49419A:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
49419E:  LDR             R1, =(_ZTV34CTaskComplexCarDriveMissionKillPed_ptr - 0x4941A4)
4941A0:  ADD             R1, PC; _ZTV34CTaskComplexCarDriveMissionKillPed_ptr
4941A2:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionKillPed ...
4941A4:  ADDS            R1, #8
4941A6:  STR             R1, [R0]
4941A8:  ADD             SP, SP, #0x18
4941AA:  POP.W           {R11}
4941AE:  POP             {R4-R7,PC}
