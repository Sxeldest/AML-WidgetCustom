; =========================================================
; Game Engine Function: _ZN35CTaskComplexLeaveCarAsPassengerWait9SerializeEv
; Address            : 0x4FE034 - 0x4FE0FA
; =========================================================

4FE034:  PUSH            {R4-R7,LR}
4FE036:  ADD             R7, SP, #0xC
4FE038:  PUSH.W          {R11}
4FE03C:  MOV             R4, R0
4FE03E:  LDR             R0, [R4]
4FE040:  LDR             R1, [R0,#0x14]
4FE042:  MOV             R0, R4
4FE044:  BLX             R1
4FE046:  MOV             R5, R0
4FE048:  LDR             R0, =(UseDataFence_ptr - 0x4FE04E)
4FE04A:  ADD             R0, PC; UseDataFence_ptr
4FE04C:  LDR             R0, [R0]; UseDataFence
4FE04E:  LDRB            R0, [R0]
4FE050:  CMP             R0, #0
4FE052:  IT NE
4FE054:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE058:  MOVS            R0, #4; byte_count
4FE05A:  BLX             malloc
4FE05E:  MOV             R6, R0
4FE060:  MOVS            R1, #byte_4; void *
4FE062:  STR             R5, [R6]
4FE064:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE068:  MOV             R0, R6; p
4FE06A:  BLX             free
4FE06E:  LDR             R0, [R4]
4FE070:  LDR             R1, [R0,#0x14]
4FE072:  MOV             R0, R4
4FE074:  BLX             R1
4FE076:  MOVW            R1, #0x2DA
4FE07A:  CMP             R0, R1
4FE07C:  BNE             loc_4FE0AC
4FE07E:  LDR             R0, [R4,#0xC]; CVehicle *
4FE080:  CBZ             R0, loc_4FE0C6
4FE082:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE086:  MOV             R4, R0
4FE088:  LDR             R0, =(UseDataFence_ptr - 0x4FE08E)
4FE08A:  ADD             R0, PC; UseDataFence_ptr
4FE08C:  LDR             R0, [R0]; UseDataFence
4FE08E:  LDRB            R0, [R0]
4FE090:  CMP             R0, #0
4FE092:  IT NE
4FE094:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE098:  MOVS            R0, #4; byte_count
4FE09A:  BLX             malloc
4FE09E:  MOV             R5, R0
4FE0A0:  MOVS            R1, #byte_4; void *
4FE0A2:  STR             R4, [R5]
4FE0A4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE0A8:  MOV             R0, R5
4FE0AA:  B               loc_4FE0EE
4FE0AC:  LDR             R0, [R4]
4FE0AE:  LDR             R1, [R0,#0x14]
4FE0B0:  MOV             R0, R4
4FE0B2:  BLX             R1
4FE0B4:  MOV             R1, R0; int
4FE0B6:  MOVW            R0, #0x2DA; int
4FE0BA:  POP.W           {R11}
4FE0BE:  POP.W           {R4-R7,LR}
4FE0C2:  B.W             sub_1941D4
4FE0C6:  LDR             R0, =(UseDataFence_ptr - 0x4FE0CC)
4FE0C8:  ADD             R0, PC; UseDataFence_ptr
4FE0CA:  LDR             R0, [R0]; UseDataFence
4FE0CC:  LDRB            R0, [R0]
4FE0CE:  CMP             R0, #0
4FE0D0:  IT NE
4FE0D2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE0D6:  MOVS            R0, #4; byte_count
4FE0D8:  BLX             malloc
4FE0DC:  MOV             R4, R0
4FE0DE:  MOV.W           R0, #0xFFFFFFFF
4FE0E2:  STR             R0, [R4]
4FE0E4:  MOV             R0, R4; this
4FE0E6:  MOVS            R1, #byte_4; void *
4FE0E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE0EC:  MOV             R0, R4; p
4FE0EE:  POP.W           {R11}
4FE0F2:  POP.W           {R4-R7,LR}
4FE0F6:  B.W             j_free
