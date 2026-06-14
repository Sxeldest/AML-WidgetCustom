; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveDive9SerializeEv
; Address            : 0x50F15C - 0x50F222
; =========================================================

50F15C:  PUSH            {R4-R7,LR}
50F15E:  ADD             R7, SP, #0xC
50F160:  PUSH.W          {R11}
50F164:  MOV             R4, R0
50F166:  LDR             R0, [R4]
50F168:  LDR             R1, [R0,#0x14]
50F16A:  MOV             R0, R4
50F16C:  BLX             R1
50F16E:  MOV             R5, R0
50F170:  LDR             R0, =(UseDataFence_ptr - 0x50F176)
50F172:  ADD             R0, PC; UseDataFence_ptr
50F174:  LDR             R0, [R0]; UseDataFence
50F176:  LDRB            R0, [R0]
50F178:  CMP             R0, #0
50F17A:  IT NE
50F17C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F180:  MOVS            R0, #4; byte_count
50F182:  BLX             malloc
50F186:  MOV             R6, R0
50F188:  MOVS            R1, #byte_4; void *
50F18A:  STR             R5, [R6]
50F18C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F190:  MOV             R0, R6; p
50F192:  BLX             free
50F196:  LDR             R0, [R4]
50F198:  LDR             R1, [R0,#0x14]
50F19A:  MOV             R0, R4
50F19C:  BLX             R1
50F19E:  MOVW            R1, #0x1F7
50F1A2:  CMP             R0, R1
50F1A4:  BNE             loc_50F1D4
50F1A6:  LDR             R0, [R4,#8]; CVehicle *
50F1A8:  CBZ             R0, loc_50F1EE
50F1AA:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50F1AE:  MOV             R4, R0
50F1B0:  LDR             R0, =(UseDataFence_ptr - 0x50F1B6)
50F1B2:  ADD             R0, PC; UseDataFence_ptr
50F1B4:  LDR             R0, [R0]; UseDataFence
50F1B6:  LDRB            R0, [R0]
50F1B8:  CMP             R0, #0
50F1BA:  IT NE
50F1BC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F1C0:  MOVS            R0, #4; byte_count
50F1C2:  BLX             malloc
50F1C6:  MOV             R5, R0
50F1C8:  MOVS            R1, #byte_4; void *
50F1CA:  STR             R4, [R5]
50F1CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F1D0:  MOV             R0, R5
50F1D2:  B               loc_50F216
50F1D4:  LDR             R0, [R4]
50F1D6:  LDR             R1, [R0,#0x14]
50F1D8:  MOV             R0, R4
50F1DA:  BLX             R1
50F1DC:  MOV             R1, R0; int
50F1DE:  MOVW            R0, #0x1F7; int
50F1E2:  POP.W           {R11}
50F1E6:  POP.W           {R4-R7,LR}
50F1EA:  B.W             sub_1941D4
50F1EE:  LDR             R0, =(UseDataFence_ptr - 0x50F1F4)
50F1F0:  ADD             R0, PC; UseDataFence_ptr
50F1F2:  LDR             R0, [R0]; UseDataFence
50F1F4:  LDRB            R0, [R0]
50F1F6:  CMP             R0, #0
50F1F8:  IT NE
50F1FA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F1FE:  MOVS            R0, #4; byte_count
50F200:  BLX             malloc
50F204:  MOV             R4, R0
50F206:  MOV.W           R0, #0xFFFFFFFF
50F20A:  STR             R0, [R4]
50F20C:  MOV             R0, R4; this
50F20E:  MOVS            R1, #byte_4; void *
50F210:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F214:  MOV             R0, R4; p
50F216:  POP.W           {R11}
50F21A:  POP.W           {R4-R7,LR}
50F21E:  B.W             j_free
