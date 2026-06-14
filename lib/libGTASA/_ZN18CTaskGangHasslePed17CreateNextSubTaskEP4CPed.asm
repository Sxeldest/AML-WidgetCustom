; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePed17CreateNextSubTaskEP4CPed
; Address            : 0x5193B8 - 0x519476
; =========================================================

5193B8:  PUSH            {R4-R7,LR}
5193BA:  ADD             R7, SP, #0xC
5193BC:  PUSH.W          {R8}
5193C0:  MOV             R5, R0
5193C2:  BLX             rand
5193C6:  MOV             R8, R0
5193C8:  LDR             R0, [R5,#8]
5193CA:  LDR             R1, [R0]
5193CC:  LDR             R1, [R1,#0x14]
5193CE:  BLX             R1
5193D0:  MOVS            R6, #0
5193D2:  CMP.W           R0, #0x3E8
5193D6:  MOV.W           R4, #0
5193DA:  BEQ             loc_51946E
5193DC:  MOVS            R0, #dword_4C; this
5193DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5193E2:  MOV             R4, R0
5193E4:  LDR             R5, [R5,#0xC]
5193E6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5193EA:  VMOV            S0, R8
5193EE:  VLDR            S2, =4.6566e-10
5193F2:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x519402)
5193F4:  MOVW            R2, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
5193F8:  VCVT.F32.S32    S0, S0
5193FC:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x519408)
5193FE:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
519400:  MOVT            R2, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
519404:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
519406:  MOV.W           R3, #0x3E8
51940A:  STRD.W          R2, R3, [R4,#0x10]
51940E:  MOV.W           R2, #0x40000000
519412:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorStandard ...
519414:  CMP             R5, #0
519416:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
519418:  STR             R2, [R4,#0x1C]
51941A:  ADD.W           R0, R0, #8
51941E:  VMUL.F32        S0, S0, S2
519422:  STRD.W          R6, R2, [R4,#0x20]
519426:  VMOV.F32        S2, #3.0
51942A:  STRH            R6, [R4,#0x30]
51942C:  STRH            R6, [R4,#0x3C]
51942E:  MOV.W           R2, #6
519432:  STRD.W          R6, R6, [R4,#0x28]
519436:  ADD.W           R1, R1, #8
51943A:  STRD.W          R6, R6, [R4,#0x34]
51943E:  LDRB.W          R3, [R4,#0x48]
519442:  STR             R1, [R4]
519444:  MOV             R1, R4
519446:  VADD.F32        S0, S0, S0
51944A:  STRD.W          R0, R2, [R4,#0x40]
51944E:  AND.W           R0, R3, #0xF0
519452:  ORR.W           R0, R0, #2
519456:  STRB.W          R0, [R4,#0x48]
51945A:  VADD.F32        S0, S0, S2
51945E:  VSTR            S0, [R4,#0x18]
519462:  STR.W           R5, [R1,#0xC]!; CEntity **
519466:  ITT NE
519468:  MOVNE           R0, R5; this
51946A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51946E:  MOV             R0, R4
519470:  POP.W           {R8}
519474:  POP             {R4-R7,PC}
