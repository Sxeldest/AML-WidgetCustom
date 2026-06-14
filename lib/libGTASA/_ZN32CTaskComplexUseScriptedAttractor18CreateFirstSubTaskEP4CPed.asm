; =========================================================
; Game Engine Function: _ZN32CTaskComplexUseScriptedAttractor18CreateFirstSubTaskEP4CPed
; Address            : 0x4EF510 - 0x4EF578
; =========================================================

4EF510:  LDR             R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x4EF518)
4EF512:  LDR             R0, [R0,#0xC]
4EF514:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
4EF516:  LDR             R1, [R1]; CScripted2dEffects::ms_effects ...
4EF518:  LDR             R0, [R0,#4]
4EF51A:  SUBS            R0, R0, R1
4EF51C:  ADD.W           R1, R0, #0x40 ; '@'
4EF520:  MOVS            R0, #0
4EF522:  SUBS            R1, #0x40 ; '@'
4EF524:  BEQ             loc_4EF536
4EF526:  ADDS            R2, R0, #1
4EF528:  CMP             R0, #0x3F ; '?'
4EF52A:  MOV             R0, R2
4EF52C:  ITT GE
4EF52E:  MOVGE           R0, #0
4EF530:  BXGE            LR
4EF532:  SUBS            R1, #0x40 ; '@'
4EF534:  BNE             loc_4EF526
4EF536:  PUSH            {R4,R6,R7,LR}
4EF538:  ADD             R7, SP, #0x10+var_8
4EF53A:  LDR             R1, =(_ZN18CScripted2dEffects24ms_effectSequenceTaskIDsE_ptr - 0x4EF540)
4EF53C:  ADD             R1, PC; _ZN18CScripted2dEffects24ms_effectSequenceTaskIDsE_ptr
4EF53E:  LDR             R1, [R1]; unsigned int
4EF540:  LDR.W           R4, [R1,R0,LSL#2]
4EF544:  MOVS            R0, #dword_1C; this
4EF546:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF54A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF54E:  LDR             R1, =(_ZTV23CTaskComplexUseSequence_ptr - 0x4EF55A)
4EF550:  MOV.W           R3, #0xFFFFFFFF
4EF554:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EF55C)
4EF556:  ADD             R1, PC; _ZTV23CTaskComplexUseSequence_ptr
4EF558:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EF55A:  LDR             R1, [R1]; `vtable for'CTaskComplexUseSequence ...
4EF55C:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
4EF55E:  ADDS            R1, #8
4EF560:  STR             R1, [R0]
4EF562:  MOVS            R1, #0
4EF564:  STRD.W          R4, R1, [R0,#0xC]
4EF568:  STRD.W          R3, R1, [R0,#0x14]
4EF56C:  ADD.W           R1, R2, R4,LSL#6
4EF570:  LDR             R2, [R1,#0x3C]
4EF572:  ADDS            R2, #1
4EF574:  STR             R2, [R1,#0x3C]
4EF576:  POP             {R4,R6,R7,PC}
