; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormation18CreateFirstSubTaskEP4CPed
; Address            : 0x544DD4 - 0x544E18
; =========================================================

544DD4:  PUSH            {R7,LR}
544DD6:  MOV             R7, SP
544DD8:  MOV             R2, R1; CPed *
544DDA:  LDRB.W          R1, [R2,#0x485]
544DDE:  LSLS            R1, R1, #0x1F
544DE0:  ITT NE
544DE2:  LDRNE.W         LR, [R2,#0x590]
544DE6:  CMPNE.W         LR, #0
544DEA:  BNE             loc_544DF6
544DEC:  MOVW            R1, #0x38B; int
544DF0:  POP.W           {R7,LR}
544DF4:  B               _ZN35CTaskComplexFollowLeaderInFormation13CreateSubTaskEiPK4CPed; CTaskComplexFollowLeaderInFormation::CreateSubTask(int,CPed const*)
544DF6:  LDR.W           R12, [R0,#0x10]
544DFA:  LDRB.W          R1, [R12,#0x485]
544DFE:  LSLS            R1, R1, #0x1F
544E00:  MOV.W           R1, #0x2C0
544E04:  BEQ             loc_544E12
544E06:  LDR.W           R3, [R12,#0x590]
544E0A:  CMP             R3, LR
544E0C:  IT EQ
544E0E:  MOVWEQ          R1, #0x2C5; int
544E12:  POP.W           {R7,LR}
544E16:  B               _ZN35CTaskComplexFollowLeaderInFormation13CreateSubTaskEiPK4CPed; CTaskComplexFollowLeaderInFormation::CreateSubTask(int,CPed const*)
