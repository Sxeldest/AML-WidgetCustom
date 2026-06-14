; =========================================================
; Game Engine Function: _ZN17CEntryExitManager25SetEntryExitFlagWithIndexEijb
; Address            : 0x306198 - 0x3061CE
; =========================================================

306198:  LDR             R3, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30619E)
30619A:  ADD             R3, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30619C:  LDR             R3, [R3]; CEntryExitManager::mp_poolEntryExits ...
30619E:  LDR.W           R12, [R3]; CEntryExitManager::mp_poolEntryExits
3061A2:  LDR.W           R3, [R12,#4]
3061A6:  LDRSB           R3, [R3,R0]
3061A8:  CMP             R3, #0
3061AA:  BLT             loc_3061BA
3061AC:  LDR.W           R3, [R12]
3061B0:  RSB.W           R0, R0, R0,LSL#4
3061B4:  ADD.W           R0, R3, R0,LSL#2
3061B8:  B               loc_3061BC
3061BA:  MOVS            R0, #0
3061BC:  CMP             R2, #1
3061BE:  LDRH.W          R2, [R0,#0x30]!
3061C2:  ITE NE
3061C4:  BICNE.W         R1, R2, R1
3061C8:  ORREQ           R1, R2
3061CA:  STRH            R1, [R0]
3061CC:  BX              LR
