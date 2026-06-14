; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt18CreateFirstSubTaskEP4CPed
; Address            : 0x50D284 - 0x50D3C6
; =========================================================

50D284:  PUSH            {R4-R7,LR}
50D286:  ADD             R7, SP, #0xC
50D288:  PUSH.W          {R8-R10}
50D28C:  SUB             SP, SP, #0x10
50D28E:  MOV             R5, R0
50D290:  MOV             R4, R1
50D292:  LDRB.W          R0, [R5,#0x49]
50D296:  MOV             R9, #0xFFFFFFBF
50D29A:  MOV.W           R10, #0xFFFFFFFF
50D29E:  LSLS            R0, R0, #0x1D
50D2A0:  BPL             loc_50D2CA
50D2A2:  LDR             R6, [R5,#0x38]
50D2A4:  CMP             R6, #0
50D2A6:  BEQ             loc_50D374
50D2A8:  LDR             R1, [R6,#0x14]
50D2AA:  ADD.W           R8, R5, #0x14
50D2AE:  CBNZ            R1, loc_50D2C0
50D2B0:  MOV             R0, R6; this
50D2B2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
50D2B6:  LDR             R1, [R6,#0x14]; CMatrix *
50D2B8:  ADDS            R0, R6, #4; this
50D2BA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
50D2BE:  LDR             R1, [R6,#0x14]; CMatrix *
50D2C0:  ADD.W           R2, R5, #0x3C ; '<'; CVector *
50D2C4:  MOV             R0, R8; this
50D2C6:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
50D2CA:  LDR.W           R3, [R4,#0x490]
50D2CE:  LDR.W           R0, [R4,#0x484]
50D2D2:  LDR.W           R1, [R4,#0x488]; unsigned int
50D2D6:  ORR.W           R6, R3, #0x40 ; '@'
50D2DA:  LDR.W           R2, [R4,#0x48C]
50D2DE:  STR.W           R6, [R4,#0x490]
50D2E2:  LDRSB.W         R6, [R5,#0x48]
50D2E6:  SUBS            R5, R6, #1
50D2E8:  CMP             R5, #3
50D2EA:  BCC             loc_50D31A
50D2EC:  SUBS            R5, R6, #6
50D2EE:  CMP             R5, #2
50D2F0:  BCS             loc_50D342
50D2F2:  MOVS            R0, #dword_20; this
50D2F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D2F8:  LDR             R1, =(aHitwall - 0x50D304); "HitWall"
50D2FA:  MOVS            R2, #0
50D2FC:  MOVW            R3, #0x19B
50D300:  ADD             R1, PC; "HitWall"
50D302:  STRD.W          R3, R1, [SP,#0x28+var_28]
50D306:  MOVS            R1, #0
50D308:  STR             R2, [SP,#0x28+var_20]
50D30A:  MOVS            R2, #0x26 ; '&'
50D30C:  MOV.W           R3, #0x40800000
50D310:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50D314:  LDR             R1, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50D31A)
50D316:  ADD             R1, PC; _ZTV18CTaskSimpleHitWall_ptr
50D318:  B               loc_50D36C
50D31A:  MOVS            R0, #dword_20; this
50D31C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D320:  LDR             R1, =(aScratchhead - 0x50D32C); "ScratchHead"
50D322:  MOVS            R2, #0
50D324:  MOVW            R3, #0x1A5
50D328:  ADD             R1, PC; "ScratchHead"
50D32A:  STRD.W          R3, R1, [SP,#0x28+var_28]
50D32E:  MOVS            R1, #0
50D330:  STR             R2, [SP,#0x28+var_20]
50D332:  MOVS            R2, #0x87
50D334:  MOV.W           R3, #0x40800000
50D338:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50D33C:  LDR             R1, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x50D342)
50D33E:  ADD             R1, PC; _ZTV22CTaskSimpleScratchHead_ptr
50D340:  B               loc_50D36C
50D342:  CMP             R6, #4
50D344:  BNE             loc_50D3A6
50D346:  MOVS            R0, #dword_20; this
50D348:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D34C:  LDR             R1, =(aScratchhead - 0x50D358); "ScratchHead"
50D34E:  MOVS            R2, #0
50D350:  MOVW            R3, #0x1A5
50D354:  ADD             R1, PC; "ScratchHead"
50D356:  STRD.W          R3, R1, [SP,#0x28+var_28]
50D35A:  MOVS            R1, #0
50D35C:  STR             R2, [SP,#0x28+var_20]
50D35E:  MOVS            R2, #0x87
50D360:  MOV.W           R3, #0x40800000
50D364:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50D368:  LDR             R1, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x50D36E)
50D36A:  ADD             R1, PC; _ZTV22CTaskSimpleScratchHead_ptr
50D36C:  LDR             R1, [R1]; `vtable for'CTaskSimpleScratchHead
50D36E:  ADDS            R1, #8
50D370:  STR             R1, [R0]
50D372:  B               loc_50D3BE
50D374:  LDR.W           R0, [R4,#0x484]
50D378:  LDR.W           R1, [R4,#0x488]
50D37C:  LDR.W           R2, [R4,#0x48C]
50D380:  AND.W           R0, R0, R10
50D384:  LDR.W           R3, [R4,#0x490]
50D388:  AND.W           R1, R1, R10
50D38C:  STR.W           R0, [R4,#0x484]
50D390:  AND.W           R2, R2, R10
50D394:  STR.W           R1, [R4,#0x488]
50D398:  AND.W           R3, R3, R9
50D39C:  STR.W           R2, [R4,#0x48C]
50D3A0:  STR.W           R3, [R4,#0x490]
50D3A4:  B               loc_50D3BC
50D3A6:  ADDW            R6, R4, #0x484
50D3AA:  AND.W           R0, R0, R10
50D3AE:  AND.W           R1, R1, R10
50D3B2:  AND.W           R2, R2, R10
50D3B6:  AND.W           R3, R3, R9
50D3BA:  STM             R6!, {R0-R3}
50D3BC:  MOVS            R0, #0
50D3BE:  ADD             SP, SP, #0x10
50D3C0:  POP.W           {R8-R10}
50D3C4:  POP             {R4-R7,PC}
