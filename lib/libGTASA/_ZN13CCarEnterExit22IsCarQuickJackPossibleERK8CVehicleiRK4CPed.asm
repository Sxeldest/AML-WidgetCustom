; =========================================================
; Game Engine Function: _ZN13CCarEnterExit22IsCarQuickJackPossibleERK8CVehicleiRK4CPed
; Address            : 0x5087BA - 0x5087FE
; =========================================================

5087BA:  PUSH            {R4,R5,R7,LR}
5087BC:  ADD             R7, SP, #8
5087BE:  MOV             R5, R0
5087C0:  CMP             R1, #0xA
5087C2:  ITT EQ
5087C4:  LDREQ.W         R0, [R5,#0x5A0]
5087C8:  CMPEQ           R0, #0
5087CA:  MOV             R4, R2
5087CC:  BEQ             loc_5087D2
5087CE:  MOVS            R0, #0
5087D0:  POP             {R4,R5,R7,PC}
5087D2:  LDR             R0, [R5]
5087D4:  MOVS            R1, #0xA
5087D6:  LDR.W           R2, [R0,#0x9C]
5087DA:  MOV             R0, R5
5087DC:  BLX             R2
5087DE:  CMP             R0, #0
5087E0:  BNE             loc_5087CE
5087E2:  LDR             R0, [R5]
5087E4:  MOVS            R1, #0xA
5087E6:  LDR.W           R2, [R0,#0x98]
5087EA:  MOV             R0, R5
5087EC:  BLX             R2
5087EE:  CMP             R0, #1
5087F0:  BNE             loc_5087CE
5087F2:  MOV             R0, R5; this
5087F4:  MOV             R1, R4; CPed *
5087F6:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
5087FA:  MOVS            R0, #0
5087FC:  POP             {R4,R5,R7,PC}
