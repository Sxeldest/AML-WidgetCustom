; =========================================================
; Game Engine Function: _ZN7CObject20DeleteAllTempObjectsEv
; Address            : 0x455BB0 - 0x455C0A
; =========================================================

455BB0:  PUSH            {R4-R7,LR}
455BB2:  ADD             R7, SP, #0xC
455BB4:  PUSH.W          {R8-R10}
455BB8:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x455BBE)
455BBA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
455BBC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
455BBE:  LDR.W           R9, [R0]; CPools::ms_pObjectPool
455BC2:  LDR.W           R8, [R9,#8]
455BC6:  CMP.W           R8, #1
455BCA:  BLT             loc_455C04
455BCC:  MOVS            R6, #0
455BCE:  MOVS            R5, #0
455BD0:  LDR.W           R0, [R9,#4]
455BD4:  LDRSB           R0, [R0,R5]
455BD6:  CMP             R0, #0
455BD8:  BLT             loc_455BFA
455BDA:  LDR.W           R4, [R9]
455BDE:  ADDS.W          R10, R4, R6
455BE2:  BEQ             loc_455BFA
455BE4:  LDRB.W          R0, [R10,#0x140]
455BE8:  CMP             R0, #3
455BEA:  BNE             loc_455BFA
455BEC:  MOV             R0, R10; this
455BEE:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
455BF2:  LDR             R0, [R4,R6]
455BF4:  LDR             R1, [R0,#4]
455BF6:  MOV             R0, R10
455BF8:  BLX             R1
455BFA:  ADDS            R5, #1
455BFC:  ADD.W           R6, R6, #0x1A4
455C00:  CMP             R8, R5
455C02:  BNE             loc_455BD0
455C04:  POP.W           {R8-R10}
455C08:  POP             {R4-R7,PC}
