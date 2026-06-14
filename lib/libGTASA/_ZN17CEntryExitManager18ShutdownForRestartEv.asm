; =========================================================
; Game Engine Function: _ZN17CEntryExitManager18ShutdownForRestartEv
; Address            : 0x304BA0 - 0x304D1C
; =========================================================

304BA0:  PUSH            {R4-R7,LR}
304BA2:  ADD             R7, SP, #0xC
304BA4:  PUSH.W          {R8-R11}
304BA8:  SUB             SP, SP, #4
304BAA:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304BB0)
304BAC:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304BAE:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
304BB0:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
304BB2:  LDR             R1, [R0,#8]
304BB4:  CMP             R1, #0
304BB6:  BEQ             loc_304CA0
304BB8:  RSB.W           R2, R1, R1,LSL#4
304BBC:  SUBS            R6, R1, #1
304BBE:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304BCC)
304BC0:  MOV             R3, #0xFFFFFFF4
304BC4:  ADD.W           R5, R3, R2,LSL#2
304BC8:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304BCA:  LDR             R4, [R1]; CEntryExitManager::mp_poolEntryExits ...
304BCC:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304BD2)
304BCE:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304BD0:  LDR.W           R9, [R1]; CEntryExitManager::mp_poolEntryExits ...
304BD4:  LDR             R1, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x304BDA)
304BD6:  ADD             R1, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
304BD8:  LDR.W           R10, [R1]; CEntryExitManager::mp_QuadTree ...
304BDC:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304BE2)
304BDE:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304BE0:  LDR.W           R11, [R1]; CEntryExitManager::mp_poolEntryExits ...
304BE4:  LDR             R1, [R0,#4]
304BE6:  LDRSB           R1, [R1,R6]
304BE8:  CMP             R1, #0
304BEA:  BLT             loc_304C48
304BEC:  LDR             R0, [R0]
304BEE:  ADDS            R1, R0, R5
304BF0:  CMP             R1, #0x30 ; '0'
304BF2:  BEQ             loc_304C48
304BF4:  LDRSH           R1, [R0,R5]
304BF6:  CMP.W           R1, #0xFFFFFFFF
304BFA:  ORR.W           R2, R1, #0x4000
304BFE:  STRH            R2, [R0,R5]
304C00:  BGT             loc_304C48
304C02:  LDR.W           R0, [R9]; CEntryExitManager::mp_poolEntryExits
304C06:  LDR             R1, [R0,#4]
304C08:  LDRSB           R1, [R1,R6]
304C0A:  CMP             R1, #0
304C0C:  BLT             loc_304C48
304C0E:  LDR             R0, [R0]
304C10:  ADDS            R1, R0, R5
304C12:  LDR.W           R0, [R10]; this
304C16:  SUB.W           R8, R1, #0x30 ; '0'
304C1A:  MOV             R1, R8; void *
304C1C:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
304C20:  LDR.W           R0, [R11]; CEntryExitManager::mp_poolEntryExits
304C24:  MOV             R3, #0xEEEEEEEF
304C2C:  LDRD.W          R1, R2, [R0]
304C30:  SUB.W           R1, R8, R1
304C34:  ASRS            R1, R1, #2
304C36:  MULS            R1, R3
304C38:  LDRB            R3, [R2,R1]
304C3A:  ORR.W           R3, R3, #0x80
304C3E:  STRB            R3, [R2,R1]
304C40:  LDR             R2, [R0,#0xC]
304C42:  CMP             R1, R2
304C44:  IT LT
304C46:  STRLT           R1, [R0,#0xC]
304C48:  LDR             R0, [R4]; CEntryExitManager::mp_poolEntryExits
304C4A:  SUBS            R6, #1
304C4C:  SUBS            R5, #0x3C ; '<'
304C4E:  ADDS            R1, R6, #1
304C50:  BNE             loc_304BE4
304C52:  LDR             R1, =(_ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr - 0x304C5C)
304C54:  MOVS            R3, #0
304C56:  LDR             R2, [R0,#8]
304C58:  ADD             R1, PC; _ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr
304C5A:  CMP             R2, #0
304C5C:  LDR             R1, [R1]; CEntryExitManager::ms_bBurglaryHousesEnabled ...
304C5E:  STRB            R3, [R1]; CEntryExitManager::ms_bBurglaryHousesEnabled
304C60:  BEQ             loc_304CAA
304C62:  RSB.W           R1, R2, R2,LSL#4
304C66:  MOV             R3, #0xFFFFFFF4
304C6A:  SUBS            R2, #1
304C6C:  ADD.W           R1, R3, R1,LSL#2
304C70:  LDR             R3, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x304C76)
304C72:  ADD             R3, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
304C74:  LDR             R3, [R3]; CEntryExitManager::mp_poolEntryExits ...
304C76:  B               loc_304C7E
304C78:  SUBS            R1, #0x3C ; '<'
304C7A:  LDR             R0, [R3]; CEntryExitManager::mp_poolEntryExits
304C7C:  SUBS            R2, #1
304C7E:  LDR             R6, [R0,#4]
304C80:  LDRSB           R6, [R6,R2]
304C82:  CMP             R6, #0
304C84:  BLT             loc_304C9A
304C86:  LDR             R0, [R0]
304C88:  ADDS            R6, R0, R1
304C8A:  CMP             R6, #0x30 ; '0'
304C8C:  ITTTT NE
304C8E:  LDRHNE          R6, [R0,R1]
304C90:  TSTNE.W         R6, #0x1000
304C94:  BICNE.W         R6, R6, #0x4000
304C98:  STRHNE          R6, [R0,R1]
304C9A:  CMP             R2, #0
304C9C:  BNE             loc_304C78
304C9E:  B               loc_304CAA
304CA0:  LDR             R0, =(_ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr - 0x304CA8)
304CA2:  MOVS            R1, #0
304CA4:  ADD             R0, PC; _ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr
304CA6:  LDR             R0, [R0]; CEntryExitManager::ms_bBurglaryHousesEnabled ...
304CA8:  STRB            R1, [R0]; CEntryExitManager::ms_bBurglaryHousesEnabled
304CAA:  LDR             R0, =(_ZN17CEntryExitManager9mp_ActiveE_ptr - 0x304CB0)
304CAC:  ADD             R0, PC; _ZN17CEntryExitManager9mp_ActiveE_ptr
304CAE:  LDR             R0, [R0]; CEntryExitManager::mp_Active ...
304CB0:  LDR             R0, [R0]; CEntryExitManager::mp_Active
304CB2:  CBZ             R0, loc_304D02
304CB4:  LDR             R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x304CBA)
304CB6:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
304CB8:  LDR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities ...
304CBA:  LDR             R0, [R1]; CEntryExitManager::ms_numVisibleEntities
304CBC:  CMP             R0, #0
304CBE:  SUB.W           R2, R0, #1
304CC2:  STR             R2, [R1]; CEntryExitManager::ms_numVisibleEntities
304CC4:  BEQ             loc_304CF0
304CC6:  LDR             R1, =(_ZN17CEntryExitManager14ms_oldAreaCodeE_ptr - 0x304CCE)
304CC8:  LDR             R2, =(_ZN17CEntryExitManager20ms_visibleEntityListE_ptr - 0x304CD0)
304CCA:  ADD             R1, PC; _ZN17CEntryExitManager14ms_oldAreaCodeE_ptr
304CCC:  ADD             R2, PC; _ZN17CEntryExitManager20ms_visibleEntityListE_ptr
304CCE:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode ...
304CD0:  LDR             R2, [R2]; CEntryExitManager::ms_visibleEntityList ...
304CD2:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode
304CD4:  ADD.W           R3, R2, R0,LSL#2
304CD8:  SUBS            R0, #1
304CDA:  LDR.W           R3, [R3,#-4]
304CDE:  STRB.W          R1, [R3,#0x33]
304CE2:  BNE             loc_304CD4
304CE4:  LDR             R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x304CEE)
304CE6:  MOV.W           R1, #0xFFFFFFFF
304CEA:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
304CEC:  LDR             R0, [R0]; CEntryExitManager::ms_numVisibleEntities ...
304CEE:  STR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities
304CF0:  LDR             R0, =(_ZN17CEntryExitManager9mp_ActiveE_ptr - 0x304CFA)
304CF2:  MOVS            R2, #0
304CF4:  LDR             R1, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x304CFC)
304CF6:  ADD             R0, PC; _ZN17CEntryExitManager9mp_ActiveE_ptr
304CF8:  ADD             R1, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
304CFA:  LDR             R0, [R0]; CEntryExitManager::mp_Active ...
304CFC:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState ...
304CFE:  STR             R2, [R0]; CEntryExitManager::mp_Active
304D00:  STR             R2, [R1]; CEntryExitManager::ms_exitEnterState
304D02:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x304D0C)
304D04:  MOVS            R2, #0
304D06:  LDR             R1, =(_ZN17CEntryExitManager12ms_bDisabledE_ptr - 0x304D0E)
304D08:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
304D0A:  ADD             R1, PC; _ZN17CEntryExitManager12ms_bDisabledE_ptr
304D0C:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
304D0E:  LDR             R1, [R1]; CEntryExitManager::ms_bDisabled ...
304D10:  STR             R2, [R0]; CEntryExitManager::ms_entryExitStackPosn
304D12:  STRB            R2, [R1]; CEntryExitManager::ms_bDisabled
304D14:  ADD             SP, SP, #4
304D16:  POP.W           {R8-R11}
304D1A:  POP             {R4-R7,PC}
