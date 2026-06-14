; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOut19FinishAnimFallOutCBEP21CAnimBlendAssociationPv
; Address            : 0x505C12 - 0x505C60
; =========================================================

505C12:  PUSH            {R4,R5,R7,LR}
505C14:  ADD             R7, SP, #8
505C16:  MOVS            R0, #0
505C18:  MOVS            R2, #1
505C1A:  STR             R0, [R1,#0xC]
505C1C:  LDR             R0, [R1,#0x10]
505C1E:  STRB            R2, [R1,#8]
505C20:  CBZ             R0, locret_505C5E
505C22:  LDR.W           R2, [R0,#0x5A0]
505C26:  CMP             R2, #0
505C28:  IT NE
505C2A:  POPNE           {R4,R5,R7,PC}
505C2C:  LDR             R4, [R1,#0x14]
505C2E:  ADDW            R5, R0, #0x5B4
505C32:  MOV             R0, R5; this
505C34:  MOV             R1, R4; int
505C36:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
505C3A:  CBZ             R0, loc_505C48
505C3C:  MOV             R0, R5; this
505C3E:  MOV             R1, R4; int
505C40:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
505C44:  CMP             R0, #2
505C46:  BNE             locret_505C5E
505C48:  MOV             R0, R5; this
505C4A:  MOV             R1, R4; int
505C4C:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
505C50:  ADDS            R2, R0, #1; unsigned int
505C52:  MOV             R0, R5; this
505C54:  MOV             R1, R4; int
505C56:  POP.W           {R4,R5,R7,LR}
505C5A:  B.W             j_j__ZN14CDamageManager13SetDoorStatusEij; j_CDamageManager::SetDoorStatus(int,uint)
505C5E:  POP             {R4,R5,R7,PC}
