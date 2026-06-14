; =========================================================
; Game Engine Function: _ZNK8CVehicle15CanPedOpenLocksEPK4CPed
; Address            : 0x584D78 - 0x584DAC
; =========================================================

584D78:  PUSH            {R4,R6,R7,LR}
584D7A:  ADD             R7, SP, #8
584D7C:  MOV             R4, R0
584D7E:  LDR.W           R0, [R4,#0x508]
584D82:  CMP             R0, #7
584D84:  BHI             loc_584D96
584D86:  MOVS            R2, #1
584D88:  LSL.W           R0, R2, R0
584D8C:  TST.W           R0, #0xB4
584D90:  BEQ             loc_584D96
584D92:  MOVS            R0, #0
584D94:  POP             {R4,R6,R7,PC}
584D96:  MOV             R0, R1; this
584D98:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
584D9C:  CMP             R0, #1
584D9E:  ITT EQ
584DA0:  LDREQ.W         R0, [R4,#0x508]
584DA4:  CMPEQ           R0, #3
584DA6:  BEQ             loc_584D92
584DA8:  MOVS            R0, #1
584DAA:  POP             {R4,R6,R7,PC}
