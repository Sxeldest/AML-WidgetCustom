; =========================================================
; Game Engine Function: _ZNK20CEventVehicleToSteal10AffectsPedEP4CPed
; Address            : 0x374FCC - 0x37506E
; =========================================================

374FCC:  PUSH            {R4-R7,LR}
374FCE:  ADD             R7, SP, #0xC
374FD0:  PUSH.W          {R11}
374FD4:  MOV             R4, R1
374FD6:  MOV             R5, R0
374FD8:  MOV             R0, R4; this
374FDA:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
374FDE:  CMP             R0, #1
374FE0:  BNE             loc_375008
374FE2:  LDR             R0, [R5,#0xC]
374FE4:  CBZ             R0, loc_375008
374FE6:  MOV.W           R0, #0xFFFFFFFF; int
374FEA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
374FEE:  LDR.W           R0, [R0,#0x440]
374FF2:  MOVS            R1, #3; int
374FF4:  MOVW            R2, #0x2BD; int
374FF8:  ADDS            R0, #4; this
374FFA:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
374FFE:  CMP             R0, #0
375000:  ITT NE
375002:  LDRNE           R0, [R0,#0xC]
375004:  CMPNE           R0, #0
375006:  BEQ             loc_375012
375008:  MOVS            R6, #0
37500A:  MOV             R0, R6
37500C:  POP.W           {R11}
375010:  POP             {R4-R7,PC}
375012:  MOV.W           R0, #0xFFFFFFFF; int
375016:  LDR             R6, [R5,#0xC]
375018:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
37501C:  LDR.W           R0, [R0,#0x590]; this
375020:  CMP             R6, R0
375022:  BEQ             loc_375046
375024:  LDR.W           R0, [R4,#0x59C]
375028:  MOVS            R6, #0
37502A:  CMP             R0, #6
37502C:  BEQ             loc_375060
37502E:  CMP             R0, #0x14
375030:  BNE             loc_37500A
375032:  LDR             R1, [R5,#0xC]
375034:  MOVS            R0, #0
375036:  LDR.W           R2, [R4,#0x590]
37503A:  CMP             R2, R1
37503C:  IT NE
37503E:  MOVNE           R0, #1
375040:  POP.W           {R11}
375044:  POP             {R4-R7,PC}
375046:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
37504A:  MOVS            R6, #0
37504C:  CMP             R0, #0
37504E:  BNE             loc_37500A
375050:  MOVS            R0, #0; this
375052:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
375056:  LDRB.W          R0, [R0,#0x110]
37505A:  LSLS            R0, R0, #0x1A
37505C:  BMI             loc_37500A
37505E:  B               loc_375024
375060:  LDR.W           R0, [R4,#0x590]
375064:  LDR             R1, [R5,#0xC]
375066:  CMP             R1, R0
375068:  IT EQ
37506A:  MOVEQ           R6, #1
37506C:  B               loc_37500A
