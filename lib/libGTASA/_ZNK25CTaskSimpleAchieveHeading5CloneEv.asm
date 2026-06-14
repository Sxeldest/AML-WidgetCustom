; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleAchieveHeading5CloneEv
; Address            : 0x527444 - 0x52747C
; =========================================================

527444:  PUSH            {R4-R7,LR}
527446:  ADD             R7, SP, #0xC
527448:  PUSH.W          {R11}
52744C:  MOV             R4, R0
52744E:  MOVS            R0, #off_18; this
527450:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527454:  LDRD.W          R5, R6, [R4,#8]
527458:  LDR             R4, [R4,#0x10]
52745A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52745E:  LDR             R1, =(_ZTV25CTaskSimpleAchieveHeading_ptr - 0x527468)
527460:  STRD.W          R5, R6, [R0,#8]
527464:  ADD             R1, PC; _ZTV25CTaskSimpleAchieveHeading_ptr
527466:  STR             R4, [R0,#0x10]
527468:  LDRB            R2, [R0,#0x14]
52746A:  LDR             R1, [R1]; `vtable for'CTaskSimpleAchieveHeading ...
52746C:  ADDS            R1, #8
52746E:  STR             R1, [R0]
527470:  AND.W           R1, R2, #0xFE
527474:  STRB            R1, [R0,#0x14]
527476:  POP.W           {R11}
52747A:  POP             {R4-R7,PC}
