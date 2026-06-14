; =========================================================
; Game Engine Function: _ZNK13CEventInWater10AffectsPedEP4CPed
; Address            : 0x376C64 - 0x376C9C
; =========================================================

376C64:  PUSH            {R4,R5,R7,LR}
376C66:  ADD             R7, SP, #8
376C68:  MOV             R4, R1
376C6A:  LDR.W           R0, [R4,#0x440]
376C6E:  ADDS            R0, #4; this
376C70:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
376C74:  MOV             R5, R0
376C76:  MOV             R0, R4; this
376C78:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
376C7C:  CBZ             R5, loc_376C92
376C7E:  CBNZ            R0, loc_376C92
376C80:  LDR             R0, [R5]
376C82:  LDR             R1, [R0,#0x14]
376C84:  MOV             R0, R5
376C86:  BLX             R1
376C88:  CMP.W           R0, #0x10C
376C8C:  ITT EQ
376C8E:  MOVEQ           R0, #0
376C90:  POPEQ           {R4,R5,R7,PC}
376C92:  MOV             R0, R4; this
376C94:  POP.W           {R4,R5,R7,LR}
376C98:  B.W             sub_196874
