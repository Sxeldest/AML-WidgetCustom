; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy9SerializeEv
; Address            : 0x4EA130 - 0x4EA2EC
; =========================================================

4EA130:  PUSH            {R4-R7,LR}
4EA132:  ADD             R7, SP, #0xC
4EA134:  PUSH.W          {R11}
4EA138:  MOV             R4, R0
4EA13A:  LDR             R0, [R4]
4EA13C:  LDR             R1, [R0,#0x14]
4EA13E:  MOV             R0, R4
4EA140:  BLX             R1
4EA142:  MOV             R5, R0
4EA144:  LDR             R0, =(UseDataFence_ptr - 0x4EA14A)
4EA146:  ADD             R0, PC; UseDataFence_ptr
4EA148:  LDR             R0, [R0]; UseDataFence
4EA14A:  LDRB            R0, [R0]
4EA14C:  CMP             R0, #0
4EA14E:  IT NE
4EA150:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA154:  MOVS            R0, #4; byte_count
4EA156:  BLX             malloc
4EA15A:  MOV             R6, R0
4EA15C:  MOVS            R1, #byte_4; void *
4EA15E:  STR             R5, [R6]
4EA160:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA164:  MOV             R0, R6; p
4EA166:  BLX             free
4EA16A:  LDR             R0, [R4]
4EA16C:  LDR             R1, [R0,#0x14]
4EA16E:  MOV             R0, R4
4EA170:  BLX             R1
4EA172:  MOVW            R1, #0x3FE
4EA176:  CMP             R0, R1
4EA178:  BNE             loc_4EA1CA
4EA17A:  LDR             R0, [R4,#0x34]
4EA17C:  CBZ             R0, loc_4EA1E4
4EA17E:  LDR             R1, =(UseDataFence_ptr - 0x4EA188)
4EA180:  LDRB.W          R0, [R0,#0x3A]
4EA184:  ADD             R1, PC; UseDataFence_ptr
4EA186:  AND.W           R6, R0, #7
4EA18A:  LDR             R1, [R1]; UseDataFence
4EA18C:  LDRB            R1, [R1]
4EA18E:  CMP             R1, #0
4EA190:  IT NE
4EA192:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA196:  MOVS            R0, #4; byte_count
4EA198:  BLX             malloc
4EA19C:  MOV             R5, R0
4EA19E:  MOVS            R1, #byte_4; void *
4EA1A0:  STR             R6, [R5]
4EA1A2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA1A6:  MOV             R0, R5; p
4EA1A8:  BLX             free
4EA1AC:  LDR             R0, [R4,#0x34]; CVehicle *
4EA1AE:  LDRB.W          R1, [R0,#0x3A]
4EA1B2:  AND.W           R1, R1, #7
4EA1B6:  CMP             R1, #2
4EA1B8:  BEQ             loc_4EA20C
4EA1BA:  CMP             R1, #3
4EA1BC:  BNE             loc_4EA238
4EA1BE:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4EA1C2:  MOV             R5, R0
4EA1C4:  LDR             R0, =(UseDataFence_ptr - 0x4EA1CA)
4EA1C6:  ADD             R0, PC; UseDataFence_ptr
4EA1C8:  B               loc_4EA216
4EA1CA:  LDR             R0, [R4]
4EA1CC:  LDR             R1, [R0,#0x14]
4EA1CE:  MOV             R0, R4
4EA1D0:  BLX             R1
4EA1D2:  MOV             R1, R0; int
4EA1D4:  MOVW            R0, #0x3FE; int
4EA1D8:  POP.W           {R11}
4EA1DC:  POP.W           {R4-R7,LR}
4EA1E0:  B.W             sub_1941D4
4EA1E4:  LDR             R0, =(UseDataFence_ptr - 0x4EA1EA)
4EA1E6:  ADD             R0, PC; UseDataFence_ptr
4EA1E8:  LDR             R0, [R0]; UseDataFence
4EA1EA:  LDRB            R0, [R0]
4EA1EC:  CMP             R0, #0
4EA1EE:  IT NE
4EA1F0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA1F4:  MOVS            R0, #4; byte_count
4EA1F6:  BLX             malloc
4EA1FA:  MOV             R5, R0
4EA1FC:  MOVS            R0, #0
4EA1FE:  STR             R0, [R5]
4EA200:  MOV             R0, R5; this
4EA202:  MOVS            R1, #byte_4; void *
4EA204:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA208:  MOV             R0, R5
4EA20A:  B               loc_4EA234
4EA20C:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4EA210:  MOV             R5, R0
4EA212:  LDR             R0, =(UseDataFence_ptr - 0x4EA218)
4EA214:  ADD             R0, PC; UseDataFence_ptr
4EA216:  LDR             R0, [R0]; UseDataFence
4EA218:  LDRB            R0, [R0]
4EA21A:  CMP             R0, #0
4EA21C:  IT NE
4EA21E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA222:  MOVS            R0, #4; byte_count
4EA224:  BLX             malloc
4EA228:  MOV             R6, R0
4EA22A:  MOVS            R1, #byte_4; void *
4EA22C:  STR             R5, [R6]
4EA22E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA232:  MOV             R0, R6; p
4EA234:  BLX             free
4EA238:  LDR             R0, =(UseDataFence_ptr - 0x4EA23E)
4EA23A:  ADD             R0, PC; UseDataFence_ptr
4EA23C:  LDR             R0, [R0]; UseDataFence
4EA23E:  LDRB            R0, [R0]
4EA240:  CMP             R0, #0
4EA242:  IT NE
4EA244:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA248:  MOVS            R0, #0xC; byte_count
4EA24A:  BLX             malloc
4EA24E:  ADD.W           R1, R4, #0x38 ; '8'
4EA252:  MOV             R5, R0
4EA254:  LDR             R0, [R4,#0x40]
4EA256:  VLD1.8          {D16}, [R1]
4EA25A:  MOVS            R1, #(byte_9+3); void *
4EA25C:  STR             R0, [R5,#8]
4EA25E:  MOV             R0, R5; this
4EA260:  VST1.8          {D16}, [R5]
4EA264:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA268:  MOV             R0, R5; p
4EA26A:  BLX             free
4EA26E:  LDR             R0, =(UseDataFence_ptr - 0x4EA276)
4EA270:  LDR             R6, [R4,#0x20]
4EA272:  ADD             R0, PC; UseDataFence_ptr
4EA274:  LDR             R0, [R0]; UseDataFence
4EA276:  LDRB            R0, [R0]
4EA278:  CMP             R0, #0
4EA27A:  IT NE
4EA27C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA280:  MOVS            R0, #4; byte_count
4EA282:  BLX             malloc
4EA286:  MOV             R5, R0
4EA288:  MOVS            R1, #byte_4; void *
4EA28A:  STR             R6, [R5]
4EA28C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA290:  MOV             R0, R5; p
4EA292:  BLX             free
4EA296:  LDR             R0, =(UseDataFence_ptr - 0x4EA29C)
4EA298:  ADD             R0, PC; UseDataFence_ptr
4EA29A:  LDR             R0, [R0]; UseDataFence
4EA29C:  LDRB            R0, [R0]
4EA29E:  CMP             R0, #0
4EA2A0:  IT NE
4EA2A2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA2A6:  ADD.W           R0, R4, #0x13; this
4EA2AA:  MOVS            R1, #(stderr+1); void *
4EA2AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA2B0:  LDR             R0, =(UseDataFence_ptr - 0x4EA2B6)
4EA2B2:  ADD             R0, PC; UseDataFence_ptr
4EA2B4:  LDR             R0, [R0]; UseDataFence
4EA2B6:  LDRB            R0, [R0]
4EA2B8:  CMP             R0, #0
4EA2BA:  IT NE
4EA2BC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA2C0:  ADD.W           R0, R4, #0x12; this
4EA2C4:  MOVS            R1, #(stderr+1); void *
4EA2C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA2CA:  LDR             R0, =(UseDataFence_ptr - 0x4EA2D0)
4EA2CC:  ADD             R0, PC; UseDataFence_ptr
4EA2CE:  LDR             R0, [R0]; UseDataFence
4EA2D0:  LDRB            R0, [R0]
4EA2D2:  CMP             R0, #0
4EA2D4:  IT NE
4EA2D6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA2DA:  ADD.W           R0, R4, #0xA; this
4EA2DE:  MOVS            R1, #(stderr+1); void *
4EA2E0:  POP.W           {R11}
4EA2E4:  POP.W           {R4-R7,LR}
4EA2E8:  B.W             sub_19EA3C
