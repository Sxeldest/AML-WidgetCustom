; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE5CloneEv
; Address            : 0x4983FC - 0x4984BA
; =========================================================

4983FC:  PUSH            {R4-R7,LR}
4983FE:  ADD             R7, SP, #0xC
498400:  PUSH.W          {R8,R9,R11}
498404:  VPUSH           {D8-D9}
498408:  MOV             R4, R0
49840A:  MOVS            R0, #dword_4C; this
49840C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498410:  MOV             R5, R0
498412:  ADD.W           R0, R4, #0x10
498416:  VLD1.32         {D8-D9}, [R0]
49841A:  MOV             R0, R5; this
49841C:  LDR             R6, [R4,#0xC]
49841E:  LDR.W           R8, [R4,#0x24]
498422:  LDRB.W          R9, [R4,#0x48]
498426:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
49842A:  LDR             R0, =(_ZTV24CEntitySeekPosCalculator_ptr - 0x498438)
49842C:  ADD.W           R2, R5, #0x10
498430:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr - 0x49843E)
498432:  CMP             R6, #0
498434:  ADD             R0, PC; _ZTV24CEntitySeekPosCalculator_ptr
498436:  VST1.32         {D8-D9}, [R2]
49843A:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr
49843C:  MOV.W           R2, #0
498440:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculator ...
498442:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculator> ...
498444:  STRD.W          R2, R8, [R5,#0x20]
498448:  ADD.W           R0, R0, #8
49844C:  STRH            R2, [R5,#0x30]
49844E:  ADD.W           R1, R1, #8
498452:  STRH            R2, [R5,#0x3C]
498454:  STRD.W          R2, R2, [R5,#0x28]
498458:  STRD.W          R2, R2, [R5,#0x34]
49845C:  MOV.W           R2, #6
498460:  LDRB.W          R3, [R5,#0x48]
498464:  STR             R1, [R5]
498466:  STRD.W          R0, R2, [R5,#0x40]
49846A:  AND.W           R0, R9, #1
49846E:  BIC.W           R1, R3, #0xF
498472:  ORR.W           R0, R0, R1
498476:  MOV             R1, R5
498478:  ORR.W           R0, R0, #2
49847C:  STRB.W          R0, [R5,#0x48]
498480:  STR.W           R6, [R1,#0xC]!; CEntity **
498484:  BEQ             loc_498490
498486:  MOV             R0, R6; this
498488:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49848C:  LDRB.W          R0, [R5,#0x48]
498490:  LDR             R1, [R4,#0x44]
498492:  AND.W           R0, R0, #0xF7
498496:  STR             R1, [R5,#0x44]
498498:  LDRB.W          R1, [R4,#0x48]
49849C:  AND.W           R1, R1, #8
4984A0:  ORRS            R0, R1
4984A2:  STRB.W          R0, [R5,#0x48]
4984A6:  LDR             R0, [R4,#0x20]
4984A8:  STR             R0, [R5,#0x20]
4984AA:  LDR             R0, [R4,#0x44]
4984AC:  STR             R0, [R5,#0x44]
4984AE:  MOV             R0, R5
4984B0:  VPOP            {D8-D9}
4984B4:  POP.W           {R8,R9,R11}
4984B8:  POP             {R4-R7,PC}
