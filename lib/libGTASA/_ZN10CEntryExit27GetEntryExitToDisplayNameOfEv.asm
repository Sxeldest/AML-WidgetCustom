; =========================================================
; Game Engine Function: _ZN10CEntryExit27GetEntryExitToDisplayNameOfEv
; Address            : 0x306C5C - 0x306CAC
; =========================================================

306C5C:  LDR             R1, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x306C62)
306C5E:  ADD             R1, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
306C60:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint ...
306C62:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint
306C64:  LDRB.W          R2, [R1,#0x32]
306C68:  CMP             R2, #0
306C6A:  ITT NE
306C6C:  LDRBNE          R2, [R0]
306C6E:  CMPNE           R2, #0
306C70:  BEQ             loc_306CA8
306C72:  LDRB.W          R2, [R0,#0x32]
306C76:  CBZ             R2, locret_306CA6
306C78:  LDR             R2, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x306C7E)
306C7A:  ADD             R2, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
306C7C:  LDR             R2, [R2]; CEntryExitManager::ms_entryExitStackPosn ...
306C7E:  LDR             R2, [R2]; CEntryExitManager::ms_entryExitStackPosn
306C80:  CMP             R2, #2
306C82:  BLT             locret_306CA6
306C84:  LDR             R3, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x306C8A)
306C86:  ADD             R3, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
306C88:  LDR             R3, [R3]; CEntryExitManager::ms_entryExitStack ...
306C8A:  ADD.W           R3, R3, R2,LSL#2
306C8E:  LDR.W           R3, [R3,#-4]
306C92:  CMP             R3, R1
306C94:  IT NE
306C96:  BXNE            LR
306C98:  LDR             R0, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x306C9E)
306C9A:  ADD             R0, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
306C9C:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStack ...
306C9E:  ADD.W           R0, R0, R2,LSL#2
306CA2:  LDR.W           R0, [R0,#-8]
306CA6:  BX              LR
306CA8:  MOVS            R0, #0
306CAA:  BX              LR
