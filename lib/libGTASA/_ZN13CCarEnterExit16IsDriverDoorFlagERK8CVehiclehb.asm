; =========================================================
; Game Engine Function: _ZN13CCarEnterExit16IsDriverDoorFlagERK8CVehiclehb
; Address            : 0x5085F8 - 0x508624
; =========================================================

5085F8:  CMP             R2, #1
5085FA:  BNE             loc_508610
5085FC:  LDR.W           R2, [R0,#0x5A0]
508600:  CMP             R2, #9
508602:  BEQ             loc_50861A
508604:  LDR.W           R0, [R0,#0x388]
508608:  LDRB.W          R0, [R0,#0xCD]
50860C:  LSLS            R0, R0, #0x1E
50860E:  BMI             loc_50861A
508610:  CMP             R1, #1
508612:  IT NE
508614:  MOVNE           R1, #0
508616:  MOV             R0, R1
508618:  BX              LR
50861A:  MOVS            R0, #0
50861C:  CMP             R1, #5
50861E:  IT EQ
508620:  MOVEQ           R0, #1
508622:  BX              LR
