; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccident9SerializeEv
; Address            : 0x51237C - 0x51243E
; =========================================================

51237C:  PUSH            {R4-R7,LR}
51237E:  ADD             R7, SP, #0xC
512380:  PUSH.W          {R11}
512384:  MOV             R4, R0
512386:  LDR             R0, [R4]
512388:  LDR             R1, [R0,#0x14]
51238A:  MOV             R0, R4
51238C:  BLX             R1
51238E:  MOV             R5, R0
512390:  LDR             R0, =(UseDataFence_ptr - 0x512396)
512392:  ADD             R0, PC; UseDataFence_ptr
512394:  LDR             R0, [R0]; UseDataFence
512396:  LDRB            R0, [R0]
512398:  CMP             R0, #0
51239A:  IT NE
51239C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5123A0:  MOVS            R0, #4; byte_count
5123A2:  BLX             malloc
5123A6:  MOV             R6, R0
5123A8:  MOVS            R1, #byte_4; void *
5123AA:  STR             R5, [R6]
5123AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5123B0:  MOV             R0, R6; p
5123B2:  BLX             free
5123B6:  LDR             R0, [R4]
5123B8:  LDR             R1, [R0,#0x14]
5123BA:  MOV             R0, R4
5123BC:  BLX             R1
5123BE:  CMP             R0, #0x65 ; 'e'
5123C0:  BNE             loc_5123F2
5123C2:  LDR             R0, [R4,#0xC]
5123C4:  LDR             R0, [R0]; CPed *
5123C6:  CBZ             R0, loc_51240A
5123C8:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5123CC:  MOV             R4, R0
5123CE:  LDR             R0, =(UseDataFence_ptr - 0x5123D4)
5123D0:  ADD             R0, PC; UseDataFence_ptr
5123D2:  LDR             R0, [R0]; UseDataFence
5123D4:  LDRB            R0, [R0]
5123D6:  CMP             R0, #0
5123D8:  IT NE
5123DA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5123DE:  MOVS            R0, #4; byte_count
5123E0:  BLX             malloc
5123E4:  MOV             R5, R0
5123E6:  MOVS            R1, #byte_4; void *
5123E8:  STR             R4, [R5]
5123EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5123EE:  MOV             R0, R5
5123F0:  B               loc_512432
5123F2:  LDR             R0, [R4]
5123F4:  LDR             R1, [R0,#0x14]
5123F6:  MOV             R0, R4
5123F8:  BLX             R1
5123FA:  MOV             R1, R0; int
5123FC:  MOVS            R0, #0x65 ; 'e'; int
5123FE:  POP.W           {R11}
512402:  POP.W           {R4-R7,LR}
512406:  B.W             sub_1941D4
51240A:  LDR             R0, =(UseDataFence_ptr - 0x512410)
51240C:  ADD             R0, PC; UseDataFence_ptr
51240E:  LDR             R0, [R0]; UseDataFence
512410:  LDRB            R0, [R0]
512412:  CMP             R0, #0
512414:  IT NE
512416:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51241A:  MOVS            R0, #4; byte_count
51241C:  BLX             malloc
512420:  MOV             R4, R0
512422:  MOV.W           R0, #0xFFFFFFFF
512426:  STR             R0, [R4]
512428:  MOV             R0, R4; this
51242A:  MOVS            R1, #byte_4; void *
51242C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
512430:  MOV             R0, R4; p
512432:  POP.W           {R11}
512436:  POP.W           {R4-R7,LR}
51243A:  B.W             j_free
