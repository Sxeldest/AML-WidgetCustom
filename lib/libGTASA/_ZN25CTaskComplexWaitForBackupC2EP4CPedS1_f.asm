; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackupC2EP4CPedS1_f
; Address            : 0x547320 - 0x547378
; =========================================================

547320:  PUSH            {R4-R7,LR}
547322:  ADD             R7, SP, #0xC
547324:  PUSH.W          {R8}
547328:  MOV             R6, R3
54732A:  MOV             R5, R2
54732C:  MOV             R8, R1
54732E:  MOV             R4, R0
547330:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
547334:  LDR             R0, =(_ZTV25CTaskComplexWaitForBackup_ptr - 0x547340)
547336:  MOVS            R1, #0
547338:  STR             R6, [R4,#0xC]
54733A:  MOV             R6, R4
54733C:  ADD             R0, PC; _ZTV25CTaskComplexWaitForBackup_ptr
54733E:  STRH            R1, [R4,#0x20]
547340:  STRD.W          R1, R1, [R4,#0x18]
547344:  MOV             R1, R4
547346:  LDR             R0, [R0]; `vtable for'CTaskComplexWaitForBackup ...
547348:  CMP.W           R8, #0
54734C:  ADD.W           R0, R0, #8
547350:  STR             R0, [R4]
547352:  STR.W           R5, [R6,#0x14]!
547356:  STR.W           R8, [R1,#0x10]!; CEntity **
54735A:  BEQ             loc_547364
54735C:  MOV             R0, R8; this
54735E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547362:  LDR             R5, [R6]
547364:  CMP             R5, #0
547366:  ITTT NE
547368:  MOVNE           R0, R5; this
54736A:  MOVNE           R1, R6; CEntity **
54736C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547370:  MOV             R0, R4
547372:  POP.W           {R8}
547376:  POP             {R4-R7,PC}
