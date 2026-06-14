; =========================================================
; Game Engine Function: _ZN17CEntryExitManager19AddEntryExitToStackEP10CEntryExit
; Address            : 0x3069C8 - 0x306A26
; =========================================================

3069C8:  LDR             R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x3069D0)
3069CA:  LDR             R2, [R0,#0x38]
3069CC:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
3069CE:  CMP             R2, #0
3069D0:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
3069D2:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn
3069D4:  IT EQ
3069D6:  MOVEQ           R2, R0
3069D8:  CMP             R1, #1
3069DA:  BLT             loc_3069EE
3069DC:  LDR             R3, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3069E6)
3069DE:  SUB.W           R12, R1, #1
3069E2:  ADD             R3, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3069E4:  LDR             R3, [R3]; CEntryExitManager::ms_entryExitStack ...
3069E6:  LDR.W           R3, [R3,R12,LSL#2]
3069EA:  CMP             R3, R2
3069EC:  BEQ             loc_306A1A
3069EE:  LDRB.W          R2, [R2,#0x32]
3069F2:  CBZ             R2, loc_306A0E
3069F4:  LDR             R2, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x3069FC)
3069F6:  LDR             R3, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3069FE)
3069F8:  ADD             R2, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
3069FA:  ADD             R3, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3069FC:  LDR.W           R12, [R2]; CEntryExitManager::ms_entryExitStackPosn ...
306A00:  ADDS            R2, R1, #1
306A02:  LDR             R3, [R3]; CEntryExitManager::ms_entryExitStack ...
306A04:  STR.W           R2, [R12]; CEntryExitManager::ms_entryExitStackPosn
306A08:  STR.W           R0, [R3,R1,LSL#2]
306A0C:  BX              LR
306A0E:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x306A16)
306A10:  MOVS            R1, #0
306A12:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
306A14:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
306A16:  STR             R1, [R0]; CEntryExitManager::ms_entryExitStackPosn
306A18:  BX              LR
306A1A:  LDR             R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x306A20)
306A1C:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
306A1E:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
306A20:  STR.W           R12, [R0]; CEntryExitManager::ms_entryExitStackPosn
306A24:  BX              LR
