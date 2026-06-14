; =========================================================
; Game Engine Function: _ZN13CAcquaintance17SetAsAcquaintanceEij
; Address            : 0x4C345E - 0x4C34C6
; =========================================================

4C345E:  LDR.W           R3, [R0,R1,LSL#2]
4C3462:  TST             R3, R2
4C3464:  IT NE
4C3466:  BXNE            LR
4C3468:  MVN.W           R12, R2
4C346C:  CMP             R1, #0
4C346E:  ORR.W           R3, R3, R2
4C3472:  STR.W           R3, [R0,R1,LSL#2]
4C3476:  BEQ             loc_4C3488
4C3478:  LDR             R3, [R0]
4C347A:  TST             R3, R2
4C347C:  ITT NE
4C347E:  ANDNE.W         R3, R3, R12
4C3482:  STRNE           R3, [R0]
4C3484:  CMP             R1, #1
4C3486:  BEQ             loc_4C3498
4C3488:  LDR             R3, [R0,#4]
4C348A:  TST             R3, R2
4C348C:  ITT NE
4C348E:  ANDNE.W         R3, R3, R12
4C3492:  STRNE           R3, [R0,#4]
4C3494:  CMP             R1, #2
4C3496:  BEQ             loc_4C34A8
4C3498:  LDR             R3, [R0,#8]
4C349A:  TST             R3, R2
4C349C:  ITT NE
4C349E:  ANDNE.W         R3, R3, R12
4C34A2:  STRNE           R3, [R0,#8]
4C34A4:  CMP             R1, #3
4C34A6:  BEQ             loc_4C34B8
4C34A8:  LDR             R3, [R0,#0xC]
4C34AA:  TST             R3, R2
4C34AC:  ITT NE
4C34AE:  ANDNE.W         R3, R3, R12
4C34B2:  STRNE           R3, [R0,#0xC]
4C34B4:  CMP             R1, #4
4C34B6:  BEQ             locret_4C34C4
4C34B8:  LDR             R1, [R0,#0x10]
4C34BA:  TST             R1, R2
4C34BC:  ITT NE
4C34BE:  ANDNE.W         R1, R1, R12
4C34C2:  STRNE           R1, [R0,#0x10]
4C34C4:  BX              LR
