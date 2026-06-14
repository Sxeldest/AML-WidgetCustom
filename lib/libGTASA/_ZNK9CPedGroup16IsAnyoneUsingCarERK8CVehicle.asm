; =========================================================
; Game Engine Function: _ZNK9CPedGroup16IsAnyoneUsingCarERK8CVehicle
; Address            : 0x4B70A8 - 0x4B7112
; =========================================================

4B70A8:  PUSH            {R4-R7,LR}
4B70AA:  ADD             R7, SP, #0xC
4B70AC:  PUSH.W          {R8}
4B70B0:  MOV             R8, R0
4B70B2:  MOV             R4, R1
4B70B4:  MOVS            R0, #3
4B70B6:  MOV             R6, R0
4B70B8:  LDR.W           R5, [R8,R6,LSL#2]
4B70BC:  CBZ             R5, loc_4B70FA
4B70BE:  LDR.W           R0, [R5,#0x590]
4B70C2:  CBZ             R0, loc_4B70D2
4B70C4:  CMP             R0, R4
4B70C6:  BNE             loc_4B70D2
4B70C8:  LDR.W           R0, [R5,#0x484]
4B70CC:  ANDS.W          R0, R0, #0x100
4B70D0:  BNE             loc_4B710A
4B70D2:  LDR.W           R0, [R5,#0x440]; this
4B70D6:  MOVW            R1, #0x2BD; int
4B70DA:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
4B70DE:  CBZ             R0, loc_4B70E6
4B70E0:  LDR             R0, [R0,#0xC]
4B70E2:  CMP             R0, R4
4B70E4:  BEQ             loc_4B710A
4B70E6:  LDR.W           R0, [R5,#0x440]; this
4B70EA:  MOV.W           R1, #0x2BC; int
4B70EE:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
4B70F2:  CBZ             R0, loc_4B70FA
4B70F4:  LDR             R0, [R0,#0xC]
4B70F6:  CMP             R0, R4
4B70F8:  BEQ             loc_4B710A
4B70FA:  SUBS            R1, R6, #3
4B70FC:  ADDS            R0, R6, #1
4B70FE:  CMP             R1, #7
4B7100:  BLT             loc_4B70B6
4B7102:  MOVS            R0, #0
4B7104:  POP.W           {R8}
4B7108:  POP             {R4-R7,PC}
4B710A:  MOVS            R0, #1
4B710C:  POP.W           {R8}
4B7110:  POP             {R4-R7,PC}
