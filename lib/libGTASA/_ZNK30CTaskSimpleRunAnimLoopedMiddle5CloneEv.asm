; =========================================================
; Game Engine Function: _ZNK30CTaskSimpleRunAnimLoopedMiddle5CloneEv
; Address            : 0x4D831C - 0x4D842A
; =========================================================

4D831C:  PUSH            {R4-R7,LR}
4D831E:  ADD             R7, SP, #0xC
4D8320:  PUSH.W          {R8-R11}
4D8324:  SUB             SP, SP, #4
4D8326:  MOV             R5, R0
4D8328:  MOVS            R0, #dword_70; this
4D832A:  LDR             R6, [R5,#0x44]
4D832C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D8330:  MOV             R4, R0
4D8332:  CMP             R6, #0
4D8334:  BEQ             loc_4D83C4
4D8336:  LDRB            R0, [R5,#0xC]
4D8338:  STR             R0, [SP,#0x20+var_20]
4D833A:  MOV             R0, R4; this
4D833C:  LDR.W           R10, [R5,#0x5C]
4D8340:  LDRD.W          R9, R11, [R5,#0x48]
4D8344:  LDR.W           R8, [R5,#0x50]
4D8348:  LDR             R6, [R5,#0x18]
4D834A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D834E:  LDR             R0, =(_ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr - 0x4D835A)
4D8350:  MOV.W           R1, #0x1A8
4D8354:  STR             R6, [R4,#0x18]
4D8356:  ADD             R0, PC; _ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr
4D8358:  STR.W           R9, [R4,#0x48]
4D835C:  MOV.W           R9, #0
4D8360:  STRH.W          R1, [R4,#0x6C]
4D8364:  LDR             R0, [R0]; `vtable for'CTaskSimpleRunAnimLoopedMiddle ...
4D8366:  STR.W           R9, [R4,#8]
4D836A:  STRH.W          R9, [R4,#0x68]
4D836E:  ADDS            R0, #8
4D8370:  STRD.W          R11, R8, [R4,#0x4C]
4D8374:  ADD.W           R8, R4, #0x1C
4D8378:  STRD.W          R10, R9, [R4,#0x5C]
4D837C:  STR.W           R9, [R4,#0x64]
4D8380:  LDRB            R1, [R4,#0xC]
4D8382:  STR             R0, [R4]
4D8384:  LDR             R0, [SP,#0x20+var_20]
4D8386:  AND.W           R1, R1, #0xF8
4D838A:  AND.W           R0, R0, #4
4D838E:  ORRS            R0, R1
4D8390:  ADD.W           R1, R5, #0x1C; char *
4D8394:  STRB            R0, [R4,#0xC]
4D8396:  MOV             R0, R8; char *
4D8398:  BLX             strcpy
4D839C:  ADD.W           R6, R4, #0x34 ; '4'
4D83A0:  ADD.W           R1, R5, #0x34 ; '4'; char *
4D83A4:  MOV             R0, R6; char *
4D83A6:  BLX             strcpy
4D83AA:  MOV             R0, R6; this
4D83AC:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4D83B0:  MOV             R1, R0
4D83B2:  MOV             R0, R8
4D83B4:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
4D83B8:  STR             R0, [R4,#0x44]
4D83BA:  MOVS            R0, #0xBF
4D83BC:  STR.W           R9, [R4,#0x10]
4D83C0:  MOVS            R1, #0x14
4D83C2:  B               loc_4D841E
4D83C4:  LDRB            R0, [R5,#0xC]
4D83C6:  ADD.W           R11, R5, #0x48 ; 'H'
4D83CA:  STR             R0, [SP,#0x20+var_20]
4D83CC:  MOV             R0, R4; this
4D83CE:  LDR.W           R9, [R5,#0x5C]
4D83D2:  LDM.W           R11, {R6,R10,R11}
4D83D6:  LDRD.W          R8, R5, [R5,#0x10]
4D83DA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D83DE:  LDR             R1, =(_ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr - 0x4D83EE)
4D83E0:  MOVS            R0, #0
4D83E2:  MOV.W           R2, #0x1A8
4D83E6:  STR.W           R8, [R4,#0x10]
4D83EA:  ADD             R1, PC; _ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr
4D83EC:  STR             R5, [R4,#0x14]
4D83EE:  STR             R0, [R4,#8]
4D83F0:  LDR             R1, [R1]; `vtable for'CTaskSimpleRunAnimLoopedMiddle ...
4D83F2:  STR             R6, [R4,#0x48]
4D83F4:  STRH.W          R0, [R4,#0x68]
4D83F8:  ADDS            R1, #8
4D83FA:  STRH.W          R2, [R4,#0x6C]
4D83FE:  STRD.W          R10, R11, [R4,#0x4C]
4D8402:  STR             R0, [R4,#0x44]
4D8404:  STRD.W          R9, R0, [R4,#0x5C]
4D8408:  STR             R0, [R4,#0x64]
4D840A:  LDRB            R2, [R4,#0xC]
4D840C:  STR             R1, [R4]
4D840E:  LDR             R1, [SP,#0x20+var_20]
4D8410:  AND.W           R2, R2, #0xF8
4D8414:  AND.W           R1, R1, #4
4D8418:  ORRS            R1, R2
4D841A:  STRB            R1, [R4,#0xC]
4D841C:  MOVS            R1, #0x18
4D841E:  STR             R0, [R4,R1]
4D8420:  MOV             R0, R4
4D8422:  ADD             SP, SP, #4
4D8424:  POP.W           {R8-R11}
4D8428:  POP             {R4-R7,PC}
