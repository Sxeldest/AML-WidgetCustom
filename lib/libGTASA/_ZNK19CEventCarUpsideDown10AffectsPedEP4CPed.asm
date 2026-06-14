; =========================================================
; Game Engine Function: _ZNK19CEventCarUpsideDown10AffectsPedEP4CPed
; Address            : 0x3773A0 - 0x3773FE
; =========================================================

3773A0:  PUSH            {R4,R6,R7,LR}
3773A2:  ADD             R7, SP, #8
3773A4:  MOV             R4, R1
3773A6:  MOV             R0, R4; this
3773A8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3773AC:  CBNZ            R0, loc_3773F0
3773AE:  LDR.W           R0, [R4,#0x484]
3773B2:  MOV.W           R2, #0x20000
3773B6:  LDR.W           R1, [R4,#0x490]
3773BA:  BIC.W           R1, R2, R1
3773BE:  MOV.W           R2, #0x100
3773C2:  BIC.W           R0, R2, R0
3773C6:  ORRS            R0, R1
3773C8:  BNE             loc_3773F0
3773CA:  LDRB.W          R1, [R4,#0x448]
3773CE:  LDR.W           R0, [R4,#0x590]
3773D2:  CMP             R1, #2
3773D4:  BNE             loc_3773E4
3773D6:  CMP             R0, #0
3773D8:  ITT NE
3773DA:  LDRNE.W         R0, [R0,#0x5A0]
3773DE:  CMPNE           R0, #5
3773E0:  BEQ             loc_3773F0
3773E2:  B               loc_3773E8
3773E4:  LDR.W           R0, [R0,#0x5A0]
3773E8:  CMP             R0, #2
3773EA:  IT NE
3773EC:  CMPNE           R0, #9
3773EE:  BNE             loc_3773F4
3773F0:  MOVS            R0, #0
3773F2:  POP             {R4,R6,R7,PC}
3773F4:  MOV             R0, R4; this
3773F6:  POP.W           {R4,R6,R7,LR}
3773FA:  B.W             sub_196874
