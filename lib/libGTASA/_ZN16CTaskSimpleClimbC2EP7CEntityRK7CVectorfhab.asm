; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimbC2EP7CEntityRK7CVectorfhab
; Address            : 0x52E32C - 0x52E3C6
; =========================================================

52E32C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleClimb::CTaskSimpleClimb(CEntity *, CVector const&, float, unsigned char, signed char, bool)'
52E32E:  ADD             R7, SP, #0xC
52E330:  PUSH.W          {R8-R11}
52E334:  SUB             SP, SP, #4
52E336:  VPUSH           {D8}
52E33A:  MOV             R8, R3
52E33C:  MOV             R9, R2
52E33E:  MOV             R10, R1
52E340:  MOV             R4, R0
52E342:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52E346:  LDR             R0, =(_ZTV16CTaskSimpleClimb_ptr - 0x52E356)
52E348:  MOV.W           R11, #0
52E34C:  STRH.W          R11, [R4,#8]
52E350:  MOV             R6, R4
52E352:  ADD             R0, PC; _ZTV16CTaskSimpleClimb_ptr
52E354:  STRB.W          R11, [R4,#0xA]
52E358:  STRB.W          R11, [R4,#0xC]
52E35C:  LDR             R0, [R0]; `vtable for'CTaskSimpleClimb ...
52E35E:  STR.W           R11, [R4,#0x2C]
52E362:  ADDS            R0, #8
52E364:  STR             R0, [R4]
52E366:  MOV.W           R0, #(elf_hash_bucket+0x304); this
52E36A:  STR.W           R10, [R6,#0x24]!
52E36E:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
52E372:  LDRD.W          R10, R2, [R7,#arg_0]
52E376:  VMOV            S16, R8
52E37A:  LDR             R0, [R6]; this
52E37C:  ADD.W           R5, R4, #0x18
52E380:  LDR             R1, [R7,#arg_8]
52E382:  CBZ             R0, loc_52E392
52E384:  MOV             R8, R1
52E386:  MOV             R1, R6; CEntity **
52E388:  MOV             R6, R2
52E38A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52E38E:  MOV             R2, R6
52E390:  MOV             R1, R8
52E392:  VLDR            D16, [R9]
52E396:  LDR.W           R0, [R9,#8]
52E39A:  STR             R0, [R5,#8]
52E39C:  MOVS            R0, #0xFF
52E39E:  VSTR            D16, [R5]
52E3A2:  STRB.W          R10, [R4,#0xF]
52E3A6:  VSTR            S16, [R4,#0x14]
52E3AA:  STRB            R2, [R4,#0xD]
52E3AC:  STRB            R1, [R4,#0xB]
52E3AE:  STRB.W          R11, [R4,#0xE]
52E3B2:  STRB            R0, [R4,#0x10]
52E3B4:  MOV             R0, R4
52E3B6:  STRH.W          R11, [R4,#0x28]
52E3BA:  VPOP            {D8}
52E3BE:  ADD             SP, SP, #4
52E3C0:  POP.W           {R8-R11}
52E3C4:  POP             {R4-R7,PC}
