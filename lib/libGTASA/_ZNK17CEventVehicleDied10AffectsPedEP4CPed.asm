; =========================================================
; Game Engine Function: _ZNK17CEventVehicleDied10AffectsPedEP4CPed
; Address            : 0x3767CC - 0x37681E
; =========================================================

3767CC:  PUSH            {R4,R5,R7,LR}
3767CE:  ADD             R7, SP, #8
3767D0:  MOV             R4, R1
3767D2:  MOV             R5, R0
3767D4:  MOV             R0, R4; this
3767D6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3767DA:  CMP             R0, #1
3767DC:  BNE             loc_37681A
3767DE:  LDRB            R0, [R5,#0x10]
3767E0:  CBNZ            R0, loc_376804
3767E2:  LDR.W           R0, [R4,#0x440]
3767E6:  MOV.W           R1, #0x2C0; int
3767EA:  ADDS            R0, #4; this
3767EC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3767F0:  CMP             R0, #0
3767F2:  IT NE
3767F4:  MOVNE           R0, #1
3767F6:  STRB            R0, [R5,#0x10]
3767F8:  ITT EQ
3767FA:  LDRBEQ.W        R0, [R4,#0x485]
3767FE:  MOVSEQ.W        R0, R0,LSL#31
376802:  BEQ             loc_37681A
376804:  LDR             R1, [R5,#0xC]
376806:  MOVS            R0, #0
376808:  CMP             R1, #0
37680A:  IT EQ
37680C:  POPEQ           {R4,R5,R7,PC}
37680E:  LDR.W           R2, [R4,#0x590]
376812:  CMP             R2, R1
376814:  IT EQ
376816:  MOVEQ           R0, #1
376818:  POP             {R4,R5,R7,PC}
37681A:  MOVS            R0, #0
37681C:  POP             {R4,R5,R7,PC}
