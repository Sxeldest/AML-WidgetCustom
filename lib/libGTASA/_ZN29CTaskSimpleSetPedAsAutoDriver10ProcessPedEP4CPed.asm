; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetPedAsAutoDriver10ProcessPedEP4CPed
; Address            : 0x505CEC - 0x505D3C
; =========================================================

505CEC:  PUSH            {R4,R6,R7,LR}
505CEE:  ADD             R7, SP, #8
505CF0:  MOV             R4, R0
505CF2:  LDR             R0, [R4,#8]; this
505CF4:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
505CF8:  LDR             R0, [R4,#8]
505CFA:  MOVS            R2, #3
505CFC:  LDRB.W          R1, [R0,#0x3A]
505D00:  BFI.W           R1, R2, #3, #0x1D
505D04:  STRB.W          R1, [R0,#0x3A]
505D08:  LDR             R0, [R4,#8]
505D0A:  MOVS            R1, #1
505D0C:  STRB.W          R1, [R0,#0x3BE]
505D10:  MOVS            R1, #0xA
505D12:  LDR             R0, [R4,#8]
505D14:  STRB.W          R1, [R0,#0x3D4]
505D18:  LDR             R0, [R4,#8]
505D1A:  LDR.W           R1, [R0,#0x42C]
505D1E:  LDR.W           R2, [R0,#0x430]
505D22:  BIC.W           R3, R1, #0x10
505D26:  TST.W           R2, #0x200
505D2A:  IT EQ
505D2C:  ORREQ.W         R3, R1, #0x10
505D30:  STR.W           R3, [R0,#0x42C]
505D34:  STR.W           R2, [R0,#0x430]
505D38:  MOVS            R0, #1
505D3A:  POP             {R4,R6,R7,PC}
