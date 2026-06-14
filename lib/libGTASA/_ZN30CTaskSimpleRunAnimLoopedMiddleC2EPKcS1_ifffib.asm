; =========================================================
; Game Engine Function: _ZN30CTaskSimpleRunAnimLoopedMiddleC2EPKcS1_ifffib
; Address            : 0x4D731C - 0x4D73B6
; =========================================================

4D731C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleRunAnimLoopedMiddle::CTaskSimpleRunAnimLoopedMiddle(char const*, char const*, int, float, float, float, int, bool)'
4D731E:  ADD             R7, SP, #0xC
4D7320:  PUSH.W          {R8,R9,R11}
4D7324:  MOV             R5, R3
4D7326:  MOV             R8, R2
4D7328:  MOV             R6, R1
4D732A:  MOV             R4, R0
4D732C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D7330:  LDR             R0, =(_ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr - 0x4D733E)
4D7332:  MOV.W           R9, #0
4D7336:  LDRD.W          R1, R2, [R7,#arg_C]
4D733A:  ADD             R0, PC; _ZTV30CTaskSimpleRunAnimLoopedMiddle_ptr
4D733C:  STR.W           R9, [R4,#8]
4D7340:  STR             R5, [R4,#0x18]
4D7342:  MOV.W           R5, #0x1A8
4D7346:  STRH.W          R9, [R4,#0x68]
4D734A:  LDRB            R3, [R4,#0xC]
4D734C:  VLDR            S0, [R7,#arg_8]
4D7350:  VLDR            S2, [R7,#arg_4]
4D7354:  VLDR            S4, [R7,#arg_0]
4D7358:  LDR             R0, [R0]; `vtable for'CTaskSimpleRunAnimLoopedMiddle ...
4D735A:  STRH.W          R5, [R4,#0x6C]
4D735E:  ADD.W           R5, R4, #0x1C
4D7362:  VSTR            S4, [R4,#0x48]
4D7366:  ADDS            R0, #8
4D7368:  VSTR            S2, [R4,#0x4C]
4D736C:  VSTR            S0, [R4,#0x50]
4D7370:  STRD.W          R1, R9, [R4,#0x5C]
4D7374:  AND.W           R1, R3, #0xF8
4D7378:  ORR.W           R1, R1, R2,LSL#2
4D737C:  STR.W           R9, [R4,#0x64]
4D7380:  STRB            R1, [R4,#0xC]
4D7382:  MOV             R1, R6; char *
4D7384:  STR             R0, [R4]
4D7386:  MOV             R0, R5; char *
4D7388:  BLX             strcpy
4D738C:  ADD.W           R6, R4, #0x34 ; '4'
4D7390:  MOV             R1, R8; char *
4D7392:  MOV             R0, R6; char *
4D7394:  BLX             strcpy
4D7398:  MOV             R0, R6; this
4D739A:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4D739E:  MOV             R1, R0
4D73A0:  MOV             R0, R5
4D73A2:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
4D73A6:  STR             R0, [R4,#0x44]
4D73A8:  MOVS            R0, #0xBF
4D73AA:  STRD.W          R9, R0, [R4,#0x10]
4D73AE:  MOV             R0, R4
4D73B0:  POP.W           {R8,R9,R11}
4D73B4:  POP             {R4-R7,PC}
