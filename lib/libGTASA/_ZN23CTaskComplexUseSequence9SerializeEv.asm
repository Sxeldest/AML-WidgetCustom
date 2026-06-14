; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequence9SerializeEv
; Address            : 0x4F4200 - 0x4F42EA
; =========================================================

4F4200:  PUSH            {R4-R7,LR}
4F4202:  ADD             R7, SP, #0xC
4F4204:  PUSH.W          {R11}
4F4208:  MOV             R4, R0
4F420A:  LDR             R0, [R4]
4F420C:  LDR             R1, [R0,#0x14]
4F420E:  MOV             R0, R4
4F4210:  BLX             R1
4F4212:  MOV             R5, R0
4F4214:  LDR             R0, =(UseDataFence_ptr - 0x4F421A)
4F4216:  ADD             R0, PC; UseDataFence_ptr
4F4218:  LDR             R0, [R0]; UseDataFence
4F421A:  LDRB            R0, [R0]
4F421C:  CMP             R0, #0
4F421E:  IT NE
4F4220:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F4224:  MOVS            R0, #4; byte_count
4F4226:  BLX             malloc
4F422A:  MOV             R6, R0
4F422C:  MOVS            R1, #byte_4; void *
4F422E:  STR             R5, [R6]
4F4230:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F4234:  MOV             R0, R6; p
4F4236:  BLX             free
4F423A:  LDR             R0, [R4]
4F423C:  LDR             R1, [R0,#0x14]
4F423E:  MOV             R0, R4
4F4240:  BLX             R1
4F4242:  MOVW            R1, #0x113
4F4246:  CMP             R0, R1
4F4248:  BNE             loc_4F42D0
4F424A:  LDR             R0, =(UseDataFence_ptr - 0x4F4250)
4F424C:  ADD             R0, PC; UseDataFence_ptr
4F424E:  LDR             R0, [R0]; UseDataFence
4F4250:  LDRB            R0, [R0]
4F4252:  CMP             R0, #0
4F4254:  IT NE
4F4256:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F425A:  MOVS            R0, #4; byte_count
4F425C:  BLX             malloc
4F4260:  MOV             R5, R0
4F4262:  LDR             R0, [R4,#0xC]
4F4264:  STR             R0, [R5]
4F4266:  MOV             R0, R5; this
4F4268:  MOVS            R1, #byte_4; void *
4F426A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F426E:  MOV             R0, R5; p
4F4270:  BLX             free
4F4274:  LDR             R0, =(UseDataFence_ptr - 0x4F427A)
4F4276:  ADD             R0, PC; UseDataFence_ptr
4F4278:  LDR             R0, [R0]; UseDataFence
4F427A:  LDRB            R0, [R0]
4F427C:  CMP             R0, #0
4F427E:  IT NE
4F4280:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F4284:  MOVS            R0, #4; byte_count
4F4286:  BLX             malloc
4F428A:  MOV             R5, R0
4F428C:  LDR             R0, [R4,#0x10]
4F428E:  STR             R0, [R5]
4F4290:  MOV             R0, R5; this
4F4292:  MOVS            R1, #byte_4; void *
4F4294:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F4298:  MOV             R0, R5; p
4F429A:  BLX             free
4F429E:  LDR             R0, =(UseDataFence_ptr - 0x4F42A4)
4F42A0:  ADD             R0, PC; UseDataFence_ptr
4F42A2:  LDR             R0, [R0]; UseDataFence
4F42A4:  LDRB            R0, [R0]
4F42A6:  CMP             R0, #0
4F42A8:  IT NE
4F42AA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F42AE:  MOVS            R0, #4; byte_count
4F42B0:  BLX             malloc
4F42B4:  MOV             R5, R0
4F42B6:  LDR             R0, [R4,#0x14]
4F42B8:  STR             R0, [R5]
4F42BA:  MOV             R0, R5; this
4F42BC:  MOVS            R1, #byte_4; void *
4F42BE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F42C2:  MOV             R0, R5; p
4F42C4:  POP.W           {R11}
4F42C8:  POP.W           {R4-R7,LR}
4F42CC:  B.W             j_free
4F42D0:  LDR             R0, [R4]
4F42D2:  LDR             R1, [R0,#0x14]
4F42D4:  MOV             R0, R4
4F42D6:  BLX             R1
4F42D8:  MOV             R1, R0; int
4F42DA:  MOVW            R0, #0x113; int
4F42DE:  POP.W           {R11}
4F42E2:  POP.W           {R4-R7,LR}
4F42E6:  B.W             sub_1941D4
