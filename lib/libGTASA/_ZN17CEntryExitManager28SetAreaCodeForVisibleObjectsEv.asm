; =========================================================
; Game Engine Function: _ZN17CEntryExitManager28SetAreaCodeForVisibleObjectsEv
; Address            : 0x306CE8 - 0x306D82
; =========================================================

306CE8:  PUSH            {R4-R7,LR}
306CEA:  ADD             R7, SP, #0xC
306CEC:  PUSH.W          {R8}
306CF0:  LDR             R0, =(PC_Scratch_ptr - 0x306CFE)
306CF2:  MOVS            R1, #0x40C00000
306CF8:  MOVS            R2, #0
306CFA:  ADD             R0, PC; PC_Scratch_ptr
306CFC:  MOVS            R5, #0
306CFE:  LDR             R0, [R0]; PC_Scratch
306D00:  ADD.W           R0, R0, #0x400
306D04:  BLX             j__ZN9CRenderer19GetObjectsInFrustumEPP7CEntityfP11RwMatrixTag; CRenderer::GetObjectsInFrustum(CEntity **,float,RwMatrixTag *)
306D08:  MOV             R4, R0
306D0A:  MOV.W           R0, #0xFFFFFFFF; int
306D0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
306D12:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x306D1C)
306D14:  CMP             R4, #0
306D16:  LDR             R2, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x306D1E)
306D18:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
306D1A:  ADD             R2, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
306D1C:  LDR             R1, [R1]; CGame::currArea ...
306D1E:  LDR             R2, [R2]; CEntryExitManager::ms_numVisibleEntities ...
306D20:  LDR             R1, [R1]; CGame::currArea
306D22:  STR             R5, [R2]; CEntryExitManager::ms_numVisibleEntities
306D24:  BEQ             loc_306D74
306D26:  LDR             R2, =(PC_Scratch_ptr - 0x306D34)
306D28:  MOV.W           R8, #0xD
306D2C:  LDR             R6, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x306D36)
306D2E:  LDR             R5, =(_ZN17CEntryExitManager20ms_visibleEntityListE_ptr - 0x306D38)
306D30:  ADD             R2, PC; PC_Scratch_ptr
306D32:  ADD             R6, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
306D34:  ADD             R5, PC; _ZN17CEntryExitManager20ms_visibleEntityListE_ptr
306D36:  LDR             R3, [R2]; PC_Scratch
306D38:  LDR.W           R12, [R6]; CEntryExitManager::ms_numVisibleEntities ...
306D3C:  RSB.W           R2, R4, #1
306D40:  LDR.W           LR, [R5]; CEntryExitManager::ms_visibleEntityList ...
306D44:  ADD.W           R3, R3, #0x400
306D48:  MOVS            R4, #0
306D4A:  LDR             R6, [R3]
306D4C:  CMP             R6, R0
306D4E:  BEQ             loc_306D6A
306D50:  LDRB.W          R5, [R6,#0x33]
306D54:  CMP             R1, R5
306D56:  BNE             loc_306D6A
306D58:  ADDS            R5, R4, #1
306D5A:  STR.W           R6, [LR,R4,LSL#2]
306D5E:  LDR             R4, [R3]
306D60:  STR.W           R5, [R12]; CEntryExitManager::ms_numVisibleEntities
306D64:  STRB.W          R8, [R4,#0x33]
306D68:  MOV             R4, R5
306D6A:  CBZ             R2, loc_306D74
306D6C:  ADDS            R2, #1
306D6E:  ADDS            R3, #4
306D70:  CMP             R4, #0x20 ; ' '
306D72:  BLT             loc_306D4A
306D74:  LDR             R0, =(_ZN17CEntryExitManager14ms_oldAreaCodeE_ptr - 0x306D7A)
306D76:  ADD             R0, PC; _ZN17CEntryExitManager14ms_oldAreaCodeE_ptr
306D78:  LDR             R0, [R0]; CEntryExitManager::ms_oldAreaCode ...
306D7A:  STR             R1, [R0]; CEntryExitManager::ms_oldAreaCode
306D7C:  POP.W           {R8}
306D80:  POP             {R4-R7,PC}
