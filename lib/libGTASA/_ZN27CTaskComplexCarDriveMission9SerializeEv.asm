; =========================================================
; Game Engine Function: _ZN27CTaskComplexCarDriveMission9SerializeEv
; Address            : 0x4FF024 - 0x4FF19A
; =========================================================

4FF024:  PUSH            {R4-R7,LR}
4FF026:  ADD             R7, SP, #0xC
4FF028:  PUSH.W          {R11}
4FF02C:  MOV             R4, R0
4FF02E:  LDR             R0, [R4]
4FF030:  LDR             R1, [R0,#0x14]
4FF032:  MOV             R0, R4
4FF034:  BLX             R1
4FF036:  MOV             R5, R0
4FF038:  LDR             R0, =(UseDataFence_ptr - 0x4FF03E)
4FF03A:  ADD             R0, PC; UseDataFence_ptr
4FF03C:  LDR             R0, [R0]; UseDataFence
4FF03E:  LDRB            R0, [R0]
4FF040:  CMP             R0, #0
4FF042:  IT NE
4FF044:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF048:  MOVS            R0, #4; byte_count
4FF04A:  BLX             malloc
4FF04E:  MOV             R6, R0
4FF050:  MOVS            R1, #byte_4; void *
4FF052:  STR             R5, [R6]
4FF054:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF058:  MOV             R0, R6; p
4FF05A:  BLX             free
4FF05E:  LDR             R0, [R4]
4FF060:  LDR             R1, [R0,#0x14]
4FF062:  MOV             R0, R4
4FF064:  BLX             R1
4FF066:  CMP.W           R0, #0x2D4
4FF06A:  BNE             loc_4FF0EE
4FF06C:  LDR             R0, [R4,#0xC]; CVehicle *
4FF06E:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FF072:  MOV             R5, R0
4FF074:  LDR             R0, =(UseDataFence_ptr - 0x4FF07A)
4FF076:  ADD             R0, PC; UseDataFence_ptr
4FF078:  LDR             R0, [R0]; UseDataFence
4FF07A:  LDRB            R0, [R0]
4FF07C:  CMP             R0, #0
4FF07E:  IT NE
4FF080:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF084:  MOVS            R0, #4; byte_count
4FF086:  BLX             malloc
4FF08A:  MOV             R6, R0
4FF08C:  MOVS            R1, #byte_4; void *
4FF08E:  STR             R5, [R6]
4FF090:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF094:  MOV             R0, R6; p
4FF096:  BLX             free
4FF09A:  LDR             R0, [R4,#0x24]
4FF09C:  CBZ             R0, loc_4FF108
4FF09E:  LDR             R1, =(UseDataFence_ptr - 0x4FF0A8)
4FF0A0:  LDRB.W          R0, [R0,#0x3A]
4FF0A4:  ADD             R1, PC; UseDataFence_ptr
4FF0A6:  AND.W           R6, R0, #7
4FF0AA:  LDR             R1, [R1]; UseDataFence
4FF0AC:  LDRB            R1, [R1]
4FF0AE:  CMP             R1, #0
4FF0B0:  IT NE
4FF0B2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF0B6:  MOVS            R0, #4; byte_count
4FF0B8:  BLX             malloc
4FF0BC:  MOV             R5, R0
4FF0BE:  MOVS            R1, #byte_4; void *
4FF0C0:  STR             R6, [R5]
4FF0C2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF0C6:  MOV             R0, R5; p
4FF0C8:  BLX             free
4FF0CC:  LDR             R0, [R4,#0x24]; CObject *
4FF0CE:  LDRB.W          R1, [R0,#0x3A]
4FF0D2:  AND.W           R1, R1, #7
4FF0D6:  CMP             R1, #2
4FF0D8:  BEQ             loc_4FF130
4FF0DA:  CMP             R1, #4
4FF0DC:  BEQ             loc_4FF13C
4FF0DE:  CMP             R1, #3
4FF0E0:  BNE             loc_4FF168
4FF0E2:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4FF0E6:  MOV             R5, R0
4FF0E8:  LDR             R0, =(UseDataFence_ptr - 0x4FF0EE)
4FF0EA:  ADD             R0, PC; UseDataFence_ptr
4FF0EC:  B               loc_4FF146
4FF0EE:  LDR             R0, [R4]
4FF0F0:  LDR             R1, [R0,#0x14]
4FF0F2:  MOV             R0, R4
4FF0F4:  BLX             R1
4FF0F6:  MOV             R1, R0; int
4FF0F8:  MOV.W           R0, #0x2D4; int
4FF0FC:  POP.W           {R11}
4FF100:  POP.W           {R4-R7,LR}
4FF104:  B.W             sub_1941D4
4FF108:  LDR             R0, =(UseDataFence_ptr - 0x4FF10E)
4FF10A:  ADD             R0, PC; UseDataFence_ptr
4FF10C:  LDR             R0, [R0]; UseDataFence
4FF10E:  LDRB            R0, [R0]
4FF110:  CMP             R0, #0
4FF112:  IT NE
4FF114:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF118:  MOVS            R0, #4; byte_count
4FF11A:  BLX             malloc
4FF11E:  MOV             R5, R0
4FF120:  MOVS            R0, #0
4FF122:  STR             R0, [R5]
4FF124:  MOV             R0, R5; this
4FF126:  MOVS            R1, #byte_4; void *
4FF128:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF12C:  MOV             R0, R5
4FF12E:  B               loc_4FF164
4FF130:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FF134:  MOV             R5, R0
4FF136:  LDR             R0, =(UseDataFence_ptr - 0x4FF13C)
4FF138:  ADD             R0, PC; UseDataFence_ptr
4FF13A:  B               loc_4FF146
4FF13C:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
4FF140:  MOV             R5, R0
4FF142:  LDR             R0, =(UseDataFence_ptr - 0x4FF148)
4FF144:  ADD             R0, PC; UseDataFence_ptr
4FF146:  LDR             R0, [R0]; UseDataFence
4FF148:  LDRB            R0, [R0]
4FF14A:  CMP             R0, #0
4FF14C:  IT NE
4FF14E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF152:  MOVS            R0, #4; byte_count
4FF154:  BLX             malloc
4FF158:  MOV             R6, R0
4FF15A:  MOVS            R1, #byte_4; void *
4FF15C:  STR             R5, [R6]
4FF15E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF162:  MOV             R0, R6; p
4FF164:  BLX             free
4FF168:  LDR             R0, =(UseDataFence_ptr - 0x4FF16E)
4FF16A:  ADD             R0, PC; UseDataFence_ptr
4FF16C:  LDR             R0, [R0]; UseDataFence
4FF16E:  LDRB            R0, [R0]
4FF170:  CMP             R0, #0
4FF172:  IT NE
4FF174:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF178:  MOVS            R0, #4; byte_count
4FF17A:  BLX             malloc
4FF17E:  MOV             R5, R0
4FF180:  LDR             R0, [R4,#0x28]
4FF182:  STR             R0, [R5]
4FF184:  MOV             R0, R5; this
4FF186:  MOVS            R1, #byte_4; void *
4FF188:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF18C:  MOV             R0, R5; p
4FF18E:  POP.W           {R11}
4FF192:  POP.W           {R4-R7,LR}
4FF196:  B.W             j_free
