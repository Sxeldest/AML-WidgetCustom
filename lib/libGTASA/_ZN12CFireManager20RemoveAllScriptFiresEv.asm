; =========================================================
; Game Engine Function: _ZN12CFireManager20RemoveAllScriptFiresEv
; Address            : 0x3F343A - 0x3F34C2
; =========================================================

3F343A:  PUSH            {R4-R7,LR}
3F343C:  ADD             R7, SP, #0xC
3F343E:  PUSH.W          {R8}
3F3442:  MOV             R4, R0
3F3444:  MOV.W           R8, #0
3F3448:  MOVS            R6, #0
3F344A:  LDRB            R0, [R4,R6]
3F344C:  TST.W           R0, #2
3F3450:  BEQ             loc_3F34B4
3F3452:  TST.W           R0, #1
3F3456:  AND.W           R1, R0, #0xFD
3F345A:  STRB            R1, [R4,R6]
3F345C:  BEQ             loc_3F34B4
3F345E:  AND.W           R0, R0, #0xE4
3F3462:  ADDS            R5, R4, R6
3F3464:  ORR.W           R0, R0, #0x10
3F3468:  STRB            R0, [R4,R6]
3F346A:  LDR             R0, [R5,#0x24]; this
3F346C:  STR.W           R8, [R5,#0x18]
3F3470:  CBZ             R0, loc_3F347A
3F3472:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
3F3476:  STR.W           R8, [R5,#0x24]
3F347A:  MOV             R1, R5
3F347C:  LDR.W           R0, [R1,#0x10]!; CEntity **
3F3480:  CBZ             R0, loc_3F34B4
3F3482:  LDRB.W          R2, [R0,#0x3A]
3F3486:  AND.W           R2, R2, #7
3F348A:  CMP             R2, #2
3F348C:  BEQ             loc_3F3498
3F348E:  CMP             R2, #3
3F3490:  BNE             loc_3F34AC
3F3492:  ADD.W           R0, R0, #0x738
3F3496:  B               loc_3F349C
3F3498:  ADDW            R0, R0, #0x494
3F349C:  STR.W           R8, [R0]
3F34A0:  LDR             R0, [R5,#0x10]; this
3F34A2:  CMP             R0, #0
3F34A4:  IT NE
3F34A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F34AA:  B               loc_3F34B0
3F34AC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F34B0:  STR.W           R8, [R5,#0x10]
3F34B4:  ADDS            R6, #0x28 ; '('
3F34B6:  CMP.W           R6, #0x960
3F34BA:  BNE             loc_3F344A
3F34BC:  POP.W           {R8}
3F34C0:  POP             {R4-R7,PC}
