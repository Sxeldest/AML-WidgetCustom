; =========================================================
; Game Engine Function: _ZN49CTaskComplexObserveTrafficLightsAndAchieveHeading9SerializeEv
; Address            : 0x4F3174 - 0x4F322E
; =========================================================

4F3174:  PUSH            {R4-R7,LR}
4F3176:  ADD             R7, SP, #0xC
4F3178:  PUSH.W          {R11}
4F317C:  MOV             R4, R0
4F317E:  LDR             R0, [R4]
4F3180:  LDR             R1, [R0,#0x14]
4F3182:  MOV             R0, R4
4F3184:  BLX             R1
4F3186:  MOV             R5, R0
4F3188:  LDR             R0, =(UseDataFence_ptr - 0x4F318E)
4F318A:  ADD             R0, PC; UseDataFence_ptr
4F318C:  LDR             R0, [R0]; UseDataFence
4F318E:  LDRB            R0, [R0]
4F3190:  CMP             R0, #0
4F3192:  IT NE
4F3194:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3198:  MOVS            R0, #4; byte_count
4F319A:  BLX             malloc
4F319E:  MOV             R6, R0
4F31A0:  MOVS            R1, #byte_4; void *
4F31A2:  STR             R5, [R6]
4F31A4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F31A8:  MOV             R0, R6; p
4F31AA:  BLX             free
4F31AE:  LDR             R0, [R4]
4F31B0:  LDR             R1, [R0,#0x14]
4F31B2:  MOV             R0, R4
4F31B4:  BLX             R1
4F31B6:  CMP             R0, #0xE1
4F31B8:  BNE             loc_4F3216
4F31BA:  LDR             R0, =(UseDataFence_ptr - 0x4F31C0)
4F31BC:  ADD             R0, PC; UseDataFence_ptr
4F31BE:  LDR             R0, [R0]; UseDataFence
4F31C0:  LDRB            R0, [R0]
4F31C2:  CMP             R0, #0
4F31C4:  IT NE
4F31C6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F31CA:  MOVS            R0, #4; byte_count
4F31CC:  BLX             malloc
4F31D0:  MOV             R5, R0
4F31D2:  LDR             R0, [R4,#0xC]
4F31D4:  STR             R0, [R5]
4F31D6:  MOV             R0, R5; this
4F31D8:  MOVS            R1, #byte_4; void *
4F31DA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F31DE:  MOV             R0, R5; p
4F31E0:  BLX             free
4F31E4:  LDR             R0, =(UseDataFence_ptr - 0x4F31EA)
4F31E6:  ADD             R0, PC; UseDataFence_ptr
4F31E8:  LDR             R0, [R0]; UseDataFence
4F31EA:  LDRB            R0, [R0]
4F31EC:  CMP             R0, #0
4F31EE:  IT NE
4F31F0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F31F4:  MOVS            R0, #4; byte_count
4F31F6:  BLX             malloc
4F31FA:  MOV             R5, R0
4F31FC:  LDR             R0, [R4,#0x10]
4F31FE:  STR             R0, [R5]
4F3200:  MOV             R0, R5; this
4F3202:  MOVS            R1, #byte_4; void *
4F3204:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3208:  MOV             R0, R5; p
4F320A:  POP.W           {R11}
4F320E:  POP.W           {R4-R7,LR}
4F3212:  B.W             j_free
4F3216:  LDR             R0, [R4]
4F3218:  LDR             R1, [R0,#0x14]
4F321A:  MOV             R0, R4
4F321C:  BLX             R1
4F321E:  MOV             R1, R0; int
4F3220:  MOVS            R0, #0xE1; int
4F3222:  POP.W           {R11}
4F3226:  POP.W           {R4-R7,LR}
4F322A:  B.W             sub_1941D4
