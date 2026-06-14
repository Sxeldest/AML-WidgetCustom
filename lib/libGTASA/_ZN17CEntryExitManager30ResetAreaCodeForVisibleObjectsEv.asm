; =========================================================
; Game Engine Function: _ZN17CEntryExitManager30ResetAreaCodeForVisibleObjectsEv
; Address            : 0x304E44 - 0x304E84
; =========================================================

304E44:  LDR             R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x304E4A)
304E46:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
304E48:  LDR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities ...
304E4A:  LDR             R0, [R1]; CEntryExitManager::ms_numVisibleEntities
304E4C:  CMP             R0, #0
304E4E:  SUB.W           R2, R0, #1
304E52:  STR             R2, [R1]; CEntryExitManager::ms_numVisibleEntities
304E54:  IT EQ
304E56:  BXEQ            LR
304E58:  LDR             R1, =(_ZN17CEntryExitManager14ms_oldAreaCodeE_ptr - 0x304E60)
304E5A:  LDR             R2, =(_ZN17CEntryExitManager20ms_visibleEntityListE_ptr - 0x304E62)
304E5C:  ADD             R1, PC; _ZN17CEntryExitManager14ms_oldAreaCodeE_ptr
304E5E:  ADD             R2, PC; _ZN17CEntryExitManager20ms_visibleEntityListE_ptr
304E60:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode ...
304E62:  LDR             R2, [R2]; CEntryExitManager::ms_visibleEntityList ...
304E64:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode
304E66:  ADD.W           R3, R2, R0,LSL#2
304E6A:  SUBS            R0, #1
304E6C:  LDR.W           R3, [R3,#-4]
304E70:  STRB.W          R1, [R3,#0x33]
304E74:  BNE             loc_304E66
304E76:  LDR             R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x304E80)
304E78:  MOV.W           R1, #0xFFFFFFFF
304E7C:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
304E7E:  LDR             R0, [R0]; CEntryExitManager::ms_numVisibleEntities ...
304E80:  STR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities
304E82:  BX              LR
