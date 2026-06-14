; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleClimb5CloneEv
; Address            : 0x533294 - 0x533334
; =========================================================

533294:  PUSH            {R4-R7,LR}
533296:  ADD             R7, SP, #0xC
533298:  PUSH.W          {R8-R11}
53329C:  SUB             SP, SP, #0xC
53329E:  MOV             R5, R0
5332A0:  MOVS            R0, #word_30; this
5332A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5332A6:  MOV             R4, R0
5332A8:  LDRB            R0, [R5,#0xB]
5332AA:  STR             R0, [SP,#0x28+var_20]
5332AC:  LDRB            R0, [R5,#0xD]
5332AE:  STR             R0, [SP,#0x28+var_24]
5332B0:  MOV             R0, R4; this
5332B2:  LDRB.W          R11, [R5,#0xF]
5332B6:  LDR.W           R10, [R5,#0x14]
5332BA:  LDR.W           R9, [R5,#0x24]
5332BE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5332C2:  LDR             R0, =(_ZTV16CTaskSimpleClimb_ptr - 0x5332D2)
5332C4:  MOV.W           R8, #0
5332C8:  STRH.W          R8, [R4,#8]
5332CC:  MOV             R6, R4
5332CE:  ADD             R0, PC; _ZTV16CTaskSimpleClimb_ptr
5332D0:  STRB.W          R8, [R4,#0xA]
5332D4:  STRB.W          R8, [R4,#0xC]
5332D8:  LDR             R0, [R0]; `vtable for'CTaskSimpleClimb ...
5332DA:  STR.W           R8, [R4,#0x2C]
5332DE:  ADDS            R0, #8
5332E0:  STR             R0, [R4]
5332E2:  MOV.W           R0, #(elf_hash_bucket+0x304); this
5332E6:  STR.W           R9, [R6,#0x24]!
5332EA:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
5332EE:  LDR             R0, [R6]; this
5332F0:  ADDS            R5, #0x18
5332F2:  ADD.W           R9, R4, #0x18
5332F6:  CMP             R0, #0
5332F8:  ITT NE
5332FA:  MOVNE           R1, R6; CEntity **
5332FC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
533300:  VLDR            D16, [R5]
533304:  LDR             R0, [R5,#8]
533306:  STR.W           R0, [R9,#8]
53330A:  VSTR            D16, [R9]
53330E:  STRB.W          R11, [R4,#0xF]
533312:  STR.W           R10, [R4,#0x14]
533316:  LDR             R0, [SP,#0x28+var_24]
533318:  STRB            R0, [R4,#0xD]
53331A:  LDR             R0, [SP,#0x28+var_20]
53331C:  STRB            R0, [R4,#0xB]
53331E:  MOVS            R0, #0xFF
533320:  STRB.W          R8, [R4,#0xE]
533324:  STRB            R0, [R4,#0x10]
533326:  MOV             R0, R4
533328:  STRH.W          R8, [R4,#0x28]
53332C:  ADD             SP, SP, #0xC
53332E:  POP.W           {R8-R11}
533332:  POP             {R4-R7,PC}
