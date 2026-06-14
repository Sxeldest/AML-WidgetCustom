; =========================================================
; Game Engine Function: _ZNK16CEventGunAimedAt17TakesPriorityOverERK6CEvent
; Address            : 0x3761B8 - 0x37621A
; =========================================================

3761B8:  PUSH            {R4,R5,R7,LR}
3761BA:  ADD             R7, SP, #8
3761BC:  MOV             R5, R0
3761BE:  MOV             R4, R1
3761C0:  LDR             R0, [R5,#0x10]; this
3761C2:  CBZ             R0, loc_3761FC
3761C4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3761C8:  CMP             R0, #1
3761CA:  BNE             loc_3761FC
3761CC:  LDR             R0, [R4]
3761CE:  LDR             R1, [R0,#0x2C]
3761D0:  MOV             R0, R4
3761D2:  BLX             R1
3761D4:  LDR             R1, [R5,#0x10]
3761D6:  CMP             R0, R1
3761D8:  BEQ             loc_3761FC
3761DA:  LDR             R0, [R4]
3761DC:  LDR             R1, [R0,#8]
3761DE:  MOV             R0, R4
3761E0:  BLX             R1
3761E2:  SUB.W           R1, R0, #9
3761E6:  CMP             R1, #0x1E
3761E8:  BHI             loc_3761FC
3761EA:  MOVS            R2, #1
3761EC:  MOVS            R0, #1
3761EE:  LSL.W           R1, R0, R1
3761F2:  MOVT            R2, #0x4800
3761F6:  TST             R1, R2
3761F8:  IT NE
3761FA:  POPNE           {R4,R5,R7,PC}
3761FC:  LDR             R0, [R5]
3761FE:  LDR             R1, [R0,#0xC]
376200:  MOV             R0, R5
376202:  BLX             R1
376204:  MOV             R5, R0
376206:  LDR             R0, [R4]
376208:  LDR             R1, [R0,#0xC]
37620A:  MOV             R0, R4
37620C:  BLX             R1
37620E:  MOV             R1, R0
376210:  MOVS            R0, #0
376212:  CMP             R5, R1
376214:  IT GE
376216:  MOVGE           R0, #1
376218:  POP             {R4,R5,R7,PC}
