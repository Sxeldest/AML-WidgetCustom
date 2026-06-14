; =========================================================
; Game Engine Function: _ZN12CFireManager16RemoveScriptFireEs
; Address            : 0x3F33C0 - 0x3F343A
; =========================================================

3F33C0:  PUSH            {R4-R7,LR}
3F33C2:  ADD             R7, SP, #0xC
3F33C4:  PUSH.W          {R11}
3F33C8:  ADD.W           R2, R1, R1,LSL#2
3F33CC:  LDRB.W          R1, [R0,R2,LSL#3]
3F33D0:  TST.W           R1, #2
3F33D4:  BEQ             loc_3F3434
3F33D6:  ADD.W           R4, R0, R2,LSL#3
3F33DA:  TST.W           R1, #1
3F33DE:  AND.W           R0, R1, #0xFD
3F33E2:  STRB            R0, [R4]
3F33E4:  BEQ             loc_3F3434
3F33E6:  AND.W           R0, R1, #0xE4
3F33EA:  MOVS            R5, #0
3F33EC:  STR             R5, [R4,#0x18]
3F33EE:  ORR.W           R0, R0, #0x10
3F33F2:  STRB            R0, [R4]
3F33F4:  MOV             R6, R4
3F33F6:  LDR.W           R0, [R6,#0x24]!; this
3F33FA:  CBZ             R0, loc_3F3402
3F33FC:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
3F3400:  STR             R5, [R6]
3F3402:  LDR.W           R0, [R4,#0x10]!
3F3406:  CBZ             R0, loc_3F3434
3F3408:  LDRB.W          R1, [R0,#0x3A]
3F340C:  AND.W           R1, R1, #7
3F3410:  CMP             R1, #2
3F3412:  BEQ             loc_3F341E
3F3414:  CMP             R1, #3
3F3416:  BNE             loc_3F342A
3F3418:  ADD.W           R0, R0, #0x738
3F341C:  B               loc_3F3422
3F341E:  ADDW            R0, R0, #0x494
3F3422:  MOVS            R1, #0
3F3424:  STR             R1, [R0]
3F3426:  LDR             R0, [R4]; this
3F3428:  CBZ             R0, loc_3F3430
3F342A:  MOV             R1, R4; CEntity **
3F342C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F3430:  MOVS            R0, #0
3F3432:  STR             R0, [R4]
3F3434:  POP.W           {R11}
3F3438:  POP             {R4-R7,PC}
