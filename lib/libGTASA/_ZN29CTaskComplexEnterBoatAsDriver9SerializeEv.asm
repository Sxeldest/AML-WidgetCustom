; =========================================================
; Game Engine Function: _ZN29CTaskComplexEnterBoatAsDriver9SerializeEv
; Address            : 0x4FE148 - 0x4FE20E
; =========================================================

4FE148:  PUSH            {R4-R7,LR}
4FE14A:  ADD             R7, SP, #0xC
4FE14C:  PUSH.W          {R11}
4FE150:  MOV             R4, R0
4FE152:  LDR             R0, [R4]
4FE154:  LDR             R1, [R0,#0x14]
4FE156:  MOV             R0, R4
4FE158:  BLX             R1
4FE15A:  MOV             R5, R0
4FE15C:  LDR             R0, =(UseDataFence_ptr - 0x4FE162)
4FE15E:  ADD             R0, PC; UseDataFence_ptr
4FE160:  LDR             R0, [R0]; UseDataFence
4FE162:  LDRB            R0, [R0]
4FE164:  CMP             R0, #0
4FE166:  IT NE
4FE168:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE16C:  MOVS            R0, #4; byte_count
4FE16E:  BLX             malloc
4FE172:  MOV             R6, R0
4FE174:  MOVS            R1, #byte_4; void *
4FE176:  STR             R5, [R6]
4FE178:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE17C:  MOV             R0, R6; p
4FE17E:  BLX             free
4FE182:  LDR             R0, [R4]
4FE184:  LDR             R1, [R0,#0x14]
4FE186:  MOV             R0, R4
4FE188:  BLX             R1
4FE18A:  MOVW            R1, #0x2CB
4FE18E:  CMP             R0, R1
4FE190:  BNE             loc_4FE1C0
4FE192:  LDR             R0, [R4,#0xC]; CVehicle *
4FE194:  CBZ             R0, loc_4FE1DA
4FE196:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE19A:  MOV             R4, R0
4FE19C:  LDR             R0, =(UseDataFence_ptr - 0x4FE1A2)
4FE19E:  ADD             R0, PC; UseDataFence_ptr
4FE1A0:  LDR             R0, [R0]; UseDataFence
4FE1A2:  LDRB            R0, [R0]
4FE1A4:  CMP             R0, #0
4FE1A6:  IT NE
4FE1A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE1AC:  MOVS            R0, #4; byte_count
4FE1AE:  BLX             malloc
4FE1B2:  MOV             R5, R0
4FE1B4:  MOVS            R1, #byte_4; void *
4FE1B6:  STR             R4, [R5]
4FE1B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE1BC:  MOV             R0, R5
4FE1BE:  B               loc_4FE202
4FE1C0:  LDR             R0, [R4]
4FE1C2:  LDR             R1, [R0,#0x14]
4FE1C4:  MOV             R0, R4
4FE1C6:  BLX             R1
4FE1C8:  MOV             R1, R0; int
4FE1CA:  MOVW            R0, #0x2CB; int
4FE1CE:  POP.W           {R11}
4FE1D2:  POP.W           {R4-R7,LR}
4FE1D6:  B.W             sub_1941D4
4FE1DA:  LDR             R0, =(UseDataFence_ptr - 0x4FE1E0)
4FE1DC:  ADD             R0, PC; UseDataFence_ptr
4FE1DE:  LDR             R0, [R0]; UseDataFence
4FE1E0:  LDRB            R0, [R0]
4FE1E2:  CMP             R0, #0
4FE1E4:  IT NE
4FE1E6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE1EA:  MOVS            R0, #4; byte_count
4FE1EC:  BLX             malloc
4FE1F0:  MOV             R4, R0
4FE1F2:  MOV.W           R0, #0xFFFFFFFF
4FE1F6:  STR             R0, [R4]
4FE1F8:  MOV             R0, R4; this
4FE1FA:  MOVS            R1, #byte_4; void *
4FE1FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE200:  MOV             R0, R4; p
4FE202:  POP.W           {R11}
4FE206:  POP.W           {R4-R7,LR}
4FE20A:  B.W             j_free
