; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats14ControlSubTaskEP4CPed
; Address            : 0x4FCE6E - 0x4FCEB4
; =========================================================

4FCE6E:  PUSH            {R4-R7,LR}
4FCE70:  ADD             R7, SP, #0xC
4FCE72:  PUSH.W          {R11}
4FCE76:  MOV             R6, R0
4FCE78:  MOV             R5, R1
4FCE7A:  LDR             R4, [R6,#8]
4FCE7C:  LDR             R0, [R4]
4FCE7E:  LDR             R1, [R0,#0x14]
4FCE80:  MOV             R0, R4
4FCE82:  BLX             R1
4FCE84:  LDR             R0, [R6,#0xC]; this
4FCE86:  CBZ             R0, loc_4FCE98
4FCE88:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4FCE8C:  CMP             R0, #1
4FCE8E:  BNE             loc_4FCE98
4FCE90:  MOV             R0, R5; this
4FCE92:  BLX             j__ZN13CCarEnterExit12IsPedHealthyERK4CPed; CCarEnterExit::IsPedHealthy(CPed const&)
4FCE96:  CBNZ            R0, loc_4FCEAC
4FCE98:  LDR             R0, [R6,#8]
4FCE9A:  MOVS            R1, #1
4FCE9C:  STRB.W          R1, [R6,#0x28]
4FCEA0:  MOVS            R2, #0
4FCEA2:  MOVS            R3, #0
4FCEA4:  LDR             R1, [R0]
4FCEA6:  LDR             R6, [R1,#0x1C]
4FCEA8:  MOV             R1, R5
4FCEAA:  BLX             R6
4FCEAC:  MOV             R0, R4
4FCEAE:  POP.W           {R11}
4FCEB2:  POP             {R4-R7,PC}
