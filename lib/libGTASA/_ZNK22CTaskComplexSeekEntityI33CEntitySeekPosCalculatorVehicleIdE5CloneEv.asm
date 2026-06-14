; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE5CloneEv
; Address            : 0x49B44C - 0x49B510
; =========================================================

49B44C:  PUSH            {R4-R7,LR}
49B44E:  ADD             R7, SP, #0xC
49B450:  PUSH.W          {R8,R9,R11}
49B454:  VPUSH           {D8-D9}
49B458:  MOV             R4, R0
49B45A:  MOVS            R0, #dword_50; this
49B45C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B460:  MOV             R5, R0
49B462:  ADD.W           R0, R4, #0x10
49B466:  VLD1.32         {D8-D9}, [R0]
49B46A:  MOV             R0, R5; this
49B46C:  LDR             R6, [R4,#0xC]
49B46E:  LDR.W           R8, [R4,#0x24]
49B472:  LDRB.W          R9, [R4,#0x4C]
49B476:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
49B47A:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr - 0x49B48A)
49B47C:  ADD.W           R2, R5, #0x10
49B480:  LDR             R0, =(_ZTV33CEntitySeekPosCalculatorVehicleId_ptr - 0x49B490)
49B482:  MOV.W           R12, #6
49B486:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr
49B488:  VST1.32         {D8-D9}, [R2]
49B48C:  ADD             R0, PC; _ZTV33CEntitySeekPosCalculatorVehicleId_ptr
49B48E:  MOVS            R2, #0
49B490:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId> ...
49B492:  CMP             R6, #0
49B494:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorVehicleId ...
49B496:  STRD.W          R2, R8, [R5,#0x20]
49B49A:  ADD.W           R1, R1, #8
49B49E:  STRH            R2, [R5,#0x30]
49B4A0:  ADD.W           R0, R0, #8
49B4A4:  STRH            R2, [R5,#0x3C]
49B4A6:  STRD.W          R2, R2, [R5,#0x28]
49B4AA:  STRD.W          R2, R2, [R5,#0x34]
49B4AE:  LDRB.W          R3, [R5,#0x4C]
49B4B2:  STR             R1, [R5]
49B4B4:  ADD.W           R1, R5, #0x40 ; '@'
49B4B8:  STM.W           R1, {R0,R2,R12}
49B4BC:  AND.W           R0, R9, #1
49B4C0:  BIC.W           R1, R3, #0xF
49B4C4:  ORR.W           R0, R0, R1
49B4C8:  MOV             R1, R5
49B4CA:  ORR.W           R0, R0, #2
49B4CE:  STRB.W          R0, [R5,#0x4C]
49B4D2:  STR.W           R6, [R1,#0xC]!; CEntity **
49B4D6:  BEQ             loc_49B4E2
49B4D8:  MOV             R0, R6; this
49B4DA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49B4DE:  LDRB.W          R0, [R5,#0x4C]
49B4E2:  LDR             R1, [R4,#0x44]
49B4E4:  AND.W           R0, R0, #0xF7
49B4E8:  STR             R1, [R5,#0x44]
49B4EA:  LDR             R1, [R4,#0x48]
49B4EC:  STR             R1, [R5,#0x48]
49B4EE:  LDRB.W          R1, [R4,#0x4C]
49B4F2:  AND.W           R1, R1, #8
49B4F6:  ORRS            R0, R1
49B4F8:  STRB.W          R0, [R5,#0x4C]
49B4FC:  LDR             R0, [R4,#0x20]
49B4FE:  STR             R0, [R5,#0x20]
49B500:  LDR             R0, [R4,#0x48]
49B502:  STR             R0, [R5,#0x48]
49B504:  MOV             R0, R5
49B506:  VPOP            {D8-D9}
49B50A:  POP.W           {R8,R9,R11}
49B50E:  POP             {R4-R7,PC}
