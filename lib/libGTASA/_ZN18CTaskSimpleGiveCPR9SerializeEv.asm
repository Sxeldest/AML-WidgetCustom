; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPR9SerializeEv
; Address            : 0x512284 - 0x512346
; =========================================================

512284:  PUSH            {R4-R7,LR}
512286:  ADD             R7, SP, #0xC
512288:  PUSH.W          {R11}
51228C:  MOV             R4, R0
51228E:  LDR             R0, [R4]
512290:  LDR             R1, [R0,#0x14]
512292:  MOV             R0, R4
512294:  BLX             R1
512296:  MOV             R5, R0
512298:  LDR             R0, =(UseDataFence_ptr - 0x51229E)
51229A:  ADD             R0, PC; UseDataFence_ptr
51229C:  LDR             R0, [R0]; UseDataFence
51229E:  LDRB            R0, [R0]
5122A0:  CMP             R0, #0
5122A2:  IT NE
5122A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5122A8:  MOVS            R0, #4; byte_count
5122AA:  BLX             malloc
5122AE:  MOV             R6, R0
5122B0:  MOVS            R1, #byte_4; void *
5122B2:  STR             R5, [R6]
5122B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5122B8:  MOV             R0, R6; p
5122BA:  BLX             free
5122BE:  LDR             R0, [R4]
5122C0:  LDR             R1, [R0,#0x14]
5122C2:  MOV             R0, R4
5122C4:  BLX             R1
5122C6:  CMP             R0, #0x66 ; 'f'
5122C8:  BNE             loc_5122FA
5122CA:  LDR             R0, [R4,#0xC]
5122CC:  LDR             R0, [R0]; CPed *
5122CE:  CBZ             R0, loc_512312
5122D0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5122D4:  MOV             R4, R0
5122D6:  LDR             R0, =(UseDataFence_ptr - 0x5122DC)
5122D8:  ADD             R0, PC; UseDataFence_ptr
5122DA:  LDR             R0, [R0]; UseDataFence
5122DC:  LDRB            R0, [R0]
5122DE:  CMP             R0, #0
5122E0:  IT NE
5122E2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5122E6:  MOVS            R0, #4; byte_count
5122E8:  BLX             malloc
5122EC:  MOV             R5, R0
5122EE:  MOVS            R1, #byte_4; void *
5122F0:  STR             R4, [R5]
5122F2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5122F6:  MOV             R0, R5
5122F8:  B               loc_51233A
5122FA:  LDR             R0, [R4]
5122FC:  LDR             R1, [R0,#0x14]
5122FE:  MOV             R0, R4
512300:  BLX             R1
512302:  MOV             R1, R0; int
512304:  MOVS            R0, #0x66 ; 'f'; int
512306:  POP.W           {R11}
51230A:  POP.W           {R4-R7,LR}
51230E:  B.W             sub_1941D4
512312:  LDR             R0, =(UseDataFence_ptr - 0x512318)
512314:  ADD             R0, PC; UseDataFence_ptr
512316:  LDR             R0, [R0]; UseDataFence
512318:  LDRB            R0, [R0]
51231A:  CMP             R0, #0
51231C:  IT NE
51231E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
512322:  MOVS            R0, #4; byte_count
512324:  BLX             malloc
512328:  MOV             R4, R0
51232A:  MOV.W           R0, #0xFFFFFFFF
51232E:  STR             R0, [R4]
512330:  MOV             R0, R4; this
512332:  MOVS            R1, #byte_4; void *
512334:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
512338:  MOV             R0, R4; p
51233A:  POP.W           {R11}
51233E:  POP.W           {R4-R7,LR}
512342:  B.W             j_free
