; =========================================================
; Game Engine Function: _ZN34CTaskSimpleWaitUntilAreaCodesMatch9SerializeEv
; Address            : 0x4F435C - 0x4F4422
; =========================================================

4F435C:  PUSH            {R4-R7,LR}
4F435E:  ADD             R7, SP, #0xC
4F4360:  PUSH.W          {R11}
4F4364:  MOV             R4, R0
4F4366:  LDR             R0, [R4]
4F4368:  LDR             R1, [R0,#0x14]
4F436A:  MOV             R0, R4
4F436C:  BLX             R1
4F436E:  MOV             R5, R0
4F4370:  LDR             R0, =(UseDataFence_ptr - 0x4F4376)
4F4372:  ADD             R0, PC; UseDataFence_ptr
4F4374:  LDR             R0, [R0]; UseDataFence
4F4376:  LDRB            R0, [R0]
4F4378:  CMP             R0, #0
4F437A:  IT NE
4F437C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F4380:  MOVS            R0, #4; byte_count
4F4382:  BLX             malloc
4F4386:  MOV             R6, R0
4F4388:  MOVS            R1, #byte_4; void *
4F438A:  STR             R5, [R6]
4F438C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F4390:  MOV             R0, R6; p
4F4392:  BLX             free
4F4396:  LDR             R0, [R4]
4F4398:  LDR             R1, [R0,#0x14]
4F439A:  MOV             R0, R4
4F439C:  BLX             R1
4F439E:  MOVW            R1, #0x51B
4F43A2:  CMP             R0, R1
4F43A4:  BNE             loc_4F43D4
4F43A6:  LDR             R0, [R4,#0x20]; CPed *
4F43A8:  CBZ             R0, loc_4F43EE
4F43AA:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4F43AE:  MOV             R4, R0
4F43B0:  LDR             R0, =(UseDataFence_ptr - 0x4F43B6)
4F43B2:  ADD             R0, PC; UseDataFence_ptr
4F43B4:  LDR             R0, [R0]; UseDataFence
4F43B6:  LDRB            R0, [R0]
4F43B8:  CMP             R0, #0
4F43BA:  IT NE
4F43BC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F43C0:  MOVS            R0, #4; byte_count
4F43C2:  BLX             malloc
4F43C6:  MOV             R5, R0
4F43C8:  MOVS            R1, #byte_4; void *
4F43CA:  STR             R4, [R5]
4F43CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F43D0:  MOV             R0, R5
4F43D2:  B               loc_4F4416
4F43D4:  LDR             R0, [R4]
4F43D6:  LDR             R1, [R0,#0x14]
4F43D8:  MOV             R0, R4
4F43DA:  BLX             R1
4F43DC:  MOV             R1, R0; int
4F43DE:  MOVW            R0, #0x51B; int
4F43E2:  POP.W           {R11}
4F43E6:  POP.W           {R4-R7,LR}
4F43EA:  B.W             sub_1941D4
4F43EE:  LDR             R0, =(UseDataFence_ptr - 0x4F43F4)
4F43F0:  ADD             R0, PC; UseDataFence_ptr
4F43F2:  LDR             R0, [R0]; UseDataFence
4F43F4:  LDRB            R0, [R0]
4F43F6:  CMP             R0, #0
4F43F8:  IT NE
4F43FA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F43FE:  MOVS            R0, #4; byte_count
4F4400:  BLX             malloc
4F4404:  MOV             R4, R0
4F4406:  MOV.W           R0, #0xFFFFFFFF
4F440A:  STR             R0, [R4]
4F440C:  MOV             R0, R4; this
4F440E:  MOVS            R1, #byte_4; void *
4F4410:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F4414:  MOV             R0, R4; p
4F4416:  POP.W           {R11}
4F441A:  POP.W           {R4-R7,LR}
4F441E:  B.W             j_free
